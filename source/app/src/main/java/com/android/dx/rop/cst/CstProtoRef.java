package com.android.dx.rop.cst;

import android.net.wifi.WifiConfiguration;
import com.android.dx.rop.type.Prototype;
import org.eclipse.jdt.internal.core.JavaElement;

public class CstProtoRef extends Constant {
    private final Prototype prototype;

    public CstProtoRef(Prototype prototype) {
        this.prototype = prototype;
    }

    @Override
    public int compareTo0(Constant constant) {
        return this.prototype.compareTo(((CstProtoRef) constant).getPrototype());
    }

    public boolean equals(Object obj) {
        if (obj instanceof CstProtoRef) {
            return getPrototype().equals(((CstProtoRef) obj).getPrototype());
        }
        return false;
    }

    public Prototype getPrototype() {
        return this.prototype;
    }

    public int hashCode() {
        return this.prototype.hashCode();
    }

    @Override
    public boolean isCategory2() {
        return false;
    }

    @Override
    public String toHuman() {
        return this.prototype.getDescriptor();
    }

    public final String toString() {
        return typeName() + "{" + toHuman() + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public String typeName() {
        return WifiConfiguration.Protocol.varName;
    }
}
