package org.eclipse.jdt.internal.compiler.env;

import org.eclipse.jdt.internal.compiler.env.IModule;

public class PackageExportImpl implements IModule.IPackageExport {
    public char[][] exportedTo;
    public char[] pack;

    @Override
    public char[] name() {
        return this.pack;
    }

    @Override
    public char[][] targets() {
        return this.exportedTo;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.pack);
        stringBuffer.append(" to ");
        if (this.exportedTo != null) {
            for (int i10 = 0; i10 < this.exportedTo.length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append(this.exportedTo[i10]);
            }
        }
        stringBuffer.append(';');
        return stringBuffer.toString();
    }
}
