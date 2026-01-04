—--------------— to je verjetno tvoj del ampak mam zase napisano —---------------------------------

= Short introduction

== Prion diseases

- Prion diseases are fatal neurodegenerative disorders of mammals
- One of them is chronic wasting disease (CWD) which affects cervids (deer) and is highly transmissable
- With high prevalence, it present challenges for deer hunting and farming industries
- A concern remains that CWD could spread to other mammalian species, even though prion diseases are generally subject to species barrier
- Without effective treatment of CWD, control strategies are restricted (with limited success) to population management via hunting/culling
- It is of great importance to seek additional approaches to deal with CWD and other prion diseases that may emerge in animal populations

== Prnp gene

- Prion diseases occur due to proteases not being able to degrade the cellular prion protein (PrPC), encoded by the Prnp gene, a glycoprotein that resides on the surface of cells (particularly neurons)
- PrPC is converted into an abnormal, protease-resistant conformation, reffered to as PrPSc.
- Partial reduction of PrPC expression in Prnp Hemizygous|hemizygotes delays prion infections
- Complete elimination of expression prevents infections entirely
- No severe phenotypes have been detected in genetically engineered PrPC-null animals or in goats with a naturally occuring premature stop codon within the Prnp ORF that prevents its expression
- Only consistently observed phenotype is a relatively late-onset peripheral neuropathy with mild phenotypic consequences

LPN is nerve damage appearing in older adults, potentially linked to aging, diabetes, toxins, infections or autoimune issues, sometimes without cause (so kind of naturally occuring).

== Gene drive

- Prnp could be knocked out via gene editing
- A Gene drive mechanism would be capable of quickly spreading the resistance
- Could also be effective in wild populations
- Synthetic gene drive with CRISPR/Cas9 have proven effective in laboratory settings
- They investigated whether a CRISPR/Cas9 gene drive could promote the spread of a null Prnp allele

—------------------------------------------------------------------------------------------------------------------------

= Design of a CRISPR/Cas9-based gene drive mechanism to spread prion disease resistance

== Donor DNA cassette

