class Memoria{

  static const operacaos = const ['%', '/','+', 'x', '-','='];
  final _buffer = [0.0];
  int _bufferIndex =0;
  late String  _operacao;
  String _values = '0';
  bool _wipeValue = false;
  
  void applyCommand(String command){
    if (command == 'AC'){
      _limparCalculadora();

    }else if(_operacao.contains(command)){
      _setOperation(command);
    
    }else{
      _adicionarDigitos(command);

    }

    
  }
  _setOperation(String newOpertation){
    if (_bufferIndex == 0){
      _operacao = newOpertation;
      _bufferIndex = 1;
    }else{
      _buffer[0]= _calcular();
      _buffer[1]= 0.0;
      _values= _buffer[0].toString();
      _values= values.endsWith('.0')? _values.split('.')[0]: _values;
      bool  simboloIgual = newOpertation == '=';
      _operacao = (simboloIgual ? null : newOpertation)!;
      _bufferIndex = simboloIgual ? 0 : 1;
    }
   
    _wipeValue =true;

  }
  _adicionarDigitos(String digito){
    final ponto = digito == '.';
    final wipeValue = (_values == '0' && !ponto) || _wipeValue;
    if (ponto && _values.contains('.') && !wipeValue){// permitindo que fique somente um ponto no display da calculadora 
      return;

    }
    final emptyValue = ponto ? '0': '';
    final currentValue =wipeValue ? '': _values; //se wipevalue for verdade, vai setar valor p 0, caso contrario usa o valor atual _values
    _values =currentValue +digito;
    _wipeValue = false;
    _buffer[_bufferIndex]= double.tryParse(_values) ?? 0.0;
  }
  _limparCalculadora(){
    _values ='0';
    _buffer.setAll(0, [0.0,0.0]);
    _operacao != null;
    _wipeValue =false;

  }
  _calcular(){
    switch(_operacao){
      case '%': return _buffer[0] % _buffer[1];
      case '/': return _buffer[0] / _buffer[1];
      case 'x': return _buffer[0] * _buffer[1];
      case '-': return _buffer[0] - _buffer[1];
      case '+': return _buffer[0] + _buffer[1];
      default: return _buffer[0];
      

    }
  }

  String get values{
    return _values;
  }  
}