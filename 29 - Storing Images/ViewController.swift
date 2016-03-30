//
//  ViewController.swift
//  29 - Storing Images
//
//  Created by Marco Linhares on 8/1/15.
//  Copyright (c) 2015 Marco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // código para salvar uma imagem da internet no disco. o código está
        // comentado pois logo abaixo recuperamos a imagem diretamente do
        // disco (pois foi salva anteriormente)
        
        /*
        let url = NSURL (string: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Johann_Sebastian_Bach.jpg")
        
        let urlRequest = NSURLRequest (URL: url!)
        
        // pega dados da web
        NSURLConnection.sendAsynchronousRequest (urlRequest, queue: NSOperationQueue.mainQueue(), completionHandler: {
                response, data, error in
            
                if error != nil {
                    println ("Erro ao obter imagem")
                } else {
                    let image = UIImage (data: data)
                    
                    // salvando a imagem baixada no disco
                    // localização da imagem
                    var documentsDirectory : String?
                    
                    // retorna um array dos paths das pastas onde podemos salvar as informações. pode
                    // retornar mais de um, mas só checaremos o 1o
                    var paths : [AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
                    
                    if paths.count > 0 {
                        documentsDirectory = paths [0] as? String
                        
                        // será o local onde será salvo o arquivo no celular
                        var savePath = documentsDirectory! + "/picture.jpg"
                        
                        NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                        
                        (self.view.viewWithTag (1) as! UIImageView).image = UIImage (named: savePath)
                    }
                }
            }
        )
        */

        // recupera uma imagem salva no disco e mostra na tela
        var documentsDirectory : String?
        
        // retorna um array dos paths das pastas onde podemos salvar as informações. pode
        // retornar mais de um, mas só checaremos o 1o
        var paths : [AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        
        if paths.count > 0 {
            documentsDirectory = paths [0] as? String
            
            // será o local onde será salvo o arquivo no celular
            var savePath = documentsDirectory! + "/picture.jpg"
            
            (self.view.viewWithTag (1) as! UIImageView).image = UIImage (named: savePath)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

