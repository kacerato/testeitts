package org.eclipse.jdt.internal.compiler.batch;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public abstract class ClasspathLocation implements FileSystem.Classpath, SuffixConstants {
    public static final int BINARY = 2;
    public static final int SOURCE = 1;
    public AccessRuleSet accessRuleSet;
    public String destinationPath;
    protected boolean isAutoModule;
    IModule module;
    char[] normalizedPath;
    String path;

    public ClasspathLocation(AccessRuleSet accessRuleSet, String str) {
        this.accessRuleSet = accessRuleSet;
        this.destinationPath = str;
    }

    private void addRequired(String str, Set<String> set, Function<String, IModule> function) {
        IModule module = getModule(str.toCharArray());
        if (module != null) {
            for (IModule.IModuleReference iModuleReference : module.requires()) {
                IModule apply = function.apply(new String(iModuleReference.name()));
                if (apply != null) {
                    String valueOf = String.valueOf(apply.name());
                    if (set.add(valueOf)) {
                        addRequired(valueOf, set, function);
                    }
                }
            }
        }
    }

    public IModule lambda$0(String str) {
        return getModule(str.toCharArray());
    }

    public static String lambda$1(String str) {
        return str;
    }

    public IModule lambda$2(String str) {
        return getModule(str.toCharArray());
    }

    @Override
    public void acceptModule(IModule iModule) {
        this.module = iModule;
        this.isAutoModule = iModule.isAutomatic();
    }

    public <T> List<String> allModules(Iterable<T> iterable, Function<T, String> function, Function<T, IModule> function2) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(function.apply(it.next()));
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ClasspathLocation classpathLocation = (ClasspathLocation) obj;
        String path = getPath();
        String path2 = classpathLocation.getPath();
        if (path == null) {
            if (path2 != null) {
                return false;
            }
        } else if (!path.equals(path2)) {
            return false;
        }
        return getMode() == classpathLocation.getMode();
    }

    public AccessRestriction fetchAccessRestriction(String str) {
        if (this.accessRuleSet == null) {
            return null;
        }
        char[] charArray = str.substring(0, str.length() - SuffixConstants.SUFFIX_CLASS.length).toCharArray();
        char c10 = File.separatorChar;
        if (c10 == '\\') {
            CharOperation.replace(charArray, c10, '/');
        }
        return this.accessRuleSet.getViolatedRestriction(charArray);
    }

    @Override
    public String getDestinationPath() {
        return this.destinationPath;
    }

    public int getMode() {
        return 3;
    }

    @Override
    public Collection<String> getModuleNames(Collection<String> collection) {
        return getModuleNames(collection, new Function() {
            @Override
            public final Object apply(Object obj) {
                IModule lambda$0;
                lambda$0 = ClasspathLocation.this.lambda$0((String) obj);
                return lambda$0;
            }
        });
    }

    @Override
    public String getPath() {
        return this.path;
    }

    public int hashCode() {
        int mode = (getMode() + 31) * 31;
        String str = this.path;
        return mode + (str == null ? 0 : str.hashCode());
    }

    @Override
    public boolean isAutomaticModule() {
        return this.isAutoModule;
    }

    @Override
    public boolean isPackage(String str, String str2) {
        return getModulesDeclaringPackage(str, str2) != null;
    }

    @Override
    public void reset() {
        this.module = null;
    }

    public Collection<String> selectModules(Set<String> set, Collection<String> collection, Function<String, IModule> function) {
        Collection allModules;
        if (collection != null) {
            allModules = new HashSet(set);
            allModules.retainAll(collection);
        } else {
            allModules = allModules(set, new Function() {
                @Override
                public final Object apply(Object obj) {
                    String lambda$1;
                    lambda$1 = ClasspathLocation.lambda$1((String) obj);
                    return lambda$1;
                }
            }, new Function() {
                @Override
                public final Object apply(Object obj) {
                    IModule lambda$2;
                    lambda$2 = ClasspathLocation.this.lambda$2((String) obj);
                    return lambda$2;
                }
            });
        }
        HashSet hashSet = new HashSet(allModules);
        Iterator it = allModules.iterator();
        while (it.hasNext()) {
            addRequired((String) it.next(), hashSet, function);
        }
        return hashSet;
    }

    public char[][] singletonModuleNameIf(boolean z10) {
        if (!z10) {
            return null;
        }
        IModule iModule = this.module;
        return iModule != null ? new char[][]{iModule.name()} : new char[][]{ModuleBinding.UNNAMED};
    }

    @Override
    public Collection<String> getModuleNames(Collection<String> collection, Function<String, IModule> function) {
        IModule iModule = this.module;
        if (iModule != null) {
            return selectModules(Collections.singleton(String.valueOf(iModule.name())), collection, function);
        }
        return Collections.emptyList();
    }
}
