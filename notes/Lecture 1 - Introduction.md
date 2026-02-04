---
tags:
  - Biotehnologija
  - Predavanje/BT
  - Bioinformatika/GeneExpression
  - Genetika
related:
  - "[[../lectures/01-Introduction.pdf|01-Introduction]]"
index: "[[§BIOTECH-index]]"
---
# History of biotechnology

==Biotechnology== utilizes living biological systems, whole organisms or their parts to produce different products relating to different areas, such as agronomy and medicine.

It **originates in prehistoric times** when microorganisms were already used for fermentation or formation of yoghurt, cheese and milk. **Modern biotechnology** gained significant traction in the 70s when **restriction enzymes** were discovered and led to the development of different [[Lecture 4 - Genome editing|genome-editing techniques]].

# Use cases

In medicine it is less used because of it's risks to human health. I believe that studying humans is also harder than plants, which makes the whole process of treating diseases using gene-therapy slow. It can be used to knock-out genes relating to diseases (for example [BEAM-101, the first ever approved base-editing therapy](https://crisprmedicinenews.com/news/beam-101-ind-approval-for-first-ever-base-edited-therapy/))

In agronomy it can be used to create plants with traits that improve their:

- food or feed quality
	- reduced lignin content
	- improved fatty acid, amylose, fibre content
	- reduced gluten content
- crop yield, pesticide resistance, water consumption
	- resistance to viruses, bacterial infections, citrus canker
	- drought and salt tolerance
- agronomic importance
	- seed and grain weight
	- improved shatter resistance, seed number per husk and fruit size
	- improved cold storage, processing traits

It has been scientifically proven that genetically modified (GM) plants should be considered equivalent to conventionally bred plants, since there are no risks or hazzards associated with new genomic techniques (NGTs)  compared to convetional breeding techniques (<https://efsa.onlinelibrary.wiley.com/doi/10.2903/j.efsa.2024.8894>)

![[files/Pasted image 20260203181016.png|400]]

This class was mainly focused on plant tissue cultures and genetic engineering of plants. ==Plant tissue culture== broadly refers to the *in vitro* **cultivation** of all plant parts (single cell, tissue, organ) on **nutrient medium** under **aseptic (sterile) conditions**.

The basis for gene-editing techniques is knowing how genomes and genes are structured.

# Gene structure

In the chromosome both DNA strands are used as gene templates for transcription, but **for any gene only one strand is used always**, starting from the 3' end of the template.

![[files/Pasted image 20260203181845.png#invert|500]]

**DNA Template** is read from **3'-5'** orientation while the **transcribed RNA segment** will be synthesized in **5'-3'** orientation. 

mRNA sequence is **identical to non-template strand of DNA**, except that T's are replaced by U's. For this reason, the non-template DNA strand is refered to as the **coding strand**.

![[files/Pasted image 20260203182135.png#invert|700]]

Genes contain coding and non-coding RNA segments. Only mRNA constitutes the coding class. It encodes some [[../../BKEM/notes/Primarna struktura proteinov|primary protein structure]], which is synthesized during translation. 

![[files/Pasted image 20260203183958.png#invert|700]]

![[files/Pasted image 20260204154200.png#invert|700]]

[[Promoters]] function as regulatory regions, which regulate transcription/gene expression. RNA polymerases bind to these regions, which is why they are very conserved across different genes in an organism.

5'-[[UTRs]] contain recognition sites for ribosomes.

![[files/Pasted image 20260203182553.png#invert|700]]

**Promoter-proximal elements** that precede promoters improve the efficiency of gene expression.

![[files/Pasted image 20260203184543.png#invert|700]]

**Transcriptional factors** and **enhancers** also take part in gene expression.

More about regulation...

![[files/Pasted image 20260203184659.png#invert|700]]

# Transcription

In **eukaryotes** there exist 3 different types of RNA polymerases:

| polymerase         | transcribes these types of RNA                                            |
| ------------------ | ------------------------------------------------------------------------- |
| RNA polymerase I   | 28S, 5.8S, 18S **rRNA**                                                   |
| RNA polymerase II  | **mRNA**, Sm family of snRNA, some snoRNA, siRNA, miRNA, piRNA, lncRNA    |
| RNA polymerase III | **tRNA**, 5S **rRNA**, Lsm family of snRNA, some snoRNA, 7SL RNA, 7SK RNA |

## End modifications

### Cap

When RNA transcript first emerges from RNA polymerase II, a **cap** is added to the beginning (5' end) by several proteins. It consists of a 7-methylguanosine residue linked to the transcript by 3 phosphate groups. It has 2 functions:

1. It protects the transcript from **degradation when transported** to the translation site
2. It makes the transcript **noticable for translation**

### Poly-A tail

Elongation of the transcript continues until `AAUAAA` or `AUUAAA` segment, called the **polyadenylation signal** of the gene is reached, which marks the 3' end. Some enzyme recognises this sequence and cuts the transcript ~20 bp downstream. **Poly-A polymerase** adds 150-200 adenine nucleotides (poly-A tail) to it.

# Restriction enyzmes

4 types of restriction enzymes that are used in biotechnology:

1. make - **DNA polymerase's** that synthesize new polynucleotide chains based on a DNA template
2. break - **nucleases** break the DNA strands on 2 fragments by breaking the phosphodiester bond between nucleotides
	- **exonucleases** make breaks somewhere inside of the molecule
	- **endonucleases** make breaks at the end of a molecule (useful for creating sticky/blunt ends)
3. join - **ligases** join 2 DNA fragments together by creating a phosphodiester bond between their ends
4. change - **end-modification enzymes** that modify ends of DNA fragments

> Preberi v rjavi knjigici več o tem

---

[[Lecture 2 - Gene cloning]]