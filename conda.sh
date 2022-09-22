#!/bin/bash

echo ""
echo "Installing Miniconda packages for ml"
echo ""

conda install --yes numpy jupyter matplotlib Pillow scikit-learn
conda install --yes pytorch torchvision -c pytorch