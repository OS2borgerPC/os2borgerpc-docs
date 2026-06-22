---
title: Selvevaluering (formular)
layout: default
parent: Produktforvaltning
nav_exclude: false
---

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<div id="app" class="container-xl my-4 px-3 px-md-4"></div>

<script>
const kravData = {
  relevans: [
    ["R1","Løsningen skaber lokal værdi","sandkasse","Beskriv den konkrete værdi løsningen skaber i organisationen. F.eks. økonomisk, organisatorisk eller brugerrelateret."],
    ["R2","Løsningen er accepteret af lokal linjeledelse","2","Beskriv eller henvis til en formel accept fra ledelse hos initiativtagerne til løsningen."],
    ["R3","Løsningen har fælles offentligt potentiale","2","Redegør for hvordan løsningen kan bruges på tværs af kommuner og/eller offentlige myndigheder."],
    ["R4","Ophæng til nationale strategier er til stede","3","Henvis til relevante strategier og forklar hvordan løsningen understøtter disse."]
  ],
  formkrav: [
    ["F1","Alt kildekode til projektet udvikles synligt og aktivt i et repositorie og versionskontrolsystem, anvist af OS2","sandkasse","Upload al kildekode i et offentligt OS2 repository med aktiv versionshistorik."],
    ["F2","Open Source licenskriterier overholdes","sandkasse","Angiv hvilken OSI-godkendt licens projektet bruger. OS2 standard er MPL 2.0"],
    ["F3","Udbudsregler og alm. lovformlighed er overholdt","sandkasse","Bekræft at udbudspligt er overholdt eller redegør for undtagelse. Vedlæg evt. beslutningsnotat."],
    ["F4","Der er tænkt på sikkerheden i løsningen","sandkasse","Beskriv hvordan sikkerhed er indtænkt i design, kode og drift – f.eks. kryptering, adgangsstyring."],
    ["F5","Løsningens formål og værdi er beskrevet","sandkasse","Henvis til dokumentation (f.eks. README) hvor formål og målgruppe fremgår."],
    ["F6","Kildekoden er overdraget og er placeret under OS2's kontrol","1","Bekræft og link til det officielle repository i OS2s versionskontrol."],
    ["F7","Alt dokumentation til projektet udarbejdes med og overholder OS2s standardskabelon for dokumentation.","1","Brug OS2’s standard template til dokumentation. http://github.com/OS2offdig/os2-docs-template"],
    ["F10","OS2's kommunikationskanaler anvendes (OS2.eu)","1","Bekræft og link til omtale på f.eks. os2.eu, nyhedsbrev eller andet."],
    ["F11","Der anvendes offentlig issue-tracking anvist af OS2, hvor der tydeligt henvises til specifikke kodeændringer","1","Henvis til f.eks. Issues, hvor opgaver er koblet til pull-requests/commits."],
    ["F12","Der er kun en version af core koden","2","Bekræft at der kun findes én ‘main’ version og at den er aktivt vedligeholdt."],
    ["F13","Der er udarbejdet præsentationsmateriale af løsningen","2","Link til f.eks. slides, brochurer eller andet introduktionsmateriale."],
    ["F14","Der er udarbejdet kommunikationsmateriale til strategisk niveau","2","F.eks. businesscase, one-pager til direktionsniveau og præsentation til udvalg."],
    ["F15","Best practice for implementering i organisationen dokumenteres","2","Angiv implementeringsvejledning, erfaringsopsamling eller cases."],
    ["F16","Teknisk dokumentation indeholder best practice for kodestandarder i forhold til de anvendte teknologier","2","Beskriv hvilke kodestandarder projektet følger. Evt. med links til eksterne guides og supplerende retningslinjer."],
    ["F17","Drifts og vedligeholdelses setup er beskrevet","2","Redegør for driftspartner(e), ansvar og finansiering. Hvem drifter, hvem vedligeholder og hvem koordinerer."],
    ["F18","Rammearkitekturen og standarder er fulgt og afvigelser er forklaret","2","Beskriv om/hvordan løsningen følger fællesoffentlig rammearkitektur – eller forklar hvorfor ikke."],
    ["F19","Løsningen er leveret i et containerformat f.eks. docker (anbefaling)","2","Angiv om løsningen tilbydes i en containeriseret version som definerer hvordan applikationen bygges og køres."],
    ["F20","Uddannelsesmateriale er udarbejdet (anbefaling)","2","Henvis til manual, brugervejledning eller andet brugerrelateret materiale."],
    ["F21","Politisk kommunikation er udarbejdet (Lokal + Omverden)","3","Angiv indhold der kan bruges i politiske fora – f.eks. beslutningsoplæg eller pressemeddelelse."],
    ["F22","Procesplan + procesansvar for driftsimplementering er udarbejdet","3","Tilføj en implementeringsplan med ‘hvem gør hvad hvornår’."],
  ],
  strategisk: [
    ["S1","Produktet har en kobling til OS2's strategi","1","Beskriv hvordan produktet understøtter tværoffentlige behov, deling og fællesskab."],
    ["S2","Løsningen understøtter innovation og open source","1","Angiv hvordan open source-værdier og nyskabelse er tænkt ind."],
    ["S3","Produktets (forventlige) kobling til OS2's mission, vision og strategi er beskrevet","2","Angiv hvor produktet matcher med OS2's formål og indsatser."],
    ["S4","Der er udarbejdet en vision og strategi for produktet","2","Beskriv produktvision og strategiske mål."],
    ["S5","Produktets kobling til og overensstemmelse med OS2's vision og strategi er tilstede og beskrevet","3","Forklar hvordan løsningen passer ind i OS2’s overordnede værdisæt og visioner."],
  ],
  governance: [
    ["G1","Produktet er oprettet i OS2's porteføljestyring","1","Produktet er oprettet på OS2s hjemmeside og indgår i årshjul."],
    ["G2","Der koordineres løbende med OS2-sekretariatet","1","Bekræft, evt. med årshjul/datoer/mails for koordinering."],
    ["G3","Der er udpeget en projektleder/tovholder","1","Navngiv og beskriv rolle og opgaver."],
    ["G4","Bestyrelsen er orienteret","1","Vedlæg dokumentation for orientering."],
    ["G5","Bestyrelsen har godkendt produktet","2","Vedlæg dokumentation for godkendelse."],
    ["G6","Der er nedsat en styregruppe","2","Beskrivelse af styregruppen og roller/ansvar/opgaver."],
    ["G7","Der er nedsat en koordinationsgruppe (anbefaling)","2","Beskrivelse af koordinationsgruppen og roller/ansvar/opgaver."],
    ["G8","En projektmodel anvendes og er dokumenteret (anbefaling)","2","Beskiv den anvendte projektmodel eller metode."],
    ["G9","Review af kode foretages af tredjepart (anbefaling)","2","Angiv hvilken ekstern part som udfører eller har udført review."],
    ["G10","Der er udarbejdet en tilslutningserklæring til sikring af økonomi (anbefaling)","2","Vedlæg eller henvis til dokument for tilslutning og økonomi."],
    ["G11","Bestyrelsen har godkendt styregruppen","3","Vedlæg dokumentation for beslutning."],
    ["G12","Bestyrelsen er repræsenteret i styregruppen","3","Angiv hvilket medlem som deltager på vegne af bestyrelsen."],
    ["G13","Der foreligger en aftale der sikrer økonomi til koordinering og videreudvikling","3","Vedlæg eller beskriv finansieringsaftalen."],
    ["G14","Der er etableret et fagligt fællesskab bag løsningen hvor erfaringer kan udveksles","3","Henvis til brugerforum og/eller årshjul for aktiviteter."],
  ]
};

