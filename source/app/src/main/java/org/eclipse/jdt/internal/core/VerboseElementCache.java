package org.eclipse.jdt.internal.core;

import java.io.PrintStream;
import java.text.NumberFormat;
import java.util.Date;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IOpenable;

public class VerboseElementCache<K extends IJavaElement & IOpenable> extends ElementCache<K> {
    private K beingAdded;
    private String name;

    public VerboseElementCache(int i10, String str) {
        super(i10);
        this.name = str;
    }

    @Override
    public boolean makeSpace(int i10) {
        if (this.beingAdded == null) {
            return super.makeSpace(i10);
        }
        String stringFillingRation = toStringFillingRation(this.name);
        boolean makeSpace = super.makeSpace(i10);
        if (!stringFillingRation.equals(toStringFillingRation(this.name))) {
            PrintStream printStream = System.out;
            printStream.println(((Object) Thread.currentThread()) + " " + new Date(System.currentTimeMillis()).toString());
            printStream.println(((Object) Thread.currentThread()) + " MADE SPACE FOR " + stringFillingRation + " (NOW " + NumberFormat.getInstance().format(fillingRatio()) + "% full)");
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) Thread.currentThread());
            sb2.append(" WHILE OPENING ");
            sb2.append(((JavaElement) this.beingAdded).toStringWithAncestors());
            printStream.println(sb2.toString());
            printStream.println();
        }
        return makeSpace;
    }

    @Override
    public JavaElementInfo put(K k10, JavaElementInfo javaElementInfo) {
        try {
            if (this.beingAdded == null) {
                this.beingAdded = k10;
            }
            JavaElementInfo javaElementInfo2 = (JavaElementInfo) super.put((VerboseElementCache<K>) k10, (K) javaElementInfo);
            if (k10.equals(this.beingAdded)) {
                this.beingAdded = null;
            }
            return javaElementInfo2;
        } catch (Throwable th2) {
            if (k10.equals(this.beingAdded)) {
                this.beingAdded = null;
            }
            throw th2;
        }
    }
}
