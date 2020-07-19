#    Copyright (C) 2020 by Kevin D. Woerner
##-# =KDW= ########## DO NOT EDIT ######### DO NOT EDIT #########
##-# =KDW= ############ BUILDER $KWROOT/0lib/vkkcp.sh ###########
##-# =KDW= ##### SRC $KWROOT/codekdw/kw-lib/Kwelements.fwipp ####
# 2020-07-18 kdw  For Changelog, See File Kwelements.varylog
package Kwelements;
use Time::HiRes qw();
use POSIX       qw();
use vars qw(@EXPORT @EXPORT_OK %EXPORT_TAGS);
use Exporter    qw(import);
@EXPORT = ();
@EXPORT_OK = ( qw(
   AIR_MASS AcMASS AcZ Ac_BOIL Ac_Cp Ac_DENSITY Ac_En Ac_MASS
   Ac_MELT AgMASS AgZ Ag_BOIL Ag_Cp Ag_DENSITY Ag_En Ag_MASS
   Ag_MELT AlMASS AlZ Al_BOIL Al_Cp Al_DENSITY Al_En Al_MASS
   Al_MELT AmMASS AmZ Am_BOIL Am_Cp Am_DENSITY Am_En Am_MASS
   Am_MELT ArMASS ArZ Ar_BOIL Ar_Cp Ar_DENSITY Ar_En Ar_MASS
   Ar_MELT AsMASS AsZ As_BOIL As_Cp As_DENSITY As_En As_MASS
   As_MELT AtMASS AtZ At_BOIL At_Cp At_DENSITY At_En At_MASS
   At_MELT AuMASS AuZ Au_BOIL Au_Cp Au_DENSITY Au_En Au_MASS
   Au_MELT BMASS BUTANEJPKG BUTANEJPKGTOTAL BUTANEJPMOLE
   BUTANEMASS BUTANE_MASS BZ B_BOIL B_Cp B_DENSITY B_En B_MASS
   B_MELT BaMASS BaZ Ba_BOIL Ba_Cp Ba_DENSITY Ba_En Ba_MASS
   Ba_MELT BeMASS BeZ Be_BOIL Be_Cp Be_DENSITY Be_En Be_MASS
   Be_MELT BhMASS BhZ Bh_BOIL Bh_Cp Bh_DENSITY Bh_En Bh_MASS
   Bh_MELT BiMASS BiZ Bi_BOIL Bi_Cp Bi_DENSITY Bi_En Bi_MASS
   Bi_MELT BkMASS BkZ Bk_BOIL Bk_Cp Bk_DENSITY Bk_En Bk_MASS
   Bk_MELT BrMASS BrZ Br_BOIL Br_Cp Br_DENSITY Br_En Br_MASS
   Br_MELT C12H22O11MASS C12H22O11_MASS C12MASS C12_MASS
   C12_RATIO C13MASS C13_MASS C13_RATIO C14MASS C14_MASS
   C14_RATIO C2H60MASS C2H60_MASS C2H6MASS C2H6_MASS C3H8MASS
   C3H8_MASS C4H10MASS C4H10_MASS CH3CH2OHMASS CH3CH2OH_MASS
   CH4MASS CH4_MASS CMASS COALJPKG COALJPKGTOTAL COALJPMOLE
   COALMASS COAL_MASS CZ C_BOIL C_Cp C_DENSITY C_En C_MASS C_MELT
   C_M_MASS CaMASS CaZ Ca_BOIL Ca_Cp Ca_DENSITY Ca_En Ca_MASS
   Ca_MELT CdMASS CdZ Cd_BOIL Cd_Cp Cd_DENSITY Cd_En Cd_MASS
   Cd_MELT CeMASS CeZ Ce_BOIL Ce_Cp Ce_DENSITY Ce_En Ce_MASS
   Ce_MELT CfMASS CfZ Cf_BOIL Cf_Cp Cf_DENSITY Cf_En Cf_MASS
   Cf_MELT ClMASS ClZ Cl_BOIL Cl_Cp Cl_DENSITY Cl_En Cl_MASS
   Cl_MELT CmMASS CmZ Cm_BOIL Cm_Cp Cm_DENSITY Cm_En Cm_MASS
   Cm_MELT CnMASS CnZ Cn_BOIL Cn_Cp Cn_DENSITY Cn_En Cn_MASS
   Cn_MELT CoMASS CoZ Co_BOIL Co_Cp Co_DENSITY Co_En Co_MASS
   Co_MELT CrMASS CrZ Cr_BOIL Cr_Cp Cr_DENSITY Cr_En Cr_MASS
   Cr_MELT CsMASS CsZ Cs_BOIL Cs_Cp Cs_DENSITY Cs_En Cs_MASS
   Cs_MELT CuMASS CuZ Cu_BOIL Cu_Cp Cu_DENSITY Cu_En Cu_MASS
   Cu_MELT DIESELDENSITY DIESELJPKG DIESELJPKGTOTAL DIESELJPMOLE
   DIESELMASS DIESEL_MASS DbMASS DbZ Db_BOIL Db_Cp Db_DENSITY
   Db_En Db_MASS Db_MELT DsMASS DsZ Ds_BOIL Ds_Cp Ds_DENSITY
   Ds_En Ds_MASS Ds_MELT DyMASS DyZ Dy_BOIL Dy_Cp Dy_DENSITY
   Dy_En Dy_MASS Dy_MELT ETHANEJPKG ETHANEJPKGTOTAL ETHANEJPMOLE
   ETHANEMASS ETHANE_MASS ETHANOLDENSITY ETHANOLJPKG
   ETHANOLJPKGTOTAL ETHANOLJPMOLE ETHANOLMASS ETHANOL_MASS ErMASS
   ErZ Er_BOIL Er_Cp Er_DENSITY Er_En Er_MASS Er_MELT EsMASS EsZ
   Es_BOIL Es_Cp Es_DENSITY Es_En Es_MASS Es_MELT EuMASS EuZ
   Eu_BOIL Eu_Cp Eu_DENSITY Eu_En Eu_MASS Eu_MELT FATDENSITY
   FATJPKG FATJPKGTOTAL FATJPMOLE FATMASS FAT_MASS FMASS FZ
   F_BOIL F_Cp F_DENSITY F_En F_MASS F_MELT FeMASS FeZ Fe_BOIL
   Fe_Cp Fe_DENSITY Fe_En Fe_MASS Fe_MELT FlMASS FlZ Fl_BOIL
   Fl_Cp Fl_DENSITY Fl_En Fl_MASS Fl_MELT FmMASS FmZ Fm_BOIL
   Fm_Cp Fm_DENSITY Fm_En Fm_MASS Fm_MELT FrMASS FrZ Fr_BOIL
   Fr_Cp Fr_DENSITY Fr_En Fr_MASS Fr_MELT GASOLINEDENSITY
   GASOLINEJPKG GASOLINEJPKGTOTAL GASOLINEJPMOLE GASOLINEMASS
   GASOLINE_MASS GaMASS GaZ Ga_BOIL Ga_Cp Ga_DENSITY Ga_En
   Ga_MASS Ga_MELT GdMASS GdZ Gd_BOIL Gd_Cp Gd_DENSITY Gd_En
   Gd_MASS Gd_MELT GeMASS GeZ Ge_BOIL Ge_Cp Ge_DENSITY Ge_En
   Ge_MASS Ge_MELT H1MASS H1_MASS H2MASS H2_MASS H3MASS H3_MASS
   HMASS HYDROGENJPKG HYDROGENJPKGTOTAL HYDROGENJPMOLE
   HYDROGENMASS HYDROGEN_MASS HZ H_BOIL H_Cp H_DENSITY H_En
   H_MASS H_MELT He3MASS He3_MASS He4MASS He4_MASS HeMASS HeZ
   He_BOIL He_Cp He_DENSITY He_En He_MASS He_MELT HfMASS HfZ
   Hf_BOIL Hf_Cp Hf_DENSITY Hf_En Hf_MASS Hf_MELT HgMASS HgZ
   Hg_BOIL Hg_Cp Hg_DENSITY Hg_En Hg_MASS Hg_MELT HoMASS HoZ
   Ho_BOIL Ho_Cp Ho_DENSITY Ho_En Ho_MASS Ho_MELT HsMASS HsZ
   Hs_BOIL Hs_Cp Hs_DENSITY Hs_En Hs_MASS Hs_MELT ICE_Cp IMASS IZ
   I_BOIL I_Cp I_DENSITY I_En I_MASS I_MELT InMASS InZ In_BOIL
   In_Cp In_DENSITY In_En In_MASS In_MELT IrMASS IrZ Ir_BOIL
   Ir_Cp Ir_DENSITY Ir_En Ir_MASS Ir_MELT KMASS KZ K_BOIL K_Cp
   K_DENSITY K_En K_MASS K_MELT KrMASS KrZ Kr_BOIL Kr_Cp
   Kr_DENSITY Kr_En Kr_MASS Kr_MELT LaMASS LaZ La_BOIL La_Cp
   La_DENSITY La_En La_MASS La_MELT LiMASS LiZ Li_BOIL Li_Cp
   Li_DENSITY Li_En Li_MASS Li_MELT LrMASS LrZ Lr_BOIL Lr_Cp
   Lr_DENSITY Lr_En Lr_MASS Lr_MELT LuMASS LuZ Lu_BOIL Lu_Cp
   Lu_DENSITY Lu_En Lu_MASS Lu_MELT LvMASS LvZ Lv_BOIL Lv_Cp
   Lv_DENSITY Lv_En Lv_MASS Lv_MELT METHANEJPKG METHANEJPKGTOTAL
   METHANEJPMOLE METHANEMASS METHANE_MASS McMASS McZ Mc_BOIL
   Mc_Cp Mc_DENSITY Mc_En Mc_MASS Mc_MELT MdMASS MdZ Md_BOIL
   Md_Cp Md_DENSITY Md_En Md_MASS Md_MELT MgMASS MgZ Mg_BOIL
   Mg_Cp Mg_DENSITY Mg_En Mg_MASS Mg_MELT MnMASS MnZ Mn_BOIL
   Mn_Cp Mn_DENSITY Mn_En Mn_MASS Mn_MELT MoMASS MoZ Mo_BOIL
   Mo_Cp Mo_DENSITY Mo_En Mo_MASS Mo_MELT MtMASS MtZ Mt_BOIL
   Mt_Cp Mt_DENSITY Mt_En Mt_MASS Mt_MELT NMASS NZ N_BOIL N_Cp
   N_DENSITY N_En N_MASS N_MELT NaMASS NaZ Na_BOIL Na_Cp
   Na_DENSITY Na_En Na_MASS Na_MELT NbMASS NbZ Nb_BOIL Nb_Cp
   Nb_DENSITY Nb_En Nb_MASS Nb_MELT NdMASS NdZ Nd_BOIL Nd_Cp
   Nd_DENSITY Nd_En Nd_MASS Nd_MELT NeMASS NeZ Ne_BOIL Ne_Cp
   Ne_DENSITY Ne_En Ne_MASS Ne_MELT NhMASS NhZ Nh_BOIL Nh_Cp
   Nh_DENSITY Nh_En Nh_MASS Nh_MELT NiMASS NiZ Ni_BOIL Ni_Cp
   Ni_DENSITY Ni_En Ni_MASS Ni_MELT NoMASS NoZ No_BOIL No_Cp
   No_DENSITY No_En No_MASS No_MELT NpMASS NpZ Np_BOIL Np_Cp
   Np_DENSITY Np_En Np_MASS Np_MELT O16MASS O16_MASS O17MASS
   O17_MASS O18MASS O18_MASS OMASS OZ O_BOIL O_Cp O_DENSITY O_En
   O_MASS O_MELT OgMASS OgZ Og_BOIL Og_Cp Og_DENSITY Og_En
   Og_MASS Og_MELT OsMASS OsZ Os_BOIL Os_Cp Os_DENSITY Os_En
   Os_MASS Os_MELT PARAFFINDENSITY PARAFFINJPKG PARAFFINJPKGTOTAL
   PARAFFINJPMOLE PARAFFINMASS PARAFFIN_MASS PMASS PROPANEJPKG
   PROPANEJPKGTOTAL PROPANEJPMOLE PROPANEMASS PROPANE_MASS PZ
   P_BOIL P_Cp P_DENSITY P_En P_MASS P_MELT PaMASS PaZ Pa_BOIL
   Pa_Cp Pa_DENSITY Pa_En Pa_MASS Pa_MELT PbMASS PbZ Pb_BOIL
   Pb_Cp Pb_DENSITY Pb_En Pb_MASS Pb_MELT PdMASS PdZ Pd_BOIL
   Pd_Cp Pd_DENSITY Pd_En Pd_MASS Pd_MELT PmMASS PmZ Pm_BOIL
   Pm_Cp Pm_DENSITY Pm_En Pm_MASS Pm_MELT PoMASS PoZ Po_BOIL
   Po_Cp Po_DENSITY Po_En Po_MASS Po_MELT PrMASS PrZ Pr_BOIL
   Pr_Cp Pr_DENSITY Pr_En Pr_MASS Pr_MELT PtMASS PtZ Pt_BOIL
   Pt_Cp Pt_DENSITY Pt_En Pt_MASS Pt_MELT PuMASS PuZ Pu_BOIL
   Pu_Cp Pu_DENSITY Pu_En Pu_MASS Pu_MELT RaMASS RaZ Ra_BOIL
   Ra_Cp Ra_DENSITY Ra_En Ra_MASS Ra_MELT RbMASS RbZ Rb_BOIL
   Rb_Cp Rb_DENSITY Rb_En Rb_MASS Rb_MELT ReMASS ReZ Re_BOIL
   Re_Cp Re_DENSITY Re_En Re_MASS Re_MELT RfMASS RfZ Rf_BOIL
   Rf_Cp Rf_DENSITY Rf_En Rf_MASS Rf_MELT RgMASS RgZ Rg_BOIL
   Rg_Cp Rg_DENSITY Rg_En Rg_MASS Rg_MELT RhMASS RhZ Rh_BOIL
   Rh_Cp Rh_DENSITY Rh_En Rh_MASS Rh_MELT RnMASS RnZ Rn_BOIL
   Rn_Cp Rn_DENSITY Rn_En Rn_MASS Rn_MELT RuMASS RuZ Ru_BOIL
   Ru_Cp Ru_DENSITY Ru_En Ru_MASS Ru_MELT SMASS STEAM_Cp
   SUCROSE_MASS SUGARDENSITY SUGARJPKG SUGARJPKGTOTAL SUGARJPMOLE
   SUGARMASS SUGAR_MASS SZ S_BOIL S_Cp S_DENSITY S_En S_MASS
   S_MELT SbMASS SbZ Sb_BOIL Sb_Cp Sb_DENSITY Sb_En Sb_MASS
   Sb_MELT ScMASS ScZ Sc_BOIL Sc_Cp Sc_DENSITY Sc_En Sc_MASS
   Sc_MELT SeMASS SeZ Se_BOIL Se_Cp Se_DENSITY Se_En Se_MASS
   Se_MELT SgMASS SgZ Sg_BOIL Sg_Cp Sg_DENSITY Sg_En Sg_MASS
   Sg_MELT SiMASS SiZ Si_BOIL Si_Cp Si_DENSITY Si_En Si_MASS
   Si_MELT SmMASS SmZ Sm_BOIL Sm_Cp Sm_DENSITY Sm_En Sm_MASS
   Sm_MELT SnMASS SnZ Sn_BOIL Sn_Cp Sn_DENSITY Sn_En Sn_MASS
   Sn_MELT SrMASS SrZ Sr_BOIL Sr_Cp Sr_DENSITY Sr_En Sr_MASS
   Sr_MELT TNTJPKG TaMASS TaZ Ta_BOIL Ta_Cp Ta_DENSITY Ta_En
   Ta_MASS Ta_MELT TbMASS TbZ Tb_BOIL Tb_Cp Tb_DENSITY Tb_En
   Tb_MASS Tb_MELT TcMASS TcZ Tc_BOIL Tc_Cp Tc_DENSITY Tc_En
   Tc_MASS Tc_MELT TeMASS TeZ Te_BOIL Te_Cp Te_DENSITY Te_En
   Te_MASS Te_MELT ThMASS ThZ Th_BOIL Th_Cp Th_DENSITY Th_En
   Th_MASS Th_MELT TiMASS TiZ Ti_BOIL Ti_Cp Ti_DENSITY Ti_En
   Ti_MASS Ti_MELT TlMASS TlZ Tl_BOIL Tl_Cp Tl_DENSITY Tl_En
   Tl_MASS Tl_MELT TmMASS TmZ Tm_BOIL Tm_Cp Tm_DENSITY Tm_En
   Tm_MASS Tm_MELT TsMASS TsZ Ts_BOIL Ts_Cp Ts_DENSITY Ts_En
   Ts_MASS Ts_MELT UMASS UZ U_BOIL U_Cp U_DENSITY U_En U_MASS
   U_MELT VMASS VSMOW_H1_RATIO VSMOW_H2_RATIO VSMOW_H3_RATIO
   VSMOW_H_MASS VSMOW_MASS VSMOW_O16_RATIO VSMOW_O17_RATIO
   VSMOW_O18_RATIO VSMOW_O_MASS VZ V_BOIL V_Cp V_DENSITY V_En
   V_MASS V_MELT WATERMASS WATER_Cp WATER_FUSION WATER_MASS
   WATER_VAPORIZATION WMASS WZ W_BOIL W_Cp W_DENSITY W_En W_MASS
   W_MELT XeMASS XeZ Xe_BOIL Xe_Cp Xe_DENSITY Xe_En Xe_MASS
   Xe_MELT YMASS YZ Y_BOIL Y_Cp Y_DENSITY Y_En Y_MASS Y_MELT
   YbMASS YbZ Yb_BOIL Yb_Cp Yb_DENSITY Yb_En Yb_MASS Yb_MELT
   ZnMASS ZnZ Zn_BOIL Zn_Cp Zn_DENSITY Zn_En Zn_MASS Zn_MELT
   ZrMASS ZrZ Zr_BOIL Zr_Cp Zr_DENSITY Zr_En Zr_MASS Zr_MELT
   cxac_boil cxac_cp cxac_density cxac_en cxac_mass cxac_melt
   cxacmass cxacz cxag_boil cxag_cp cxag_density cxag_en
   cxag_mass cxag_melt cxagmass cxagz cxair_mass cxal_boil
   cxal_cp cxal_density cxal_en cxal_mass cxal_melt cxalmass
   cxalz cxam_boil cxam_cp cxam_density cxam_en cxam_mass
   cxam_melt cxammass cxamz cxar_boil cxar_cp cxar_density
   cxar_en cxar_mass cxar_melt cxarmass cxarz cxas_boil cxas_cp
   cxas_density cxas_en cxas_mass cxas_melt cxasmass cxasz
   cxat_boil cxat_cp cxat_density cxat_en cxat_mass cxat_melt
   cxatmass cxatz cxau_boil cxau_cp cxau_density cxau_en
   cxau_mass cxau_melt cxaumass cxauz cxb_boil cxb_cp cxb_density
   cxb_en cxb_mass cxb_melt cxba_boil cxba_cp cxba_density
   cxba_en cxba_mass cxba_melt cxbamass cxbaz cxbe_boil cxbe_cp
   cxbe_density cxbe_en cxbe_mass cxbe_melt cxbemass cxbez
   cxbh_boil cxbh_cp cxbh_density cxbh_en cxbh_mass cxbh_melt
   cxbhmass cxbhz cxbi_boil cxbi_cp cxbi_density cxbi_en
   cxbi_mass cxbi_melt cxbimass cxbiz cxbk_boil cxbk_cp
   cxbk_density cxbk_en cxbk_mass cxbk_melt cxbkmass cxbkz
   cxbmass cxbr_boil cxbr_cp cxbr_density cxbr_en cxbr_mass
   cxbr_melt cxbrmass cxbrz cxbutane_mass cxbutanejpkg
   cxbutanejpkgtotal cxbutanejpmole cxbutanemass cxbz cxc12_mass
   cxc12_ratio cxc12h22o11_mass cxc12h22o11mass cxc12mass
   cxc13_mass cxc13_ratio cxc13mass cxc14_mass cxc14_ratio
   cxc14mass cxc2h60_mass cxc2h60mass cxc2h6_mass cxc2h6mass
   cxc3h8_mass cxc3h8mass cxc4h10_mass cxc4h10mass cxc_boil
   cxc_cp cxc_density cxc_en cxc_m_mass cxc_mass cxc_melt
   cxca_boil cxca_cp cxca_density cxca_en cxca_mass cxca_melt
   cxcamass cxcaz cxcd_boil cxcd_cp cxcd_density cxcd_en
   cxcd_mass cxcd_melt cxcdmass cxcdz cxce_boil cxce_cp
   cxce_density cxce_en cxce_mass cxce_melt cxcemass cxcez
   cxcf_boil cxcf_cp cxcf_density cxcf_en cxcf_mass cxcf_melt
   cxcfmass cxcfz cxch3ch2oh_mass cxch3ch2ohmass cxch4_mass
   cxch4mass cxcl_boil cxcl_cp cxcl_density cxcl_en cxcl_mass
   cxcl_melt cxclmass cxclz cxcm_boil cxcm_cp cxcm_density
   cxcm_en cxcm_mass cxcm_melt cxcmass cxcmmass cxcmz cxcn_boil
   cxcn_cp cxcn_density cxcn_en cxcn_mass cxcn_melt cxcnmass
   cxcnz cxco_boil cxco_cp cxco_density cxco_en cxco_mass
   cxco_melt cxcoal_mass cxcoaljpkg cxcoaljpkgtotal cxcoaljpmole
   cxcoalmass cxcomass cxcoz cxcr_boil cxcr_cp cxcr_density
   cxcr_en cxcr_mass cxcr_melt cxcrmass cxcrz cxcs_boil cxcs_cp
   cxcs_density cxcs_en cxcs_mass cxcs_melt cxcsmass cxcsz
   cxcu_boil cxcu_cp cxcu_density cxcu_en cxcu_mass cxcu_melt
   cxcumass cxcuz cxcz cxdb_boil cxdb_cp cxdb_density cxdb_en
   cxdb_mass cxdb_melt cxdbmass cxdbz cxdiesel_mass
   cxdieseldensity cxdieseljpkg cxdieseljpkgtotal cxdieseljpmole
   cxdieselmass cxds_boil cxds_cp cxds_density cxds_en cxds_mass
   cxds_melt cxdsmass cxdsz cxdy_boil cxdy_cp cxdy_density
   cxdy_en cxdy_mass cxdy_melt cxdymass cxdyz cxer_boil cxer_cp
   cxer_density cxer_en cxer_mass cxer_melt cxermass cxerz
   cxes_boil cxes_cp cxes_density cxes_en cxes_mass cxes_melt
   cxesmass cxesz cxethane_mass cxethanejpkg cxethanejpkgtotal
   cxethanejpmole cxethanemass cxethanol_mass cxethanoldensity
   cxethanoljpkg cxethanoljpkgtotal cxethanoljpmole cxethanolmass
   cxeu_boil cxeu_cp cxeu_density cxeu_en cxeu_mass cxeu_melt
   cxeumass cxeuz cxf_boil cxf_cp cxf_density cxf_en cxf_mass
   cxf_melt cxfat_mass cxfatdensity cxfatjpkg cxfatjpkgtotal
   cxfatjpmole cxfatmass cxfe_boil cxfe_cp cxfe_density cxfe_en
   cxfe_mass cxfe_melt cxfemass cxfez cxfl_boil cxfl_cp
   cxfl_density cxfl_en cxfl_mass cxfl_melt cxflmass cxflz
   cxfm_boil cxfm_cp cxfm_density cxfm_en cxfm_mass cxfm_melt
   cxfmass cxfmmass cxfmz cxfr_boil cxfr_cp cxfr_density cxfr_en
   cxfr_mass cxfr_melt cxfrmass cxfrz cxfz cxga_boil cxga_cp
   cxga_density cxga_en cxga_mass cxga_melt cxgamass
   cxgasoline_mass cxgasolinedensity cxgasolinejpkg
   cxgasolinejpkgtotal cxgasolinejpmole cxgasolinemass cxgaz
   cxgd_boil cxgd_cp cxgd_density cxgd_en cxgd_mass cxgd_melt
   cxgdmass cxgdz cxge_boil cxge_cp cxge_density cxge_en
   cxge_mass cxge_melt cxgemass cxgez cxh1_mass cxh1mass
   cxh2_mass cxh2mass cxh3_mass cxh3mass cxh_boil cxh_cp
   cxh_density cxh_en cxh_mass cxh_melt cxhe3_mass cxhe3mass
   cxhe4_mass cxhe4mass cxhe_boil cxhe_cp cxhe_density cxhe_en
   cxhe_mass cxhe_melt cxhemass cxhez cxhf_boil cxhf_cp
   cxhf_density cxhf_en cxhf_mass cxhf_melt cxhfmass cxhfz
   cxhg_boil cxhg_cp cxhg_density cxhg_en cxhg_mass cxhg_melt
   cxhgmass cxhgz cxhmass cxho_boil cxho_cp cxho_density cxho_en
   cxho_mass cxho_melt cxhomass cxhoz cxhs_boil cxhs_cp
   cxhs_density cxhs_en cxhs_mass cxhs_melt cxhsmass cxhsz
   cxhydrogen_mass cxhydrogenjpkg cxhydrogenjpkgtotal
   cxhydrogenjpmole cxhydrogenmass cxhz cxi_boil cxi_cp
   cxi_density cxi_en cxi_mass cxi_melt cxice_cp cximass
   cxin_boil cxin_cp cxin_density cxin_en cxin_mass cxin_melt
   cxinmass cxinz cxir_boil cxir_cp cxir_density cxir_en
   cxir_mass cxir_melt cxirmass cxirz cxiz cxk_boil cxk_cp
   cxk_density cxk_en cxk_mass cxk_melt cxkmass cxkr_boil cxkr_cp
   cxkr_density cxkr_en cxkr_mass cxkr_melt cxkrmass cxkrz cxkz
   cxla_boil cxla_cp cxla_density cxla_en cxla_mass cxla_melt
   cxlamass cxlaz cxli_boil cxli_cp cxli_density cxli_en
   cxli_mass cxli_melt cxlimass cxliz cxlr_boil cxlr_cp
   cxlr_density cxlr_en cxlr_mass cxlr_melt cxlrmass cxlrz
   cxlu_boil cxlu_cp cxlu_density cxlu_en cxlu_mass cxlu_melt
   cxlumass cxluz cxlv_boil cxlv_cp cxlv_density cxlv_en
   cxlv_mass cxlv_melt cxlvmass cxlvz cxmc_boil cxmc_cp
   cxmc_density cxmc_en cxmc_mass cxmc_melt cxmcmass cxmcz
   cxmd_boil cxmd_cp cxmd_density cxmd_en cxmd_mass cxmd_melt
   cxmdmass cxmdz cxmethane_mass cxmethanejpkg cxmethanejpkgtotal
   cxmethanejpmole cxmethanemass cxmg_boil cxmg_cp cxmg_density
   cxmg_en cxmg_mass cxmg_melt cxmgmass cxmgz cxmn_boil cxmn_cp
   cxmn_density cxmn_en cxmn_mass cxmn_melt cxmnmass cxmnz
   cxmo_boil cxmo_cp cxmo_density cxmo_en cxmo_mass cxmo_melt
   cxmomass cxmoz cxmt_boil cxmt_cp cxmt_density cxmt_en
   cxmt_mass cxmt_melt cxmtmass cxmtz cxn_boil cxn_cp cxn_density
   cxn_en cxn_mass cxn_melt cxna_boil cxna_cp cxna_density
   cxna_en cxna_mass cxna_melt cxnamass cxnaz cxnb_boil cxnb_cp
   cxnb_density cxnb_en cxnb_mass cxnb_melt cxnbmass cxnbz
   cxnd_boil cxnd_cp cxnd_density cxnd_en cxnd_mass cxnd_melt
   cxndmass cxndz cxne_boil cxne_cp cxne_density cxne_en
   cxne_mass cxne_melt cxnemass cxnez cxnh_boil cxnh_cp
   cxnh_density cxnh_en cxnh_mass cxnh_melt cxnhmass cxnhz
   cxni_boil cxni_cp cxni_density cxni_en cxni_mass cxni_melt
   cxnimass cxniz cxnmass cxno_boil cxno_cp cxno_density cxno_en
   cxno_mass cxno_melt cxnomass cxnoz cxnp_boil cxnp_cp
   cxnp_density cxnp_en cxnp_mass cxnp_melt cxnpmass cxnpz cxnz
   cxo16_mass cxo16mass cxo17_mass cxo17mass cxo18_mass cxo18mass
   cxo_boil cxo_cp cxo_density cxo_en cxo_mass cxo_melt cxog_boil
   cxog_cp cxog_density cxog_en cxog_mass cxog_melt cxogmass
   cxogz cxomass cxos_boil cxos_cp cxos_density cxos_en cxos_mass
   cxos_melt cxosmass cxosz cxoz cxp_boil cxp_cp cxp_density
   cxp_en cxp_mass cxp_melt cxpa_boil cxpa_cp cxpa_density
   cxpa_en cxpa_mass cxpa_melt cxpamass cxparaffin_mass
   cxparaffindensity cxparaffinjpkg cxparaffinjpkgtotal
   cxparaffinjpmole cxparaffinmass cxpaz cxpb_boil cxpb_cp
   cxpb_density cxpb_en cxpb_mass cxpb_melt cxpbmass cxpbz
   cxpd_boil cxpd_cp cxpd_density cxpd_en cxpd_mass cxpd_melt
   cxpdmass cxpdz cxpm_boil cxpm_cp cxpm_density cxpm_en
   cxpm_mass cxpm_melt cxpmass cxpmmass cxpmz cxpo_boil cxpo_cp
   cxpo_density cxpo_en cxpo_mass cxpo_melt cxpomass cxpoz
   cxpr_boil cxpr_cp cxpr_density cxpr_en cxpr_mass cxpr_melt
   cxprmass cxpropane_mass cxpropanejpkg cxpropanejpkgtotal
   cxpropanejpmole cxpropanemass cxprz cxpt_boil cxpt_cp
   cxpt_density cxpt_en cxpt_mass cxpt_melt cxptmass cxptz
   cxpu_boil cxpu_cp cxpu_density cxpu_en cxpu_mass cxpu_melt
   cxpumass cxpuz cxpz cxra_boil cxra_cp cxra_density cxra_en
   cxra_mass cxra_melt cxramass cxraz cxrb_boil cxrb_cp
   cxrb_density cxrb_en cxrb_mass cxrb_melt cxrbmass cxrbz
   cxre_boil cxre_cp cxre_density cxre_en cxre_mass cxre_melt
   cxremass cxrez cxrf_boil cxrf_cp cxrf_density cxrf_en
   cxrf_mass cxrf_melt cxrfmass cxrfz cxrg_boil cxrg_cp
   cxrg_density cxrg_en cxrg_mass cxrg_melt cxrgmass cxrgz
   cxrh_boil cxrh_cp cxrh_density cxrh_en cxrh_mass cxrh_melt
   cxrhmass cxrhz cxrn_boil cxrn_cp cxrn_density cxrn_en
   cxrn_mass cxrn_melt cxrnmass cxrnz cxru_boil cxru_cp
   cxru_density cxru_en cxru_mass cxru_melt cxrumass cxruz
   cxs_boil cxs_cp cxs_density cxs_en cxs_mass cxs_melt cxsb_boil
   cxsb_cp cxsb_density cxsb_en cxsb_mass cxsb_melt cxsbmass
   cxsbz cxsc_boil cxsc_cp cxsc_density cxsc_en cxsc_mass
   cxsc_melt cxscmass cxscz cxse_boil cxse_cp cxse_density
   cxse_en cxse_mass cxse_melt cxsemass cxsez cxsg_boil cxsg_cp
   cxsg_density cxsg_en cxsg_mass cxsg_melt cxsgmass cxsgz
   cxsi_boil cxsi_cp cxsi_density cxsi_en cxsi_mass cxsi_melt
   cxsimass cxsiz cxsm_boil cxsm_cp cxsm_density cxsm_en
   cxsm_mass cxsm_melt cxsmass cxsmmass cxsmz cxsn_boil cxsn_cp
   cxsn_density cxsn_en cxsn_mass cxsn_melt cxsnmass cxsnz
   cxsr_boil cxsr_cp cxsr_density cxsr_en cxsr_mass cxsr_melt
   cxsrmass cxsrz cxsteam_cp cxsucrose_mass cxsugar_mass
   cxsugardensity cxsugarjpkg cxsugarjpkgtotal cxsugarjpmole
   cxsugarmass cxsz cxta_boil cxta_cp cxta_density cxta_en
   cxta_mass cxta_melt cxtamass cxtaz cxtb_boil cxtb_cp
   cxtb_density cxtb_en cxtb_mass cxtb_melt cxtbmass cxtbz
   cxtc_boil cxtc_cp cxtc_density cxtc_en cxtc_mass cxtc_melt
   cxtcmass cxtcz cxte_boil cxte_cp cxte_density cxte_en
   cxte_mass cxte_melt cxtemass cxtez cxth_boil cxth_cp
   cxth_density cxth_en cxth_mass cxth_melt cxthmass cxthz
   cxti_boil cxti_cp cxti_density cxti_en cxti_mass cxti_melt
   cxtimass cxtiz cxtl_boil cxtl_cp cxtl_density cxtl_en
   cxtl_mass cxtl_melt cxtlmass cxtlz cxtm_boil cxtm_cp
   cxtm_density cxtm_en cxtm_mass cxtm_melt cxtmmass cxtmz
   cxtntjpkg cxts_boil cxts_cp cxts_density cxts_en cxts_mass
   cxts_melt cxtsmass cxtsz cxu_boil cxu_cp cxu_density cxu_en
   cxu_mass cxu_melt cxumass cxuz cxv_boil cxv_cp cxv_density
   cxv_en cxv_mass cxv_melt cxvmass cxvsmow_h1_ratio
   cxvsmow_h2_ratio cxvsmow_h3_ratio cxvsmow_h_mass cxvsmow_mass
   cxvsmow_o16_ratio cxvsmow_o17_ratio cxvsmow_o18_ratio
   cxvsmow_o_mass cxvz cxw_boil cxw_cp cxw_density cxw_en
   cxw_mass cxw_melt cxwater_cp cxwater_fusion cxwater_mass
   cxwater_vaporization cxwatermass cxwmass cxwz cxxe_boil
   cxxe_cp cxxe_density cxxe_en cxxe_mass cxxe_melt cxxemass
   cxxez cxy_boil cxy_cp cxy_density cxy_en cxy_mass cxy_melt
   cxyb_boil cxyb_cp cxyb_density cxyb_en cxyb_mass cxyb_melt
   cxybmass cxybz cxymass cxyz cxzn_boil cxzn_cp cxzn_density
   cxzn_en cxzn_mass cxzn_melt cxznmass cxznz cxzr_boil cxzr_cp
   cxzr_density cxzr_en cxzr_mass cxzr_melt cxzrmass cxzrz
)); # End of EXPORT_OK
%EXPORT_TAGS = ( ALL => [ @EXPORT_OK ] );
use Kw qw();
sub HZ() { 1; }
sub H_MASS() { 1.008 * Kw::MOLARMASS; }
sub HMASS() { H_MASS / Kw::AVOGADRO; }
sub H_DENSITY() { 0.08988 * Kw::DENSITY; }
sub H_MELT() { 14.01 * Kw::KELVIN; }
sub H_BOIL() { 20.28 * Kw::KELVIN; }
sub H_Cp() { 14304 * Kw::SPECIFICHEAT; }
sub H_En() { 2.20; }
sub HeZ() { 2; }
sub He_MASS() { 4.002602 * Kw::MOLARMASS; }
sub HeMASS() { He_MASS / Kw::AVOGADRO; }
sub He_DENSITY() { 0.1785 * Kw::DENSITY; }
sub He_MELT() { - 1 * Kw::KELVIN; }
sub He_BOIL() { 4.22 * Kw::KELVIN; }
sub He_Cp() { 5193 * Kw::SPECIFICHEAT; }
sub He_En() { - 1; }
sub LiZ() { 3; }
sub Li_MASS() { 6.94 * Kw::MOLARMASS; }
sub LiMASS() { Li_MASS / Kw::AVOGADRO; }
sub Li_DENSITY() { 534 * Kw::DENSITY; }
sub Li_MELT() { 453.69 * Kw::KELVIN; }
sub Li_BOIL() { 1560 * Kw::KELVIN; }
sub Li_Cp() { 3582 * Kw::SPECIFICHEAT; }
sub Li_En() { 0.98; }
sub BeZ() { 4; }
sub Be_MASS() { 9.0121831 * Kw::MOLARMASS; }
sub BeMASS() { Be_MASS / Kw::AVOGADRO; }
sub Be_DENSITY() { 1850 * Kw::DENSITY; }
sub Be_MELT() { 1560 * Kw::KELVIN; }
sub Be_BOIL() { 2742 * Kw::KELVIN; }
sub Be_Cp() { 1825 * Kw::SPECIFICHEAT; }
sub Be_En() { 1.57; }
sub BZ() { 5; }
sub B_MASS() { 10.81 * Kw::MOLARMASS; }
sub BMASS() { B_MASS / Kw::AVOGADRO; }
sub B_DENSITY() { 2340 * Kw::DENSITY; }
sub B_MELT() { 2349 * Kw::KELVIN; }
sub B_BOIL() { 4200 * Kw::KELVIN; }
sub B_Cp() { 1026 * Kw::SPECIFICHEAT; }
sub B_En() { 2.04; }
sub CZ() { 6; }
sub C_MASS() { 12.011 * Kw::MOLARMASS; }
sub CMASS() { C_MASS / Kw::AVOGADRO; }
sub C_DENSITY() { 2267 * Kw::DENSITY; }
sub C_MELT() { 3800 * Kw::KELVIN; }
sub C_BOIL() { 4300 * Kw::KELVIN; }
sub C_Cp() { 709 * Kw::SPECIFICHEAT; }
sub C_En() { 2.55; }
sub NZ() { 7; }
sub N_MASS() { 14.007 * Kw::MOLARMASS; }
sub NMASS() { N_MASS / Kw::AVOGADRO; }
sub N_DENSITY() { 1.2506 * Kw::DENSITY; }
sub N_MELT() { 63.15 * Kw::KELVIN; }
sub N_BOIL() { 77.36 * Kw::KELVIN; }
sub N_Cp() { 1040 * Kw::SPECIFICHEAT; }
sub N_En() { 3.04; }
sub OZ() { 8; }
sub O_MASS() { 15.999 * Kw::MOLARMASS; }
sub OMASS() { O_MASS / Kw::AVOGADRO; }
sub O_DENSITY() { 1.429 * Kw::DENSITY; }
sub O_MELT() { 54.36 * Kw::KELVIN; }
sub O_BOIL() { 90.20 * Kw::KELVIN; }
sub O_Cp() { 918 * Kw::SPECIFICHEAT; }
sub O_En() { 3.44; }
sub FZ() { 9; }
sub F_MASS() { 18.998403163 * Kw::MOLARMASS; }
sub FMASS() { F_MASS / Kw::AVOGADRO; }
sub F_DENSITY() { 1.696 * Kw::DENSITY; }
sub F_MELT() { 53.53 * Kw::KELVIN; }
sub F_BOIL() { 85.03 * Kw::KELVIN; }
sub F_Cp() { 824 * Kw::SPECIFICHEAT; }
sub F_En() { 3.98; }
sub NeZ() { 10; }
sub Ne_MASS() { 20.1797 * Kw::MOLARMASS; }
sub NeMASS() { Ne_MASS / Kw::AVOGADRO; }
sub Ne_DENSITY() { 0.8999 * Kw::DENSITY; }
sub Ne_MELT() { 24.56 * Kw::KELVIN; }
sub Ne_BOIL() { 27.07 * Kw::KELVIN; }
sub Ne_Cp() { 1030 * Kw::SPECIFICHEAT; }
sub Ne_En() { - 1; }
sub NaZ() { 11; }
sub Na_MASS() { 22.98976928 * Kw::MOLARMASS; }
sub NaMASS() { Na_MASS / Kw::AVOGADRO; }
sub Na_DENSITY() { 971 * Kw::DENSITY; }
sub Na_MELT() { 370.87 * Kw::KELVIN; }
sub Na_BOIL() { 1156 * Kw::KELVIN; }
sub Na_Cp() { 1228 * Kw::SPECIFICHEAT; }
sub Na_En() { 0.93; }
sub MgZ() { 12; }
sub Mg_MASS() { 24.305 * Kw::MOLARMASS; }
sub MgMASS() { Mg_MASS / Kw::AVOGADRO; }
sub Mg_DENSITY() { 1738 * Kw::DENSITY; }
sub Mg_MELT() { 923 * Kw::KELVIN; }
sub Mg_BOIL() { 1363 * Kw::KELVIN; }
sub Mg_Cp() { 1023 * Kw::SPECIFICHEAT; }
sub Mg_En() { 1.31; }
sub AlZ() { 13; }
sub Al_MASS() { 26.9815384 * Kw::MOLARMASS; }
sub AlMASS() { Al_MASS / Kw::AVOGADRO; }
sub Al_DENSITY() { 2698 * Kw::DENSITY; }
sub Al_MELT() { 933.47 * Kw::KELVIN; }
sub Al_BOIL() { 2792 * Kw::KELVIN; }
sub Al_Cp() { 897 * Kw::SPECIFICHEAT; }
sub Al_En() { 1.61; }
sub SiZ() { 14; }
sub Si_MASS() { 28.085 * Kw::MOLARMASS; }
sub SiMASS() { Si_MASS / Kw::AVOGADRO; }
sub Si_DENSITY() { 2329.6 * Kw::DENSITY; }
sub Si_MELT() { 1687 * Kw::KELVIN; }
sub Si_BOIL() { 3538 * Kw::KELVIN; }
sub Si_Cp() { 705 * Kw::SPECIFICHEAT; }
sub Si_En() { 1.9; }
sub PZ() { 15; }
sub P_MASS() { 30.973761998 * Kw::MOLARMASS; }
sub PMASS() { P_MASS / Kw::AVOGADRO; }
sub P_DENSITY() { 1820 * Kw::DENSITY; }
sub P_MELT() { 317.30 * Kw::KELVIN; }
sub P_BOIL() { 550 * Kw::KELVIN; }
sub P_Cp() { 769 * Kw::SPECIFICHEAT; }
sub P_En() { 2.19; }
sub SZ() { 16; }
sub S_MASS() { 32.06 * Kw::MOLARMASS; }
sub SMASS() { S_MASS / Kw::AVOGADRO; }
sub S_DENSITY() { 2067 * Kw::DENSITY; }
sub S_MELT() { 388.36 * Kw::KELVIN; }
sub S_BOIL() { 717.87 * Kw::KELVIN; }
sub S_Cp() { 710 * Kw::SPECIFICHEAT; }
sub S_En() { 2.58; }
sub ClZ() { 17; }
sub Cl_MASS() { 35.45 * Kw::MOLARMASS; }
sub ClMASS() { Cl_MASS / Kw::AVOGADRO; }
sub Cl_DENSITY() { 3.214 * Kw::DENSITY; }
sub Cl_MELT() { 171.6 * Kw::KELVIN; }
sub Cl_BOIL() { 239.11 * Kw::KELVIN; }
sub Cl_Cp() { 479 * Kw::SPECIFICHEAT; }
sub Cl_En() { 3.16; }
sub ArZ() { 18; }
sub Ar_MASS() { 39.948 * Kw::MOLARMASS; }
sub ArMASS() { Ar_MASS / Kw::AVOGADRO; }
sub Ar_DENSITY() { 1.7837 * Kw::DENSITY; }
sub Ar_MELT() { 83.80 * Kw::KELVIN; }
sub Ar_BOIL() { 87.30 * Kw::KELVIN; }
sub Ar_Cp() { 520 * Kw::SPECIFICHEAT; }
sub Ar_En() { - 1; }
sub KZ() { 19; }
sub K_MASS() { 39.0983 * Kw::MOLARMASS; }
sub KMASS() { K_MASS / Kw::AVOGADRO; }
sub K_DENSITY() { 862 * Kw::DENSITY; }
sub K_MELT() { 336.53 * Kw::KELVIN; }
sub K_BOIL() { 1032 * Kw::KELVIN; }
sub K_Cp() { 757 * Kw::SPECIFICHEAT; }
sub K_En() { 0.82; }
sub CaZ() { 20; }
sub Ca_MASS() { 40.078 * Kw::MOLARMASS; }
sub CaMASS() { Ca_MASS / Kw::AVOGADRO; }
sub Ca_DENSITY() { 1540 * Kw::DENSITY; }
sub Ca_MELT() { 1115 * Kw::KELVIN; }
sub Ca_BOIL() { 1757 * Kw::KELVIN; }
sub Ca_Cp() { 647 * Kw::SPECIFICHEAT; }
sub Ca_En() { 1; }
sub ScZ() { 21; }
sub Sc_MASS() { 44.955908 * Kw::MOLARMASS; }
sub ScMASS() { Sc_MASS / Kw::AVOGADRO; }
sub Sc_DENSITY() { 2989 * Kw::DENSITY; }
sub Sc_MELT() { 1814 * Kw::KELVIN; }
sub Sc_BOIL() { 3109 * Kw::KELVIN; }
sub Sc_Cp() { 568 * Kw::SPECIFICHEAT; }
sub Sc_En() { 1.36; }
sub TiZ() { 22; }
sub Ti_MASS() { 47.867 * Kw::MOLARMASS; }
sub TiMASS() { Ti_MASS / Kw::AVOGADRO; }
sub Ti_DENSITY() { 4540 * Kw::DENSITY; }
sub Ti_MELT() { 1941 * Kw::KELVIN; }
sub Ti_BOIL() { 3560 * Kw::KELVIN; }
sub Ti_Cp() { 523 * Kw::SPECIFICHEAT; }
sub Ti_En() { 1.54; }
sub VZ() { 23; }
sub V_MASS() { 50.9415 * Kw::MOLARMASS; }
sub VMASS() { V_MASS / Kw::AVOGADRO; }
sub V_DENSITY() { 6110 * Kw::DENSITY; }
sub V_MELT() { 2183 * Kw::KELVIN; }
sub V_BOIL() { 3680 * Kw::KELVIN; }
sub V_Cp() { 489 * Kw::SPECIFICHEAT; }
sub V_En() { 1.63; }
sub CrZ() { 24; }
sub Cr_MASS() { 51.9961 * Kw::MOLARMASS; }
sub CrMASS() { Cr_MASS / Kw::AVOGADRO; }
sub Cr_DENSITY() { 7150 * Kw::DENSITY; }
sub Cr_MELT() { 2180 * Kw::KELVIN; }
sub Cr_BOIL() { 2944 * Kw::KELVIN; }
sub Cr_Cp() { 449 * Kw::SPECIFICHEAT; }
sub Cr_En() { 1.66; }
sub MnZ() { 25; }
sub Mn_MASS() { 54.938043 * Kw::MOLARMASS; }
sub MnMASS() { Mn_MASS / Kw::AVOGADRO; }
sub Mn_DENSITY() { 7440 * Kw::DENSITY; }
sub Mn_MELT() { 1519 * Kw::KELVIN; }
sub Mn_BOIL() { 2334 * Kw::KELVIN; }
sub Mn_Cp() { 479 * Kw::SPECIFICHEAT; }
sub Mn_En() { 1.55; }
sub FeZ() { 26; }
sub Fe_MASS() { 55.845 * Kw::MOLARMASS; }
sub FeMASS() { Fe_MASS / Kw::AVOGADRO; }
sub Fe_DENSITY() { 7874 * Kw::DENSITY; }
sub Fe_MELT() { 1811 * Kw::KELVIN; }
sub Fe_BOIL() { 3134 * Kw::KELVIN; }
sub Fe_Cp() { 449 * Kw::SPECIFICHEAT; }
sub Fe_En() { 1.83; }
sub CoZ() { 27; }
sub Co_MASS() { 58.933194 * Kw::MOLARMASS; }
sub CoMASS() { Co_MASS / Kw::AVOGADRO; }
sub Co_DENSITY() { 8860 * Kw::DENSITY; }
sub Co_MELT() { 1768 * Kw::KELVIN; }
sub Co_BOIL() { 3200 * Kw::KELVIN; }
sub Co_Cp() { 421 * Kw::SPECIFICHEAT; }
sub Co_En() { 1.88; }
sub NiZ() { 28; }
sub Ni_MASS() { 58.6934 * Kw::MOLARMASS; }
sub NiMASS() { Ni_MASS / Kw::AVOGADRO; }
sub Ni_DENSITY() { 8912 * Kw::DENSITY; }
sub Ni_MELT() { 1728 * Kw::KELVIN; }
sub Ni_BOIL() { 3186 * Kw::KELVIN; }
sub Ni_Cp() { 444 * Kw::SPECIFICHEAT; }
sub Ni_En() { 1.91; }
sub CuZ() { 29; }
sub Cu_MASS() { 63.546 * Kw::MOLARMASS; }
sub CuMASS() { Cu_MASS / Kw::AVOGADRO; }
sub Cu_DENSITY() { 8960 * Kw::DENSITY; }
sub Cu_MELT() { 1357.77 * Kw::KELVIN; }
sub Cu_BOIL() { 2835 * Kw::KELVIN; }
sub Cu_Cp() { 385 * Kw::SPECIFICHEAT; }
sub Cu_En() { 1.9; }
sub ZnZ() { 30; }
sub Zn_MASS() { 65.38 * Kw::MOLARMASS; }
sub ZnMASS() { Zn_MASS / Kw::AVOGADRO; }
sub Zn_DENSITY() { 7134 * Kw::DENSITY; }
sub Zn_MELT() { 692.88 * Kw::KELVIN; }
sub Zn_BOIL() { 1180 * Kw::KELVIN; }
sub Zn_Cp() { 388 * Kw::SPECIFICHEAT; }
sub Zn_En() { 1.65; }
sub GaZ() { 31; }
sub Ga_MASS() { 69.723 * Kw::MOLARMASS; }
sub GaMASS() { Ga_MASS / Kw::AVOGADRO; }
sub Ga_DENSITY() { 5907 * Kw::DENSITY; }
sub Ga_MELT() { 302.9146 * Kw::KELVIN; }
sub Ga_BOIL() { 2673 * Kw::KELVIN; }
sub Ga_Cp() { 371 * Kw::SPECIFICHEAT; }
sub Ga_En() { 1.81; }
sub GeZ() { 32; }
sub Ge_MASS() { 72.630 * Kw::MOLARMASS; }
sub GeMASS() { Ge_MASS / Kw::AVOGADRO; }
sub Ge_DENSITY() { 5323 * Kw::DENSITY; }
sub Ge_MELT() { 1211.40 * Kw::KELVIN; }
sub Ge_BOIL() { 3106 * Kw::KELVIN; }
sub Ge_Cp() { 320 * Kw::SPECIFICHEAT; }
sub Ge_En() { 2.01; }
sub AsZ() { 33; }
sub As_MASS() { 74.921595 * Kw::MOLARMASS; }
sub AsMASS() { As_MASS / Kw::AVOGADRO; }
sub As_DENSITY() { 5776 * Kw::DENSITY; }
sub As_MELT() { 1090 * Kw::KELVIN; }
sub As_BOIL() { 887 * Kw::KELVIN; }
sub As_Cp() { 329 * Kw::SPECIFICHEAT; }
sub As_En() { 2.18; }
sub SeZ() { 34; }
sub Se_MASS() { 78.971 * Kw::MOLARMASS; }
sub SeMASS() { Se_MASS / Kw::AVOGADRO; }
sub Se_DENSITY() { 4809 * Kw::DENSITY; }
sub Se_MELT() { 453 * Kw::KELVIN; }
sub Se_BOIL() { 958 * Kw::KELVIN; }
sub Se_Cp() { 321 * Kw::SPECIFICHEAT; }
sub Se_En() { 2.55; }
sub BrZ() { 35; }
sub Br_MASS() { 79.904 * Kw::MOLARMASS; }
sub BrMASS() { Br_MASS / Kw::AVOGADRO; }
sub Br_DENSITY() { 3122 * Kw::DENSITY; }
sub Br_MELT() { 265.8 * Kw::KELVIN; }
sub Br_BOIL() { 332.0 * Kw::KELVIN; }
sub Br_Cp() { 474 * Kw::SPECIFICHEAT; }
sub Br_En() { 2.96; }
sub KrZ() { 36; }
sub Kr_MASS() { 83.798 * Kw::MOLARMASS; }
sub KrMASS() { Kr_MASS / Kw::AVOGADRO; }
sub Kr_DENSITY() { 3.733 * Kw::DENSITY; }
sub Kr_MELT() { 115.79 * Kw::KELVIN; }
sub Kr_BOIL() { 119.93 * Kw::KELVIN; }
sub Kr_Cp() { 248 * Kw::SPECIFICHEAT; }
sub Kr_En() { 3; }
sub RbZ() { 37; }
sub Rb_MASS() { 85.4678 * Kw::MOLARMASS; }
sub RbMASS() { Rb_MASS / Kw::AVOGADRO; }
sub Rb_DENSITY() { 1532 * Kw::DENSITY; }
sub Rb_MELT() { 312.46 * Kw::KELVIN; }
sub Rb_BOIL() { 961 * Kw::KELVIN; }
sub Rb_Cp() { 363 * Kw::SPECIFICHEAT; }
sub Rb_En() { 0.82; }
sub SrZ() { 38; }
sub Sr_MASS() { 87.62 * Kw::MOLARMASS; }
sub SrMASS() { Sr_MASS / Kw::AVOGADRO; }
sub Sr_DENSITY() { 2640 * Kw::DENSITY; }
sub Sr_MELT() { 1050 * Kw::KELVIN; }
sub Sr_BOIL() { 1655 * Kw::KELVIN; }
sub Sr_Cp() { 301 * Kw::SPECIFICHEAT; }
sub Sr_En() { 0.95; }
sub YZ() { 39; }
sub Y_MASS() { 88.90584 * Kw::MOLARMASS; }
sub YMASS() { Y_MASS / Kw::AVOGADRO; }
sub Y_DENSITY() { 4469 * Kw::DENSITY; }
sub Y_MELT() { 1799 * Kw::KELVIN; }
sub Y_BOIL() { 3609 * Kw::KELVIN; }
sub Y_Cp() { 298 * Kw::SPECIFICHEAT; }
sub Y_En() { 1.22; }
sub ZrZ() { 40; }
sub Zr_MASS() { 91.224 * Kw::MOLARMASS; }
sub ZrMASS() { Zr_MASS / Kw::AVOGADRO; }
sub Zr_DENSITY() { 6506 * Kw::DENSITY; }
sub Zr_MELT() { 2128 * Kw::KELVIN; }
sub Zr_BOIL() { 4682 * Kw::KELVIN; }
sub Zr_Cp() { 278 * Kw::SPECIFICHEAT; }
sub Zr_En() { 1.33; }
sub NbZ() { 41; }
sub Nb_MASS() { 92.90637 * Kw::MOLARMASS; }
sub NbMASS() { Nb_MASS / Kw::AVOGADRO; }
sub Nb_DENSITY() { 8570 * Kw::DENSITY; }
sub Nb_MELT() { 2750 * Kw::KELVIN; }
sub Nb_BOIL() { 5017 * Kw::KELVIN; }
sub Nb_Cp() { 265 * Kw::SPECIFICHEAT; }
sub Nb_En() { 1.6; }
sub MoZ() { 42; }
sub Mo_MASS() { 95.95 * Kw::MOLARMASS; }
sub MoMASS() { Mo_MASS / Kw::AVOGADRO; }
sub Mo_DENSITY() { 10220 * Kw::DENSITY; }
sub Mo_MELT() { 2896 * Kw::KELVIN; }
sub Mo_BOIL() { 4912 * Kw::KELVIN; }
sub Mo_Cp() { 251 * Kw::SPECIFICHEAT; }
sub Mo_En() { 2.16; }
sub TcZ() { 43; }
sub Tc_MASS() { 98 * Kw::MOLARMASS; }
sub TcMASS() { Tc_MASS / Kw::AVOGADRO; }
sub Tc_DENSITY() { 11500 * Kw::DENSITY; }
sub Tc_MELT() { 2430 * Kw::KELVIN; }
sub Tc_BOIL() { 4538 * Kw::KELVIN; }
sub Tc_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Tc_En() { 1.9; }
sub RuZ() { 44; }
sub Ru_MASS() { 101.07 * Kw::MOLARMASS; }
sub RuMASS() { Ru_MASS / Kw::AVOGADRO; }
sub Ru_DENSITY() { 12370 * Kw::DENSITY; }
sub Ru_MELT() { 2607 * Kw::KELVIN; }
sub Ru_BOIL() { 4423 * Kw::KELVIN; }
sub Ru_Cp() { 238 * Kw::SPECIFICHEAT; }
sub Ru_En() { 2.2; }
sub RhZ() { 45; }
sub Rh_MASS() { 102.90549 * Kw::MOLARMASS; }
sub RhMASS() { Rh_MASS / Kw::AVOGADRO; }
sub Rh_DENSITY() { 12410 * Kw::DENSITY; }
sub Rh_MELT() { 2237 * Kw::KELVIN; }
sub Rh_BOIL() { 3968 * Kw::KELVIN; }
sub Rh_Cp() { 243 * Kw::SPECIFICHEAT; }
sub Rh_En() { 2.28; }
sub PdZ() { 46; }
sub Pd_MASS() { 106.42 * Kw::MOLARMASS; }
sub PdMASS() { Pd_MASS / Kw::AVOGADRO; }
sub Pd_DENSITY() { 12020 * Kw::DENSITY; }
sub Pd_MELT() { 1828.05 * Kw::KELVIN; }
sub Pd_BOIL() { 3236 * Kw::KELVIN; }
sub Pd_Cp() { 244 * Kw::SPECIFICHEAT; }
sub Pd_En() { 2.2; }
sub AgZ() { 47; }
sub Ag_MASS() { 107.8682 * Kw::MOLARMASS; }
sub AgMASS() { Ag_MASS / Kw::AVOGADRO; }
sub Ag_DENSITY() { 10501 * Kw::DENSITY; }
sub Ag_MELT() { 1234.93 * Kw::KELVIN; }
sub Ag_BOIL() { 2435 * Kw::KELVIN; }
sub Ag_Cp() { 235 * Kw::SPECIFICHEAT; }
sub Ag_En() { 1.93; }
sub CdZ() { 48; }
sub Cd_MASS() { 112.414 * Kw::MOLARMASS; }
sub CdMASS() { Cd_MASS / Kw::AVOGADRO; }
sub Cd_DENSITY() { 8690 * Kw::DENSITY; }
sub Cd_MELT() { 594.22 * Kw::KELVIN; }
sub Cd_BOIL() { 1040 * Kw::KELVIN; }
sub Cd_Cp() { 232 * Kw::SPECIFICHEAT; }
sub Cd_En() { 1.69; }
sub InZ() { 49; }
sub In_MASS() { 114.818 * Kw::MOLARMASS; }
sub InMASS() { In_MASS / Kw::AVOGADRO; }
sub In_DENSITY() { 7310 * Kw::DENSITY; }
sub In_MELT() { 429.75 * Kw::KELVIN; }
sub In_BOIL() { 2345 * Kw::KELVIN; }
sub In_Cp() { 233 * Kw::SPECIFICHEAT; }
sub In_En() { 1.78; }
sub SnZ() { 50; }
sub Sn_MASS() { 118.710 * Kw::MOLARMASS; }
sub SnMASS() { Sn_MASS / Kw::AVOGADRO; }
sub Sn_DENSITY() { 7287 * Kw::DENSITY; }
sub Sn_MELT() { 505.08 * Kw::KELVIN; }
sub Sn_BOIL() { 2875 * Kw::KELVIN; }
sub Sn_Cp() { 228 * Kw::SPECIFICHEAT; }
sub Sn_En() { 1.96; }
sub SbZ() { 51; }
sub Sb_MASS() { 121.760 * Kw::MOLARMASS; }
sub SbMASS() { Sb_MASS / Kw::AVOGADRO; }
sub Sb_DENSITY() { 6685 * Kw::DENSITY; }
sub Sb_MELT() { 903.78 * Kw::KELVIN; }
sub Sb_BOIL() { 1860 * Kw::KELVIN; }
sub Sb_Cp() { 207 * Kw::SPECIFICHEAT; }
sub Sb_En() { 2.05; }
sub TeZ() { 52; }
sub Te_MASS() { 127.60 * Kw::MOLARMASS; }
sub TeMASS() { Te_MASS / Kw::AVOGADRO; }
sub Te_DENSITY() { 6232 * Kw::DENSITY; }
sub Te_MELT() { 722.66 * Kw::KELVIN; }
sub Te_BOIL() { 1261 * Kw::KELVIN; }
sub Te_Cp() { 202 * Kw::SPECIFICHEAT; }
sub Te_En() { 2.1; }
sub IZ() { 53; }
sub I_MASS() { 126.90447 * Kw::MOLARMASS; }
sub IMASS() { I_MASS / Kw::AVOGADRO; }
sub I_DENSITY() { 4930 * Kw::DENSITY; }
sub I_MELT() { 386.85 * Kw::KELVIN; }
sub I_BOIL() { 457.4 * Kw::KELVIN; }
sub I_Cp() { 214 * Kw::SPECIFICHEAT; }
sub I_En() { 2.66; }
sub XeZ() { 54; }
sub Xe_MASS() { 131.293 * Kw::MOLARMASS; }
sub XeMASS() { Xe_MASS / Kw::AVOGADRO; }
sub Xe_DENSITY() { 5.887 * Kw::DENSITY; }
sub Xe_MELT() { 161.4 * Kw::KELVIN; }
sub Xe_BOIL() { 165.03 * Kw::KELVIN; }
sub Xe_Cp() { 158 * Kw::SPECIFICHEAT; }
sub Xe_En() { 2.6; }
sub CsZ() { 55; }
sub Cs_MASS() { 132.90545196 * Kw::MOLARMASS; }
sub CsMASS() { Cs_MASS / Kw::AVOGADRO; }
sub Cs_DENSITY() { 1873 * Kw::DENSITY; }
sub Cs_MELT() { 301.59 * Kw::KELVIN; }
sub Cs_BOIL() { 944 * Kw::KELVIN; }
sub Cs_Cp() { 242 * Kw::SPECIFICHEAT; }
sub Cs_En() { 0.79; }
sub BaZ() { 56; }
sub Ba_MASS() { 137.327 * Kw::MOLARMASS; }
sub BaMASS() { Ba_MASS / Kw::AVOGADRO; }
sub Ba_DENSITY() { 3594 * Kw::DENSITY; }
sub Ba_MELT() { 1000 * Kw::KELVIN; }
sub Ba_BOIL() { 2170 * Kw::KELVIN; }
sub Ba_Cp() { 204 * Kw::SPECIFICHEAT; }
sub Ba_En() { 0.89; }
sub LaZ() { 57; }
sub La_MASS() { 138.90547 * Kw::MOLARMASS; }
sub LaMASS() { La_MASS / Kw::AVOGADRO; }
sub La_DENSITY() { 6145 * Kw::DENSITY; }
sub La_MELT() { 1193 * Kw::KELVIN; }
sub La_BOIL() { 3737 * Kw::KELVIN; }
sub La_Cp() { 195 * Kw::SPECIFICHEAT; }
sub La_En() { 1.1; }
sub CeZ() { 58; }
sub Ce_MASS() { 140.116 * Kw::MOLARMASS; }
sub CeMASS() { Ce_MASS / Kw::AVOGADRO; }
sub Ce_DENSITY() { 6770 * Kw::DENSITY; }
sub Ce_MELT() { 1068 * Kw::KELVIN; }
sub Ce_BOIL() { 3716 * Kw::KELVIN; }
sub Ce_Cp() { 192 * Kw::SPECIFICHEAT; }
sub Ce_En() { 1.12; }
sub PrZ() { 59; }
sub Pr_MASS() { 140.90766 * Kw::MOLARMASS; }
sub PrMASS() { Pr_MASS / Kw::AVOGADRO; }
sub Pr_DENSITY() { 6773 * Kw::DENSITY; }
sub Pr_MELT() { 1208 * Kw::KELVIN; }
sub Pr_BOIL() { 3793 * Kw::KELVIN; }
sub Pr_Cp() { 193 * Kw::SPECIFICHEAT; }
sub Pr_En() { 1.13; }
sub NdZ() { 60; }
sub Nd_MASS() { 144.242 * Kw::MOLARMASS; }
sub NdMASS() { Nd_MASS / Kw::AVOGADRO; }
sub Nd_DENSITY() { 7007 * Kw::DENSITY; }
sub Nd_MELT() { 1297 * Kw::KELVIN; }
sub Nd_BOIL() { 3347 * Kw::KELVIN; }
sub Nd_Cp() { 190 * Kw::SPECIFICHEAT; }
sub Nd_En() { 1.14; }
sub PmZ() { 61; }
sub Pm_MASS() { 145 * Kw::MOLARMASS; }
sub PmMASS() { Pm_MASS / Kw::AVOGADRO; }
sub Pm_DENSITY() { 7260 * Kw::DENSITY; }
sub Pm_MELT() { 1315 * Kw::KELVIN; }
sub Pm_BOIL() { 3273 * Kw::KELVIN; }
sub Pm_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Pm_En() { 1.13; }
sub SmZ() { 62; }
sub Sm_MASS() { 150.36 * Kw::MOLARMASS; }
sub SmMASS() { Sm_MASS / Kw::AVOGADRO; }
sub Sm_DENSITY() { 7520 * Kw::DENSITY; }
sub Sm_MELT() { 1345 * Kw::KELVIN; }
sub Sm_BOIL() { 2067 * Kw::KELVIN; }
sub Sm_Cp() { 197 * Kw::SPECIFICHEAT; }
sub Sm_En() { 1.17; }
sub EuZ() { 63; }
sub Eu_MASS() { 151.964 * Kw::MOLARMASS; }
sub EuMASS() { Eu_MASS / Kw::AVOGADRO; }
sub Eu_DENSITY() { 5243 * Kw::DENSITY; }
sub Eu_MELT() { 1099 * Kw::KELVIN; }
sub Eu_BOIL() { 1802 * Kw::KELVIN; }
sub Eu_Cp() { 182 * Kw::SPECIFICHEAT; }
sub Eu_En() { 1.2; }
sub GdZ() { 64; }
sub Gd_MASS() { 157.25 * Kw::MOLARMASS; }
sub GdMASS() { Gd_MASS / Kw::AVOGADRO; }
sub Gd_DENSITY() { 7895 * Kw::DENSITY; }
sub Gd_MELT() { 1585 * Kw::KELVIN; }
sub Gd_BOIL() { 3546 * Kw::KELVIN; }
sub Gd_Cp() { 236 * Kw::SPECIFICHEAT; }
sub Gd_En() { 1.2; }
sub TbZ() { 65; }
sub Tb_MASS() { 158.925354 * Kw::MOLARMASS; }
sub TbMASS() { Tb_MASS / Kw::AVOGADRO; }
sub Tb_DENSITY() { 8229 * Kw::DENSITY; }
sub Tb_MELT() { 1629 * Kw::KELVIN; }
sub Tb_BOIL() { 3503 * Kw::KELVIN; }
sub Tb_Cp() { 182 * Kw::SPECIFICHEAT; }
sub Tb_En() { 1.2; }
sub DyZ() { 66; }
sub Dy_MASS() { 162.500 * Kw::MOLARMASS; }
sub DyMASS() { Dy_MASS / Kw::AVOGADRO; }
sub Dy_DENSITY() { 8550 * Kw::DENSITY; }
sub Dy_MELT() { 1680 * Kw::KELVIN; }
sub Dy_BOIL() { 2840 * Kw::KELVIN; }
sub Dy_Cp() { 170 * Kw::SPECIFICHEAT; }
sub Dy_En() { 1.22; }
sub HoZ() { 67; }
sub Ho_MASS() { 164.930328 * Kw::MOLARMASS; }
sub HoMASS() { Ho_MASS / Kw::AVOGADRO; }
sub Ho_DENSITY() { 8795 * Kw::DENSITY; }
sub Ho_MELT() { 1734 * Kw::KELVIN; }
sub Ho_BOIL() { 2993 * Kw::KELVIN; }
sub Ho_Cp() { 165 * Kw::SPECIFICHEAT; }
sub Ho_En() { 1.23; }
sub ErZ() { 68; }
sub Er_MASS() { 167.259 * Kw::MOLARMASS; }
sub ErMASS() { Er_MASS / Kw::AVOGADRO; }
sub Er_DENSITY() { 9066 * Kw::DENSITY; }
sub Er_MELT() { 1802 * Kw::KELVIN; }
sub Er_BOIL() { 3141 * Kw::KELVIN; }
sub Er_Cp() { 168 * Kw::SPECIFICHEAT; }
sub Er_En() { 1.24; }
sub TmZ() { 69; }
sub Tm_MASS() { 168.934218 * Kw::MOLARMASS; }
sub TmMASS() { Tm_MASS / Kw::AVOGADRO; }
sub Tm_DENSITY() { 9321 * Kw::DENSITY; }
sub Tm_MELT() { 1818 * Kw::KELVIN; }
sub Tm_BOIL() { 2223 * Kw::KELVIN; }
sub Tm_Cp() { 160 * Kw::SPECIFICHEAT; }
sub Tm_En() { 1.25; }
sub YbZ() { 70; }
sub Yb_MASS() { 173.045 * Kw::MOLARMASS; }
sub YbMASS() { Yb_MASS / Kw::AVOGADRO; }
sub Yb_DENSITY() { 6965 * Kw::DENSITY; }
sub Yb_MELT() { 1097 * Kw::KELVIN; }
sub Yb_BOIL() { 1469 * Kw::KELVIN; }
sub Yb_Cp() { 155 * Kw::SPECIFICHEAT; }
sub Yb_En() { 1.1; }
sub LuZ() { 71; }
sub Lu_MASS() { 174.9668 * Kw::MOLARMASS; }
sub LuMASS() { Lu_MASS / Kw::AVOGADRO; }
sub Lu_DENSITY() { 9840 * Kw::DENSITY; }
sub Lu_MELT() { 1925 * Kw::KELVIN; }
sub Lu_BOIL() { 3675 * Kw::KELVIN; }
sub Lu_Cp() { 154 * Kw::SPECIFICHEAT; }
sub Lu_En() { 1.27; }
sub HfZ() { 72; }
sub Hf_MASS() { 178.49 * Kw::MOLARMASS; }
sub HfMASS() { Hf_MASS / Kw::AVOGADRO; }
sub Hf_DENSITY() { 13310 * Kw::DENSITY; }
sub Hf_MELT() { 2506 * Kw::KELVIN; }
sub Hf_BOIL() { 4876 * Kw::KELVIN; }
sub Hf_Cp() { 144 * Kw::SPECIFICHEAT; }
sub Hf_En() { 1.3; }
sub TaZ() { 73; }
sub Ta_MASS() { 180.94788 * Kw::MOLARMASS; }
sub TaMASS() { Ta_MASS / Kw::AVOGADRO; }
sub Ta_DENSITY() { 16654 * Kw::DENSITY; }
sub Ta_MELT() { 3290 * Kw::KELVIN; }
sub Ta_BOIL() { 5731 * Kw::KELVIN; }
sub Ta_Cp() { 140 * Kw::SPECIFICHEAT; }
sub Ta_En() { 1.5; }
sub WZ() { 74; }
sub W_MASS() { 183.84 * Kw::MOLARMASS; }
sub WMASS() { W_MASS / Kw::AVOGADRO; }
sub W_DENSITY() { 19250 * Kw::DENSITY; }
sub W_MELT() { 3695 * Kw::KELVIN; }
sub W_BOIL() { 5828 * Kw::KELVIN; }
sub W_Cp() { 132 * Kw::SPECIFICHEAT; }
sub W_En() { 2.36; }
sub ReZ() { 75; }
sub Re_MASS() { 186.207 * Kw::MOLARMASS; }
sub ReMASS() { Re_MASS / Kw::AVOGADRO; }
sub Re_DENSITY() { 21020 * Kw::DENSITY; }
sub Re_MELT() { 3459 * Kw::KELVIN; }
sub Re_BOIL() { 5869 * Kw::KELVIN; }
sub Re_Cp() { 137 * Kw::SPECIFICHEAT; }
sub Re_En() { 1.9; }
sub OsZ() { 76; }
sub Os_MASS() { 190.23 * Kw::MOLARMASS; }
sub OsMASS() { Os_MASS / Kw::AVOGADRO; }
sub Os_DENSITY() { 22610 * Kw::DENSITY; }
sub Os_MELT() { 3306 * Kw::KELVIN; }
sub Os_BOIL() { 5285 * Kw::KELVIN; }
sub Os_Cp() { 130 * Kw::SPECIFICHEAT; }
sub Os_En() { 2.2; }
sub IrZ() { 77; }
sub Ir_MASS() { 192.217 * Kw::MOLARMASS; }
sub IrMASS() { Ir_MASS / Kw::AVOGADRO; }
sub Ir_DENSITY() { 22560 * Kw::DENSITY; }
sub Ir_MELT() { 2719 * Kw::KELVIN; }
sub Ir_BOIL() { 4701 * Kw::KELVIN; }
sub Ir_Cp() { 131 * Kw::SPECIFICHEAT; }
sub Ir_En() { 2.2; }
sub PtZ() { 78; }
sub Pt_MASS() { 195.084 * Kw::MOLARMASS; }
sub PtMASS() { Pt_MASS / Kw::AVOGADRO; }
sub Pt_DENSITY() { 21460 * Kw::DENSITY; }
sub Pt_MELT() { 2041.4 * Kw::KELVIN; }
sub Pt_BOIL() { 4098 * Kw::KELVIN; }
sub Pt_Cp() { 133 * Kw::SPECIFICHEAT; }
sub Pt_En() { 2.28; }
sub AuZ() { 79; }
sub Au_MASS() { 196.966570 * Kw::MOLARMASS; }
sub AuMASS() { Au_MASS / Kw::AVOGADRO; }
sub Au_DENSITY() { 19282 * Kw::DENSITY; }
sub Au_MELT() { 1337.33 * Kw::KELVIN; }
sub Au_BOIL() { 3129 * Kw::KELVIN; }
sub Au_Cp() { 129 * Kw::SPECIFICHEAT; }
sub Au_En() { 2.54; }
sub HgZ() { 80; }
sub Hg_MASS() { 200.592 * Kw::MOLARMASS; }
sub HgMASS() { Hg_MASS / Kw::AVOGADRO; }
sub Hg_DENSITY() { 13533.6 * Kw::DENSITY; }
sub Hg_MELT() { 234.43 * Kw::KELVIN; }
sub Hg_BOIL() { 629.88 * Kw::KELVIN; }
sub Hg_Cp() { 140 * Kw::SPECIFICHEAT; }
sub Hg_En() { 2; }
sub TlZ() { 81; }
sub Tl_MASS() { 204.38 * Kw::MOLARMASS; }
sub TlMASS() { Tl_MASS / Kw::AVOGADRO; }
sub Tl_DENSITY() { 11850 * Kw::DENSITY; }
sub Tl_MELT() { 577 * Kw::KELVIN; }
sub Tl_BOIL() { 1746 * Kw::KELVIN; }
sub Tl_Cp() { 129 * Kw::SPECIFICHEAT; }
sub Tl_En() { 1.62; }
sub PbZ() { 82; }
sub Pb_MASS() { 207.2 * Kw::MOLARMASS; }
sub PbMASS() { Pb_MASS / Kw::AVOGADRO; }
sub Pb_DENSITY() { 11342 * Kw::DENSITY; }
sub Pb_MELT() { 600.61 * Kw::KELVIN; }
sub Pb_BOIL() { 2022 * Kw::KELVIN; }
sub Pb_Cp() { 129 * Kw::SPECIFICHEAT; }
sub Pb_En() { 1.87; }
sub BiZ() { 83; }
sub Bi_MASS() { 208.98040 * Kw::MOLARMASS; }
sub BiMASS() { Bi_MASS / Kw::AVOGADRO; }
sub Bi_DENSITY() { 9807 * Kw::DENSITY; }
sub Bi_MELT() { 544.7 * Kw::KELVIN; }
sub Bi_BOIL() { 1837 * Kw::KELVIN; }
sub Bi_Cp() { 122 * Kw::SPECIFICHEAT; }
sub Bi_En() { 2.02; }
sub PoZ() { 84; }
sub Po_MASS() { 209 * Kw::MOLARMASS; }
sub PoMASS() { Po_MASS / Kw::AVOGADRO; }
sub Po_DENSITY() { 9320 * Kw::DENSITY; }
sub Po_MELT() { 527 * Kw::KELVIN; }
sub Po_BOIL() { 1235 * Kw::KELVIN; }
sub Po_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Po_En() { 2.0; }
sub AtZ() { 85; }
sub At_MASS() { 210 * Kw::MOLARMASS; }
sub AtMASS() { At_MASS / Kw::AVOGADRO; }
sub At_DENSITY() { 7000 * Kw::DENSITY; }
sub At_MELT() { 575 * Kw::KELVIN; }
sub At_BOIL() { 610 * Kw::KELVIN; }
sub At_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub At_En() { 2.2; }
sub RnZ() { 86; }
sub Rn_MASS() { 222 * Kw::MOLARMASS; }
sub RnMASS() { Rn_MASS / Kw::AVOGADRO; }
sub Rn_DENSITY() { 9.73 * Kw::DENSITY; }
sub Rn_MELT() { 202 * Kw::KELVIN; }
sub Rn_BOIL() { 211.3 * Kw::KELVIN; }
sub Rn_Cp() { 94 * Kw::SPECIFICHEAT; }
sub Rn_En() { 2.2; }
sub FrZ() { 87; }
sub Fr_MASS() { 223 * Kw::MOLARMASS; }
sub FrMASS() { Fr_MASS / Kw::AVOGADRO; }
sub Fr_DENSITY() { 1870 * Kw::DENSITY; }
sub Fr_MELT() { 300 * Kw::KELVIN; }
sub Fr_BOIL() { 950 * Kw::KELVIN; }
sub Fr_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Fr_En() { 0.7; }
sub RaZ() { 88; }
sub Ra_MASS() { 226 * Kw::MOLARMASS; }
sub RaMASS() { Ra_MASS / Kw::AVOGADRO; }
sub Ra_DENSITY() { 5500 * Kw::DENSITY; }
sub Ra_MELT() { 973 * Kw::KELVIN; }
sub Ra_BOIL() { 2010 * Kw::KELVIN; }
sub Ra_Cp() { 94 * Kw::SPECIFICHEAT; }
sub Ra_En() { 0.9; }
sub AcZ() { 89; }
sub Ac_MASS() { 227 * Kw::MOLARMASS; }
sub AcMASS() { Ac_MASS / Kw::AVOGADRO; }
sub Ac_DENSITY() { 10070 * Kw::DENSITY; }
sub Ac_MELT() { 1323 * Kw::KELVIN; }
sub Ac_BOIL() { 3471 * Kw::KELVIN; }
sub Ac_Cp() { 120 * Kw::SPECIFICHEAT; }
sub Ac_En() { 1.1; }
sub ThZ() { 90; }
sub Th_MASS() { 232.0377 * Kw::MOLARMASS; }
sub ThMASS() { Th_MASS / Kw::AVOGADRO; }
sub Th_DENSITY() { 11720 * Kw::DENSITY; }
sub Th_MELT() { 2115 * Kw::KELVIN; }
sub Th_BOIL() { 5061 * Kw::KELVIN; }
sub Th_Cp() { 113 * Kw::SPECIFICHEAT; }
sub Th_En() { 1.3; }
sub PaZ() { 91; }
sub Pa_MASS() { 231.03588 * Kw::MOLARMASS; }
sub PaMASS() { Pa_MASS / Kw::AVOGADRO; }
sub Pa_DENSITY() { 15370 * Kw::DENSITY; }
sub Pa_MELT() { 1841 * Kw::KELVIN; }
sub Pa_BOIL() { 4300 * Kw::KELVIN; }
sub Pa_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Pa_En() { 1.5; }
sub UZ() { 92; }
sub U_MASS() { 238.02891 * Kw::MOLARMASS; }
sub UMASS() { U_MASS / Kw::AVOGADRO; }
sub U_DENSITY() { 18950 * Kw::DENSITY; }
sub U_MELT() { 1405.3 * Kw::KELVIN; }
sub U_BOIL() { 4404 * Kw::KELVIN; }
sub U_Cp() { 116 * Kw::SPECIFICHEAT; }
sub U_En() { 1.38; }
sub NpZ() { 93; }
sub Np_MASS() { 237 * Kw::MOLARMASS; }
sub NpMASS() { Np_MASS / Kw::AVOGADRO; }
sub Np_DENSITY() { 20450 * Kw::DENSITY; }
sub Np_MELT() { 917 * Kw::KELVIN; }
sub Np_BOIL() { 4273 * Kw::KELVIN; }
sub Np_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Np_En() { 1.36; }
sub PuZ() { 94; }
sub Pu_MASS() { 244 * Kw::MOLARMASS; }
sub PuMASS() { Pu_MASS / Kw::AVOGADRO; }
sub Pu_DENSITY() { 19840 * Kw::DENSITY; }
sub Pu_MELT() { 912.5 * Kw::KELVIN; }
sub Pu_BOIL() { 3501 * Kw::KELVIN; }
sub Pu_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Pu_En() { 1.28; }
sub AmZ() { 95; }
sub Am_MASS() { 243 * Kw::MOLARMASS; }
sub AmMASS() { Am_MASS / Kw::AVOGADRO; }
sub Am_DENSITY() { 13690 * Kw::DENSITY; }
sub Am_MELT() { 1449 * Kw::KELVIN; }
sub Am_BOIL() { 2880 * Kw::KELVIN; }
sub Am_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Am_En() { 1.13; }
sub CmZ() { 96; }
sub Cm_MASS() { 247 * Kw::MOLARMASS; }
sub CmMASS() { Cm_MASS / Kw::AVOGADRO; }
sub Cm_DENSITY() { 13510 * Kw::DENSITY; }
sub Cm_MELT() { 1613 * Kw::KELVIN; }
sub Cm_BOIL() { 3383 * Kw::KELVIN; }
sub Cm_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Cm_En() { 1.28; }
sub BkZ() { 97; }
sub Bk_MASS() { 247 * Kw::MOLARMASS; }
sub BkMASS() { Bk_MASS / Kw::AVOGADRO; }
sub Bk_DENSITY() { 14790 * Kw::DENSITY; }
sub Bk_MELT() { 1259 * Kw::KELVIN; }
sub Bk_BOIL() { 2900 * Kw::KELVIN; }
sub Bk_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Bk_En() { 1.3; }
sub CfZ() { 98; }
sub Cf_MASS() { 251 * Kw::MOLARMASS; }
sub CfMASS() { Cf_MASS / Kw::AVOGADRO; }
sub Cf_DENSITY() { 15100 * Kw::DENSITY; }
sub Cf_MELT() { 1173 * Kw::KELVIN; }
sub Cf_BOIL() { - 1 * Kw::KELVIN; }
sub Cf_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Cf_En() { 1.3; }
sub EsZ() { 99; }
sub Es_MASS() { 252 * Kw::MOLARMASS; }
sub EsMASS() { Es_MASS / Kw::AVOGADRO; }
sub Es_DENSITY() { 8840 * Kw::DENSITY; }
sub Es_MELT() { 1133 * Kw::KELVIN; }
sub Es_BOIL() { - 1 * Kw::KELVIN; }
sub Es_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Es_En() { 1.3; }
sub FmZ() { 100; }
sub Fm_MASS() { 257 * Kw::MOLARMASS; }
sub FmMASS() { Fm_MASS / Kw::AVOGADRO; }
sub Fm_DENSITY() { - 1 * Kw::DENSITY; }
sub Fm_MELT() { - 1 * Kw::KELVIN; }
sub Fm_BOIL() { - 1 * Kw::KELVIN; }
sub Fm_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Fm_En() { 1.3; }
sub MdZ() { 101; }
sub Md_MASS() { 258 * Kw::MOLARMASS; }
sub MdMASS() { Md_MASS / Kw::AVOGADRO; }
sub Md_DENSITY() { - 1 * Kw::DENSITY; }
sub Md_MELT() { - 1 * Kw::KELVIN; }
sub Md_BOIL() { - 1 * Kw::KELVIN; }
sub Md_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Md_En() { 1.3; }
sub NoZ() { 102; }
sub No_MASS() { 259 * Kw::MOLARMASS; }
sub NoMASS() { No_MASS / Kw::AVOGADRO; }
sub No_DENSITY() { - 1 * Kw::DENSITY; }
sub No_MELT() { - 1 * Kw::KELVIN; }
sub No_BOIL() { - 1 * Kw::KELVIN; }
sub No_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub No_En() { 1.3; }
sub LrZ() { 103; }
sub Lr_MASS() { 266 * Kw::MOLARMASS; }
sub LrMASS() { Lr_MASS / Kw::AVOGADRO; }
sub Lr_DENSITY() { - 1 * Kw::DENSITY; }
sub Lr_MELT() { - 1 * Kw::KELVIN; }
sub Lr_BOIL() { - 1 * Kw::KELVIN; }
sub Lr_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Lr_En() { 1.3; }
sub RfZ() { 104; }
sub Rf_MASS() { 267 * Kw::MOLARMASS; }
sub RfMASS() { Rf_MASS / Kw::AVOGADRO; }
sub Rf_DENSITY() { - 1 * Kw::DENSITY; }
sub Rf_MELT() { - 1 * Kw::KELVIN; }
sub Rf_BOIL() { - 1 * Kw::KELVIN; }
sub Rf_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Rf_En() { - 1; }
sub DbZ() { 105; }
sub Db_MASS() { 268 * Kw::MOLARMASS; }
sub DbMASS() { Db_MASS / Kw::AVOGADRO; }
sub Db_DENSITY() { - 1 * Kw::DENSITY; }
sub Db_MELT() { - 1 * Kw::KELVIN; }
sub Db_BOIL() { - 1 * Kw::KELVIN; }
sub Db_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Db_En() { - 1; }
sub SgZ() { 106; }
sub Sg_MASS() { 269 * Kw::MOLARMASS; }
sub SgMASS() { Sg_MASS / Kw::AVOGADRO; }
sub Sg_DENSITY() { - 1 * Kw::DENSITY; }
sub Sg_MELT() { - 1 * Kw::KELVIN; }
sub Sg_BOIL() { - 1 * Kw::KELVIN; }
sub Sg_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Sg_En() { - 1; }
sub BhZ() { 107; }
sub Bh_MASS() { 270 * Kw::MOLARMASS; }
sub BhMASS() { Bh_MASS / Kw::AVOGADRO; }
sub Bh_DENSITY() { - 1 * Kw::DENSITY; }
sub Bh_MELT() { - 1 * Kw::KELVIN; }
sub Bh_BOIL() { - 1 * Kw::KELVIN; }
sub Bh_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Bh_En() { - 1; }
sub HsZ() { 108; }
sub Hs_MASS() { 270 * Kw::MOLARMASS; }
sub HsMASS() { Hs_MASS / Kw::AVOGADRO; }
sub Hs_DENSITY() { - 1 * Kw::DENSITY; }
sub Hs_MELT() { - 1 * Kw::KELVIN; }
sub Hs_BOIL() { - 1 * Kw::KELVIN; }
sub Hs_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Hs_En() { - 1; }
sub MtZ() { 109; }
sub Mt_MASS() { 278 * Kw::MOLARMASS; }
sub MtMASS() { Mt_MASS / Kw::AVOGADRO; }
sub Mt_DENSITY() { - 1 * Kw::DENSITY; }
sub Mt_MELT() { - 1 * Kw::KELVIN; }
sub Mt_BOIL() { - 1 * Kw::KELVIN; }
sub Mt_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Mt_En() { - 1; }
sub DsZ() { 110; }
sub Ds_MASS() { 281 * Kw::MOLARMASS; }
sub DsMASS() { Ds_MASS / Kw::AVOGADRO; }
sub Ds_DENSITY() { - 1 * Kw::DENSITY; }
sub Ds_MELT() { - 1 * Kw::KELVIN; }
sub Ds_BOIL() { - 1 * Kw::KELVIN; }
sub Ds_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Ds_En() { - 1; }
sub RgZ() { 111; }
sub Rg_MASS() { 282 * Kw::MOLARMASS; }
sub RgMASS() { Rg_MASS / Kw::AVOGADRO; }
sub Rg_DENSITY() { - 1 * Kw::DENSITY; }
sub Rg_MELT() { - 1 * Kw::KELVIN; }
sub Rg_BOIL() { - 1 * Kw::KELVIN; }
sub Rg_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Rg_En() { - 1; }
sub CnZ() { 112; }
sub Cn_MASS() { 285 * Kw::MOLARMASS; }
sub CnMASS() { Cn_MASS / Kw::AVOGADRO; }
sub Cn_DENSITY() { - 1 * Kw::DENSITY; }
sub Cn_MELT() { - 1 * Kw::KELVIN; }
sub Cn_BOIL() { 357 * Kw::KELVIN; }
sub Cn_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Cn_En() { - 1; }
sub NhZ() { 113; }
sub Nh_MASS() { 286 * Kw::MOLARMASS; }
sub NhMASS() { Nh_MASS / Kw::AVOGADRO; }
sub Nh_DENSITY() { - 1 * Kw::DENSITY; }
sub Nh_MELT() { - 1 * Kw::KELVIN; }
sub Nh_BOIL() { - 1 * Kw::KELVIN; }
sub Nh_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Nh_En() { - 1; }
sub FlZ() { 114; }
sub Fl_MASS() { 289 * Kw::MOLARMASS; }
sub FlMASS() { Fl_MASS / Kw::AVOGADRO; }
sub Fl_DENSITY() { - 1 * Kw::DENSITY; }
sub Fl_MELT() { - 1 * Kw::KELVIN; }
sub Fl_BOIL() { 210 * Kw::KELVIN; }
sub Fl_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Fl_En() { - 1; }
sub McZ() { 115; }
sub Mc_MASS() { 290 * Kw::MOLARMASS; }
sub McMASS() { Mc_MASS / Kw::AVOGADRO; }
sub Mc_DENSITY() { - 1 * Kw::DENSITY; }
sub Mc_MELT() { - 1 * Kw::KELVIN; }
sub Mc_BOIL() { - 1 * Kw::KELVIN; }
sub Mc_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Mc_En() { - 1; }
sub LvZ() { 116; }
sub Lv_MASS() { 293 * Kw::MOLARMASS; }
sub LvMASS() { Lv_MASS / Kw::AVOGADRO; }
sub Lv_DENSITY() { - 1 * Kw::DENSITY; }
sub Lv_MELT() { - 1 * Kw::KELVIN; }
sub Lv_BOIL() { - 1 * Kw::KELVIN; }
sub Lv_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Lv_En() { - 1; }
sub TsZ() { 117; }
sub Ts_MASS() { 294 * Kw::MOLARMASS; }
sub TsMASS() { Ts_MASS / Kw::AVOGADRO; }
sub Ts_DENSITY() { - 1 * Kw::DENSITY; }
sub Ts_MELT() { - 1 * Kw::KELVIN; }
sub Ts_BOIL() { - 1 * Kw::KELVIN; }
sub Ts_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Ts_En() { - 1; }
sub OgZ() { 118; }
sub Og_MASS() { 294 * Kw::MOLARMASS; }
sub OgMASS() { Og_MASS / Kw::AVOGADRO; }
sub Og_DENSITY() { - 1 * Kw::DENSITY; }
sub Og_MELT() { - 1 * Kw::KELVIN; }
sub Og_BOIL() { - 1 * Kw::KELVIN; }
sub Og_Cp() { - 1 * Kw::SPECIFICHEAT; }
sub Og_En() { - 1; }
sub AIR_MASS() { Kw::PPM * (780781 * (2 * N_MASS) + 209444 *
      (2 * O_MASS) + 9339 * Ar_MASS + 410 * (C_MASS + 2 *
      O_MASS) + 18.18 * Ne_MASS + 5.24 * He_MASS + 1.79 *
      (C_MASS + 4 * H_MASS) + 1.14 * Kr_MASS + 0.55 * (2 *
      H_MASS)); }