const statusChoices = ["Ja", "Nej", "Ikke relevant", "Ved ikke", "Planlagt"];

function sectionTitle(key) {
  return ({ relevans: "Relevans", formkrav: "Formkrav", strategisk: "Strategisk sammenhæng", governance: "Governance" })[key] || key;
}

function render() {
  const app = document.getElementById("app");
  app.innerHTML = `
    <style>
      .checklist-table{table-layout:fixed}
      .checklist-table th,.checklist-table td{vertical-align:top}
      .checklist-table th:nth-child(1), .checklist-table td:nth-child(1){width:6%}
      .checklist-table th:nth-child(2), .checklist-table td:nth-child(2){width:19%}
      .checklist-table th:nth-child(3), .checklist-table td:nth-child(3){width:10%}
      .checklist-table th:nth-child(4), .checklist-table td:nth-child(4){width:27%}
      .checklist-table th:nth-child(5), .checklist-table td:nth-child(5){width:12%}
      .checklist-table th:nth-child(6), .checklist-table td:nth-child(6){width:26%}
      .doc-textarea{min-height:110px}
    </style>
    <div class="row mb-3">
      <div class="col-12">
        <h1>OS2 selvevaluering</h1>
        <p>Udfyld status for hvert krav og tilføj dokumentation. Når du er færdig, kan du eksportere svarene til JSON eller gemme direkte i et GitHub repo. Send JSON filen eller link til GitHub repo til sekretariatet på os2@os2.eu.</p>
        <blockquote class="note-title">
          <p>
            Du udfylder checklisten ved at vælge en markering for hvert krav:
          </p>

          <ul>
            <li>(JA) ✅ Kriteriet er opfyldt</li>
            <li>(NEJ) ❌ Kriteriet er IKKE opfyldt</li>
            <li>(Ikke relevant) ➖ Kriteriet er ikke relevant for dette produkt</li>
            <li>(Ved ikke) ❌ Der er tvivl om, hvordan dette kriterie evalueres</li>
            <li>(Planlagt) 🟡 Kriteriet er ikke opfyldt endnu, men der er planlagt en indsats</li>
          </ul>

          <p>
            For hvert krav skal du uddybe din vurdering i fritekstfeltet. Her beskriver du, hvordan kravet er opfyldt, ikke opfyldt eller hvorfor det eventuelt ikke er relevant. Henvis gerne til konkret dokumentation, fx links til repository, dokumenter eller beslutninger.
          </p>

          <p>
            Hvis et felt efterlades tomt, betragtes selvevalueringen som ikke færdiggjort.
          </p>

          <p>
            Formålet med selvevalueringen er ikke at opfylde alle krav, men at give et retvisende billede af produktets nuværende status. En ærlig og præcis vurdering er afgørende for, at evalueringen kan bruges til dialog, prioritering og videre udvikling.
          </p>

          <p>
            Har du spørgsmål? <a href="https://os2.eu/kontakt">Kontakt OS2's sekretariat</a>, vi er her for at hjælpe.
          </p>
          <p>
            Information om OS2's produktniveauer og baggrunden herfor kan der <a href="https://governance.os2.eu">læses mere om her</a>.
          </p>
        </blockquote>
      </div>
    </div>
    <div class="row g-3 mb-3">
      <div class="col-12 col-md-4"><label class="form-label">Produktnavn</label><input class="form-control" id="productName" placeholder="Fx OS2 Produkt X"></div>
      <div class="col-12 col-md-4"><label class="form-label">Udfyldt af</label><input class="form-control" id="filledBy" placeholder="Navn/organisation"></div>
      <div class="col-12 col-md-4"><label class="form-label">Dato</label><input class="form-control" id="filledDate" type="date"></div>
    </div>
    <div class="mb-3">
      <div class="mb-2">
        <button class="btn btn-link p-0 text-decoration-none" type="button" data-bs-toggle="collapse" data-bs-target="#collapseGithub" aria-expanded="false" aria-controls="collapseGithub">
          GitHub (for eksperten)
        </button>
      </div>
      <div id="collapseGithub" class="collapse">
        <div class="row g-3">
          <div class="col-12">Valgfrit: Udfyld GitHub-oplysninger for at gemme JSON direkte i repo under <code>docs/self-assessment/</code>.</div>
          <div class="col-12 col-md-4"><label class="form-label">GitHub owner</label><input class="form-control" id="ghOwner" placeholder="fx OS2offdig"></div>
          <div class="col-12 col-md-4"><label class="form-label">GitHub repo</label><input class="form-control" id="ghRepo" placeholder="fx os2-product-audits"></div>
          <div class="col-12 col-md-4"><label class="form-label">Branch</label><input class="form-control" id="ghRef" value="main"></div>
          <div class="col-12"><label class="form-label">GitHub token (fine-grained PAT med Actions:write + Contents:write)</label><input class="form-control" id="ghToken" type="password" placeholder="ghp_... (gemmes ikke automatisk)"></div>
        </div>
      </div>
    </div>
    ${Object.entries(kravData).map(([section, rows]) => `
      <h2>${sectionTitle(section)}</h2>
      <div class="table-responsive"><table class="table table-striped table-bordered align-top checklist-table">
        <thead><tr><th>#</th><th>Krav</th><th>Produktniveau</th><th>Retningslinjer</th><th>Efterlevet?</th><th>Dokumentation</th></tr></thead>
        <tbody>
          ${rows.map(([id, krav, niveau, guide]) => `
            <tr>
              <td>${id}</td>
              <td>${krav}</td>
              <td>${niveau}</td>
              <td>${guide}</td>
              <td>
                <select class="form-select" data-id="${id}" data-field="status">
                  <option value="">Vælg</option>
                  ${statusChoices.map(s => `<option value="${s}">${s}</option>`).join("")}
                </select>
              </td>
              <td><textarea class="form-control doc-textarea" data-id="${id}" data-field="dokumentation" placeholder="Tekst, links eller henvisninger"></textarea></td>
            </tr>
          `).join("")}
        </tbody>
      </table></div></div></div></div>
    `).join("")}
    </div>
    <div class="d-flex gap-2 flex-wrap mt-3">
      <button class="btn btn-outline-secondary" id="importJson" type="button">Importér JSON data</button>
      <input id="importJsonFile" type="file" accept=".json,application/json" class="d-none">
      <button class="btn btn-primary" id="exportJson" type="button">Eksportér data som JSON</button>
      <button class="btn btn-success d-none" id="saveGithub" type="button">Gem JSON data i GitHub</button>
    </div>
  `;

  document.getElementById("saveGithub").onclick = async () => {
    const owner = document.getElementById("ghOwner").value.trim();
    const repo = document.getElementById("ghRepo").value.trim();
    const ref = document.getElementById("ghRef").value.trim() || "main";
    const token = document.getElementById("ghToken").value.trim();
    if (!owner || !repo || !token) return alert("Udfyld GitHub owner, repo og token først.");

    const data = collectData();
    const payload = {
      ref,
      inputs: {
        product_name: data.productName || "os2-produkt",
        checklist_json: JSON.stringify(data)
      }
    };

    const url = `https://api.github.com/repos/${owner}/${repo}/actions/workflows/save-self-assessment.yml/dispatches`;
    const res = await fetch(url, {
      method: "POST",
      headers: {
        "Accept": "application/vnd.github+json",
        "Authorization": `Bearer ${token}`,
        "Content-Type": "application/json"
      },
      body: JSON.stringify(payload)
    });

    if (!res.ok) {
      const errTxt = await res.text();
      console.error(errTxt);
      return alert(`Kunne ikke gemme i GitHub (HTTP ${res.status}).`);
    }
    alert("Workflow startet. JSON gemmes i docs/self-assessment/ i repoet.");
  };

  document.getElementById("exportJson").onclick = () => {
    const data = collectData();
    const blob = new Blob([JSON.stringify(data, null, 2)], {type: "application/json"});
    const url = URL.createObjectURL(blob);
    const a = document.createElement("a");
    const product = (data.productName || "os2-produkt").toLowerCase().replace(/\s+/g, "-");
    a.href = url;
    a.download = `${product}-checkliste.json`;
    a.click();
    URL.revokeObjectURL(url);
  };
  
  document.getElementById("importJson").onclick = () => {
    document.getElementById("importJsonFile").click();
  };

  document.getElementById("importJsonFile").onchange = async (event) => {
    const file = event.target.files && event.target.files[0];
    if (!file) return;
    try {
      const txt = await file.text();
      const data = JSON.parse(txt);
      if (!data || typeof data !== "object" || !Array.isArray(data.krav)) {
        throw new Error("Ugyldigt format");
      }
      populate(data);
      alert("JSON importeret. Formularen er udfyldt med tidligere data.");
    } catch (err) {
      console.error(err);
      alert("Kunne ikke importere JSON-filen. Kontroller at filen er en gyldig eksport.");
    } finally {
      event.target.value = "";
    }
  };

  const ghFields = ["ghOwner", "ghRepo", "ghToken"];
  const toggleSaveGithub = () => {
    const show = ghFields.every(id => document.getElementById(id).value.trim());
    document.getElementById("saveGithub").classList.toggle("d-none", !show);
  };
  ghFields.forEach(id => {
    document.getElementById(id).addEventListener("input", toggleSaveGithub);
  });
  toggleSaveGithub();
}