- They planned to create a Donor DNA cassette with
	- Cas9 and gRNA coding sequences
	- germline-specific promoters
	- ubiquitous (active in all cells) promoters
	- a modified GFP reporter transgene (omenjeno pri "Integration of a DNA cassette into the Prnp locus of murine neuroblastoma cells by HDR of Cas9-induced DSBs"
    - Prnp-specific Homology arms ~800bp to flank these sequences
- Ribonucleoprotein (RNP) complexes of Cas9 and Prnp-specific gRNA would be delivered to generate a Double stranded breaks (DSB) withing the Prnp ORF
- In the presence of the donor cassette, Homology-directed repair (HDR) would result in integration of the cassette
- This process would create a mobile null Prnp allele able to convert the wildtype allele on the sister chromosome in the germline

#image("files/Pasted image 20260104170640.png")

== Selection of Prnp-specific gRNA sequences

- Initial codons of Prnp ORF were avoided in case Cas9 clevage disrupted the splice acceptor site of the exon, which can result in chimeric transcripts derived from Prnp and extending into the neighbouring gene Prnd
	- It leads to ectopic expression of Dopple (protein product of Prnd) in the brain where it's neurotoxic
- They used a gRNA design algoritm to scan codons 23-50 of murine (mice) Prnp, since residues 1-22 comprise the N-terminal signal peptide of PrPC that is absent from the mature protein (residues 23-231 in mice)
- Top scoring sequences were usd to generate 3 slightly different gRNA for testing

#image("files/Pasted image 20260104180336.png")

= Selected Prnp gRNAs induce Cas9-mediated cleavage within the Prnp ORF

- They prepared RNP complexes of recombinant Cas9 and gRNAs
- First they made sure that complexes induced clevage of a plasmid expressing Prnp (done in vitro)
- After, they cloned gRNAs separately into the eSpCas9 vector
- They ==transiently transfected== the modified vectors into RK13 rabbit kidney epithelial cells, that stably express wildtype murine PrPC
- 48 h later they used flourescence-activated cell sorting (FACS) to identify cells with reduced PrPC expression due to Non-homologous end joining (NHEJ) disruptions of the ORF
- However, expression of gRNAs did not result in obvious reductions of PrPC signal intesities when compared with empty vector controls

#image("files/Pasted image 20260104180318.png")

- They selected cells with lowest signals in each sample and performed #link("https://academic.oup.com/g3journal/article/5/3/407/6058723?login=false")[T7E1 mismatch clevage assays] on the pooled DNA
- Faint bands that indicate ORF distruptions were detected for all 3 gRNAs
- This shows that NHEJ induced by Cas9 clevage had occured (even though most likely at low frequency)

#image("files/Pasted image 20260104175815.png")

==Equivalent experiments were attempted in the mule deer brain cell line with gRNAs directed against the cervid Prnp, but low transfection efficiencies (number of expressing cells) prevented further progress in this regard.==

= Integration of a DNA cassette into the Prnp locus of murine neuroblastoma cells by HDR of Cas9-induced DSBs

- Next step is to replace endogenous Prnp with a mobile null allele
- They designed a simplified version of the donor cassette (I don't know what was simplified)
- Reporter gene consisted of GFP without start codon fused to codons 230-254 of murine Prnp, which encode the PrPC C-terminal signal peptide

#image("files/Pasted image 20260104180919.png")

- This way they created a transgene that they termed Gfp-GPI (GPI = Glycophosphatidylinositol)
- Homology-directed repair (HDR) integration of the cassette should result in GFP expression, driven by Prnp regulatory elements, at cell surface level via GPI

== Results

- N2a murine neuroblastoma cells were co-transfected with the donor vector and eSpCas9 expression vectors containing Prnp gRNAs.
- they were unable to detect cells expressing the reporter using fluorescence microscopy to examine bulk cell populations.
- Nonetheless, integration of the Gfp-GPI transgene did occur, at least in some cells
- 3’ junction PCR analysis of pooled DNA samples collected 3 days after transfection resulted in bands of the expected size only when Prnp gRNAs were present (Fig 3B).
- A follow-up 5’ junction PCR analysis for Prnp gRNA–1 (best performing one) also resulted in bands indicative of donor DNA integration (Fig 3C).
- after 6 days the bands were more intense for both the 5’ and 3 junction fragments (Fig 3D), although a side-by- side numerical comparison of the two conditions was not performed.
- potem še nekaj yappajo o nekem problemu pri vstavljanju in kako so preverili, da se v večini primerov vstavi plazmid, ampak je vse skupaj preveč za povedat, morda samo omenim, da so še to preverili
- These data show that they succeeded in integrating a ~1.2 kb DNA sequence (the Gfp-GPI transgene) into the Prnp ORF of N2a cells and that this integration occurred precisely in the majority of cases.

= Generation of CRISPR/Cas9-induced disruptions of the Prnp ORF in mice

- they tested the effectiveness of the complexes with the chosen Prnp gRNAs in vivo
- 2 attempts were made at microinjecting (dobesedno z iglo) complexes into mouse oocytes were unsuccessful
- sequencing of 31 live pups revealed no ORF disruptions
- on the other hand, electroporation was effective, yielding 3 pups out of 18 with ORF disruptions
- Two founders (=34 and =36) had in-frame deletions (21 bp and 6 bp) close to the expected Cas9 cleavage site
- the presence of a disrupted Prnp allele in founder 34 was confirmed by T7E1 assay (Fig 4B).
- An additional founder (=33) had a frameshift mutation resulting from an insertion of 1 bp that was predicted to generate an abnormal sequence from codon 39 onwards with a new stop codon at position 78
- Homozygous progeny were obtained for line 33 and a lack of PrPC expression in the brain was confirmed by ==capillary western analysis== (tud za to) (Fig 4C).
- spet neki yappajo potem glede =34, ampak mislim da bom izpustil

= Transgenic mice expressing Cas9 under control of the Prl3b1 promoter do not express Cas9 in the germline

- Having created mice with Cas9-induced Prnp disruptions, they attempted to engineer mice capable of expressing Cas9 in the germline
- they searched for a male germline-specific promoter
	- findings from an earlier study in mosquitos suggested that expression in the female germline can lead to Cas9 persistence in the egg, causing NHEJ-induced indels that render the target gene resistant to the drive mechanism
- The gene Prl3b1 was chosen
- transgenic (Tg) mice expressing eCas9 under control of the Prl3b1 promoter (Prl3b1-eCas9+/–) were generated
- they were unable to detect expression of eCas9 in various male urogenital tissues of Prl3b1-eCas9+/–Tg mice derived from founder 4 (Fig 5A).
- Testes isolated from mice derived from other founders were also analysed, as were female reproductive tract tissues (ovaries) from the same mice, but no Cas9 expression was observed (Fig 5B).

== Placenta

- In addition to its reported activity in the male germline, Prl3b1 is expressed in the placenta.
- they crossed Prl3b1-eCas9+/–and wildtype mice and prepared homogenates of embryos extracted from 15 dpc pregnant females together with their respective placentas.

> homogenates - samples derived from solid or semi-solid tissue that have been disrupted through homogenization, allowing for the extraction and analysis of analytes

- Cas9 expression was detected in approximately half of the embryo-placenta homogenates (Fig 5C), which indicates that the transgene construct was functional
- the problem clearly lay with the promoter, which was not sufficiently active in the male germline for our purposes.

---

= Terminology

/ ubiquitous promoters:: active in all cells