sub WATER_MASS() { 2.0 * H_MASS + O_MASS; }
sub WATERMASS() { 2.0 * HMASS + OMASS; }
sub WATER_Cp() { 4184 * Kw::SPECIFICHEAT; }
sub ICE_Cp() { 2108 * Kw::SPECIFICHEAT; }
sub STEAM_Cp() { 1996 * Kw::SPECIFICHEAT; }
sub WATER_FUSION() { 3.3355E+5 * Kw::JOULE / Kw::KILOGRAM; }
sub WATER_VAPORIZATION() { 2.257E+6 * Kw::JOULE / Kw::KILOGRAM; }
sub H1_MASS() { 1.007825032241 * Kw::MOLARMASS; }
sub H1MASS() { H1_MASS / Kw::AVOGADRO; }
sub H2_MASS() { 2.01410177811 * Kw::MOLARMASS; }
sub H2MASS() { H2_MASS / Kw::AVOGADRO; }
sub H3_MASS() { 3.01604928199 * Kw::MOLARMASS; }
sub H3MASS() { H3_MASS / Kw::AVOGADRO; }
sub He3_MASS() { 3.01602932265 * Kw::MOLARMASS; }
sub He3MASS() { He3_MASS / Kw::AVOGADRO; }
sub He4_MASS() { 4.002603254130 * Kw::MOLARMASS; }
sub He4MASS() { He4_MASS / Kw::AVOGADRO; }
sub C12_MASS() { 12.0 * Kw::MOLARMASS; }
sub C12MASS() { C12_MASS / Kw::AVOGADRO; }
sub C13_MASS() { 13.00335483521 * Kw::MOLARMASS; }
sub C13MASS() { C13_MASS / Kw::AVOGADRO; }
sub C14_MASS() { 14.003241988 * Kw::MOLARMASS; }
sub C14MASS() { C14_MASS / Kw::AVOGADRO; }
sub O16_MASS() { 15.99491461960 * Kw::MOLARMASS; }
sub O16MASS() { O16_MASS / Kw::AVOGADRO; }
sub O17_MASS() { 16.9991317566 * Kw::MOLARMASS; }
sub O17MASS() { O17_MASS / Kw::AVOGADRO; }
sub O18_MASS() { 17.9991596128 * Kw::MOLARMASS; }
sub O18MASS() { O18_MASS / Kw::AVOGADRO; }
sub C13_RATIO() { 0.0107; }
sub C14_RATIO() { 1E-12; }
sub C12_RATIO() { 1.0 - C13_RATIO - C14_RATIO; }
sub C_M_MASS() { C12_MASS * C12_RATIO + C13_MASS * C13_RATIO
      + C14_MASS * C14_RATIO; }
