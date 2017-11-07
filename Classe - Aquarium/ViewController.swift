//
//  ViewController.swift
//  Classe - Aquarium
//
//  Created by Alain on 2014-10-11.
//  Copyright (c) 2014-2017 Production sur support. All rights reserved.
//
//  ============================================================================================
//  À l'usage exclusif des étudiants et étudiantes de
//  Techniques d'Intégration Multimédia
//  du cégep de Saint-Jérôme.
//  --------------------------------------------------------------------------------------------
//  Il est interdit de reproduire, en tout ou en partie, à des fins commerciales,
//  le code source, les scènes, les éléments graphiques, les classes et
//  tout autre contenu du présent projet sans l’autorisation écrite de l'auteur.
//
//  Pour obtenir l’autorisation de reproduire ou d’utiliser, en tout ou en partie,
//  le présent projet, veuillez communiquer avec:
//
//  Alain Boudreault, aboudrea@cstj.qc.ca
//
//  ============================================================================================
//  Solution de départ.
//  --------------------------------------------------------------------------------------------
//  M-A-J:  2015.10.31  - (joyeux halloween!) - Conversion vers swift 1.2
//          2015.10.31  - Ajout de blocs MARK:
//          2016.10.25  - Conversion vers swift 3
//          2017.11.07  - Conversion vers Xcode 9 et swift 4
//  ============================================================================================

import UIKit

class ViewController: UIViewController{
    
    
    // ***********************************************************************
    // MARK: - Définition des IBOutlet
    // ***********************************************************************
    @IBOutlet weak var labelNBPoissons: UILabel!
    @IBOutlet weak var niveauNourriture: UIProgressView!
    @IBOutlet weak var finPartie: UIView!

    // ***********************************************************************
    // MARK: - Définition des propriétés de la classe ViewController
    // ***********************************************************************
    let maximumNourritureDisponible = 100
    let unePortionDeNourriture      = 20
    var nourritureDisponible        = 0
    let nbPoissonsDepart            = 6
    var nbPoissons                  = 0
    var modelesPoisson              = [["nom":"p11", "nbImages":"8"],["nom":"p12", "nbImages":"5"], ["nom":"p13", "nbImages":"8"]]

    // ***********************************************************************
    // MARK: - Définition des IBAction
    // ***********************************************************************
    @IBAction func recommencer(sender: AnyObject) {
        print("recommencer")
        commencerLaPartie()
    } // recommencer
   
    @IBAction func ajouterNourriture(sender: AnyObject) {
        print("ajouterNourriture")
        // Ajouter à la nourriture disponible un poucentage de la quant actuelle.
        nourritureDisponible += Int(arc4random_uniform(UInt32(nourritureDisponible)))
        
        // S'assurer que la quant de nourriture ne dépasse pas le maximum
        nourritureDisponible = nourritureDisponible >  maximumNourritureDisponible ? maximumNourritureDisponible : nourritureDisponible
        actualiserProgressViewQuantNourriture()
    }  // ajouterNourriture
    

    // ***********************************************************************
    // MARK: - Surcharge des méthodes de la classe UIViewController
    // ***********************************************************************

    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        // Ajouter des bulles
        // TODO
        // Préparer l'aquarium
        commencerLaPartie()

    } // viewDidLoad
 
    override func didReceiveMemoryWarning() {
        print("didReceiveMemoryWarning")
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } // didReceiveMemoryWarning

    
    // ***********************************************************************
    // MARK: - Méthodes de la classe locale - ViewController
    // ***********************************************************************

    /**
      Préparer la scène et placer les poissons.
    */
    func commencerLaPartie(){
        print("commencerLaPartie")
        // Masquer la View de fin de la partie
        finPartie.isHidden = true
        nourritureDisponible = maximumNourritureDisponible
        actualiserProgressViewQuantNourriture()
        
        nbPoissons = nbPoissonsDepart
        actualiserLabelNBPoissons()
        // Ajouter des poissons
        ajouterLesPoissons(nbPoissons)
    } // commencerLaPartie
    
    
    /**
      Réactualiser l'indicateur du nombres de poissons.
    */
    func actualiserLabelNBPoissons(){
        print("actualiserLabelNBPoissons")
        labelNBPoissons.text = "\(nbPoissons)"
    } // actualiserLabelNBPoissons

    /**
        Réactualiser l'indicateur quantité de nourriture.
    */
    func actualiserProgressViewQuantNourriture(){
        print("actualiserProgressViewQuantNourriture")
        niveauNourriture.progress = Float(nourritureDisponible) / 100.0
    } // actualiserQuantNourriture

    /** 
    Créer des poissons et les ajouter à la scène principale.
    */
    func ajouterLesPoissons(_ quantite:Int){
        print("ajouterLesPoissons")
        // TODO
       
    } // ajouterLesPoissons
    
    
    /// MARK: - Méthodes de protocoles
    

  
}  // Fin de la classe ViewController

