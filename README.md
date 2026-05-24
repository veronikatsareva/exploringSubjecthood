<div align="center">

# Exploring Subjecthood in Multilingual Models

</div>

## What is it?

This repository contains the code for the experiments conducted within the graduation thesis «Exploring Subjecthood in Multilingual Models» (HSE, 2026).

In this research, I aimed to investigate what a subjecthood can be inside a multilingual LLM as it is a complex linguistic concept that unites the notions of morphology, syntax, semantics and discourse.

The main methodology are the structural probing and the analysis of embeddings of two models: mBERT and XLM-RoBERTa. The results are overviewed in the end of this README.

## Structure & Usage

The structure of this repository is as follows.

```
├── LICENSE
├── README.md
├── notebooks
│   ├── experiments_XLM_R.ipynb
│   └── experiments_multilingual_BERT.ipynb
│   └── data_explorative_analysis.ipynb
└── sample.R
```

All code was executed using the compute units of [Google Colab](https://colab.research.google.com/). In order to replicate the expriments, one needs all the relevant versions of all modules and packages that were available at the time of the research (June, 2026).

The directory `notebooks` contains three `.ipynb` notebooks with the code for the experiments:

1) `notebooks/data: explorative analysis.ipynb` contains the code for the exploration of datasets used in the research
2) `notebooks/experiments_multilingual_BERT.ipynb` contains the code for the fine-tuning and probing `multilingual BERT`
3) `notebooks/experiments_XLM_R.ipynb` contains the code for the fine-tuning and probing `XLM-RoBERTa`

All the experiments can be reproduced by simply running the code from the respective `.ipynb` notebook.

The sample is visualized by the script in `sample.R`.

## Data

The data used in the experiments is Universal Dependencies Treebank $v2.17$. All releases of datasets can be found [here](https://universaldependencies.org/download.html). The links to the used corpora are collected in the table below.

| Language  | Treebank | Train | Dev   | Test   |
| :-------- | :------: | :---: | :-:   |:----:  |
| Arabic    | UD_Arabic-PADT | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Arabic-PADT/refs/heads/master/ar_padt-ud-train.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Arabic-PADT/refs/heads/master/ar_padt-ud-dev.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Arabic-PADT/refs/heads/master/ar_padt-ud-test.conllu) |
| Basque    | UD_Basque-BDT | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Basque-BDT/refs/heads/master/eu_bdt-ud-train.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Basque-BDT/refs/heads/master/eu_bdt-ud-dev.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Basque-BDT/refs/heads/master/eu_bdt-ud-test.conllu) |
| English   | UD_English-EWT | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_English-EWT/refs/heads/master/en_ewt-ud-train.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_English-EWT/refs/heads/master/en_ewt-ud-dev.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_English-EWT/refs/heads/master/en_ewt-ud-test.conllu) |
| German    | UD_German-GSD | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_German-GSD/refs/heads/master/de_gsd-ud-train.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_German-GSD/refs/heads/master/de_gsd-ud-dev.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_German-GSD/refs/heads/master/de_gsd-ud-test.conllu) |
| Hindi     | UD_Hindi-HDTB | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Hindi-HDTB/refs/heads/master/hi_hdtb-ud-train.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Hindi-HDTB/refs/heads/master/hi_hdtb-ud-dev.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Hindi-HDTB/refs/heads/master/hi_hdtb-ud-test.conllu) |
| Russian   | UD_Russian-GSD | [link](https://github.com/UniversalDependencies/UD_Russian-GSD/raw/refs/heads/master/ru_gsd-ud-train.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Russian-GSD/refs/heads/master/ru_gsd-ud-dev.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Russian-GSD/refs/heads/master/ru_gsd-ud-test.conllu) |
| Turkish   | UD_Turkish-Penn | [link](https://github.com/UniversalDependencies/UD_Turkish-Penn/raw/refs/heads/master/tr_penn-ud-train.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Turkish-Penn/refs/heads/master/tr_penn-ud-dev.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Turkish-Penn/refs/heads/master/tr_penn-ud-test.conllu) |
| Welsh     | UD_Welsh-CCG | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Welsh-CCG/refs/heads/master/cy_ccg-ud-train.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Welsh-CCG/refs/heads/master/cy_ccg-ud-dev.conllu) | [link](https://raw.githubusercontent.com/UniversalDependencies/UD_Welsh-CCG/refs/heads/master/cy_ccg-ud-test.conllu) |

## List of models

Within the study, I have fine-tuned two multilingual models: `multilingual BERT` and `XLM-RoBERTa`. All fine-tuned versions are available in [Hugging Face](https://huggingface.co/). The links are collected in the table below.

| Language  | [multilingual BERT](https://github.com/google-research/bert/blob/master/multilingual.md#list-of-languages) | [XLM-RoBERTa](https://github.com/huggingface/transformers/blob/main/docs/source/en/model_doc/xlm-roberta.md)   |
| :-------- | :---------------: | :---------:   |
| Arabic    |  [link](https://huggingface.co/fromdeath2morning/mbert-argumentClassification-arabic)             | [link](https://huggingface.co/fromdeath2morning/xlm-r-argumentClassification-arabic)          |
| Basque    |  [link](https://huggingface.co/fromdeath2morning/mbert-argumentClassification-basque)             | [link](https://huggingface.co/fromdeath2morning/xlm-r-argumentClassification-basque)          |
| English   |  [link](https://huggingface.co/fromdeath2morning/mbert-argumentClassification-english)             | [link](https://huggingface.co/fromdeath2morning/xlm-r-argumentClassification-english)          |
| German    |  [link](https://huggingface.co/fromdeath2morning/mbert-argumentClassification-german)         | [link](https://huggingface.co/fromdeath2morning/xlm-r-argumentClassification-german)          |
| Hindi     |  [link](https://huggingface.co/fromdeath2morning/mbert-argumentClassification-hindi)             | [link](https://huggingface.co/fromdeath2morning/xlm-r-argumentClassification-hindi)          |
| Russian   |  [link](https://huggingface.co/fromdeath2morning/mbert-argumentClassification-russian)            | [link](https://huggingface.co/fromdeath2morning/xlm-r-argumentClassification-russian)          |
| Turkish   |  [link](https://huggingface.co/fromdeath2morning/mbert-argumentClassification-turkish)             | [link](https://huggingface.co/fromdeath2morning/xlm-r-argumentClassification-turkish)          |
| Welsh     |  [link](https://huggingface.co/fromdeath2morning/mbert-argumentClassification-welsh)             | [link](https://huggingface.co/fromdeath2morning/xlm-r-argumentClassification-welsh)          |

## Results

The results of the paper are as follows.
1. The distribution of the `S`-, `A`- and `P`-arguments is unbaalanced throughout the UD treebanks.
2. Despite the language, the best classified argument is `S`.
3. Both models achieve high results but XLM-RoBERTa is better than mBERT (in probing and crosslingually).
4. The highest classification metrics are accumulated on the middle-last layers of both models.
5. Despite the high metrics, three languages stand out in the sample within crosslingual evaluation – English, Russian and German.
6. The dominant word order or morphosyntactic alignment alone are not the key factors that affect the classification.
7. Both models do not lock upon the dominant word order of the respective language that they were fine-tuned on.
8. The visualization of the embeddings shows a clear bias towards the accusative alignment.

## License

[GNU GENERAL PUBLIC LICENSE](https://choosealicense.com/licenses/gpl-3.0/)
