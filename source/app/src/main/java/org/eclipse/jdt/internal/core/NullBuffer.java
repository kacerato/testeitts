package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IFile;
import org.eclipse.jdt.core.IOpenable;

public class NullBuffer extends Buffer {
    public NullBuffer(IFile iFile, IOpenable iOpenable, boolean z10) {
        super(iFile, iOpenable, z10);
    }
}
