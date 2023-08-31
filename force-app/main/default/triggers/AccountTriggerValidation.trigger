trigger AccountTriggerValidation on Account(before insert) {
  List<Account> novaListaDeContas = Trigger.new;
  for (Account novaConta : novaListaDeContas) {
    if (novaConta.CPF__c == null || novaConta.CNPJ__c == null) {
      novaConta.addError('Por favor, preencha seu CPF ou o CNPJ');
    }
  }

}
