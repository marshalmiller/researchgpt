# ResearchGPT

This is a flask app provides an interface to enable a conversation with a research paper. You can enter a link to a pdf hosted online or upload your own pdf. The app will then extract the text from the pdf, create embeddings from the text and use them with the openai api to generate a response to a question you ask. It will also return a source for the part of the text it used to generate the response and the page number.

## Installation

```bash
git clone https://github.com/marshalmiller/researchgpt.git
cd researchgpt
pip install -r requirements.txt
```

## Usage

You need to have an openai api key and set it as the environment variable 'OPENAI_API_KEY'.

```bash
python main-local.py
```

## Google Cloud Deployment

Follow the instructions here: https://cloud.google.com/appengine/docs/standard/python3/building-app/deploying-web-service
Once you have the app.yaml file set up with your openai key and also have gcloud cli set up, you can deploy with:

```bash
gcloud app deploy
```

To stream logs:

```bash
gcloud app logs tail
```
