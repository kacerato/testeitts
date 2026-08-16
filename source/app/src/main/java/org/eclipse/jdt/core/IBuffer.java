package org.eclipse.jdt.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.UndoEdit;

public interface IBuffer {

    public interface ITextEditCapability {
        UndoEdit applyTextEdit(TextEdit textEdit, IProgressMonitor iProgressMonitor) throws JavaModelException;
    }

    void addBufferChangedListener(IBufferChangedListener iBufferChangedListener);

    void append(String str);

    void append(char[] cArr);

    void close();

    char getChar(int i10);

    char[] getCharacters();

    String getContents();

    int getLength();

    IOpenable getOwner();

    String getText(int i10, int i11) throws IndexOutOfBoundsException;

    IResource getUnderlyingResource();

    boolean hasUnsavedChanges();

    boolean isClosed();

    boolean isReadOnly();

    void removeBufferChangedListener(IBufferChangedListener iBufferChangedListener);

    void replace(int i10, int i11, String str);

    void replace(int i10, int i11, char[] cArr);

    void save(IProgressMonitor iProgressMonitor, boolean z10) throws JavaModelException;

    void setContents(String str);

    void setContents(char[] cArr);
}
