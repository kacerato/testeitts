package org.eclipse.jdt.core;

public interface IModularClassFile extends IClassFile {
    @Override
    IModuleDescription getModule() throws JavaModelException;
}
