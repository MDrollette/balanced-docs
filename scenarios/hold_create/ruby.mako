<%namespace file='/_main.mako' name='main'/>
% if request is UNDEFINED:
Balanced::Account.hold(...)

% else:
${main.ruby_boilerplate()}
buyer = Balanced::Account.find('${request['account_uri']}')
buyer.hold(
% for k, v in payload.iteritems():
  :${k} => '${v}',
% endfor
)

% endif