sub VSMOW_H3_RATIO() { 1.85E-17; }
sub VSMOW_H2_RATIO() { 1.5576E-4; }
sub VSMOW_H1_RATIO() { 1.0 - VSMOW_H2_RATIO - VSMOW_H3_RATIO; }
sub VSMOW_H_MASS() { (H1_MASS * VSMOW_H1_RATIO + H2_MASS *
      VSMOW_H2_RATIO + H3_MASS * VSMOW_H3_RATIO); }
sub VSMOW_O18_RATIO() { 2.00520E-3; }
sub VSMOW_O17_RATIO() { 3.799E-4; }
sub VSMOW_O16_RATIO() { 1.0 - VSMOW_O17_RATIO -
      VSMOW_O18_RATIO; }
sub VSMOW_O_MASS() { O16_MASS * VSMOW_O16_RATIO + O17_MASS *
      VSMOW_O17_RATIO + O18_MASS * VSMOW_O18_RATIO; }
sub VSMOW_MASS() { 2 * VSMOW_H_MASS + VSMOW_O_MASS; }
sub CH4_MASS() { 4 * H_MASS + 1 * C_MASS + 0 * O_MASS; }
sub CH4MASS() { 4 * HMASS + 1 * CMASS + 0 * OMASS; }
sub C2H6_MASS() { 6 * H_MASS + 2 * C_MASS + 0 * O_MASS; }
sub C2H6MASS() { 6 * HMASS + 2 * CMASS + 0 * OMASS; }
sub C3H8_MASS() { 8 * H_MASS + 3 * C_MASS + 0 * O_MASS; }
sub C3H8MASS() { 8 * HMASS + 3 * CMASS + 0 * OMASS; }
sub C4H10_MASS() { 10 * H_MASS + 4 * C_MASS + 0 * O_MASS; }
sub C4H10MASS() { 10 * HMASS + 4 * CMASS + 0 * OMASS; }
sub C2H60_MASS() { 6 * H_MASS + 2 * C_MASS + 1 * O_MASS; }
sub C2H60MASS() { 6 * HMASS + 2 * CMASS + 1 * OMASS; }
sub CH3CH2OH_MASS() { 6 * H_MASS + 2 * C_MASS + 1 * O_MASS; }
sub CH3CH2OHMASS() { 6 * HMASS + 2 * CMASS + 1 * OMASS; }
sub C12H22O11_MASS() { 22 * H_MASS + 12 * C_MASS + 11 * O_MASS; }
sub C12H22O11MASS() { 22 * HMASS + 12 * CMASS + 11 * OMASS; }
sub HYDROGEN_MASS() { 2 * H_MASS + 0 * C_MASS + 0 * O_MASS; }
sub HYDROGENMASS() { 2 * HMASS + 0 * CMASS + 0 * OMASS; }
sub HYDROGENJPMOLE() { 1.418E+8 * Kw::JOULE / Kw::KILOGRAM *
      HYDROGEN_MASS; }
