package com.android.dx.io;

import com.android.dex.ClassDef;
import com.android.dex.Dex;
import com.android.dex.FieldId;
import com.android.dex.MethodId;
import com.android.dex.ProtoId;
import com.android.dex.TableOfContents;
import java.io.File;
import java.io.IOException;

public final class DexIndexPrinter {
    private final Dex dex;
    private final TableOfContents tableOfContents;

    public DexIndexPrinter(File file) throws IOException {
        Dex dex = new Dex(file);
        this.dex = dex;
        this.tableOfContents = dex.getTableOfContents();
    }

    public static void main(String[] strArr) throws IOException {
        DexIndexPrinter dexIndexPrinter = new DexIndexPrinter(new File(strArr[0]));
        dexIndexPrinter.printMap();
        dexIndexPrinter.printStrings();
        dexIndexPrinter.printTypeIds();
        dexIndexPrinter.printProtoIds();
        dexIndexPrinter.printFieldIds();
        dexIndexPrinter.printMethodIds();
        dexIndexPrinter.printTypeLists();
        dexIndexPrinter.printClassDefs();
    }

    private void printClassDefs() {
        int i10 = 0;
        for (ClassDef classDef : this.dex.classDefs()) {
            System.out.println("class def " + i10 + ": " + ((Object) classDef));
            i10++;
        }
    }

    private void printFieldIds() throws IOException {
        int i10 = 0;
        for (FieldId fieldId : this.dex.fieldIds()) {
            System.out.println("field " + i10 + ": " + ((Object) fieldId));
            i10++;
        }
    }

    private void printMap() {
        for (TableOfContents.Section section : this.tableOfContents.sections) {
            if (section.off != -1) {
                System.out.println("section " + Integer.toHexString(section.type) + " off=" + Integer.toHexString(section.off) + " size=" + Integer.toHexString(section.size) + " byteCount=" + Integer.toHexString(section.byteCount));
            }
        }
    }

    private void printMethodIds() throws IOException {
        int i10 = 0;
        for (MethodId methodId : this.dex.methodIds()) {
            System.out.println("methodId " + i10 + ": " + ((Object) methodId));
            i10++;
        }
    }

    private void printProtoIds() throws IOException {
        int i10 = 0;
        for (ProtoId protoId : this.dex.protoIds()) {
            System.out.println("proto " + i10 + ": " + ((Object) protoId));
            i10++;
        }
    }

    private void printStrings() throws IOException {
        int i10 = 0;
        for (String str : this.dex.strings()) {
            System.out.println("string " + i10 + ": " + str);
            i10++;
        }
    }

    private void printTypeIds() throws IOException {
        int i10 = 0;
        for (Integer num : this.dex.typeIds()) {
            System.out.println("type " + i10 + ": " + this.dex.strings().get(num.intValue()));
            i10++;
        }
    }

    private void printTypeLists() throws IOException {
        int i10 = this.tableOfContents.typeLists.off;
        if (i10 == -1) {
            System.out.println("No type lists");
            return;
        }
        Dex.Section open = this.dex.open(i10);
        for (int i11 = 0; i11 < this.tableOfContents.typeLists.size; i11++) {
            int readInt = open.readInt();
            System.out.print("Type list i=" + i11 + ", size=" + readInt + ", elements=");
            for (int i12 = 0; i12 < readInt; i12++) {
                System.out.print(" " + this.dex.typeNames().get(open.readShort()));
            }
            if (readInt % 2 == 1) {
                open.readShort();
            }
            System.out.println();
        }
    }
}
