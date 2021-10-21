trigger HelloWorld on Account (before insert) {
    System.debug('Heelo Wold trigger has been fired ');

    for (Account acc : Trigger.new){
        System.debug('Account name : '+acc.name);
        if (acc.Name.contains('Error'))
        acc.addError('Cant Save an Account with Error');
    }

}