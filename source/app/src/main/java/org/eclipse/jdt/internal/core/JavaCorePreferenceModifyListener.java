package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.PreferenceModifyListener;
import org.eclipse.jdt.core.JavaCore;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class JavaCorePreferenceModifyListener extends PreferenceModifyListener {
    static int PREFIX_LENGTH = 40;
    JavaModel javaModel = JavaModelManager.getJavaModelManager().getJavaModel();

    public void cleanJavaCore(Preferences preferences) {
        try {
            for (String str : preferences.keys()) {
                if (str.startsWith(JavaModelManager.CP_CONTAINER_PREFERENCES_PREFIX) && !isJavaProjectAccessible(str)) {
                    preferences.remove(str);
                }
            }
        } catch (BackingStoreException unused) {
        }
    }

    public boolean isJavaProjectAccessible(String str) {
        int indexOf = str.indexOf(124, PREFIX_LENGTH);
        if (indexOf > 0) {
            return ((JavaProject) this.javaModel.getJavaProject(str.substring(PREFIX_LENGTH, indexOf).trim())).getProject().isAccessible();
        }
        return false;
    }

    public IEclipsePreferences preApply(IEclipsePreferences iEclipsePreferences) {
        Preferences node = iEclipsePreferences.node("/");
        try {
            if (node.nodeExists("instance")) {
                Preferences node2 = node.node("instance");
                if (node2.nodeExists(JavaCore.PLUGIN_ID)) {
                    cleanJavaCore(node2.node(JavaCore.PLUGIN_ID));
                }
            }
        } catch (BackingStoreException unused) {
        }
        return super.preApply(iEclipsePreferences);
    }
}
