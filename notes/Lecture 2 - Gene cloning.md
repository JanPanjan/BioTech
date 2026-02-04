---
tags:
  - Biotehnologija
  - Predavanje/BT
related:
  - "[[../lectures/02-Gene cloning.pdf|02-Gene cloning]]"
index: "[[§BIOTECH-index]]"
---
==Gene cloning== is a technique that assembles the gene of interest into recombinant DNA molecules and replicates that in a host organism.

1. **Isolation** of the gene of interest.
2. **Insertion** of a fragment of DNA into a small replicating DNA molecule - vector (recombinant vector is vector with inserted fragment).
3. **Intruduction** of the recombinant vector into a host cell by [[../../EvoBio/notes/Horizontal gene transfer|transformation]].
4. **Replication** of the DNA inside of the host.

Essential components of gene cloning:

- [[Lecture 1 - Introduction#Restriction enyzmes|restriction enzymes]] (cutting, splicing)
- **cloning vectors**
- **DNA fragments**
- **selection method** to differentiate between host cells that accepted the vector and those who didn't

![[files/Pasted image 20260204160137.png#invert|700]]

# Plasmids

==Plasmids== are **double-stranded closed circular self-replicating DNA molecules** that exist in cells as extrachromosomal units. They are found in different **bacterial** species. 

They range in size from 1-200 kb. There exist 3 general classes of plasmids:

1. **virulence plasmids:** encode toxin genes.
2. **drug resistance plasmids:** resistance to antibiotics.
3. plasmids with genes required for [[../../EvoBio/notes/Horizontal gene transfer|bacterial conjugation]] (F plasmid, *tra* genes)

A plasmid vector used for cloning is specifically developed by adding certain features to it:

- **Reduction in size to a minimum:** this expands its capacity making it able to clone large fragments. Transformation is less efficient with plasmids larger than 15 kb. Good size is 3-4 kb.
- **Origin of replication:** specific sequence where replication can be initiated from
- **Selectable markers**
- **Synthetic cloning sites** (polylinkers, polycloning sites) that are recognized by restriction enzymes.
- **Control elements:** needed for expression of cloned DNA ([[../project/Promoters]], terminators, ribosome binding sites ~ [[UTRs]])

**Escherichia coli K-12** was used by Stanley Cohen and Herb Boyer for their molecular biology experiments in the early 70s. It's easy to grow, nonpathogenic, which is why it's widely used as the host for gene cloning.

## *E. coli* vectors

### pBR322

![[files/Pasted image 20260204161755.png#invert|700]]

### pUC8

![[files/Pasted image 20260204161810.png#invert|700]]
![[files/Pasted image 20260204162121.png#invert|700]]

### pGEM37

![[files/Pasted image 20260204161821.png#invert|700]]

# Identification of recombinants

Plating host cells onto a **selective medium** enables recombinant ones (transformants) to be distinguished from non-transformants. With most cloning vectors, insertion of a DNA fragment **destroys the integrity of one of the genes present in it.** 

Recombinants can be identified because the *characteristic* coded by the inactivated gene can no longer be displayed by the host cells.

![[files/Pasted image 20260204162205.png#invert|700]]

## Recombinant selection with pBR322

It contains several **single-copy restriction sites** that can be used to open it up before insertion. *BamHI* for example cuts at a position inside a cluster of genes that code for resistance to **tetracyline (class of antibiotics).** Cells containing the recombinant molecule aren't resistant to it, but are resistant to **ampicillin (also an antibiotic).**

Screening for recombinants:

1. After transformation, cells are plated onto amicillin medium and incubated until colonies appear. Note that all of these colonies are transformants because they are resistant to ampicillin (they contain the vector).
2. To identify which contain recombinant vectors, colonies are plated onto an agar medium with tetracyline.
3. Colonies that grow are not recombinant, because they are resistant to tetracyline. Those that don't grow are recombinants. Reference back to the original ampicillin plate reveals positions of these colonies. Samples are collected.

![[files/Pasted image 20260204162053.png#invert|700]]

## Recombinant selection with pUC8

Insertional inactivation of an antibiotic resistance gene is effective for recombinant identifiaction, but it's inconvenient - we need to carry out 2 screenings. Modern plasmids, like pUC8, integrate a different system.

It carries the ampicillin resistance gene *lacZ* and *lacZ'* that codes for the $\alpha-$peptide of $\beta-$galactosidase enzyme. Cloning involves insertional inactivation of the *lacZ'*. Recombinants can be identified by their inability to synthesize $\beta-$galactosidase (the enzyme is involed in the breakdown of lactose to glucose and galactose).

Some *E. coli* strains have a modified *lacZ*-gene that lacks the segment *lacZ'*. They can synthesize the enzyme only when they harbour a plasmid with the missing *lacZ'* segment.

1. Selection of transformants on ampicillin agar (functional *lacZ*).
2. Screening for $\beta-$galactosidase activity to identify recombinants, which are *amp^R* (resistant to ampicillin) but unable to make $\beta-$galactosidase (disfunctional *lacZ'*).

Screening for $\beta-$galactosidase presence is tested via X-gal (lactose analogue) which is broken down by the enyzme into a **blue-coloured product**. Non-recombinant colonies (cells that synthesize $\beta-$galactosidase) will be coloured blue. **Recombinants** with disrupted *lacZ'* gene (unable to make $\beta-$galactosidase) **will be white**.

> Pro: 2 screenings are carried out on a single plate at the same time.

![[files/Pasted image 20260204163751.png#invert|700]]

# Introduction of phage DNA into bacterial cells

There are 2 different methods by which a recombinant DNA molecule constructed with a phage vector can be introducted into a bacterial cell: transfection or *in vitro* packaging.

---

[[Lecture 1 - Introduction]] | [[Lecture 3 - Marker genes]]