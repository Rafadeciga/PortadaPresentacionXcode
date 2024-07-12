//
//  ContentView.swift
//  portadaPresentacion
//
//  Created by Rafael Deciga Garcia on 20/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Primera fila
            HStack {
                Image("Logo upiita oro")
                    .resizable()
                    .frame(width: 85, height: 85)
                    .padding(10)
                
                Text("INSTITUTO POLITÉCNICO NACIONAL")
                    .font(.system(size: 22))
                    .foregroundColor(Color(hex: "B0A00C"))
                    .frame(width: 180)
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                                    
                Image("logo-ipn")
                    .resizable()
                    .frame(width: 95, height: 80)
                    .padding(10)
                    .padding(.horizontal,-10)

            }
            .background(Color(hex: "c0c9df"))
            
            // Segunda fila
            VStack {
                Text("UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIERÍA Y\nTECNOLOGÍAS AVANZADAS")
                    .font(.system(size: 22))
                    .foregroundColor(Color(hex: "B0A00C"))
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                
                Image("upiitaLugar")
                    .resizable()
                    .frame(height: 120)
                
                Text("Programación de Dispositivos Móviles")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .italic()
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(hex: "6D254F"))
                    .padding(.top, 5)
                
                Image("Alumno")
                    .resizable()
                    .frame(width: 150, height: 180)
                
                Text("Deciga Garcia Rafael\nIngenieria Télematica\nGrupo 2TM9")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .italic()
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(hex: "6D254F"))
                    .padding(.top, 10)
                
                Image("upiita-logo-1")
                    .resizable()
                    .frame(height: 90)
            }
            .background(Color(hex: "ededed"))
        }
        .edgesIgnoringSafeArea(.all)
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        self.init(red: Double((rgb & 0xFF0000) >> 16) / 255.0,
                  green: Double((rgb & 0x00FF00) >> 8) / 255.0,
                  blue: Double(rgb & 0x0000FF) / 255.0)
    }
}

