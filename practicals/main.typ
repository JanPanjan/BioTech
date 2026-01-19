#show link: l => { text(fill: blue, underline(l)) }
// #set text(font: "Liberation Sans", size: 12pt)
#set page(margin: (x: 2cm, y: 2.2cm))
#show heading.where(level: 1): h => {
  align(center, text(size: 22pt, h))
  par()[]
}
#show heading.where(level: 2): h => {
  align(left, text(size: 16pt, h))
  par()[]
}
#show heading.where(level: 3): h => {
  text(size: 13pt, h)
  v(1%)
}

#let boxf(body) = { box(fill: luma(230), inset: 10pt, body) }

#let naslovnica(naslov, predmet, ime, leto) = {
  v(15%)
  align(center, text(35pt, naslov))
  align(center, text(size: 12pt, fill: luma(120), predmet))
  v(1fr)
  align(center, text(12pt, [FAMNIT #leto]))
  v(1%)
  align(center, text(12pt, ime))
  v(15%)
  pagebreak()
}

#naslovnica("LAB NOTEBOOK", "BIOTECHNOLOGY", "JAN PANJAN", "2025/26")
// šele tu nastavi številčenje strani, da je naslovnica prazna
#set page(numbering: "1", number-align: center)
#counter(page).update(1)
#outline(depth: 5, title: [Contents #v(2%)], indent: 5%)
#pagebreak()

= Dry lab Excercises

== 1. Excercise: Gibson-Assembly Cloning

- Plasmid: #link("https://worldwide.promega.com/products/pcr/pcr-cloning/pgem-t-easy-vector-systems/?catNum=A1360")[pGEM-T Easy Vector]

- GenBank accession numbers for DCA15 (FJ492763.1) and EMO3 (AJ416321.1)

- Primers for amplification of DCA15:

```
DCA-15-for GATCTTGTCTGTATATCCACAC, DCA-15-rev TATACCTTTTCCATCTTGACGC
```

- Primers for amplification of EMO3:

```
EMO-03-for GGTGTAGCCCAAGCCCTTAT, EMO-03-rev GCATGACCGTGGTGTAAGT
```

#line(length: 100%)

=== SnapGene workflow

1. Import pGEM-T Easy Vector sequence from “SnapGene Online Sequences…”

2. Linearize the vector (Actions/Linearize…) and add T to the 3’ ends (two AA should be on each 5’ end with blunt ends)

#image("1/pGEM-T Easy - Linearized2 Map.png", width: 100%)

3. Open fasta files with DCA15 and EMO3 sequences and add/annotate (Primers/Add primer…) the primers

#image("1/DCA15 primed Map.png", width: 100%)
#image("1/EMO3 primed Map.png", width: 100%)

4. Simulate PCR to get final sequences for both fragments (Actions/PCR…)

#image("1/DCA15 Amplified Map.png", width: 100%)
#image("1/EMO3 Amplified Map.png", width: 100%)

5. Design Gibson Assembly cloning experiment (Actions/Gibson Assembly) and save file `Assembled.dna`

6. Annotate the sequences of DCA15 and EMO3 with function (Features/Add Feature…)

7. Select “Map” tab, take a screenshot and include it in the notebook.

#image("1/Assembled Map.png", width: 100%)

Go to “Primers” tab and near the Save button click the arrow and select Export Primer Data…. Paste designed primers in the notebook.

#par()[]
#box(fill: luma(240), outset: 5pt, inset: 5pt)[
  #text(size: 10pt)[```
  DCA15-forward	GATCTTGTCTGTATATCCACAC
  DCA15-reverse	TATACCTTTTCCATCTTGACGC
  EMO3-forward	GGTGTAGCCCAAGCCCTTAT
  EMO3-reverse	GCATGACCGTGGTGTAAGT
  Fragment_1_DCA15.FOR	GCATGCTCCCGGCCGCCATGGCGGCCGCGGGAATTCGATTGATCTTGTCTGTATATCCACACAGACACACAC
  Fragment_1_DCA15.REV	ATAAGGGCTTGGGCTACACCTATACCTTTTCCATCTTGACGCATTTATCGC
  Fragment_2_EMO3.FOR	GTCAAGATGGAAAAGGTATAGGTGTAGCCCAAGCCCTTATAACT
  Fragment_2_EMO3.REV	TATGGTCGACCTGCAGGCGGCCGCGAATTCACTAGTGATTGCATGACCGTGGTGTAAGTTATCTTG
  SP6_reverse	ATTTAGGTGACACTATAGA
  T7_forward	TAATACGACTCACTATAGG
  ```]
]
#par()[]

8. Add primers on the site of T7 and SP6 promoters and simulate the PCR.

#image("1/Amplified_T7_SP6 Map.png", width: 100%)

=== Questions

*1. What will the length of the PCR product be using T7 and SP6 primers?*

#par(first-line-indent: 12pt)[
  656 bp.
]

#par()[]
*2. Which part of the assembled vector will be amplified with SP6 and T7 primers?*

#par(first-line-indent: 12pt)[
  DCA15 and EMO3 regions (region between primers).
]

#par()[]
*3. Export the amplified region as a fasta file and paste the sequence to your notebook.*

#par()[]
#box(fill: luma(240), outset: 5pt, inset: 5pt, width: 100%)[```
>Amplified_T7_SP6  (656 bp)
TAATACGACTCACTATAGGGCGAATTGGGCCCGACGTCGCATGCTCCCGGCCGCCATGGCGGCCGCGGGAATTCGATTGA
TCTTGTCTGTATATCCACACAGACACACACACACACACACACACACACACAAAGAATAGAAAAACAGACAGAAAAAGAAT
CAGAGACAACACTATACTGAGAAATTATACGTCTGCTAACTACACAGGTGGGAAAAAATTACCAGTTCTGGGGTCAACTT
CTCAGCTGACTTTGCAGCTGTCAAAACATAATGCATATTAAATTAAAAAACTAAAAGAGAAAGGCTAATTAGAGCGATAA
ATGCGTCAAGATGGAAAAGGTATAGGTGTAGCCCAAGCCCTTATAACTGACATGGGATTTTACCCCTAACAAACGAAAGA
GAAGGCACTGAAAAAATGAAAAAGAAAAAAAAAAAAAAACACACACACACACATACGTTATGGAAGAAATTTGTAAGCAG
CAAAATCTAAGTAATGCTAGACCAGAACCAGAGAAGATCATCAGAGGTAAACAAGATAACTTACACCACGGTCATGCAAT
CACTAGTGAATTCGCGGCCGCCTGCAGGTCGACCATATGGGAGAGCTCCCAACGCGTTGGATGCATAGCTTGAGTATTCT
ATAGTGTCACCTAAAT
```]

#pagebreak()

== 2. Exercise: Insertion of gene for cry protein in a plasmid with restriction ligation cloning technique

=== 2.1 Insertion of gene for cry protein into a pGA643 plasmid. <2.1>

- Link to the plasmid: #link("https://www.snapgene.com/resources/plasmid-files/?set=plant_vectors&plasmid=pGA643")[pGA643]

- Nucleotide sequence of cry protein is available in GenBank under the accession number `EA295176.1`

#par()[]
==== SnapGene workflow:
#par()[]

1. Import fasta sequence of cry protein in SnapGene.

2. Select the first few nucleotides (until melting temperature 60 °C is reached) and click “Add primer”.

  Click the tab “Insertions” and select `HindIII` sequence to be attached to the 5’ end to the forward primer and since restriction will be more efficient if recognition site is not at the beginning of the DNA, add additional restriction site of any other restriction enzyme.

  Repeat the process for the reverse primer, except that the restriction site at the other site of DNA should be `BglII`.

#image("2/2.1/EA295176 primed Map.png", width: 100%)

3. Simulate PCR to get DNA with elongated primers.

#image("2/2.1/EA295176 Amplified Map.png", width: 100%)

4. Import pGA643 plasmid.

#image("2/2.1/pGA643 Map.png", width: 100%)

5. Click “Actions”, then “Restriction and Ligation cloning” and “Insert fragment”. Select vector in the first tab, amplified DNA in the second tab and press “Clone”.

6. Select window with pGA643 and inserted DNA. Select inserted sequence from ATG to the  TAG codon. Click “Features”, “Add feature”, rename the inserted sequence and select CDS for the “type”.

#image("2/2.1/pGA643_EA295176_Cloned Map.png", width: 100%)

==== Questions:
#par()[]

*1. How can pGA643 plasmid be inserted into a plant cell? Explain.*

Different methods:
- #link("https://www.sciencedirect.com/topics/biochemistry-genetics-and-molecular-biology/microinjection#:~:text=Microinjection%20is%20a%20commonly%20used%20type%20of%20mechanical%20delivery%2C%20which%20utilizes%20mechanical%20force%20to%20pierce%20the%20cell%20membrane%20and%20deposit%20the%20cargo%20into%20the%20cell.")[microinjection] where the plasmid is directly inserted into the cell with a needle
- #link("https://www.sciencedirect.com/topics/neuroscience/electroporation#:~:text=Electroporation%20is%20a%20technique%20involving%20the%20application%20of%20electric%20pulses%20to%20transiently%20disrupt%20the%20lipid%20bilayer%20of%20cell%20membranes%2C%20creating%20nanoscale%20pores%20that%20enable%20the%20delivery%20of%20molecules%20such%20as%20DNA%2C%20RNA%2C%20and%20proteins%20into%20living%20cells.")[electroporation] by making the cell’s membrane pores more permeable allowing the plasmid to enter the cell
- #link("https://www.sciencedirect.com/topics/agricultural-and-biological-sciences/agroinfiltration")[agroinfiltration] via a bacterial carrier

#par()[]
*2. Which elements are in front of the start codon and downstream of the stop codon? Provide a screenshot (Map tab).*

CaMV 35S promoter and gene 7 terminator.

#align(center, image("2/2.1/pGA643_EA295176_Cloned Map closeup.png"))

#par()[]
*4. Paste sequence of the two primers and for each primer explain which restriction enzyme sites were added to the 5’ end.*

- Forward primer `GTCGACAAGCTTATGACGGCC` contains restriction site for `HindIII` and `SalI`
- Reverse primer `GTCGACAGATCTCTAGTTCACGGG` contains restriction site for `BglII` and `SalI`

#par()[]
*5. Provide a screenshot of the History tab.*

#image("2/2.1/pGA643_EA295176_Cloned History.png", width: 75%)

#pagebreak()

=== 2.1.x Repeat the process with another gene (mRNA up to 5 kb) and describe the steps.

For this task I chose #link("https://www.ncbi.nlm.nih.gov/nuccore/KJ787649.1/")[CP4-EPSPS (`KJ787649.1`)] (found in lecture slides). It’s a variant of a plant EPSPS, originally isolated from Agrobacterium sp. strain CP4, which was found to be naturally resistant to glyphosate.

The EPSPS synthase is part of the shikimate pathway, which plants use to synthesise aromatic amino acids necessary for plant growth. Glyphosate acts as a competitive inhibitor with a higher binding affinity than the endogenous substrate PEP. By binding to the synthase it inhibits the pathway.

CP4-EPSPS variant has lower binding affinity to glyphosate and higher specificity to PEP. This makes plants expressing this variant resistant to glyphosate. Herbicides using glyphosate can in this case be used to get rid of weeds that compete with crops.

The chosen construct `KJ787649.1` is codon optimized for plants and contains a chloroplast transit peptide (CTP), which enables transit of the synthesized protein to the chloroplast where the shikimate pathway takes place.

References:
- #link("https://encyclopedia.pub/entry/19933")[CP4-EPSPS | Encyclopedia MDPI]
- #link("https://en.wikipedia.org/wiki/Glyphosate")[Glyphosate - Wikipedia]
- #link("https://en.wikipedia.org/wiki/EPSP_synthase")[EPSP synthase - Wikipedia]
- #link(
    "https://pmc.ncbi.nlm.nih.gov/articles/PMC3145815/",
  )[Molecular basis of glyphosate resistance: Different approaches through protein engineering - PMC]

#line(length: 100%)

SnapGene workflow follows the same steps as #link(<2.1>)[2.1] with different restriction sites:

1. Import fasta sequence of `KJ787649.1`

2. Add `XbaI` to the start and `BglII` to the end of the construct, since its recognition sites aren’t present in the EPSPS CDS, but are present in the MCS of the plasmid.

  Pad both sites with SalI site, since it doesn’t appear in the plasmid or the construct to make polymerase binding more efficient.

#image("2/2.1/2.1.x/KJ787649.1 primed Map.png", width: 100%)

3. Simulate PCR to get DNA with elongated primers.

#image("2/2.1/2.1.x/KJ787649.1_amplified Map.png", width: 100%)

4. Import pGA643 plasmid.

5. Click “Actions”, then “Restriction and Ligation cloning” and “Insert fragment”. Select vector in the first tab, amplified DNA in the second tab and press “Clone”.

#image("2/2.1/2.1.x/pGA643_KJ787649.1 Map.png", width: 100%)

#pagebreak()

=== 2.2 Insertion of gene for cry protein in a plasmid with the sequence of GFP protein, called 35S-eGFP-nosT, and used for transient expression

- Link to the #link("https://www.addgene.org/80127/")[35S-eGFP-nosT plasmid]

To complete this task follow the steps described in 2.1 section, except two important things:

- you  have to select restriction enzymes which don’t have recognition sites in the cry gene.

- when you will design reverse primer you should skip the last three nucleotides (represent stop codon) in order to keep ORF opened.

#line(length: 100%)

==== SnapGene workflow:

1. Import fasta sequence of cry protein (`EA295176.1`)

2. Create forward primer with `NcoI` and reverse primer by skipping the stop codon, following the procedure of #link(<2.1>)[2.1]

#image("2/2.2/cry primed Map.png", width: 100%)

3. Simulate PCR to get final sequence

#image("2/2.2/cry Amplified Map.png", width: 100%)

4. Import 35S-eGFP-nosT plasmid

#image("2/2.2/35S-eGFP-nosT Map.png", width: 100%)

5. Click “Actions”, then “Restriction and Ligation cloning” and “Insert fragment”. Select vector in the first tab, amplified DNA in the second tab and press “Clone”.

6. Select window with pGA643 and inserted DNA. Select inserted sequence from ATG to the  TAG codon. Click “Features”, “Add feature”, rename the inserted sequence and select CDS for the “type”.

#image("2/2.2/35S-eGFP-nosT_cry_Cloned Map.png", width: 100%)

==== Questions
#par()[]

*1. What can transient expression be used for?*

#par()[]
*2. Which restriction enzymes can be used to open the plasmid between CaMV 35S promoter and eGFP gene?*

RE's not present in the cry gene can be chosen for insertion. These are `StyI`, `BtgI` and `NcoI`.

#align(center, image("2/2.2/REs/35seGFPnosT_REs.png", width: 90%))

#pagebreak()

== 3. Exercise: Construction of CRISPR/Cas9 plasmid

TBD

#pagebreak()

= Wet lab Excercises

== 1. Exercise: PCR - amplification of two regions (microsatellite markers) from two olive varieties

== 2. Exercise - Cleaning PCR products obtained with DCA15 and EMO3 primers with QIAquick PCR Purification Kit

== 3. Exercise - Assembly of PCR products and pGEM plasmid with Gibson Assembly Kit

== 4. Sequencing with Oxford Nanonpore Technologies
