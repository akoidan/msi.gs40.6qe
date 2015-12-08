diff --git a/drivers/gpu/vga/vgaarb.c b/drivers/gpu/vga/vgaarb.c
index 111d956..bd9a01f 100644
--- a/drivers/gpu/vga/vgaarb.c
+++ b/drivers/gpu/vga/vgaarb.c
@@ -507,9 +507,11 @@ static bool vga_arbiter_add_pci_device(struct pci_dev *pdev)
        struct pci_bus *bus;
        struct pci_dev *bridge;
        u16 cmd;
+       int pci_class = pdev->class >> 8;

        /* Only deal with VGA class devices */
-       if ((pdev->class >> 8) != PCI_CLASS_DISPLAY_VGA)
+       if (pci_class != PCI_CLASS_DISPLAY_VGA &&
+               pci_class != PCI_CLASS_DISPLAY_3D)
                return false;

        /* Allocate structure */
