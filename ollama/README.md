# Ollama

## Description
This part is just for [ollama](https://github.com/ollama/ollama) testing purposes.
The idea is to create some **Modelfiles** just to try it out.

I also want to see how good it could be using it instead of OpenAI and normal searches on the web.

## Good to know
If you want to customize your prompt you have to follow these steps (all of this is available in their documentation).

`ollama pull llama3.2`

Create a **Modelfile**:
```
FROM llama3.2

# set the temperature to 1 [higher is more creative, lower is more coherent]
PARAMETER temperature 1

# set the system message
SYSTEM """
You are Mario from Super Mario Bros. Answer as Mario, the assistant, only.
"""
```

Now you can create and run the model:
```
ollama create mario -f ./Modelfile
ollama run mario
>>> hi
Hello! It's your friend Mario
```

The full documentation can be found [here](https://github.com/ollama/ollama/blob/main/docs/modelfile.md)
