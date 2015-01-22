{

  //load CMS libraries
  gSystem->Load("libFWCoreFWLite.so");
  AutoLibraryLoader::enable();
  gSystem->Load("libDataFormatsFWLite.so");


  //gSystem->Load("libFWCoreFWLite.so");
  //AutoLibraryLoader::enable();
  //gSystem->Load("libDataFormatsFWLite.so");
  
  //gROOT->SetStyle ("Plain");
  
  gSystem->Load("libRooFit") ;
  using namespace RooFit ;
  //cout << "loaded" << endl;

  
  //gROOT->SetStyle ("Plain");
  gStyle->SetOptStat(111111);


  //below from Conor
  
  // load in ROOT physics vectors 
  gSystem->Load("$ROOTSYS/lib/libPhysics.so");

  //my personal style settings
  gROOT->SetStyle("Plain");
  gStyle->SetPalette(1,0);


  gStyle->SetPadTickX(1);
  gStyle->SetPadTickY(1);
  gStyle->SetOptDate(1);
  gStyle->SetLabelSize(0.05);
  gStyle->SetLabelOffset(0.005);
  gStyle->SetTitleYOffset(0.98);
  gStyle->SetTitleOffset(1.3);
  gStyle->SetTitleSize(0.05);
  gStyle->SetPadLeftMargin(0.15);
  gStyle->SetPadBottomMargin(0.15);
  gStyle->SetHistLineWidth(2);
  gStyle->SetHistLineColor(1);
  gStyle->SetMarkerStyle(20);
  
  gStyle->SetNdivisions(505);  

}