sub HYDROGENJPKG() { HYDROGENJPMOLE / HYDROGEN_MASS; }
sub HYDROGENJPKGTOTAL() { HYDROGENJPMOLE / (HYDROGEN_MASS +
      (0.5 * 2 + 2.0 * 0 - 1.0 * 0) * O_MASS); }
sub METHANE_MASS() { 4 * H_MASS + 1 * C_MASS + 0 * O_MASS; }
sub METHANEMASS() { 4 * HMASS + 1 * CMASS + 0 * OMASS; }
sub METHANEJPMOLE() { 5.550E+7 * Kw::JOULE / Kw::KILOGRAM *
      METHANE_MASS; }
sub METHANEJPKG() { METHANEJPMOLE / METHANE_MASS; }
sub METHANEJPKGTOTAL() { METHANEJPMOLE / (METHANE_MASS + (0.5
      * 4 + 2.0 * 1 - 1.0 * 0) * O_MASS); }
sub ETHANE_MASS() { 6 * H_MASS + 2 * C_MASS + 0 * O_MASS; }
sub ETHANEMASS() { 6 * HMASS + 2 * CMASS + 0 * OMASS; }
sub ETHANEJPMOLE() { 5.190E+7 * Kw::JOULE / Kw::KILOGRAM *
      ETHANE_MASS; }
