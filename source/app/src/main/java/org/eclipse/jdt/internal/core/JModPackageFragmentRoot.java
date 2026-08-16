package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.builder.ClasspathJMod;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;

public class JModPackageFragmentRoot extends JarPackageFragmentRoot {
    public JModPackageFragmentRoot(IPath iPath, JavaProject javaProject) {
        super(iPath, javaProject);
    }

    @Override
    public String getClassFilePath(String str) {
        return new String(CharOperation.append(ClasspathJMod.CLASSES_FOLDER, str.toCharArray()));
    }

    @Override
    public void initRawPackageInfo(HashtableOfArrayToObject hashtableOfArrayToObject, String str, boolean z10, String str2) {
        char[] charArray = str.toCharArray();
        if (CharOperation.prefixEquals(ClasspathJMod.CLASSES_FOLDER, charArray)) {
            charArray = CharOperation.subarray(charArray, ClasspathJMod.CLASSES_FOLDER.length, charArray.length);
        }
        super.initRawPackageInfo(hashtableOfArrayToObject, new String(charArray), z10, str2);
    }

    public JModPackageFragmentRoot(IResource iResource, JavaProject javaProject) {
        super(iResource, javaProject);
    }
}
