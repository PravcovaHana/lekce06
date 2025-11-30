[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Obchůdek pro mlsné jazýčky: čokoláda</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<div class="container">
    <form class="kosik" action="/cokolada" method="post">
        <h1>Objednávka čokolády</h1>
        <label for="druhCokolady" class="radek">Druh čokolády:</label>
        [@spring.formSingleSelect path="form.druhCokolady" options={
        "": "",
        "1": "bílá",
        "2": "mléčná",
        "3": "mléčná s oříšky",
        "4": "hořká",
        "5": "hořká s oříšky",
        "6": "70% kakaa"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="jmeno" class="radek">Jméno a příjmení:</label>
        [@spring.formInput path="form.jmeno" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="radek">E-mail:</label>
        [@spring.formInput path="form.email" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.obchodniPodminky" /]
            <label for="obchodniPodminky">Souhlasím s obchodními podmínkami</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.newsletter" /]
            <label for="newsletter">Souhlasím se zasíláním newsletterů</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit">Objednat</button>
        </div>
    </form>
</div>
</body>
</html>