sub ETHANEJPKG() { ETHANEJPMOLE / ETHANE_MASS; }
sub ETHANEJPKGTOTAL() { ETHANEJPMOLE / (ETHANE_MASS + (0.5 *
      6 + 2.0 * 2 - 1.0 * 0) * O_MASS); }
sub PROPANE_MASS() { 8 * H_MASS + 3 * C_MASS + 0 * O_MASS; }
sub PROPANEMASS() { 8 * HMASS + 3 * CMASS + 0 * OMASS; }
sub PROPANEJPMOLE() { 5.035E+7 * Kw::JOULE / Kw::KILOGRAM *
      PROPANE_MASS; }
sub PROPANEJPKG() { PROPANEJPMOLE / PROPANE_MASS; }
sub PROPANEJPKGTOTAL() { PROPANEJPMOLE / (PROPANE_MASS + (0.5
      * 8 + 2.0 * 3 - 1.0 * 0) * O_MASS); }
sub BUTANE_MASS() { 10 * H_MASS + 4 * C_MASS + 0 * O_MASS; }
sub BUTANEMASS() { 10 * HMASS + 4 * CMASS + 0 * OMASS; }
sub BUTANEJPMOLE() { 4.950E+7 * Kw::JOULE / Kw::KILOGRAM *
      BUTANE_MASS; }
