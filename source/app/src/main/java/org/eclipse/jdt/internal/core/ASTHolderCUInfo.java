package org.eclipse.jdt.internal.core;

import java.util.HashMap;

public class ASTHolderCUInfo extends CompilationUnitElementInfo {
    org.eclipse.jdt.core.dom.CompilationUnit ast;
    int astLevel;
    HashMap problems = null;
    int reconcileFlags;
    boolean resolveBindings;
}
