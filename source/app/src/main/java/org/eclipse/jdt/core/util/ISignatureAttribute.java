package org.eclipse.jdt.core.util;

public interface ISignatureAttribute extends IClassFileAttribute {
    char[] getSignature();

    int getSignatureIndex();
}
