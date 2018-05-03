<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<#-- Confirmation that an account has been created. -->

<#assign subject = "Ihr Account für ${siteName} wurde angelegt." />

<#assign html>
<html>
    <head>
        <title>${subject}</title>
    </head>
    <body>
        <p>
            ${userAccount.firstName} ${userAccount.lastName}
        </p>

        <p>
            <strong>Herzlichen Glückwunsch!</strong>
        </p>

        <p>
            Wir haben einen Account für  ${siteName} für Sie angelegt. Ihr Account ist mit der E-Mail-Adresse ${userAccount.emailAddress} verknüpft.
        </p>

        <p>
            Wenn Sie diesen Account nicht beantragt haben, können Sie diese E-Mail ignorieren. 
            Diese Anfrage erlischt automatisch nach 30 Tagen.
        </p>

        <p>
             Klicken Sie auf den untenstehenden Link, um Ihr Passwort für Ihr neues Konto auf unserem Server zu erstellen.
        </p>

        <p>
            <a href="${passwordLink}" title="password">${passwordLink}</a>
        </p>

        <p>
            Wenn der obige Link nicht funktioniert, können Sie ihn kopieren und direkt in die Adressleiste Ihres Browsers und einfügen.
        </p>

        <p>
            Vielen Dank!
        </p>
    </body>
</html>
</#assign>

<#assign text>
${userAccount.firstName} ${userAccount.lastName}

Congratulations!

We have created your new account on ${siteName},
associated with ${userAccount.emailAddress}.

If you did not request this new account you can safely ignore this email. 
This request will expire if not acted upon for 30 days.

Paste the link below into your browser's address bar to create your password 
for your new account using our secure server.

${passwordLink}

Thanks!
</#assign>

<@email subject=subject html=html text=text />
