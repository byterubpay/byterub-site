---
layout: custom
title: titles.accepting
permalink: /get-started/accepting/index.html
---
{% t global.lang_tag %}
<section class="container">
    <div class="row">
        <div class="full">
          <div class="info-block text-adapt">
            <h3>{% t accepting.title_gui %}</h3>
              <p>{% t accepting.gui1 %}</p>
              <p>{% t accepting.gui2 %} <a href="https://github.com/byterub-ecosystem/byterub-GUI-guide/blob/master/byterub-GUI-guide.md#receive-byterub">{% t accepting.guilinkguide %}</a></p>
                <img class="top-margin" src="/img/receive.png" alt="receive page">
              <p>{% t accepting.guiinstructions %}</p>
              <p>{% t accepting.guimerchant %} <a href="https://github.com/byterub-ecosystem/byterub-GUI-guide/blob/master/byterub-GUI-guide.md#merchant-view">{% t accepting.guilinkguide1 %}</a>.</p>
                <img class="top-margin" src="/img/merchant_page.png" alt="merchant view">
              <p>{% t accepting.guimerchant1 %}</p>
              <p>{% t accepting.guisteps %}</p>
              <ol>
                <li>{% t accepting.guiol %}</li>
                <li>{% t accepting.guiol1 %}</li>
                <li>{% t accepting.guiol2 %}</li>
                <li>{% t accepting.guiol3 %}</li>
                <li>{% t accepting.guiol4 %}</li>
              </ol>
            <h3>{% t accepting.cliinstructions %}</h3>
              <p>{% t accepting.clicreatewallet %}</p>
              <p>{% t accepting.cliaccounts %}</p>
              <p>{% t accepting.clicreateaccount %}</p>
              <p><code>account new [label text with white spaces allowed]</code></p>
              <p>{% t accepting.clicreateaccount1 %}</p>
                <img class="top-margin" src="/img/account_cli.png" alt="accounts">
              <p>{% t accepting.cliindex %}</p>
                <img class="top-margin" src="/img/account_switch.png" alt="accounts switch">
              <p>{% t accepting.cliindex1 %}</p>
              <p><code>address new [label text with white spaces allowed]</code></p>
              <p><i>{% t accepting.clinotes %}</i></p>
            <h3>{% t accepting.merchantstitle %}</h3>
              <p>{% t accepting.merchantsreceive %} <a href="{{ site.baseurl }}/resources/developer-guides/">{% t accepting.merchdevguides %}</a>. {% t accepting.merchantsreceive1 %}</p>
              <p>{% t accepting.merchantsint %} <a href="https://github.com/byterub-integrations">{% t accepting.merchantsintlink %}</a>.</p>
              <p>{% t accepting.merchantsthirdp %} <a href="{{ site.baseurl }}/community/merchants/">{% t accepting.merchthirdlink %}</a>. {% t accepting.merchantsthirdp1 %}</p>
          </div>
        </div>                
    </div>
</section>
