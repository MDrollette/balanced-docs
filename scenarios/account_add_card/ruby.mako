<%namespace file='/_main.mako' name='main'/>
% if request is UNDEFINED:
Balanced::Account.add_card

% else:
${main.ruby_boilerplate()}
account = Balanced::Account.find("${request['uri']}")
account.add_card("${payload['card_uri']}")

% endif
