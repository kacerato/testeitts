package org.eclipse.jdt.internal.core;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.util.Util;
import org.osgi.service.prefs.BackingStoreException;

public class UserLibraryManager {
    public static final String CP_USERLIBRARY_PREFERENCES_PREFIX = "org.eclipse.jdt.core.userLibrary.";
    private Map userLibraries;

    public UserLibraryManager() {
        initialize();
    }

    private void initialize() {
        String str;
        this.userLibraries = new HashMap();
        IEclipsePreferences instancePreferences = JavaModelManager.getJavaModelManager().getInstancePreferences();
        try {
            boolean z10 = false;
            for (String str2 : instancePreferences.keys()) {
                if (str2.startsWith("org.eclipse.jdt.core.userLibrary.") && (str = instancePreferences.get(str2, (String) null)) != null) {
                    String substring = str2.substring(33);
                    try {
                        this.userLibraries.put(substring, UserLibrary.createFromString(new StringReader(str)));
                    } catch (IOException e10) {
                        Util.log(e10, "Exception while initializing user library " + substring);
                        instancePreferences.remove(str2);
                        z10 = true;
                    } catch (ClasspathEntry.AssertionFailedException e11) {
                        Util.log(e11, "Exception while initializing user library " + substring);
                        instancePreferences.remove(str2);
                        z10 = true;
                    }
                }
            }
            if (z10) {
                try {
                    instancePreferences.flush();
                } catch (BackingStoreException e12) {
                    Util.log((Throwable) e12, "Exception while flusing instance preferences");
                }
            }
        } catch (BackingStoreException e13) {
            Util.log((Throwable) e13, "Exception while initializing user libraries");
        }
    }

    public synchronized UserLibrary getUserLibrary(String str) {
        return (UserLibrary) this.userLibraries.get(str);
    }

    public synchronized String[] getUserLibraryNames() {
        Set o10;
        o10 = this.userLibraries.o();
        return (String[]) o10.toArray(new String[o10.size()]);
    }

    public void removeUserLibrary(String str) {
        synchronized (this.userLibraries) {
            IEclipsePreferences instancePreferences = JavaModelManager.getJavaModelManager().getInstancePreferences();
            instancePreferences.remove("org.eclipse.jdt.core.userLibrary." + str);
            try {
                instancePreferences.flush();
            } catch (BackingStoreException e10) {
                Util.log((Throwable) e10, "Exception while removing user library " + str);
            }
        }
    }

    public void setUserLibrary(String str, IClasspathEntry[] iClasspathEntryArr, boolean z10) {
        synchronized (this.userLibraries) {
            IEclipsePreferences instancePreferences = JavaModelManager.getJavaModelManager().getInstancePreferences();
            try {
                instancePreferences.put("org.eclipse.jdt.core.userLibrary." + str, UserLibrary.serialize(iClasspathEntryArr, z10));
                try {
                    instancePreferences.flush();
                } catch (BackingStoreException e10) {
                    Util.log((Throwable) e10, "Exception while saving user library " + str);
                }
            } catch (IOException e11) {
                Util.log(e11, "Exception while serializing user library " + str);
            }
        }
    }

    public void updateUserLibrary(String str, String str2) {
        try {
            IPath append = new Path(JavaCore.USER_LIBRARY_CONTAINER_ID).append(str);
            IJavaProject[] javaProjects = JavaCore.create(ResourcesPlugin.getWorkspace().getRoot()).getJavaProjects();
            ArrayList arrayList = new ArrayList();
            for (IJavaProject iJavaProject : javaProjects) {
                IClasspathEntry[] rawClasspath = iJavaProject.getRawClasspath();
                int i10 = 0;
                while (true) {
                    if (i10 >= rawClasspath.length) {
                        break;
                    }
                    IClasspathEntry iClasspathEntry = rawClasspath[i10];
                    if (iClasspathEntry.getEntryKind() == 5 && append.equals(iClasspathEntry.getPath())) {
                        arrayList.add(iJavaProject);
                        break;
                    }
                    i10++;
                }
            }
            UserLibrary createFromString = str2 == null ? null : UserLibrary.createFromString(new StringReader(str2));
            synchronized (this) {
                try {
                    if (createFromString != null) {
                        this.userLibraries.put(str, createFromString);
                    } else {
                        this.userLibraries.remove(str);
                    }
                } finally {
                }
            }
            int size = arrayList.size();
            if (size == 0) {
                return;
            }
            IJavaProject[] iJavaProjectArr = new IJavaProject[size];
            arrayList.toArray(iJavaProjectArr);
            IClasspathContainer[] iClasspathContainerArr = new IClasspathContainer[size];
            if (createFromString != null) {
                UserLibraryClasspathContainer userLibraryClasspathContainer = new UserLibraryClasspathContainer(str);
                for (int i11 = 0; i11 < size; i11++) {
                    iClasspathContainerArr[i11] = userLibraryClasspathContainer;
                }
            }
            JavaCore.setClasspathContainer(append, iJavaProjectArr, iClasspathContainerArr, null);
        } catch (IOException e10) {
            Util.log(e10, "Exception while decoding user library '" + str + "'.");
        } catch (JavaModelException e11) {
            Util.log((Throwable) e11, "Exception while setting user library '" + str + "'.");
        } catch (ClasspathEntry.AssertionFailedException e12) {
            Util.log(e12, "Exception while decoding user library '" + str + "'.");
        }
    }
}
