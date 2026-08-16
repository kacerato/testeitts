package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Predicate;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModulePathEntry;

public class ModuleSourcePathManager {
    private Map<String, IModulePathEntry> knownModules = new HashMap(11);

    public interface IPrefixMatcherCharArray {
        boolean matches(char[] cArr, char[] cArr2);
    }

    private IModulePathEntry getModuleRoot0(String str) {
        return this.knownModules.get(str);
    }

    public static boolean lambda$0(JavaProject javaProject, Map.Entry entry) {
        return ProjectEntry.representsProject((IModulePathEntry) entry.getValue(), javaProject);
    }

    public static boolean lambda$1(char[] cArr, char[] cArr2) {
        return true;
    }

    public void addEntry(IModuleDescription iModuleDescription, JavaProject javaProject) throws JavaModelException {
        String str = new String(iModuleDescription.getElementName().toCharArray());
        if (getModuleRoot0(str) != null) {
            return;
        }
        this.knownModules.put(str, new ProjectEntry(javaProject));
    }

    public IModule getModule(char[] cArr) {
        IModulePathEntry moduleRoot0 = getModuleRoot0(CharOperation.charToString(cArr));
        if (moduleRoot0 != null) {
            try {
                return moduleRoot0.getModule();
            } catch (Exception unused) {
                return null;
            }
        }
        JavaElementRequestor javaElementRequestor = new JavaElementRequestor();
        try {
            seekModule(cArr, false, javaElementRequestor);
        } catch (JavaModelException unused2) {
        }
        Object[] modules = javaElementRequestor.getModules();
        if (modules.length > 0) {
            try {
                return (IModule) ((JavaElement) modules[0]).getElementInfo();
            } catch (JavaModelException e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public IModulePathEntry getModuleRoot(String str) {
        if (getModuleRoot0(str) == null) {
            try {
                seekModule(str.toCharArray(), false, new JavaElementRequestor());
            } catch (JavaModelException e10) {
                e10.printStackTrace();
            }
        }
        return this.knownModules.get(str);
    }

    public void removeEntry(final JavaProject javaProject) {
        Map.Entry<String, IModulePathEntry> orElse = this.knownModules.entrySet().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$0;
                lambda$0 = ModuleSourcePathManager.lambda$0(JavaProject.this, (Map.Entry) obj);
                return lambda$0;
            }
        }).findFirst().orElse(null);
        String key = orElse != null ? orElse.getKey() : null;
        if (key != null) {
            this.knownModules.remove(key);
        }
    }

    public void seekModule(char[] cArr, boolean z10, IJavaElementRequestor iJavaElementRequestor) throws JavaModelException {
        IModuleDescription moduleDescription;
        if (cArr == null) {
            return;
        }
        IPrefixMatcherCharArray iPrefixMatcherCharArray = z10 ? CharOperation.equals(cArr, CharOperation.ALL_PREFIX) ? new IPrefixMatcherCharArray() {
            @Override
            public final boolean matches(char[] cArr2, char[] cArr3) {
                boolean lambda$1;
                lambda$1 = ModuleSourcePathManager.lambda$1(cArr2, cArr3);
                return lambda$1;
            }
        } : new IPrefixMatcherCharArray() {
            @Override
            public final boolean matches(char[] cArr2, char[] cArr3) {
                return CharOperation.prefixEquals(cArr2, cArr3);
            }
        } : new IPrefixMatcherCharArray() {
            @Override
            public final boolean matches(char[] cArr2, char[] cArr3) {
                return CharOperation.equals(cArr2, cArr3);
            }
        };
        for (IJavaProject iJavaProject : JavaModelManager.getJavaModelManager().getJavaModel().getJavaProjects()) {
            if (iJavaProject.getProject().isAccessible() && (iJavaProject instanceof JavaProject) && (moduleDescription = ((JavaProject) iJavaProject).getModuleDescription()) != null && iPrefixMatcherCharArray.matches(cArr, moduleDescription.getElementName().toCharArray())) {
                iJavaElementRequestor.acceptModule(moduleDescription);
            }
        }
    }
}
