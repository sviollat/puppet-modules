# used to define/realize users on puppet-managed systems
#

class accounts {

  @accounts::virtual { 'johndoe':
    uid		=> 1001,
    realname	=> 'John Doe',
    pass 	=> '$6$JHB.Le3aaFOB7VoQ$tAPYR.j1kczIFLkP1MFhgG3XQY1gQKuAg.Og.MmiWEW3L04sjxF32z1KdhSXEUY4KTnFAUaChnZFdzdhbkcC61',
  }

}
