package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import org.eclipse.core.resources.IProject;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IModuleDescription;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.IUpdatableModule;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.util.Util;

public class ModuleUpdater {
    private JavaProject javaProoject;
    private Map<String, IUpdatableModule.UpdatesByKind> moduleUpdates = new HashMap();

    public ModuleUpdater(JavaProject javaProject) {
        this.javaProoject = javaProject;
    }

    private static boolean containsNonModularDependency(IClasspathEntry[] iClasspathEntryArr) {
        for (IClasspathEntry iClasspathEntry : iClasspathEntryArr) {
            if (iClasspathEntry.getEntryKind() != 3 && !((ClasspathEntry) iClasspathEntry).isModular()) {
                return true;
            }
        }
        return false;
    }

    public static Set<String> determineModulesOfProjectsWithNonEmptyClasspath(JavaProject javaProject, IClasspathEntry[] iClasspathEntryArr) throws JavaModelException {
        IModuleDescription moduleDescription;
        IModuleDescription moduleDescription2;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (containsNonModularDependency(iClasspathEntryArr) && (moduleDescription2 = javaProject.getModuleDescription()) != null) {
            linkedHashSet.add(moduleDescription2.getElementName());
        }
        for (IClasspathEntry iClasspathEntry : iClasspathEntryArr) {
            if (iClasspathEntry.getEntryKind() == 2) {
                Object target = JavaModel.getTarget(iClasspathEntry.getPath(), true);
                if (target instanceof IProject) {
                    IProject iProject = (IProject) target;
                    if (JavaProject.hasJavaNature(iProject)) {
                        JavaProject javaProject2 = (JavaProject) JavaCore.create(iProject);
                        if (containsNonModularDependency(javaProject2.getResolvedClasspath()) && (moduleDescription = javaProject2.getModuleDescription()) != null) {
                            linkedHashSet.add(moduleDescription.getElementName());
                        }
                    }
                }
            }
        }
        return linkedHashSet;
    }

    public static void lambda$0(String str, IUpdatableModule iUpdatableModule) {
        iUpdatableModule.setMainClassName(str.toCharArray());
    }

    public static void lambda$1(IUpdatableModule iUpdatableModule) {
        iUpdatableModule.addReads(ModuleBinding.ALL_UNNAMED);
    }

    public void addModuleUpdate(String str, Consumer<IUpdatableModule> consumer, IUpdatableModule.UpdateKind updateKind) {
        IUpdatableModule.UpdatesByKind updatesByKind = this.moduleUpdates.get(str);
        if (updatesByKind == null) {
            Map<String, IUpdatableModule.UpdatesByKind> map = this.moduleUpdates;
            IUpdatableModule.UpdatesByKind updatesByKind2 = new IUpdatableModule.UpdatesByKind();
            map.put(str, updatesByKind2);
            updatesByKind = updatesByKind2;
        }
        updatesByKind.getList(updateKind, true).add(consumer);
    }

    public void addReadUnnamedForNonEmptyClasspath(JavaProject javaProject, IClasspathEntry[] iClasspathEntryArr) throws JavaModelException {
        Iterator<String> it = determineModulesOfProjectsWithNonEmptyClasspath(javaProject, iClasspathEntryArr).iterator();
        while (it.hasNext()) {
            addModuleUpdate(it.next(), new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ModuleUpdater.lambda$1((IUpdatableModule) obj);
                }
            }, IUpdatableModule.UpdateKind.MODULE);
        }
    }

    public void applyModuleUpdates(IUpdatableModule iUpdatableModule, IUpdatableModule.UpdateKind updateKind) {
        IUpdatableModule.UpdatesByKind updatesByKind;
        char[] name = iUpdatableModule.name();
        if (name == ModuleBinding.UNNAMED || (updatesByKind = this.moduleUpdates.get(String.valueOf(name))) == null) {
            return;
        }
        Iterator<Consumer<IUpdatableModule>> it = updatesByKind.getList(updateKind, false).iterator();
        while (it.hasNext()) {
            it.next().accept(iUpdatableModule);
        }
    }

    public void computeModuleUpdates(IClasspathEntry iClasspathEntry) throws JavaModelException {
        for (IClasspathAttribute iClasspathAttribute : iClasspathEntry.getExtraAttributes()) {
            String name = iClasspathAttribute.getName();
            final String value = iClasspathAttribute.getValue();
            if (name.equals(IClasspathAttribute.ADD_EXPORTS)) {
                String[] split = value.split(b3.s.f32937c);
                for (String str : split) {
                    int indexOf = str.indexOf(47);
                    int indexOf2 = str.indexOf(61);
                    if (indexOf == -1 || indexOf2 == -1) {
                        Util.log(2, "Invalid argument to add-exports: " + str);
                    } else {
                        addModuleUpdate(str.substring(0, indexOf), new IUpdatableModule.AddExports(str.substring(indexOf + 1, indexOf2).toCharArray(), CharOperation.splitOn(IIndexConstants.PARAMETER_SEPARATOR, str.substring(indexOf2 + 1).toCharArray())), IUpdatableModule.UpdateKind.PACKAGE);
                    }
                }
            } else if (name.equals(IClasspathAttribute.ADD_READS)) {
                String[] split2 = value.split(b3.s.f32937c);
                for (String str2 : split2) {
                    int indexOf3 = str2.indexOf(61);
                    if (indexOf3 != -1) {
                        addModuleUpdate(str2.substring(0, indexOf3), new IUpdatableModule.AddReads(str2.substring(indexOf3 + 1).toCharArray()), IUpdatableModule.UpdateKind.MODULE);
                    } else {
                        Util.log(2, "Invalid argument to add-reads: " + str2);
                    }
                }
            } else if (name.equals(IClasspathAttribute.MODULE_MAIN_CLASS)) {
                IModuleDescription moduleDescription = this.javaProoject.getModuleDescription();
                if (moduleDescription == null) {
                    throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(969));
                }
                addModuleUpdate(moduleDescription.getElementName(), new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        ModuleUpdater.lambda$0(String.this, (IUpdatableModule) obj);
                    }
                }, IUpdatableModule.UpdateKind.MODULE);
            } else {
                continue;
            }
        }
    }

    public IUpdatableModule.UpdatesByKind getUpdates(String str) {
        return this.moduleUpdates.get(str);
    }
}
