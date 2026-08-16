package org.eclipse.jdt.core.util;

public interface IBootstrapMethodsAttribute extends IClassFileAttribute {
    IBootstrapMethodsEntry[] getBootstrapMethods();

    int getBootstrapMethodsLength();
}
