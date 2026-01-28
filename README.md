# Drug-Repurposing

SARS and COVID-19 are closely related because they’re caused by very similar coronaviruses.

- **SARS** (Severe Acute Respiratory Syndrome) was caused by **SARS-CoV-1** and emerged in **2002–2003**.
- **COVID-19** is caused by **SARS-CoV-2**, which appeared in **2019**.

Both viruses come from the **coronavirus family**,Genetically, SARS-CoV-2 is closely related to the SARS virus, which is why COVID-19 has “SARS” in its scientific name—even though COVID-19 spreads much more easily worldwide. Studying SARS has helped scientists better understand COVID-19’s transmission, symptoms, and prevention strategies.

### Background: COVID-19

- as we know **COVID-19** is caused by **SARS-CoV-2**, an enveloped positive-strand RNA virus affecting the respiratory system.
- The global population was **immune-naïve**, leading to rapid spread and high morbidity and mortality.
- Traditional drug development (12–15 years, very expensive) is **too slow** for a pandemic.
- **Drug repurposing** is a realistic and fast alternative: reuse FDA-approved drugs with known safety profiles.

### 2. Drug Repurposing (DR)

- **Drug repurposing** is the process of identifying new therapeutic uses for existing drugs. By leveraging known safety profiles and mechanisms of action, this approach reduces development time and cost, making it especially valuable for rapidly responding to emerging disease
- **Advantages**:
    - Faster and cheaper than de novo drug discovery
    - Known toxicity and side effects

### 3. Network Medicine for drug repurposing

one of the computational approach  for drug repurposing is the network analysis

### Human Interactome

- The **human interactome** is the complete network of:
    - Physical molecular interactions between proteins
- Represented as a graph:
    - Nodes = proteins
    - Edges = interactions

### Disease Modules

- Disease-associated genes are **not randomly distributed**
- They form **localized clusters**, called:
    - **Disease modules**
- Perturbations in these modules lead to disease phenotypes

### Drug Action in Network Medicine

- Drugs act as **local perturbations** in the interactome
- A drug can:
    - Be therapeutically effective
    - Cause off-target side effects
- Effectiveness depends on:
    - Proximity of drug targets to disease modules

A drug is more likely to treat a disease if its targets are within or close to the disease module in the interactome 

### SAveRUNNER Algorithm

- A **network-medicine-based drug repurposing algorithm**
- Goal:
    - Identify potential **off-label drug–disease associations**
- Builds a **weighted bipartite network**:
    - One set of nodes: drugs
    - Other set of nodes: diseases
- Uses a **novel network-based similarity measure**
- Successfully identifies:
    - Known drug indications
    - Novel repurposing candidates for COVID-19

### Data Sources and Inputs

### Human Interactome

- Nodes: **15,970 proteins**
- Edges: **217,160 interactions**
- Source: Cheng et al., Nature Communications (2018)

### Disease Data

- **14 diseases** related to COVID-19 has **874 disease genes**
- it is SARS-related disease genes
- source : phenopedia

SARS-CoV-2 Targets i.e covid 19

- **332 human proteins**
- Identified via affinity purification mass spectrometry
- Interact with **26 viral proteins**
- source : Data from Gordon et al. (2020)

### Drug Data

- **1,875 FDA-approved drugs**
- **2,166 drug targets**
- Source: DrugBank

## 7. Diseases Considered

Included diseases:

1. SARS (highest genomic similarity to SARS-CoV-2)
2. Cardiovascular diseases
3. Diabetes
4. Hypertension
5. Malaria
6. HIV
7. Ebola
8. Rheumatoid arthritis

Rationale:

- Strong comorbidity with COVID-19
- Drugs already used for these diseases are being tested for COVID-19
