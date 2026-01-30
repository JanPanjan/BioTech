---
tags:
  - Biotehnologija
---
# Short introduction

## Prion diseases

- Prion diseases are fatal neurodegenerative disorders of mammals
- One of them is chronic wasting disease (CWD) which affects cervids (deer) and is highly transmissable
- With high prevalence, it present challenges for deer hunting and farming industries
- A concern remains that CWD could spread to other mammalian species, even though prion diseases are generally subject to *species barrier*
- Without effective treatment of CWD, control strategies are restricted (with limited success) to population management via hunting/culling
- **It is of great importance to seek additional approaches to deal with CWD and other prion diseases that may emerge in animal populations**

## Prnp gene

- Prion diseases occur due to proteases not being able to degrade the cellular prion protein (*PrPC*), encoded by the *Prnp* gene, a glycoprotein that resides on the surface of cells (particularly neurons)
- *PrPC* is converted into an abnormal, protease-resistant conformation, reffered to as *PrPSc*.
- Partial reduction of *PrPC* expression in *Prnp* [[Hemizygous|hemizygotes]] delays prion infections
- Complete elimination of expression prevents infections entirely
- No severe phenotypes have been detected in genetically engineered *PrPC*-null animals or in goats with a naturally occuring premature stop codon within the *Prnp* ORF that prevents its expression
- **Only consistently observed phenotype is a relatively late-onset peripheral neuropathy with mild phenotypic consequences**

> LPN is nerve damage appearing in older adults, *potentially* linked to aging, diabetes, toxins, infections or autoimune issues, sometimes without cause (so kind of naturally occuring).

## Gene drive

- *Prnp* could be knocked out via gene editing
- A [[Gene drive]] mechanism would be capable of quickly spreading the resistance
- Could also be effective in wild populations
- Synthetic gene drive with CRISPR/Cas9 have proven effective in laboratory settings
- **They investigated whether a CRISPR/Cas9 gene drive could promote the spread of a null *Prnp* allele**

# Design of a CRISPR/Cas9-based gene drive mechanism to spread prion disease resistance

## Donor DNA cassette

- They planned to create a [[Donor DNA cassette]] with
	- Cas9 and [[gRNA]] coding sequences under the control of germline-specific and ubiquitous [[Promoters]]
	- as well as a modified GFP reporter transgene
- Prnp-specific [[Homology arms]] ~800bp would flank these sequences
- [[Ribonucleoprotein|RNP]] complexes of Cas9 and Prnp-specific gRNA would be delivered to generate a [[Double stranded breaks|DSB]] withing the Prnp ORF
- In the presence of the donor cassette, [[Homology-directed repair|HDR]] would result in integration of the donor sequence
- **This process would create a mobile null Prnp allele able to convert the WT allele on the sister chromosome in the germline**

![[Pasted image 20260104170640.png]]

## Selection of Prnp-specific gRNA sequences

- Initial codons of Prnp ORF were avoided in case Cas9 clevage disrupted the [[splice acceptor site]] of the exon, which can result in chimeric transcripts derived from Prnp and extending into the neighbouring gene Prnd
	- It leads to [[ectopic expression]] of Dopple (protein product of Prnd) in the brain where it's neurotoxic
- They used a gRNA design algoritm to scan codons 23-50 of murine (mice) Prnp, since residues 1-22 comprise the N-terminal signal peptide of PrPC that is absent from the mature protein (residues 23-231 in mice)
- **Top scoring sequences were usd to generate 3 slightly different gRNA for testing**

![[Pasted image 20260104180336.png]]
Link: https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0269342#sec024

# Selected Prnp gRNAs induce Cas9-mediated cleavage within the Prnp ORF

- They prepared RNP complexes of recombinant Cas9 and gRNAs
- First they made sure that complexes induced clevage of a plasmid expressing Prnp (done in vitro)
- After, they cloned gRNAs separately into the eSpCas9 vector
- They ==transiently transfected== the modified vectors into RK13 rabbit kidney epithelial cells, that stably express WT murine PrPC
- 48 h later they used flourescence-activated cell sorting (FACS) to identify cells with reduced PrPC expression due to [[Non-homologous end joining|NHEJ]] disruptions of the ORF
- **However, expression of gRNAs did not result in obvious reductions of PrPC signal intesities when compared with empty vector controls**

![[Pasted image 20260104180318.png]]
Link: https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0269342#sec024

- They selected cells with lowest signals in each sample and performed [T7E1 mismatch clevage assays](https://academic.oup.com/g3journal/article/5/3/407/6058723?login=false) on the pooled DNA
- Faint bands that indicate ORF distruptions were detected for all 3 gRNAs
- **This shows that NHEJ induced by Cas9 clevage had occured (even though most likely at low frequency)**

![[Pasted image 20260104175815.png]]

==Equivalent experiments were attempted in the mule deer brain cell line with gRNAs directed against the cervid Prnp, but low transfection efficiencies (number of expressing cells) prevented further progress in this regard.==

# Integration of a DNA cassette into the Prnp locus of murine neuroblastoma cells by HDR of Cas9-induced DSBs

- Next step is to replace endogenous Prnp with a mobile null allele
- They designed a simplified version of the donor cassette (I don't know what was simplified)
- Reporter gene consisted of GFP without start codon fused to codons 230-254 of murine Prnp, which encode the PrPC C-terminal signal peptide

![[Pasted image 20260104180919.png]]

- This way they created a transgene that they termed *Gfp-GPI*
- **[[Homology-directed repair|HDR]] integration of the cassette should result in GFP expression at cell surface driven by Prnp regulatory elements**

## Results



# Generation of CRISPR/Cas9-induced disruptions of the Prnp ORF in mice

# Transgenic mice expressing Cas9 under control of the Prl3b1 promoter do not express Cas9 in the germline
