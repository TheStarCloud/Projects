This dashboard was developed on Salesforce Marketing Cloud Intelligence (MCI), previously known as Datorama.

I collaborated closely with the Ad Operations team to map media delivery metrics and online conversions via APIs for our digital channels. Offline channel delivery metrics were integrated through a Google Sheet, maintained and updated by the integrated media team using post logs.

To incorporate offline conversions, I developed a Python script that transformed the output from the POS system into a format suitable for MCI ingestion. Additionally, I worked with a member of my analytics team to design a custom offline conversion attribution model, which allocated a portion of offline conversions across various tactics.

The most challenging aspect was integrating the attribution model into the dashboard. We utilized Salesforce's Granular Data Center to generate the necessary totals through reports and wrote SQL queries to perform the model’s calculations. The results were then integrated back into MCI to complete the attribution process.

The final aesthetics and layout of the dashboard were the result of a joint effort between myself and the lead of the Ad Operations team.

