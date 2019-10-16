// USB Ports Injector for Lenovo ThinkPad X1 Carbon Gen 3.

//DefinitionBlock ("", "SSDT", 2, "X1CG3", "_USB", 0)
//{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            "8086_9c31", Package()
            {
                "port-count", Buffer() { 13, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package() // USB3 Port - 2.0 Device
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package() // USB3 Port - 2.0 Device
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    //"HS06", Package() // FingerPrint Reader
                    //{
                        //"UsbConnector", 3,
                        //"port", Buffer() { 6, 0, 0, 0 },
                    //},
                    "HS07", Package() // Bluetooth
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package() // Camera
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "SSP1", Package() // USB3 Port
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
                    "SSP2", Package() // USB3 Port
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 11, 0, 0, 0 },
                    },
                },
            },
        })
    }
    
    External(_SB.PCI0.XHC, DeviceObj)
    // In DSDT, native ESEL is renamed ESEX
    // As a result, calls to it land here.
    Method(_SB.PCI0.XHC.ESEL)
    {
        // do nothing
    }
//}
//EOF