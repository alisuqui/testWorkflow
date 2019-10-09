/*20191008
 *Created by: Alicia Abarca Cifuentes
 * 
 *Title: Reproducible bioimage analysis workflow 
 * 
 *We will upload it in Github and we will give it a D.O.I. 
 * 
 */

//open the file

run("HeLa Cells (1.3M, 48-bit RGB)");

//split channels
run("Split Channels");

//duplicate the blue channel

run("Duplicate...", " ");

//thresholding, based on auto threshold try all we chose the MaxEntropy

run("Auto Threshold", "method=MaxEntropy white");

//apply 

run("Script...");

//set differents measurements 

run("Set Measurements...", "area mean standard min centroid center shape integrated display redirect=None decimal=3");

//analyze particples and show results 
run("Analyze Particles...", "  show=Outlines display exclude clear include");

//save as, in the desktop
saveAs("Results", "C:/Users/Ali/Desktop/imageJ/Results.csv");