sub BUTANEJPKG() { BUTANEJPMOLE / BUTANE_MASS; }
sub BUTANEJPKGTOTAL() { BUTANEJPMOLE / (BUTANE_MASS + (0.5 *
      10 + 2.0 * 4 - 1.0 * 0) * O_MASS); }
sub ETHANOL_MASS() { 6 * H_MASS + 2 * C_MASS + 1 * O_MASS; }
sub ETHANOLMASS() { 6 * HMASS + 2 * CMASS + 1 * OMASS; }
sub ETHANOLJPMOLE() { 2.97E+7 * Kw::JOULE / Kw::KILOGRAM *
      ETHANOL_MASS; }
sub ETHANOLJPKG() { ETHANOLJPMOLE / ETHANOL_MASS; }
sub ETHANOLJPKGTOTAL() { ETHANOLJPMOLE / (ETHANOL_MASS + (0.5
      * 6 + 2.0 * 2 - 1.0 * 1) * O_MASS); }
sub SUGAR_MASS() { 22 * H_MASS + 12 * C_MASS + 11 * O_MASS; }
sub SUGARMASS() { 22 * HMASS + 12 * CMASS + 11 * OMASS; }
sub SUGARJPMOLE() { 1.619E+7 * Kw::JOULE / Kw::KILOGRAM *
      SUGAR_MASS; }
sub SUGARJPKG() { SUGARJPMOLE / SUGAR_MASS; }
sub SUGARJPKGTOTAL() { SUGARJPMOLE / (SUGAR_MASS + (0.5 * 22
      + 2.0 * 12 - 1.0 * 11) * O_MASS); }
sub COAL_MASS() { 0 * H_MASS + 1 * C_MASS + 0 * O_MASS; }
sub COALMASS() { 0 * HMASS + 1 * CMASS + 0 * OMASS; }
sub COALJPMOLE() { 3.0E+7 * Kw::JOULE / Kw::KILOGRAM *
      COAL_MASS; }
