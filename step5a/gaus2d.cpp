/*
*/

#include "gaus2dgen.h"
#include <iostream>
#include <cmath>

#include "TCanvas.h"
#include "TH2F.h"
#include "TFile.h"
#include "TTree.h"

int main () {

    TCanvas* c1 = new TCanvas ("c1", "c1", 700, 500);

    // gauss1
    double mux1    = 4. ;
    double muy1    = 4. ;
    double sigmax1 = 1. ;
    double sigmay1 = 1. ;
    double rho1    = 0. ;

    //gauss2
    double mux2    = 0. ;
    double muy2    = 1. ;
    double sigmax2 = 1.5 ;
    double sigmay2 = 1.5 ;
    double rho2    = 0.7 ;

    // boundaries
    double xmin = -10;
    double xmax = 10;
    double ymin = -10;
    double ymax = 10;

    // signal dataset size
    int signalEvents = 10000;
    int backgroundEvents = 10000;

    double sigX;
    double sigY;
    double bgX;
    double bgY;

    TFile* outfile = new TFile("sigbg.root", "RECREATE");
    TTree* sigTree = new TTree("Signal", "Gaussian Signal");
    sigTree->Branch("x", &sigX);
    sigTree->Branch("y", &sigY);
    TTree* bgTree = new TTree("Background", "Gaussian Background");
    bgTree->Branch("x", &bgX);
    bgTree->Branch("y", &bgY);

    TH2F* gauss1 = new TH2F ("gauss1", "gauss1", 
        100, xmin, xmax, 100, ymin, ymax);
    TH2F* gauss2 = new TH2F ("gauss2", "gauss2", 
        100, xmin, xmax, 100, ymin, ymax);
    point gaussian2drandom;
    for (int i=0; i<signalEvents; i++){
        gaussian2drandom = gaussrand(mux1,muy1,sigmax1,sigmay1,rho1,
            xmin,xmax,ymin,ymax);
        gauss1->Fill(gaussian2drandom.x, gaussian2drandom.y);
        sigX = gaussian2drandom.x ;
        sigY = gaussian2drandom.y ;
        sigTree->Fill();
    }
    for (int i=0; i<backgroundEvents; i++){
        gaussian2drandom = gaussrand(mux2,muy2,sigmax2,sigmay2,rho2,
            xmin,xmax,ymin,ymax);
        gauss2->Fill(gaussian2drandom.x, gaussian2drandom.y);
        bgX = gaussian2drandom.x ;
        bgY = gaussian2drandom.y ;
        bgTree->Fill();
    }

    gauss1->SetMarkerStyle(7);
    gauss1->SetMarkerSize(3);
    gauss1->SetMarkerColor(kRed);
    gauss1->Draw();
    gauss2->SetMarkerStyle(7);
    gauss2->SetMarkerSize(3);
    gauss2->SetMarkerColor(kBlue);
    gauss2->Draw("SAME");
    c1->Print("gaus2d.pdf", "pdf");

    // lasciarlo dopo il print, altrimenti c'è un segfault
    sigTree->Write();
    bgTree->Write();
    outfile->Close();

    return 0;
}