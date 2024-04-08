using System;
using System.Runtime.InteropServices;
using Avalonia.Controls;

namespace SwiftFrameworkIntegrationDemo;

public partial class MainWindow : Window
{
    [DllImport("FrameworkB", EntryPoint="calculateA", CallingConvention = CallingConvention.Cdecl)]
    static extern double calculateA();
    
    [DllImport("FrameworkB", EntryPoint="calculateC", CallingConvention = CallingConvention.Cdecl)]
    static extern double calculateC(double length, double width);
    
    [DllImport("FrameworkB", EntryPoint="calculateB", CallingConvention = CallingConvention.Cdecl)]
    static extern double calculateB(double length, double width);
    
    public MainWindow()
    {
        InitializeComponent();
        
        double areaA = calculateA();
        Console.WriteLine("calculateA: " + areaA);
        
        double areaB = calculateB(2.0,3.0);
        Console.WriteLine("calculateB: " + areaB);
        
        double areaC = calculateC(2.0,3.0);
        Console.WriteLine("calculateC (using FrameworkA): " + areaC);
        
        Console.WriteLine("End of program");
    }
}