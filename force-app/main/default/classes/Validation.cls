public class Validation {
  public static Boolean cpfValido(String cpf) {
    if (
      cpf.equals('00000000000') ||
      cpf.equals('11111111111') ||
      cpf.equals('22222222222') ||
      cpf.equals('33333333333') ||
      cpf.equals('44444444444') ||
      cpf.equals('55555555555') ||
      cpf.equals('66666666666') ||
      cpf.equals('77777777777') ||
      cpf.equals('88888888888') ||
      cpf.equals('99999999999') ||
      (cpf.length() != 11))
      return false;

    //  Setando as variáveis para usar no for.

    Integer digito10;
    Integer digito11;
    Integer soma;
    Integer i;
    Integer resto;
    Integer numeroDoArray;
    Integer peso;

    // Criação da lista para obter os números de 1 a 9 dentro de um array.
    // Calculo dígito verificador 1

    List<String> listDeCpf = cpf.split('');
    for (i = 0; i < 9; i++) {
      numeroDoArray = Integer.valueOf(listDeCpf[i]);
      soma = soma + (numeroDoArray * peso);
      peso = peso - 1;
    }

    //Realizando a operação para saber qual o valor do dígito verificador.

    resto = 11 - (math.mod(soma, 11));
    if ((resto == 10) || (resto == 11)) {
      digito10 = 0;
    } else
      digito11 = resto;

    //  Calculo dígito verificador 2

    soma = 0;
    peso = 11;
    for (i = 0; i < 10; i++) {
      numeroDoArray = Integer.valueOf(listDeCpf[i]);
      soma = soma + (numeroDoArray * peso);
      peso = peso - 1;
    }

    resto = 11 - (math.mod(soma, 11));
    if ((resto == 10) || (resto == 11)) {
      digito11 = 0;
    } else
      digito11 = resto;

    //Verificar se os digitos calculados conferem com os informados

    if(digito10 == Integer.valueOf(listDeCpf[9]) && digito11 == Integer.valueOf(listDeCpf[10])) {
        return true;
    }else return false;
 }

    public static String imprmirCpf(String cpf) {
        return (cpf.substring(0, 3) + '.' + cpf.substring(3, 6) + '.' + cpf.substring(6, 9) + '.' + cpf.substring(9, 11));
    }
}
