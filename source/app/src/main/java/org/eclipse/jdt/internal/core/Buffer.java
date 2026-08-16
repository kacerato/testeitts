package org.eclipse.jdt.internal.core;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Iterator;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.jdt.core.BufferChangedEvent;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferChangedListener;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.Util;

public class Buffer implements IBuffer {
    protected static final int F_HAS_UNSAVED_CHANGES = 1;
    protected static final int F_IS_CLOSED = 4;
    protected static final int F_IS_READ_ONLY = 2;
    protected ListenerList<IBufferChangedListener> changeListeners;
    protected char[] contents;
    protected IFile file;
    protected int flags;
    protected IOpenable owner;
    protected int gapStart = -1;
    protected int gapEnd = -1;
    protected Object lock = new Object();

    public Buffer(IFile iFile, IOpenable iOpenable, boolean z10) {
        this.file = iFile;
        this.owner = iOpenable;
        if (iFile == null) {
            setReadOnly(z10);
        }
    }

    @Override
    public synchronized void addBufferChangedListener(IBufferChangedListener iBufferChangedListener) {
        try {
            if (this.changeListeners == null) {
                this.changeListeners = new ListenerList<>();
            }
            this.changeListeners.add(iBufferChangedListener);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void append(char[] cArr) {
        if (isReadOnly() || cArr == null || cArr.length == 0) {
            return;
        }
        int length = getLength();
        synchronized (this.lock) {
            try {
                if (this.contents == null) {
                    return;
                }
                moveAndResizeGap(length, cArr.length);
                System.arraycopy(cArr, 0, this.contents, length, cArr.length);
                this.gapStart += cArr.length;
                this.flags |= 1;
                notifyChanged(new BufferChangedEvent(this, length, 0, new String(cArr)));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void close() {
        synchronized (this.lock) {
            try {
                if (isClosed()) {
                    return;
                }
                BufferChangedEvent bufferChangedEvent = new BufferChangedEvent(this, 0, 0, null);
                this.contents = null;
                this.flags |= 4;
                notifyChanged(bufferChangedEvent);
                synchronized (this) {
                    this.changeListeners = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public char getChar(int i10) {
        synchronized (this.lock) {
            try {
                char[] cArr = this.contents;
                if (cArr == null) {
                    return (char) 0;
                }
                int i11 = this.gapStart;
                if (i10 < i11) {
                    return cArr[i10];
                }
                return cArr[i10 + (this.gapEnd - i11)];
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public char[] getCharacters() {
        synchronized (this.lock) {
            try {
                char[] cArr = this.contents;
                if (cArr == null) {
                    return null;
                }
                int i10 = this.gapStart;
                if (i10 < 0) {
                    return cArr;
                }
                int length = cArr.length;
                char[] cArr2 = new char[(length - this.gapEnd) + i10];
                System.arraycopy(cArr, 0, cArr2, 0, i10);
                char[] cArr3 = this.contents;
                int i11 = this.gapEnd;
                System.arraycopy(cArr3, i11, cArr2, this.gapStart, length - i11);
                return cArr2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public String getContents() {
        char[] characters = getCharacters();
        if (characters == null) {
            return null;
        }
        return new String(characters);
    }

    @Override
    public int getLength() {
        synchronized (this.lock) {
            try {
                char[] cArr = this.contents;
                if (cArr == null) {
                    return -1;
                }
                return cArr.length - (this.gapEnd - this.gapStart);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public IOpenable getOwner() {
        return this.owner;
    }

    @Override
    public String getText(int i10, int i11) {
        synchronized (this.lock) {
            char[] cArr = this.contents;
            if (cArr == null) {
                return "";
            }
            int i12 = i10 + i11;
            int i13 = this.gapStart;
            if (i12 < i13) {
                return new String(cArr, i10, i11);
            }
            if (i13 < i10) {
                return new String(cArr, i10 + (this.gapEnd - i13), i11);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.contents, i10, this.gapStart - i10);
            stringBuffer.append(this.contents, this.gapEnd, i12 - this.gapStart);
            return stringBuffer.toString();
        }
    }

    @Override
    public IResource getUnderlyingResource() {
        return this.file;
    }

    @Override
    public boolean hasUnsavedChanges() {
        return (this.flags & 1) != 0;
    }

    @Override
    public boolean isClosed() {
        return (this.flags & 4) != 0;
    }

    @Override
    public boolean isReadOnly() {
        return (this.flags & 2) != 0;
    }

    public void moveAndResizeGap(int i10, int i11) {
        int i12 = this.gapEnd;
        int i13 = this.gapStart;
        int i14 = i12 - i13;
        if (i11 < 0) {
            if (i14 > 0) {
                char[] cArr = this.contents;
                int length = cArr.length - i14;
                char[] cArr2 = new char[length];
                System.arraycopy(cArr, 0, cArr2, 0, i13);
                char[] cArr3 = this.contents;
                int i15 = this.gapEnd;
                int i16 = this.gapStart;
                System.arraycopy(cArr3, i15, cArr2, i16, length - i16);
                this.contents = cArr2;
            }
            this.gapEnd = i10;
            this.gapStart = i10;
            return;
        }
        char[] cArr4 = this.contents;
        int length2 = cArr4.length + (i11 - i14);
        char[] cArr5 = new char[length2];
        int i17 = i11 + i10;
        if (i14 == 0) {
            System.arraycopy(cArr4, 0, cArr5, 0, i10);
            System.arraycopy(this.contents, i10, cArr5, i17, length2 - i17);
        } else if (i10 < i13) {
            int i18 = i13 - i10;
            System.arraycopy(cArr4, 0, cArr5, 0, i10);
            System.arraycopy(this.contents, i10, cArr5, i17, i18);
            char[] cArr6 = this.contents;
            int i19 = this.gapEnd;
            System.arraycopy(cArr6, i19, cArr5, i18 + i17, cArr6.length - i19);
        } else {
            int i20 = i10 - i13;
            System.arraycopy(cArr4, 0, cArr5, 0, i13);
            System.arraycopy(this.contents, this.gapEnd, cArr5, this.gapStart, i20);
            System.arraycopy(this.contents, this.gapEnd + i20, cArr5, i17, length2 - i17);
        }
        this.contents = cArr5;
        this.gapStart = i10;
        this.gapEnd = i17;
    }

    public void notifyChanged(final BufferChangedEvent bufferChangedEvent) {
        ListenerList<IBufferChangedListener> listenerList = this.changeListeners;
        if (listenerList != null) {
            Iterator it = listenerList.iterator();
            while (it.hasNext()) {
                final IBufferChangedListener iBufferChangedListener = (IBufferChangedListener) it.next();
                SafeRunner.run(new ISafeRunnable() {
                    public void handleException(Throwable th2) {
                        Util.log(th2, "Exception occurred in listener of buffer change notification");
                    }

                    public void run() throws Exception {
                        iBufferChangedListener.bufferChanged(bufferChangedEvent);
                    }
                });
            }
        }
    }

    @Override
    public synchronized void removeBufferChangedListener(IBufferChangedListener iBufferChangedListener) {
        ListenerList<IBufferChangedListener> listenerList = this.changeListeners;
        if (listenerList != null) {
            listenerList.remove(iBufferChangedListener);
            if (this.changeListeners.size() == 0) {
                this.changeListeners = null;
            }
        }
    }

    @Override
    public void replace(int i10, int i11, char[] cArr) {
        if (isReadOnly()) {
            return;
        }
        int length = cArr == null ? 0 : cArr.length;
        synchronized (this.lock) {
            try {
                if (this.contents == null) {
                    return;
                }
                int i12 = length - i11;
                moveAndResizeGap(i10 + i11, i12);
                int min = Math.min(length, i11);
                if (min > 0) {
                    System.arraycopy(cArr, 0, this.contents, i10, min);
                }
                if (i11 > length) {
                    this.gapStart -= i11 - length;
                } else if (length > i11) {
                    this.gapStart += i12;
                    System.arraycopy(cArr, 0, this.contents, i10, length);
                }
                this.flags |= 1;
                notifyChanged(new BufferChangedEvent(this, i10, i11, length > 0 ? new String(cArr) : null));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void save(IProgressMonitor iProgressMonitor, boolean z10) throws JavaModelException {
        String str;
        IContentDescription iContentDescription;
        if (isReadOnly() || this.file == null || !hasUnsavedChanges()) {
            return;
        }
        try {
            try {
                String contents = getContents();
                if (contents == null) {
                    return;
                }
                try {
                    str = this.file.getCharset();
                } catch (CoreException unused) {
                    str = null;
                }
                byte[] bytes = str == null ? contents.getBytes() : contents.getBytes(str);
                if (str != null && str.equals("UTF-8")) {
                    try {
                        iContentDescription = this.file.getContentDescription();
                    } catch (CoreException e10) {
                        if (e10.getStatus().getCode() != 368) {
                            throw e10;
                        }
                        iContentDescription = null;
                    }
                    if (iContentDescription != null && iContentDescription.getProperty(IContentDescription.BYTE_ORDER_MARK) != null) {
                        int length = IContentDescription.BOM_UTF_8.length;
                        byte[] bArr = new byte[bytes.length + length];
                        System.arraycopy(IContentDescription.BOM_UTF_8, 0, bArr, 0, length);
                        System.arraycopy(bytes, 0, bArr, length, bytes.length);
                        bytes = bArr;
                    }
                }
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                if (this.file.exists()) {
                    this.file.setContents(byteArrayInputStream, z10 ? 3 : 2, (IProgressMonitor) null);
                } else {
                    this.file.create(byteArrayInputStream, z10, (IProgressMonitor) null);
                }
                this.flags &= -2;
            } catch (CoreException e11) {
                throw new JavaModelException(e11);
            }
        } catch (IOException e12) {
            throw new JavaModelException(e12, IJavaModelStatusConstants.IO_EXCEPTION);
        }
    }

    @Override
    public void setContents(char[] cArr) {
        if (this.contents == null) {
            synchronized (this.lock) {
                this.contents = cArr;
                this.flags &= -2;
            }
        } else {
            if (isReadOnly()) {
                return;
            }
            String str = cArr != null ? new String(cArr) : null;
            synchronized (this.lock) {
                try {
                    if (this.contents == null) {
                        return;
                    }
                    this.contents = cArr;
                    this.flags |= 1;
                    this.gapStart = -1;
                    this.gapEnd = -1;
                    notifyChanged(new BufferChangedEvent(this, 0, getLength(), str));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void setReadOnly(boolean z10) {
        if (z10) {
            this.flags |= 2;
        } else {
            this.flags &= -3;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Owner: " + ((JavaElement) this.owner).toStringWithAncestors());
        stringBuffer.append("\nHas unsaved changes: " + hasUnsavedChanges());
        stringBuffer.append("\nIs readonly: " + isReadOnly());
        stringBuffer.append("\nIs closed: " + isClosed());
        stringBuffer.append("\nContents:\n");
        char[] characters = getCharacters();
        if (characters == null) {
            stringBuffer.append("<null>");
        } else {
            int length = characters.length;
            int i10 = 0;
            while (i10 < length) {
                char c10 = characters[i10];
                if (c10 == '\n') {
                    stringBuffer.append("\\n\n");
                } else if (c10 != '\r') {
                    stringBuffer.append(c10);
                } else {
                    if (i10 < length - 1) {
                        int i11 = i10 + 1;
                        if (this.contents[i11] == '\n') {
                            stringBuffer.append("\\r\\n\n");
                            i10 = i11;
                        }
                    }
                    stringBuffer.append("\\r\n");
                }
                i10++;
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public void append(String str) {
        if (str == null) {
            return;
        }
        append(str.toCharArray());
    }

    @Override
    public void replace(int i10, int i11, String str) {
        replace(i10, i11, str == null ? null : str.toCharArray());
    }

    @Override
    public void setContents(String str) {
        setContents(str.toCharArray());
    }
}
