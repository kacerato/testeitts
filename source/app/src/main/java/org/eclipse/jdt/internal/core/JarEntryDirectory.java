package org.eclipse.jdt.internal.core;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJarEntryResource;

public class JarEntryDirectory extends JarEntryResource {
    private IJarEntryResource[] children;

    public JarEntryDirectory(String str) {
        super(str);
    }

    @Override
    public JarEntryResource clone(Object obj) {
        JarEntryDirectory jarEntryDirectory = new JarEntryDirectory(this.simpleName);
        jarEntryDirectory.setParent(obj);
        int length = this.children.length;
        if (length > 0) {
            IJarEntryResource[] iJarEntryResourceArr = new IJarEntryResource[length];
            for (int i10 = 0; i10 < length; i10++) {
                iJarEntryResourceArr[i10] = ((JarEntryResource) this.children[i10]).clone(jarEntryDirectory);
            }
            jarEntryDirectory.setChildren(iJarEntryResourceArr);
        }
        return jarEntryDirectory;
    }

    @Override
    public IJarEntryResource[] getChildren() {
        return this.children;
    }

    public InputStream getContents() throws CoreException {
        return new ByteArrayInputStream(new byte[0]);
    }

    @Override
    public boolean isFile() {
        return false;
    }

    public void setChildren(IJarEntryResource[] iJarEntryResourceArr) {
        this.children = iJarEntryResourceArr;
    }

    public String toString() {
        return "JarEntryDirectory[" + getEntryName() + "]";
    }
}
