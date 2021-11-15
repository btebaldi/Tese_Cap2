/***************************************************
 *
 * Declaracao de variaveis de configuracao dos scripts do gvar
 *
 *************************************************** */

// VARIAVEIS DEPENDENTES
// NAO MUDAR ISSO !!!
decl iQtdVarDependente;
iQtdVarDependente = 3;
decl aVarDependenteNames;
aVarDependenteNames = {"ETANOL_HIDRATADO", "OLEO_DIESEL", "GASOLINA_COMUM"};

// ISSO PODE SER ALTERADO!!
decl iQtdLags, iQtdRegioes;
iQtdLags = 13;
iQtdRegioes = 110;

// Configuracao dos diretorios
decl txMatPathRawMatrix, txMatPathA_Matrix, txMatPathW_Matrix, txMatPathG_Matrix, txMatPathResult_Matrix, txCoIntMatPath, txDbase, txDbaseMacroVariables;
txMatPathRawMatrix = "./mat_files/RawMatrix/";
txMatPathA_Matrix = "./mat_files/A_Matrix/";
txMatPathW_Matrix = "../export/W_mat/";
txMatPathG_Matrix = "./mat_files/G_Matrix/";
txMatPathResult_Matrix = "./mat_files/Result_Matrix/";

txCoIntMatPath = "./mat_files/Cointegration/";
txDbase = "../export/database for ox/db_Ox_sem_buraco.csv";
txDbaseMacroVariables = "../Database/MacroVariables.in7";

decl aMacroVarNames;
//aMacroVarNames = {"Macro1", "Macro2", "Macro3"};
aMacroVarNames = {"lpim_BR", "ln_Selic_aa", "Dln_IPCA"};

// TRUE / FALSE;
decl is_IIS_ON = TRUE;
decl IIS_pvalue = 0.00000100;
decl is_DUMMY_ON = TRUE;


// Ativa a impressao de
#define pritnConfig

#ifdef pritnConfig
println("******************************************");
println("------------------------------------------");
println("\tConfiguracao de variaveis");
println("------------------------------------------\n\n");

println("REGIOES");
println("\tQuantidade de lags: ", iQtdLags);
println("\tQuantidade de Regioes: ", iQtdRegioes);

println("\nDATABASE");
println("\tMacrovariaveis: ", txDbaseMacroVariables);
println("\tRegioes: ", txDbase);

println("\nDIRETORIOS");
println("\tW Matrix Dir: ", txMatPathW_Matrix);
println("\tCointeration Matrix Dir: ", txCoIntMatPath);

println("\tRaw Matrix Dir: ", txMatPathRawMatrix);
println("\tA Matrix Dir: ", txMatPathA_Matrix);
println("\tG Matrix Dir: ", txMatPathG_Matrix);

println("\tResult Matrix Dir: ", txMatPathResult_Matrix);

println("\nConfiguracoes");
println("\tis_IIS_ON: ",  is_IIS_ON);
println("\tIIS_pvalue: ", IIS_pvalue);
println("\tis_DUMMY_ON: ", is_DUMMY_ON);
println("******************************************");
#endif
