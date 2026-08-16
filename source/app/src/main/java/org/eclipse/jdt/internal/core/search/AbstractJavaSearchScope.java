package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;

public abstract class AbstractJavaSearchScope extends AbstractSearchScope {
    public abstract AccessRuleSet getAccessRuleSet(String str, String str2);

    public abstract IPackageFragmentRoot packageFragmentRoot(String str, int i10, String str2);
}
