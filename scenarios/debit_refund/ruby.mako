<%namespace file='/_main.mako' name='main'/>
% if request is UNDEFINED:
Balanced::Debit.refund()

% else:
${main.ruby_boilerplate()}
debit = Balanced::Debit.find('${request['debit_uri']}')
debit.refund

% endif
