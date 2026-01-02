---
related:
  - "[[notebook]]"
---
- Bacterial [plasmids](https://en.wikipedia.org/wiki/Plasmid) are cyclic, but can be cut by restriction enzymes (exonucleases) into a linear shape

> E.g. we want to develop plant resistant to something, we find an appropriate bacterial gene, cut it out and splice it with a plant promotor (it won't work with a bacterial one) and insert it into back into a plant, so it can start expression when neeeded... **or?**

- Combination of restriction enzymes (cut DNA) and ligases (splice DNA back together)
- [[Gibson assembly]]

# SnapGene

## Data

- GenBank accession numbers for DCA15 (FJ492763.1) and EMO3 (AJ416321.1) loci 
- Primers for amplification of DCA15:

```
DCA-15-forward
GATCTTGTCTGTATATCCACAC

DCA-15-reverse
TATACCTTTTCCATCTTGACGC
```

- Primers for amplification of EMO3:

```
EMO-03-forward
GGTGTAGCCCAAGCCCTTAT

EMO-03-reverse
GCATGACCGTGGTGTAAGT
```

## Workflow

1. *Import pGEM-T Easy Vector sequence from “SnapGene Online Sequences…”*

![[Pasted image 20251203125140.png]]

2. *Linearize the vector (Actions/Linearize…) and add T to the 3’ ends (two AA should be on each 5’ end with blunt ends)*

![[Pasted image 20251203123610.png]]
> EcoRV is the restriction enzyme that cuts at position 60

3. *Open fasta files with DCA15 and EMO3 sequences and add/annotate (Primers/Add primer…) the primers*
	- Click one fasta file
	- copy forward and reverse primers from [[01-practicals#Data|above]]

![[Pasted image 20251203130403.png]]

4. *Simulate PCR to get final sequences for both fragments (Actions/PCR…)*

5. *Design Gibson Assembly cloning experiment (Actions/Gibson Assembly) and save file Assembled.dna*

==Select linearized sequence before doing this==
![[Pasted image 20251203130033.png]]

![[Pasted image 20251203130427.png]]
*NOTE: choose "Use as a template for PCR"!!*

![[Pasted image 20251203130444.png]]

6. *Annotate the sequences of DCA15 and EMO3 with function (Features/Add Feature…)*
	1. Copy first amplified primer (select all, ctrl-c :3)
	2. goto amplified DNA, ctrl-f search for region
	3. Features -> Add Feature

7. *Select “Map” tab, take a screenshot and include it in the notebook. Go to “Primers” tab and near the Save button click the arrow and select Export Primer Data…. Paste designed primers in the notebook.*

![[Pasted image 20251203133554.png]]

8. *Add primers on the site of T7 and SP6 promoters and simulate the PCR.* 

Notice that **T7 is left of SP6**. T7 primer will be the **forward** (top) strand, while SP6 primer will be the **bottom** one. Click on the promotor region in the assembled sequence, `Primers -> Add primer -> Make a primer from selection [top|bottom]` and name them correctly.

![[Pasted image 20251203133355.png]]

![[Pasted image 20251203133529.png]]

Goto `Actions -> PCR` and select new primers.

![[Pasted image 20251203133800.png]]

Don't choose anything else, just run the PCR. Amplified region:

![[Pasted image 20251203134130.png]] ^ce60ec

# Questions

## 1. What will the length of the PCR product be using T7 and SP6 primers? 

Has length of [[01-practicals#^ce60ec|656 bp]].
## 2. Which part of the assembled vector will be amplified with SP6 and T7 primers? 

DCA15 and EMO3 regions.
## 3. Export the amplified region as a fasta file and paste the sequence to your notebook.

```
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
```