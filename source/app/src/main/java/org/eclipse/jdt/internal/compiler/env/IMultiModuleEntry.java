package org.eclipse.jdt.internal.compiler.env;

import java.util.Collection;

public interface IMultiModuleEntry extends IModulePathEntry {
    IModule getModule(char[] cArr);

    Collection<String> getModuleNames(Collection<String> collection);
}