sub COALJPKG() { COALJPMOLE / COAL_MASS; }
sub COALJPKGTOTAL() { COALJPMOLE / (COAL_MASS + (0.5 * 0 +
      2.0 * 1 - 1.0 * 0) * O_MASS); }
sub PARAFFIN_MASS() { 62 * H_MASS + 30 * C_MASS + 0 * O_MASS; }
sub PARAFFINMASS() { 62 * HMASS + 30 * CMASS + 0 * OMASS; }
sub PARAFFINJPMOLE() { 4.6E+7 * Kw::JOULE / Kw::KILOGRAM *
      PARAFFIN_MASS; }
sub PARAFFINJPKG() { PARAFFINJPMOLE / PARAFFIN_MASS; }
sub PARAFFINJPKGTOTAL() { PARAFFINJPMOLE / (PARAFFIN_MASS +
      (0.5 * 62 + 2.0 * 30 - 1.0 * 0) * O_MASS); }
sub FAT_MASS() { 100 * H_MASS + 60 * C_MASS + 6 * O_MASS; }
sub FATMASS() { 100 * HMASS + 60 * CMASS + 6 * OMASS; }
sub FATJPMOLE() { 3.7E+7 * Kw::JOULE / Kw::KILOGRAM * FAT_MASS; }
sub FATJPKG() { FATJPMOLE / FAT_MASS; }
sub FATJPKGTOTAL() { FATJPMOLE / (FAT_MASS + (0.5 * 100 + 2.0
      * 60 - 1.0 * 6) * O_MASS); }
sub DIESEL_MASS() { 26 * H_MASS + 12 * C_MASS + 0 * O_MASS; }
sub DIESELMASS() { 26 * HMASS + 12 * CMASS + 0 * OMASS; }
sub DIESELJPMOLE() { 4.48E+7 * Kw::JOULE / Kw::KILOGRAM *
      DIESEL_MASS; }
sub DIESELJPKG() { DIESELJPMOLE / DIESEL_MASS; }
sub DIESELJPKGTOTAL() { DIESELJPMOLE / (DIESEL_MASS + (0.5 *
      26 + 2.0 * 12 - 1.0 * 0) * O_MASS); }
sub GASOLINE_MASS() { 18 * H_MASS + 8 * C_MASS + 0 * O_MASS; }
sub GASOLINEMASS() { 18 * HMASS + 8 * CMASS + 0 * OMASS; }
sub GASOLINEJPMOLE() { 4.64E+7 * Kw::JOULE / Kw::KILOGRAM *
      GASOLINE_MASS; }
sub GASOLINEJPKG() { GASOLINEJPMOLE / GASOLINE_MASS; }
sub GASOLINEJPKGTOTAL() { GASOLINEJPMOLE / (GASOLINE_MASS +
      (0.5 * 18 + 2.0 * 8 - 1.0 * 0) * O_MASS); }
