//
//  ViewController.swift
//  Classe - Aquarium
//
//  Created by Alain on 2014-10-11.
//  Copyright (c) 2014-2015 Production sur support. All rights reserved.
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
        println("recommencer")
        commencerLaPartie()
    } // recommencer
   
    @IBAction func ajouterNourriture(sender: AnyObject) {
        println("ajouterNourriture")
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
        println("viewDidLoad")
        super.viewDidLoad()
        // Ajouter des bulles
        // TODO
        // Préparer l'aquarium
        commencerLaPartie()

    } // viewDidLoad
 
    override func didReceiveMemoryWarning() {
        println("didReceiveMemoryWarning")
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
        println("commencerLaPartie")
        // Masquer la View de fin de la partie
        finPartie.hidden = true
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
        println("actualiserLabelNBPoissons")
        labelNBPoissons.text = "\(nbPoissons)"
    } // actualiserLabelNBPoissons

    /**
        Réactualiser l'indicateur quantité de nourriture.
    */
    func actualiserProgressViewQuantNourriture(){
        println("actualiserProgressViewQuantNourriture")
        niveauNourriture.progress = Float(nourritureDisponible) / 100.0
    } // actualiserQuantNourriture

    /** 
    Créer des poissons et les ajouter à la scène principale.
    */
    func ajouterLesPoissons(quantite:Int){
        println("ajouterLesPoissons")
        // TODO
       
    } // ajouterLesPoissons
    
    
    /// MARK: - Méthodes de protocoles
    

  
}  // Fin de la classe ViewController

