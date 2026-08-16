package org.eclipse.jdt.internal.core.builder;

import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.internal.compiler.env.IModule;
import org.eclipse.jdt.internal.compiler.env.IModulePathEntry;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.builder.ModulePathEntry;
import org.openjdk.tools.doclint.DocLint;

public class ModuleEntryProcessor {
    public static void combinePatchIntoModuleEntry(ClasspathLocation classpathLocation, IModule iModule, Map<String, IModulePathEntry> map) {
        ClasspathLocation[] classpathLocationArr;
        classpathLocation.setModule(iModule);
        String valueOf = String.valueOf(iModule.name());
        IModulePathEntry iModulePathEntry = map.get(valueOf);
        if (iModulePathEntry instanceof ModulePathEntry.Multi) {
            ((ModulePathEntry.Multi) iModulePathEntry).addPatchLocation(classpathLocation);
            return;
        }
        if (iModulePathEntry instanceof ClasspathJrt) {
            map.put(valueOf, new ModulePathEntry.Multi(null, iModule, new ClasspathLocation[]{(ClasspathLocation) iModulePathEntry, classpathLocation}));
            return;
        }
        if (iModulePathEntry instanceof ModulePathEntry) {
            ClasspathLocation[] classpathLocationArr2 = ((ModulePathEntry) iModulePathEntry).locations;
            classpathLocationArr = (ClasspathLocation[]) Arrays.copyOf(classpathLocationArr2, classpathLocationArr2.length + 1);
            classpathLocationArr[classpathLocationArr.length - 1] = classpathLocation;
        } else {
            if (!(iModulePathEntry instanceof ClasspathLocation)) {
                throw new IllegalStateException("Cannot patch the module of classpath entry " + ((Object) iModulePathEntry));
            }
            classpathLocationArr = new ClasspathLocation[]{(ClasspathLocation) iModulePathEntry, classpathLocation};
        }
        map.put(valueOf, new ModulePathEntry(null, iModule, classpathLocationArr));
    }

    public static Set<String> computeLimitModules(ClasspathEntry classpathEntry) {
        String extraAttribute = ClasspathEntry.getExtraAttribute(classpathEntry, IClasspathAttribute.LIMIT_MODULES);
        if (extraAttribute == null) {
            return null;
        }
        return new LinkedHashSet(Arrays.asList(extraAttribute.split(DocLint.SEPARATOR)));
    }

    public static String pushPatchToFront(IClasspathEntry[] iClasspathEntryArr, JavaProject javaProject) {
        for (int i10 = 0; i10 < iClasspathEntryArr.length; i10++) {
            IClasspathEntry iClasspathEntry = iClasspathEntryArr[i10];
            List<String> patchedModules = javaProject.getPatchedModules(iClasspathEntry);
            if (patchedModules.size() == 1) {
                if (i10 > 0) {
                    IClasspathEntry iClasspathEntry2 = iClasspathEntryArr[0];
                    iClasspathEntryArr[0] = iClasspathEntry;
                    iClasspathEntryArr[i10] = iClasspathEntry2;
                }
                return patchedModules.get(0);
            }
        }
        return null;
    }
}
