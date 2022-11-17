import matplotlib.pyplot as plt
import matplotlib
import time
import csv
from IPython import display
import pandas as pd
import numpy as np


# Create data arrays

def read_rainy_days():

  rainfall = pd.read_csv('data/Seattle2014.csv')['PRCP'].values
  inches = rainfall / 254.0  # 1/10mm -> inches

  return inches


def read_president_heights():

  data = pd.read_csv('data/president_heights.csv')
  heights = np.array(data['height(cm)'])

  return heights


def read_qualities(color):

  if(color == 'red'):
    with open('data/winequality-red.csv', 'r') as f:
      wines = list(csv.reader(f, delimiter=';'))
    qualities = [float(item[-1]) for item in wines[1:]]
  else:
    with open('data/winequality-white.csv', 'r') as f:
      wines = list(csv.reader(f, delimiter=';'))
    qualities = [float(item[-1]) for item in wines[1:]]

  return qualities



# Plotting 

def updateGraph(i, data):
  plt.style.use('bmh');
  matplotlib.rcParams.update({'font.size': 14});
  matplotlib.rcParams.update({'figure.figsize': [12.0, 6.0]});

  colors = ["blue" for x in range(len(data))];
  colors[i] = "red";
  colors[i+1] = "red";
  
  positions = range(len(data));
  plt.clf();
  labels = positions;
  rango = range(max(data)+1)
  plt.xticks(positions, labels, rotation='horizontal');
  plt.yticks(rango, rango, rotation='horizontal');
  plt.bar(positions, data, color=colors);
  display.display(plt.gcf()); 
  display.clear_output(wait=True);
  time.sleep(0.2);