sub SUCROSE_MASS() { C12H22O11_MASS; }
sub TNTJPKG() { 4.184E+6 * Kw::JOULE / Kw::KILOGRAM; }
sub SUGARDENSITY() { 845 * Kw::DENSITY; }
sub DIESELDENSITY() { 832 * Kw::DENSITY; }
sub GASOLINEDENSITY() { 748.9 * Kw::DENSITY; }
sub ETHANOLDENSITY() { 789 * Kw::DENSITY; }
sub PARAFFINDENSITY() { 900 * Kw::DENSITY; }
sub FATDENSITY() { 900 * Kw::DENSITY; }
#   DDDDDDDDDDescription --------------- kwelements_description #
sub kwelements_description() {
   "   Kwelements Constants: Ac_BOIL Ac_Cp Ac_DENSITY Ac_En Ac" .
   "_MASS Ac_MELT AcMASS AcZ Ag_BOIL Ag_Cp Ag_DENSITY Ag_En Ag" .
   "_MASS Ag_MELT AgMASS AgZ AIR_MASS Al_BOIL Al_Cp Al_DENSITY" .
   " Al_En Al_MASS Al_MELT AlMASS AlZ Am_BOIL Am_Cp Am_DENSITY" .
   " Am_En Am_MASS Am_MELT AmMASS AmZ Ar_BOIL Ar_Cp Ar_DENSITY" .
   " Ar_En Ar_MASS Ar_MELT ArMASS ArZ As_BOIL As_Cp As_DENSITY" .
   " As_En As_MASS As_MELT AsMASS AsZ At_BOIL At_Cp At_DENSITY" .
   " At_En At_MASS At_MELT AtMASS AtZ Au_BOIL Au_Cp Au_DENSITY" .
   " Au_En Au_MASS Au_MELT AuMASS AuZ B_BOIL B_Cp B_DENSITY B_" .
   "En B_MASS B_MELT Ba_BOIL Ba_Cp Ba_DENSITY Ba_En Ba_MASS Ba" .
   "_MELT BaMASS BaZ Be_BOIL Be_Cp Be_DENSITY Be_En Be_MASS Be" .
   "_MELT BeMASS BeZ Bh_BOIL Bh_Cp Bh_DENSITY Bh_En Bh_MASS Bh" .
   "_MELT BhMASS BhZ Bi_BOIL Bi_Cp Bi_DENSITY Bi_En Bi_MASS Bi" .
   "_MELT BiMASS BiZ Bk_BOIL Bk_Cp Bk_DENSITY Bk_En Bk_MASS Bk" .
   "_MELT BkMASS BkZ BMASS Br_BOIL Br_Cp Br_DENSITY Br_En Br_M" .
   "ASS Br_MELT BrMASS BrZ BUTANE_MASS BUTANEJPKG BUTANEJPKGTO" .
   "TAL BUTANEJPMOLE BUTANEMASS BZ C12_MASS C12_RATIO C12H22O1" .
   "1_MASS C12H22O11MASS C12MASS C13_MASS C13_RATIO C13MASS C1" .
   "4_MASS C14_RATIO C14MASS C2H60_MASS C2H60MASS C2H6_MASS C2" .
   "H6MASS C3H8_MASS C3H8MASS C4H10_MASS C4H10MASS C_BOIL C_Cp" .
   " C_DENSITY C_En C_M_MASS C_MASS C_MELT Ca_BOIL Ca_Cp Ca_DE" .
   "NSITY Ca_En Ca_MASS Ca_MELT CaMASS CaZ Cd_BOIL Cd_Cp Cd_DE" .
   "NSITY Cd_En Cd_MASS Cd_MELT CdMASS CdZ Ce_BOIL Ce_Cp Ce_DE" .
   "NSITY Ce_En Ce_MASS Ce_MELT CeMASS CeZ Cf_BOIL Cf_Cp Cf_DE" .
   "NSITY Cf_En Cf_MASS Cf_MELT CfMASS CfZ CH3CH2OH_MASS CH3CH" .
   "2OHMASS CH4_MASS CH4MASS Cl_BOIL Cl_Cp Cl_DENSITY Cl_En Cl" .
   "_MASS Cl_MELT ClMASS ClZ Cm_BOIL Cm_Cp Cm_DENSITY Cm_En Cm" .
   "_MASS Cm_MELT CMASS CmMASS CmZ Cn_BOIL Cn_Cp Cn_DENSITY Cn" .
   "_En Cn_MASS Cn_MELT CnMASS CnZ Co_BOIL Co_Cp Co_DENSITY Co" .
   "_En Co_MASS Co_MELT COAL_MASS COALJPKG COALJPKGTOTAL COALJ" .
   "PMOLE COALMASS CoMASS CoZ Cr_BOIL Cr_Cp Cr_DENSITY Cr_En C" .
   "r_MASS Cr_MELT CrMASS CrZ Cs_BOIL Cs_Cp Cs_DENSITY Cs_En C" .
   "s_MASS Cs_MELT CsMASS CsZ Cu_BOIL Cu_Cp Cu_DENSITY Cu_En C" .
   "u_MASS Cu_MELT CuMASS CuZ CZ Db_BOIL Db_Cp Db_DENSITY Db_E" .
   "n Db_MASS Db_MELT DbMASS DbZ DIESEL_MASS DIESELDENSITY DIE" .
   "SELJPKG DIESELJPKGTOTAL DIESELJPMOLE DIESELMASS Ds_BOIL Ds" .
   "_Cp Ds_DENSITY Ds_En Ds_MASS Ds_MELT DsMASS DsZ Dy_BOIL Dy" .
   "_Cp Dy_DENSITY Dy_En Dy_MASS Dy_MELT DyMASS DyZ Er_BOIL Er" .
   "_Cp Er_DENSITY Er_En Er_MASS Er_MELT ErMASS ErZ Es_BOIL Es" .
   "_Cp Es_DENSITY Es_En Es_MASS Es_MELT EsMASS EsZ ETHANE_MAS" .
   "S ETHANEJPKG ETHANEJPKGTOTAL ETHANEJPMOLE ETHANEMASS ETHAN" .
   "OL_MASS ETHANOLDENSITY ETHANOLJPKG ETHANOLJPKGTOTAL ETHANO" .
   "LJPMOLE ETHANOLMASS Eu_BOIL Eu_Cp Eu_DENSITY Eu_En Eu_MASS" .
   " Eu_MELT EuMASS EuZ F_BOIL F_Cp F_DENSITY F_En F_MASS F_ME" .
   "LT FAT_MASS FATDENSITY FATJPKG FATJPKGTOTAL FATJPMOLE FATM" .
   "ASS Fe_BOIL Fe_Cp Fe_DENSITY Fe_En Fe_MASS Fe_MELT FeMASS " .
   "FeZ Fl_BOIL Fl_Cp Fl_DENSITY Fl_En Fl_MASS Fl_MELT FlMASS " .
   "FlZ Fm_BOIL Fm_Cp Fm_DENSITY Fm_En Fm_MASS Fm_MELT FMASS F" .
   "mMASS FmZ Fr_BOIL Fr_Cp Fr_DENSITY Fr_En Fr_MASS Fr_MELT F" .
   "rMASS FrZ FZ Ga_BOIL Ga_Cp Ga_DENSITY Ga_En Ga_MASS Ga_MEL" .
   "T GaMASS GASOLINE_MASS GASOLINEDENSITY GASOLINEJPKG GASOLI" .
   "NEJPKGTOTAL GASOLINEJPMOLE GASOLINEMASS GaZ Gd_BOIL Gd_Cp " .
   "Gd_DENSITY Gd_En Gd_MASS Gd_MELT GdMASS GdZ Ge_BOIL Ge_Cp " .
   "Ge_DENSITY Ge_En Ge_MASS Ge_MELT GeMASS GeZ H1_MASS H1MASS" .
   " H2_MASS H2MASS H3_MASS H3MASS H_BOIL H_Cp H_DENSITY H_En " .
   "H_MASS H_MELT He3_MASS He3MASS He4_MASS He4MASS He_BOIL He" .
   "_Cp He_DENSITY He_En He_MASS He_MELT HeMASS HeZ Hf_BOIL Hf" .
   "_Cp Hf_DENSITY Hf_En Hf_MASS Hf_MELT HfMASS HfZ Hg_BOIL Hg" .
   "_Cp Hg_DENSITY Hg_En Hg_MASS Hg_MELT HgMASS HgZ HMASS Ho_B" .
   "OIL Ho_Cp Ho_DENSITY Ho_En Ho_MASS Ho_MELT HoMASS HoZ Hs_B" .
   "OIL Hs_Cp Hs_DENSITY Hs_En Hs_MASS Hs_MELT HsMASS HsZ HYDR" .
   "OGEN_MASS HYDROGENJPKG HYDROGENJPKGTOTAL HYDROGENJPMOLE HY" .
   "DROGENMASS HZ I_BOIL I_Cp I_DENSITY I_En I_MASS I_MELT ICE" .
   "_Cp IMASS In_BOIL In_Cp In_DENSITY In_En In_MASS In_MELT I" .
   "nMASS InZ Ir_BOIL Ir_Cp Ir_DENSITY Ir_En Ir_MASS Ir_MELT I" .
   "rMASS IrZ IZ K_BOIL K_Cp K_DENSITY K_En K_MASS K_MELT KMAS" .
   "S Kr_BOIL Kr_Cp Kr_DENSITY Kr_En Kr_MASS Kr_MELT KrMASS Kr" .
   "Z KZ La_BOIL La_Cp La_DENSITY La_En La_MASS La_MELT LaMASS" .
   " LaZ Li_BOIL Li_Cp Li_DENSITY Li_En Li_MASS Li_MELT LiMASS" .
   " LiZ Lr_BOIL Lr_Cp Lr_DENSITY Lr_En Lr_MASS Lr_MELT LrMASS" .
   " LrZ Lu_BOIL Lu_Cp Lu_DENSITY Lu_En Lu_MASS Lu_MELT LuMASS" .
   " LuZ Lv_BOIL Lv_Cp Lv_DENSITY Lv_En Lv_MASS Lv_MELT LvMASS" .
   " LvZ Mc_BOIL Mc_Cp Mc_DENSITY Mc_En Mc_MASS Mc_MELT McMASS" .
   " McZ Md_BOIL Md_Cp Md_DENSITY Md_En Md_MASS Md_MELT MdMASS" .
   " MdZ METHANE_MASS METHANEJPKG METHANEJPKGTOTAL METHANEJPMO" .
   "LE METHANEMASS Mg_BOIL Mg_Cp Mg_DENSITY Mg_En Mg_MASS Mg_M" .
   "ELT MgMASS MgZ Mn_BOIL Mn_Cp Mn_DENSITY Mn_En Mn_MASS Mn_M" .
   "ELT MnMASS MnZ Mo_BOIL Mo_Cp Mo_DENSITY Mo_En Mo_MASS Mo_M" .
   "ELT MoMASS MoZ Mt_BOIL Mt_Cp Mt_DENSITY Mt_En Mt_MASS Mt_M" .
   "ELT MtMASS MtZ N_BOIL N_Cp N_DENSITY N_En N_MASS N_MELT Na" .
   "_BOIL Na_Cp Na_DENSITY Na_En Na_MASS Na_MELT NaMASS NaZ Nb" .
   "_BOIL Nb_Cp Nb_DENSITY Nb_En Nb_MASS Nb_MELT NbMASS NbZ Nd" .
   "_BOIL Nd_Cp Nd_DENSITY Nd_En Nd_MASS Nd_MELT NdMASS NdZ Ne" .
   "_BOIL Ne_Cp Ne_DENSITY Ne_En Ne_MASS Ne_MELT NeMASS NeZ Nh" .
   "_BOIL Nh_Cp Nh_DENSITY Nh_En Nh_MASS Nh_MELT NhMASS NhZ Ni" .
   "_BOIL Ni_Cp Ni_DENSITY Ni_En Ni_MASS Ni_MELT NiMASS NiZ NM" .
   "ASS No_BOIL No_Cp No_DENSITY No_En No_MASS No_MELT NoMASS " .
   "NoZ Np_BOIL Np_Cp Np_DENSITY Np_En Np_MASS Np_MELT NpMASS " .
   "NpZ NZ O16_MASS O16MASS O17_MASS O17MASS O18_MASS O18MASS " .
   "O_BOIL O_Cp O_DENSITY O_En O_MASS O_MELT Og_BOIL Og_Cp Og_" .
   "DENSITY Og_En Og_MASS Og_MELT OgMASS OgZ OMASS Os_BOIL Os_" .
   "Cp Os_DENSITY Os_En Os_MASS Os_MELT OsMASS OsZ OZ P_BOIL P" .
   "_Cp P_DENSITY P_En P_MASS P_MELT Pa_BOIL Pa_Cp Pa_DENSITY " .
   "Pa_En Pa_MASS Pa_MELT PaMASS PARAFFIN_MASS PARAFFINDENSITY" .
   " PARAFFINJPKG PARAFFINJPKGTOTAL PARAFFINJPMOLE PARAFFINMAS" .
   "S PaZ Pb_BOIL Pb_Cp Pb_DENSITY Pb_En Pb_MASS Pb_MELT PbMAS" .
   "S PbZ Pd_BOIL Pd_Cp Pd_DENSITY Pd_En Pd_MASS Pd_MELT PdMAS" .
   "S PdZ Pm_BOIL Pm_Cp Pm_DENSITY Pm_En Pm_MASS Pm_MELT PMASS" .
   " PmMASS PmZ Po_BOIL Po_Cp Po_DENSITY Po_En Po_MASS Po_MELT" .
   " PoMASS PoZ Pr_BOIL Pr_Cp Pr_DENSITY Pr_En Pr_MASS Pr_MELT" .
   " PrMASS PROPANE_MASS PROPANEJPKG PROPANEJPKGTOTAL PROPANEJ" .
   "PMOLE PROPANEMASS PrZ Pt_BOIL Pt_Cp Pt_DENSITY Pt_En Pt_MA" .
   "SS Pt_MELT PtMASS PtZ Pu_BOIL Pu_Cp Pu_DENSITY Pu_En Pu_MA" .
   "SS Pu_MELT PuMASS PuZ PZ Ra_BOIL Ra_Cp Ra_DENSITY Ra_En Ra" .
   "_MASS Ra_MELT RaMASS RaZ Rb_BOIL Rb_Cp Rb_DENSITY Rb_En Rb" .
   "_MASS Rb_MELT RbMASS RbZ Re_BOIL Re_Cp Re_DENSITY Re_En Re" .
   "_MASS Re_MELT ReMASS ReZ Rf_BOIL Rf_Cp Rf_DENSITY Rf_En Rf" .
   "_MASS Rf_MELT RfMASS RfZ Rg_BOIL Rg_Cp Rg_DENSITY Rg_En Rg" .
   "_MASS Rg_MELT RgMASS RgZ Rh_BOIL Rh_Cp Rh_DENSITY Rh_En Rh" .
   "_MASS Rh_MELT RhMASS RhZ Rn_BOIL Rn_Cp Rn_DENSITY Rn_En Rn" .
   "_MASS Rn_MELT RnMASS RnZ Ru_BOIL Ru_Cp Ru_DENSITY Ru_En Ru" .
   "_MASS Ru_MELT RuMASS RuZ S_BOIL S_Cp S_DENSITY S_En S_MASS" .
   " S_MELT Sb_BOIL Sb_Cp Sb_DENSITY Sb_En Sb_MASS Sb_MELT SbM" .
   "ASS SbZ Sc_BOIL Sc_Cp Sc_DENSITY Sc_En Sc_MASS Sc_MELT ScM" .
   "ASS ScZ Se_BOIL Se_Cp Se_DENSITY Se_En Se_MASS Se_MELT SeM" .
   "ASS SeZ Sg_BOIL Sg_Cp Sg_DENSITY Sg_En Sg_MASS Sg_MELT SgM" .
   "ASS SgZ Si_BOIL Si_Cp Si_DENSITY Si_En Si_MASS Si_MELT SiM" .
   "ASS SiZ Sm_BOIL Sm_Cp Sm_DENSITY Sm_En Sm_MASS Sm_MELT SMA" .
   "SS SmMASS SmZ Sn_BOIL Sn_Cp Sn_DENSITY Sn_En Sn_MASS Sn_ME" .
   "LT SnMASS SnZ Sr_BOIL Sr_Cp Sr_DENSITY Sr_En Sr_MASS Sr_ME" .
   "LT SrMASS SrZ STEAM_Cp SUCROSE_MASS SUGAR_MASS SUGARDENSIT" .
   "Y SUGARJPKG SUGARJPKGTOTAL SUGARJPMOLE SUGARMASS SZ Ta_BOI" .
   "L Ta_Cp Ta_DENSITY Ta_En Ta_MASS Ta_MELT TaMASS TaZ Tb_BOI" .
   "L Tb_Cp Tb_DENSITY Tb_En Tb_MASS Tb_MELT TbMASS TbZ Tc_BOI" .
   "L Tc_Cp Tc_DENSITY Tc_En Tc_MASS Tc_MELT TcMASS TcZ Te_BOI" .
   "L Te_Cp Te_DENSITY Te_En Te_MASS Te_MELT TeMASS TeZ Th_BOI" .
   "L Th_Cp Th_DENSITY Th_En Th_MASS Th_MELT ThMASS ThZ Ti_BOI" .
   "L Ti_Cp Ti_DENSITY Ti_En Ti_MASS Ti_MELT TiMASS TiZ Tl_BOI" .
   "L Tl_Cp Tl_DENSITY Tl_En Tl_MASS Tl_MELT TlMASS TlZ Tm_BOI" .
   "L Tm_Cp Tm_DENSITY Tm_En Tm_MASS Tm_MELT TmMASS TmZ TNTJPK" .
   "G Ts_BOIL Ts_Cp Ts_DENSITY Ts_En Ts_MASS Ts_MELT TsMASS Ts" .
   "Z U_BOIL U_Cp U_DENSITY U_En U_MASS U_MELT UMASS UZ V_BOIL" .
   " V_Cp V_DENSITY V_En V_MASS V_MELT VMASS VSMOW_H1_RATIO VS" .
   "MOW_H2_RATIO VSMOW_H3_RATIO VSMOW_H_MASS VSMOW_MASS VSMOW_" .
   "O16_RATIO VSMOW_O17_RATIO VSMOW_O18_RATIO VSMOW_O_MASS VZ " .
   "W_BOIL W_Cp W_DENSITY W_En W_MASS W_MELT WATER_Cp WATER_FU" .
   "SION WATER_MASS WATER_VAPORIZATION WATERMASS WMASS WZ Xe_B" .
   "OIL Xe_Cp Xe_DENSITY Xe_En Xe_MASS Xe_MELT XeMASS XeZ Y_BO" .
   "IL Y_Cp Y_DENSITY Y_En Y_MASS Y_MELT Yb_BOIL Yb_Cp Yb_DENS" .
   "ITY Yb_En Yb_MASS Yb_MELT YbMASS YbZ YMASS YZ Zn_BOIL Zn_C" .
   "p Zn_DENSITY Zn_En Zn_MASS Zn_MELT ZnMASS ZnZ Zr_BOIL Zr_C" .
   "p Zr_DENSITY Zr_En Zr_MASS Zr_MELT ZrMASS ZrZ" .
   "\n";
}
sub kwelements_desc() {
   "   Kwelements Constants: Ac_(BOIL|Cp|DENSITY|En|M(ASS|ELT)" .
   ") AcMASS AcZ Ag_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) AgMASS AgZ" .
   " AIR_MASS Al_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) AlMASS AlZ Am" .
   "_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) AmMASS AmZ Ar_(BOIL|Cp|DE" .
   "NSITY|En|M(ASS|ELT)) ArMASS ArZ As_(BOIL|Cp|DENSITY|En|M(A" .
   "SS|ELT)) AsMASS AsZ At_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) AtM" .
   "ASS AtZ Au_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) AuMASS AuZ B_BO" .
   "IL B_Cp B_DENSITY B_En B_M(ASS|ELT) Ba_(BOIL|Cp|DENSITY|En" .
   "|M(ASS|ELT)) BaMASS BaZ Be_(BOIL|Cp|DENSITY|En|M(ASS|ELT))" .
   " BeMASS BeZ Bh_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) BhMASS BhZ " .
   "Bi_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) BiMASS BiZ Bk_(BOIL|Cp|" .
   "DENSITY|En|M(ASS|ELT)) BkMASS BkZ BMASS Br_(BOIL|Cp|DENSIT" .
   "Y|En|M(ASS|ELT)) BrMASS BrZ BUTANE(_MASS|JP(KG(TOTAL)?|MOL" .
   "E)|MASS) BZ C12(_(MASS|RATIO)|H22O11(_MASS|MASS)|MASS) C13" .
   "(_(MASS|RATIO)|MASS) C14(_(MASS|RATIO)|MASS) C2H6(0(_MASS|" .
   "MASS)|_MASS|MASS) C3H8(_MASS|MASS) C4H10(_MASS|MASS) C_BOI" .
   "L C_Cp C_DENSITY C_En C_M(_MASS|ASS|ELT) Ca_(BOIL|Cp|DENSI" .
   "TY|En|M(ASS|ELT)) CaMASS CaZ Cd_(BOIL|Cp|DENSITY|En|M(ASS|" .
   "ELT)) CdMASS CdZ Ce_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) CeMASS" .
   " CeZ Cf_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) CfMASS CfZ CH3CH2O" .
   "H(_MASS|MASS) CH4(_MASS|MASS) Cl_(BOIL|Cp|DENSITY|En|M(ASS" .
   "|ELT)) ClMASS ClZ Cm_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) CMASS" .
   " CmMASS CmZ Cn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) CnMASS CnZ " .
   "Co_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) COAL(_MASS|JP(KG(TOTAL)" .
   "?|MOLE)|MASS) CoMASS CoZ Cr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)" .
   ") CrMASS CrZ Cs_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) CsMASS CsZ" .
   " Cu_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) CuMASS CuZ CZ Db_(BOIL" .
   "|Cp|DENSITY|En|M(ASS|ELT)) DbMASS DbZ DIESEL(_MASS|DENSITY" .
   "|JP(KG(TOTAL)?|MOLE)|MASS) Ds_(BOIL|Cp|DENSITY|En|M(ASS|EL" .
   "T)) DsMASS DsZ Dy_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) DyMASS D" .
   "yZ Er_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) ErMASS ErZ Es_(BOIL|" .
   "Cp|DENSITY|En|M(ASS|ELT)) EsMASS EsZ ETHAN(E(_MASS|JP(KG(T" .
   "OTAL)?|MOLE)|MASS)|OL(_MASS|DENSITY|JP(KG(TOTAL)?|MOLE)|MA" .
   "SS)) Eu_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) EuMASS EuZ F_BOIL " .
   "F_Cp F_DENSITY F_En F_M(ASS|ELT) FAT(_MASS|DENSITY|JP(KG(T" .
   "OTAL)?|MOLE)|MASS) Fe_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) FeMA" .
   "SS FeZ Fl_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) FlMASS FlZ Fm_(B" .
   "OIL|Cp|DENSITY|En|M(ASS|ELT)) FMASS FmMASS FmZ Fr_(BOIL|Cp" .
   "|DENSITY|En|M(ASS|ELT)) FrMASS FrZ FZ Ga_(BOIL|Cp|DENSITY|" .
   "En|M(ASS|ELT)) GaMASS GASOLINE(_MASS|DENSITY|JP(KG(TOTAL)?" .
   "|MOLE)|MASS) GaZ Gd_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) GdMASS" .
   " GdZ Ge_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) GeMASS GeZ H1_MASS" .
   " H1MASS H2_MASS H2MASS H3_MASS H3MASS H_BOIL H_Cp H_DENSIT" .
   "Y H_En H_M(ASS|ELT) He3(_MASS|MASS) He4(_MASS|MASS) He_(BO" .
   "IL|Cp|DENSITY|En|M(ASS|ELT)) HeMASS HeZ Hf_(BOIL|Cp|DENSIT" .
   "Y|En|M(ASS|ELT)) HfMASS HfZ Hg_(BOIL|Cp|DENSITY|En|M(ASS|E" .
   "LT)) HgMASS HgZ HMASS Ho_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) H" .
   "oMASS HoZ Hs_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) HsMASS HsZ HY" .
   "DROGEN(_MASS|JP(KG(TOTAL)?|MOLE)|MASS) HZ I_BOIL I_Cp I_DE" .
   "NSITY I_En I_M(ASS|ELT) ICE_Cp IMASS In_(BOIL|Cp|DENSITY|E" .
   "n|M(ASS|ELT)) InMASS InZ Ir_(BOIL|Cp|DENSITY|En|M(ASS|ELT)" .
   ") IrMASS IrZ IZ K_BOIL K_Cp K_DENSITY K_En K_M(ASS|ELT) KM" .
   "ASS Kr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) KrMASS KrZ KZ La_(B" .
   "OIL|Cp|DENSITY|En|M(ASS|ELT)) LaMASS LaZ Li_(BOIL|Cp|DENSI" .
   "TY|En|M(ASS|ELT)) LiMASS LiZ Lr_(BOIL|Cp|DENSITY|En|M(ASS|" .
   "ELT)) LrMASS LrZ Lu_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) LuMASS" .
   " LuZ Lv_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) LvMASS LvZ Mc_(BOI" .
   "L|Cp|DENSITY|En|M(ASS|ELT)) McMASS McZ Md_(BOIL|Cp|DENSITY" .
   "|En|M(ASS|ELT)) MdMASS MdZ METHANE(_MASS|JP(KG(TOTAL)?|MOL" .
   "E)|MASS) Mg_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) MgMASS MgZ Mn_" .
   "(BOIL|Cp|DENSITY|En|M(ASS|ELT)) MnMASS MnZ Mo_(BOIL|Cp|DEN" .
   "SITY|En|M(ASS|ELT)) MoMASS MoZ Mt_(BOIL|Cp|DENSITY|En|M(AS" .
   "S|ELT)) MtMASS MtZ N_BOIL N_Cp N_DENSITY N_En N_M(ASS|ELT)" .
   " Na_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) NaMASS NaZ Nb_(BOIL|Cp" .
   "|DENSITY|En|M(ASS|ELT)) NbMASS NbZ Nd_(BOIL|Cp|DENSITY|En|" .
   "M(ASS|ELT)) NdMASS NdZ Ne_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) " .
   "NeMASS NeZ Nh_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) NhMASS NhZ N" .
   "i_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) NiMASS NiZ NMASS No_(BOI" .
   "L|Cp|DENSITY|En|M(ASS|ELT)) NoMASS NoZ Np_(BOIL|Cp|DENSITY" .
   "|En|M(ASS|ELT)) NpMASS NpZ NZ O16(_MASS|MASS) O17(_MASS|MA" .
   "SS) O18(_MASS|MASS) O_BOIL O_Cp O_DENSITY O_En O_M(ASS|ELT" .
   ") Og_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) OgMASS OgZ OMASS Os_(" .
   "BOIL|Cp|DENSITY|En|M(ASS|ELT)) OsMASS OsZ OZ P_BOIL P_Cp P" .
   "_DENSITY P_En P_M(ASS|ELT) Pa_(BOIL|Cp|DENSITY|En|M(ASS|EL" .
   "T)) PaMASS PARAFFIN(_MASS|DENSITY|JP(KG(TOTAL)?|MOLE)|MASS" .
   ") PaZ Pb_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) PbMASS PbZ Pd_(BO" .
   "IL|Cp|DENSITY|En|M(ASS|ELT)) PdMASS PdZ Pm_(BOIL|Cp|DENSIT" .
   "Y|En|M(ASS|ELT)) PMASS PmMASS PmZ Po_(BOIL|Cp|DENSITY|En|M" .
   "(ASS|ELT)) PoMASS PoZ Pr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) P" .
   "rMASS PROPANE(_MASS|JP(KG(TOTAL)?|MOLE)|MASS) PrZ Pt_(BOIL" .
   "|Cp|DENSITY|En|M(ASS|ELT)) PtMASS PtZ Pu_(BOIL|Cp|DENSITY|" .
   "En|M(ASS|ELT)) PuMASS PuZ PZ Ra_(BOIL|Cp|DENSITY|En|M(ASS|" .
   "ELT)) RaMASS RaZ Rb_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) RbMASS" .
   " RbZ Re_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) ReMASS ReZ Rf_(BOI" .
   "L|Cp|DENSITY|En|M(ASS|ELT)) RfMASS RfZ Rg_(BOIL|Cp|DENSITY" .
   "|En|M(ASS|ELT)) RgMASS RgZ Rh_(BOIL|Cp|DENSITY|En|M(ASS|EL" .
   "T)) RhMASS RhZ Rn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) RnMASS R" .
   "nZ Ru_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) RuMASS RuZ S_BOIL S_" .
   "Cp S_DENSITY S_En S_M(ASS|ELT) Sb_(BOIL|Cp|DENSITY|En|M(AS" .
   "S|ELT)) SbMASS SbZ Sc_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) ScMA" .
   "SS ScZ Se_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) SeMASS SeZ Sg_(B" .
   "OIL|Cp|DENSITY|En|M(ASS|ELT)) SgMASS SgZ Si_(BOIL|Cp|DENSI" .
   "TY|En|M(ASS|ELT)) SiMASS SiZ Sm_(BOIL|Cp|DENSITY|En|M(ASS|" .
   "ELT)) SMASS SmMASS SmZ Sn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) " .
   "SnMASS SnZ Sr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) SrMASS SrZ S" .
   "TEAM_Cp SUCROSE_MASS SUGAR(_MASS|DENSITY|JP(KG(TOTAL)?|MOL" .
   "E)|MASS) SZ Ta_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) TaMASS TaZ " .
   "Tb_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) TbMASS TbZ Tc_(BOIL|Cp|" .
   "DENSITY|En|M(ASS|ELT)) TcMASS TcZ Te_(BOIL|Cp|DENSITY|En|M" .
   "(ASS|ELT)) TeMASS TeZ Th_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) T" .
   "hMASS ThZ Ti_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) TiMASS TiZ Tl" .
   "_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) TlMASS TlZ Tm_(BOIL|Cp|DE" .
   "NSITY|En|M(ASS|ELT)) TmMASS TmZ TNTJPKG Ts_(BOIL|Cp|DENSIT" .
   "Y|En|M(ASS|ELT)) TsMASS TsZ U_BOIL U_Cp U_DENSITY U_En U_M" .
   "(ASS|ELT) UMASS UZ V_BOIL V_Cp V_DENSITY V_En V_M(ASS|ELT)" .
   " VMASS VSMOW_(H(1_RATIO|2_RATIO|3_RATIO|_MASS)|MASS|O(1[67" .
   "8]_RATIO|_MASS)) VZ W_BOIL W_Cp W_DENSITY W_En W_M(ASS|ELT" .
   ") WATER(_(Cp|FUSION|MASS|VAPORIZATION)|MASS) WMASS WZ Xe_(" .
   "BOIL|Cp|DENSITY|En|M(ASS|ELT)) XeMASS XeZ Y_BOIL Y_Cp Y_DE" .
   "NSITY Y_En Y_M(ASS|ELT) Yb_(BOIL|Cp|DENSITY|En|M(ASS|ELT))" .
   " YbMASS YbZ YMASS YZ Zn_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) Zn" .
   "MASS ZnZ Zr_(BOIL|Cp|DENSITY|En|M(ASS|ELT)) ZrMASS ZrZ" .
   "\n";
}
1; # Final return value