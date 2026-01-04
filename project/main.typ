#show link: l => { text(fill: blue, underline(l)) }
#show heading: h => { par()[]; align(center, h); par()[] }
#set text(font: "Charter")

to je verjetno tvoj del ampak mam zase napisano

#align(center, line(length: 100%))

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

#align(center, line(length: 100%))
#pagebreak()

= Design of a CRISPR/Cas9-based gene drive mechanism to spread prion disease resistance

== Donor DNA cassette

- They planned to create a Donor DNA cassette with
	- Cas9 and gRNA coding sequences
	- germline-specific promoters
	- ubiquitous (active in all cells) promoters
	- a modified GFP reporter transgene (omenjeno v #link(<a>)[tem delu])
 - Prnp-specific Homology arms ~800bp to flank these sequences
 
- Ribonucleoprotein (RNP) complexes of Cas9 and _Prnp_-specific gRNA would be delivered to generate a double stranded break (DSB) withing the _Prnp_ ORF
- In the presence of the donor cassette, Homology-directed repair (HDR) would result in integration of the cassette
- This process would create a mobile null _Prnp_ allele able to convert the wildtype allele on the sister chromosome in the germline

#align(center, image("files/Pasted image 20260104170640.png", width: 70%))

== Selection of Prnp-specific gRNA sequences

- Initial codons of Prnp ORF were avoided in case Cas9 clevage disrupted the splice acceptor site of the exon, which can result in chimeric transcripts derived from Prnp and extending into the neighbouring gene Prnd
	- It leads to ectopic expression of Dopple (protein product of Prnd) in the brain where it's neurotoxic
- They used a gRNA design algoritm to scan codons 23-50 of murine (mice) Prnp, since residues 1-22 comprise the N-terminal signal peptide of PrPC that is absent from the mature protein (residues 23-231 in mice)
- Top scoring sequences were usd to generate 3 slightly different gRNA for testing

#align(center, image("files/Pasted image 20260104180336.png"))

= Selected Prnp gRNAs induce Cas9-mediated cleavage within the Prnp ORF

- They prepared RNP complexes of recombinant Cas9 and gRNAs
- First they made sure that complexes induced clevage of a plasmid expressing Prnp (done in vitro)
- After, they cloned gRNAs separately into the eSpCas9 vector
- They ==transiently transfected== the modified vectors into RK13 rabbit kidney epithelial cells, that stably express wildtype murine PrPC
- 48 h later they used flourescence-activated cell sorting (FACS) to identify cells with reduced PrPC expression due to Non-homologous end joining (NHEJ) disruptions of the ORF
- However, expression of gRNAs did not result in obvious reductions of PrPC signal intesities when compared with empty vector controls

#align(center, image("files/Pasted image 20260104180318.png", width: 70%))

- They selected cells with lowest signals in each sample and performed T7E1 mismatch clevage assays on the pooled DNA
- Faint bands that indicate ORF distruptions were detected for all 3 gRNAs
- This shows that NHEJ induced by Cas9 clevage had occured (even though most likely at low frequency)

#align(center, image("files/Pasted image 20260104175815.png"))

#text(fill: orange)[Equivalent experiments were attempted in the mule deer brain cell line with gRNAs directed against the cervid Prnp, but low transfection efficiencies (number of expressing cells) prevented further progress in this regard.]

= Integration of a DNA cassette into the Prnp locus of murine neuroblastoma cells by HDR of Cas9-induced DSBs <a>

- Next step is to replace endogenous Prnp with a mobile null allele
- They designed a simplified version of the donor cassette (I don't know what was simplified)
- Reporter gene consisted of GFP without start codon fused to codons 230-254 of murine Prnp, which encode the PrPC C-terminal signal peptide

#align(center, image("files/Pasted image 20260104180919.png", width: 40%))

- This way they created a transgene that they termed Gfp-GPI (GPI = Glycophosphatidylinositol)
- HDR integration of the cassette should result in GFP expression, driven by Prnp regulatory elements, at cell surface level via GPI

== Results

- N2a murine neuroblastoma cells were co-transfected with the donor vector and eSpCas9 expression vectors containing Prnp gRNAs.
- they were unable to detect cells expressing the reporter using fluorescence microscopy to examine bulk cell populations.
- Nonetheless, integration of the Gfp-GPI transgene did occur, at least in some cells
- #text(fill: red)[3’ junction PCR analysis] (nevem točno kaj je junction PCR, ampak mislim, da je povezan s #link("https://en.wikipedia.org/wiki/Holliday_junction")[tem]) of pooled DNA samples collected 3 days after transfection resulted in bands of the expected size only when Prnp gRNAs were present (Fig 3B).
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

#pagebreak()

= Terminology

/ capilary western analysis: #link("https://pdf.sciencedirectassets.com/271409/1-s2.0-S0021967322X00162/1-s2.0-S0021967322005829/am.pdf?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEG0aCXVzLWVhc3QtMSJIMEYCIQC6E6XLHccVcAADJhMshLOolnxNc0ibmtD0QKRvwg8ixwIhAI24%2FpbFlk4Kvx1A14mjRpnW4D1t4yTavq5iQngzdZWrKrMFCDUQBRoMMDU5MDAzNTQ2ODY1IgwPH%2FBwtn9cvIi0LoMqkAXirh3N7T9WN4QFxcZFzRzKHs5AaKFfnGRKmt7dEGByBXyGyEJbF3aNhNoVaPuSgTKkNnN7NYcmU86UXSwUzyw57b%2BLpSz62isO1eUuljdkkMxwNlvuF3mgNfI37s5utOIjEycj55IaKGQrl1yY3%2F%2Fm6ko5gDAhZ13RYl4gjyc1o3vJ6m%2FrvEBALGtK%2BdEAqphgL%2BoiSyAkNQhrWKA1bVk69c94vQTbF6Os%2BGWAJm%2FCGJOjrr9VyeZOJqFtnYGilqOufx8yD9%2FJMzUcBU55vNbIJbV06DhlojURsAFUd44fBPjUH1aaUhQJYsO4SrbJN9sOT9k2bkmOCx0XA1SpSwJBPAnLcpJYgnquZJPSzQHBh%2BpoU61Q9ri1dRaW0A82cIpWaBYt7CcZgJ4mhADxWt5drHVH2D%2B38ODpJmiRP8xxSC31tvJ3WY%2FVoV%2FCntwXnnjJXjBCX6X7ujkc6wYlnxEQmaMEIrcirbXR5EdxbAImHCh7G97uZLQbFH98Sbyxqsrh6dkcL6M28McEgdu3K4lmM2VNoBhTPjArtO4IYkWPt7%2BI%2BtWLzV9RSuAJPB0Zr11PZLeb9FmUGADyoVaIDzCaJS4OG6REbMJjM%2FRhds6D9q4CcOexMrdz33BxKp2MvrEwgaOnLVeARs9tP6XB8X9yK5a8s4EQwYg611yrN86ZuV25UR%2BHwL1A1UBQiUBIiGHmsiQVPWaBv2RjfLkyfo%2B8uFZZUev%2FHfVpftgXoIgkTM6K7vCJWXonZ5fDhxyoz%2Bb9t3MC%2BJ0Tt20tHG%2BW%2FF%2BYaomr%2FaTpCNjGyX6A9VjOc0jaciNv4v4MCSuRXJQljB0xtJezq2koz0zFqSuYHACoHULSqppN%2Fgwg4rHHrDhc0jCgkOvKBjqwAZSA9OFX1PGZKtbzezwFhPaLPbLt02%2Bn6WhT%2FianNCN2B%2BY3OVcSvAEso4Zx5CzPhPjtB9mHCaRlq7dfXsykmYPB%2FoZzQjsojQAMlc24RNtc9xX6PbuL5%2Ba10Ig0p66a9KfvBwfsPQSA7uqI3q8UNCs%2B64FcLt60%2F%2F2PlfKh0JtX%2BQggWzk40O3fjDnx%2F7qr8AUskRUjo%2FWf%2FdOJc1qL%2FaLCqBTDEO2GW%2BeSX9%2BOj5qw&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20260104T213949Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIAQ3PHCVTYUFXJUGWJ%2F20260104%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=30ba6f2c6953d4ffbe4800e63119a131df18e48ea408da087fbad8a0aa97f913&hash=df93f596a54ba19690562d61c69fd250c0a925f9c045132c177028876dc3aa16&host=68042c943591013ac2b2430a89b270f6af2c76d8dfd086a07176afe7c76c2c61&pii=S0021967322005829&tid=pdf-7f2511fd-cdfb-4ce7-bc94-a66c2edfd0d1&sid=72a1389761cd7643044a56e6deeb0b09e079gxrqb&type=client")[idk man]

/ donor cassette: a custom DNA construct containing a gene of interest, flanked by homology arms. Used in gene editing to guide insertion or replacement of DNA via homology-directed repair.

/ ectopic expression: expression of a gene and production of its protein in an abnormal location, cell type or developmental stage where it's not normally found.

/ electroporation: a highly efficient method of transfection. During electroporation, an electrical pulse is used to create temporary pores in cell membranes through which substances like nucleic acids can pass. Can be used for all cell types and for transfection of DNA, RNA, mRNA, RNPs, or proteins.

/ endogenous: growing or originating from within an organism.

/ flourescence-activated cell sorting (FACS): a method with which we can measure the antigen levels on the cell surface. Cells are dyed with a fluorescent antibody, then placed in a stream of liquid which passes the focus of a laser. Each cell emits light. We can measure fluorescence intensity of the inside and outside of a cell and also its biological characteristics, such as size and internal structure. 

/ fluorescence microscopy: a technique that examines fluorescent substances using a microscope.

/ gene drive: molecular mechanisms that promote inheritance of a DNA sequence at high frequencies. Such mechanisms exist in nature and include transposable elements, meiotic drivers and mating type swithing in yeast.

/ germline: a unique cell lineage that contains all of the genetic information of an individual and transmits it to the next generation.

/ gRNA: short RNA molecule that directs the Cas protein to a specific region of DNA.

/ hemizygous: describes an individual who has only one member of a chromosome pair or chromosome segment rather than the usual two. Hemizygosity is often used to describe X-linked genes in males who have only one X chromosome.

/ homology arms: flanking DNA sequences on a gene-editing template (like a Donor DNA cassette) that match the DNA region around a target site. They guide the HDR machinery to insert, delete or replace specific DNA segments precisely where intended. Can range to tens of thousands of base pairs to ensure accurate targeting for knock-in/knock-out models.

/ homology-directed repair (HDR): a natural DNA repair mechanism that fixes DSBs by using a homologous DNA template (e.g. sister chromatid, introduced donor DNA). From a clinical perspective, HDR is well suited to repair gene mutations or to add in therapeutic genes, since there is, generally, a lesser chance of an error occuring (unlike NHEJ).

/ homogenates: samples derived from solid or semi-solid tissue that have been disrupted through homogenization, allowing for the extraction and analysis of analytes.

/ microinjection: a method for gene transfer in animals that involves injection of foreign DNA into the nucleus of a fertilized ovum (egg cell), to produce genetically engineered organisms.

/ mismatch clevage assays: "Genome editing using engineered nucleases is used for targeted mutagenesis. But because genome editing does not target all loci with similar efficiencies, the mutation hit-rate at a given locus needs to be evaluated. The analysis of mutants obtained using engineered nucleases requires specific methods for mutation detection, and the enzyme mismatch cleavage method is used commonly for this purpose." (dobljeno #link("https://academic.oup.com/g3journal/article/5/3/407/6058723?login=false#:~:text=Genome%20editing%20using,for%20this%20purpose.")[tu])

/ neuroblastoma cells: immature nerve cells.

/ non-homologous end joining (NHEJ): an error prone DNA repair process where double strand breaks are directly ligated, commonly resulting in insertion or deletion mutations.

/  promoters: regulatory regions of DNA, located upstream of a gene. They act as binding sites for RNA polymerase and transcription factors, signaling where to start transcribing a gene into RNA, thereby controlling gene expression.

/ splice acceptor site: DNA/RNA sequence at the 3' end of an intron (downstream) that signals where the splicing machinery should cut to remove the intron and join the adjacent exons to form mature mRNA. Mutations can cause exon skipping.

/ transgene: gene that has been transferred naturally or by genetic engineering techniques from one organism to another

/ transfection: a process by which foreign nucleic acids are delivered into a eukaryotic cell to modify the host cell’s genetic makeup.

/ transient transfection: transfection resulting in temporary expression of the desired protein.

/ transfection efficiencies: number of Expressing Cells ÷ Total Number of Cells

/ ubiquitous promoters: active in all cells
