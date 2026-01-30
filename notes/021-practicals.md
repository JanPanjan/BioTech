---
tags:
  - Biotehnologija
  - Vaje/BT
related:
  - "[[../practicals/2/2.1/021-practicals.pdf|021-practicals]]"
  - "[[../practicals/Biotechnology drylab.pdf|Biotechnology drylab]]"
index: "[[§BIOTECH-index]]"
---
# Insertion of gene for cry protein into a pGA643 plasmid.

### 1. *Import fasta sequence of cry protein in SnapGene.*

Either like this:

![[Pasted image 20260102204158.png]]
![[Pasted image 20260102204230.png]]

Or like this:

![[Pasted image 20260102204300.png]]

Imported sequence:

![[Pasted image 20260102204315.png]]

### 2. *Select the first few nucleotides (until melting temperature 60 °C is reached) and click “Add primer”.*

![[Pasted image 20260102204543.png]]

### *Click the tab “Insertions” and select HindIII sequence to be attached to the 5’ end to the forward primer and since restriction will be more efficient if recognition site is not at the beginning of the DNA, add additional restriction site of any other restriction enzyme.

Primer zakaj izbiramo te encime:

![[Pasted image 20260102234310.png]]

Izločila se bo `MCS` regija (multiple cloning site)...

Klikneš na začetek zaporedja, najdeš `HindIII` in potem še za `Sau3AI` (ker je kratek in naredi sticky ends idk, to sem dal na začetek).

PAZI, DA DAŠ ZA PRIMERJEM, KER MI HOČEMO FRAGMENT NAMNOŽITI S TEMI REGIJAMI (na sliki je napačno).

![[Pasted image 20260102210451.png]] ![[Pasted image 20260102210725.png]]

### *Repeat the process for the reverse primer, except that the restriction site at the other site of DNA should be BglII (Bg”L”2).*

Enako, tudi tu sem dal `Sau3AI` na konec.

3. *Simulate PCR to get DNA with elongated primers.*

`Actions -> PCR` in izbereš primerja, datoteka `Amplified.dna`.

### 4. *Import pGA643 plasmid.*

Odpreš prenešeno datoteko ali pa...

![[Pasted image 20260102211822.png]]
![[Pasted image 20260102211840.png]]

### 5. *Click “Actions”, then “Restriction and Ligation cloning” and “Insert fragment”. Select vector in the first tab, amplified DNA in the second tab and press “Clone”* 

![[Pasted image 20260102212004.png]]


### 6. *Select window with pGA643 and inserted DNA. Select inserted sequence from ATG to the  TAG codon*

![[Pasted image 20260103003108.png]]
![[Pasted image 20260103003120.png]]

### *Click “Features”, “Add feature”, rename the inserted sequence and select CDS for the “type”*

![[Pasted image 20260102214059.png]]

---

![[Cloned Map 2.png]]