function collectData() {
  const result = {
    productName: document.getElementById("productName").value,
    filledBy: document.getElementById("filledBy").value,
    filledDate: document.getElementById("filledDate").value,
    generatedAt: new Date().toISOString(),
    krav: []
  };

  document.querySelectorAll("select[data-id]").forEach(sel => {
    const id = sel.dataset.id;
    const doc = document.querySelector(`textarea[data-id='${id}']`);
    const item = findRequirement(id);
    result.krav.push({
      id,
      kategori: item.section,
      krav: item.krav,
      produktniveau: item.niveau,
      retningslinjer: item.guide,
      efterlevet: sel.value || null,
      dokumentation: doc.value || ""
    });
  });
  return result;
}

function populate(data) {
  if (!data) return;
  document.getElementById("productName").value = data.productName || "";
  document.getElementById("filledBy").value = data.filledBy || "";
  document.getElementById("filledDate").value = data.filledDate || "";
  (data.krav || []).forEach(k => {
    const sel = document.querySelector(`select[data-id='${k.id}']`);
    const doc = document.querySelector(`textarea[data-id='${k.id}']`);
    if (sel) sel.value = k.efterlevet || "";
    if (doc) doc.value = k.dokumentation || "";
  });
}

function findRequirement(id) {
  for (const [section, rows] of Object.entries(kravData)) {
    for (const [rid, krav, niveau, guide] of rows) {
      if (rid === id) return { section, krav, niveau, guide };
    }
  }
  return { section: "ukendt", krav: "", niveau: "", guide: "" };
}

render();
</script>
