<%namespace file='/_main.mako' name='main'/>
% if request is UNDEFINED:
Balanced\Buyer->hold()

% else:
${main.php_boilerplate()}
$buyer = Balanced\Account::get("${request['account_uri']}");
$buyer->hold(
    "${payload['amount']}",
    "${payload['description']}"
);

% endif
