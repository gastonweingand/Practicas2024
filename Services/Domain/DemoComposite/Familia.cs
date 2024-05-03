///////////////////////////////////////////////////////////
//  Composite.cs
//  Implementation of the Class Composite
//  Generated by Enterprise Architect
//  Created on:      02-may.-2024 21:18:24
//  Original author: gaston
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;


public class Familia : Acceso
{
    private List<Acceso> accesos = new List<Acceso>();

    public string Descripcion { get; set; }

    public Familia(Acceso acceso)
    {
        //acceso no debe ser null
        accesos.Add(acceso);
    }

    /// 
    /// <param name="component"></param>
    public override void Add(Acceso component)
    {
        accesos.Add(component);
    }

    /// 
    /// <param name="component"></param>
    public override void Remove(Acceso component)
    {
        //Ver que no puedo quedarme sin hijos...

        //accesos.Remove(component);
        accesos.RemoveAll(o => o.Id == component.Id);//Linq -> lambda exp. se ve m�s adelante
    }

    public override int GetCount()
    {
        return Accesos.Count;
    }

    public List<Acceso> Accesos
    {
        get
        {
            return accesos;
        }
    }

}//end Composite