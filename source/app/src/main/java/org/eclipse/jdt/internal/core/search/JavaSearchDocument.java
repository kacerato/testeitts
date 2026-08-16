package org.eclipse.jdt.internal.core.search;

import java.util.zip.ZipEntry;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaSearchDocument extends SearchDocument {
    protected byte[] byteContents;
    protected char[] charContents;
    private IFile file;

    public JavaSearchDocument(String str, SearchParticipant searchParticipant) {
        super(str, searchParticipant);
    }

    private IFile getFile() {
        if (this.file == null) {
            this.file = ResourcesPlugin.getWorkspace().getRoot().getFile(new Path(getPath()));
        }
        return this.file;
    }

    @Override
    public byte[] getByteContents() {
        byte[] bArr = this.byteContents;
        if (bArr != null) {
            return bArr;
        }
        try {
            return Util.getResourceContentsAsByteArray(getFile());
        } catch (JavaModelException e10) {
            if (!BasicSearchEngine.VERBOSE && !JobManager.VERBOSE) {
                return null;
            }
            e10.printStackTrace();
            return null;
        }
    }

    @Override
    public char[] getCharContents() {
        char[] cArr = this.charContents;
        if (cArr != null) {
            return cArr;
        }
        try {
            return Util.getResourceContentsAsCharArray(getFile());
        } catch (JavaModelException e10) {
            if (!BasicSearchEngine.VERBOSE && !JobManager.VERBOSE) {
                return null;
            }
            e10.printStackTrace();
            return null;
        }
    }

    @Override
    public String getEncoding() {
        IFile file = getFile();
        if (file == null) {
            return null;
        }
        try {
            try {
                return file.getCharset();
            } catch (CoreException unused) {
                return ResourcesPlugin.getWorkspace().getRoot().getDefaultCharset();
            }
        } catch (CoreException unused2) {
            return null;
        }
    }

    public String toString() {
        return "SearchDocument for " + getPath();
    }

    public JavaSearchDocument(ZipEntry zipEntry, IPath iPath, byte[] bArr, SearchParticipant searchParticipant) {
        this(((Object) iPath) + "|" + zipEntry.getName(), bArr, searchParticipant);
    }

    public JavaSearchDocument(String str, byte[] bArr, SearchParticipant searchParticipant) {
        super(str, searchParticipant);
        this.byteContents = bArr;
    }
}
