package org.eclipse.jdt.internal.core;

import java.text.NumberFormat;
import java.util.Enumeration;
import org.eclipse.core.resources.IFile;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.IOpenable;

public class BufferManager {
    protected static BufferManager DEFAULT_BUFFER_MANAGER;
    protected static boolean VERBOSE;
    private BufferCache<IOpenable> openBuffers = new BufferCache<>(60);
    protected IBufferFactory defaultBufferFactory = new IBufferFactory() {
        @Override
        public IBuffer createBuffer(IOpenable iOpenable) {
            return BufferManager.createBuffer(iOpenable);
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    public static IBuffer createBuffer(IOpenable iOpenable) {
        JavaElement javaElement = (JavaElement) iOpenable;
        IFile resource = javaElement.resource();
        return new Buffer(resource instanceof IFile ? resource : null, iOpenable, javaElement.isReadOnly());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static IBuffer createNullBuffer(IOpenable iOpenable) {
        JavaElement javaElement = (JavaElement) iOpenable;
        IFile resource = javaElement.resource();
        return new NullBuffer(resource instanceof IFile ? resource : null, iOpenable, javaElement.isReadOnly());
    }

    public static synchronized BufferManager getDefaultBufferManager() {
        BufferManager bufferManager;
        synchronized (BufferManager.class) {
            try {
                if (DEFAULT_BUFFER_MANAGER == null) {
                    DEFAULT_BUFFER_MANAGER = new BufferManager();
                }
                bufferManager = DEFAULT_BUFFER_MANAGER;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bufferManager;
    }

    public void addBuffer(IBuffer iBuffer) {
        if (VERBOSE) {
            String stringWithAncestors = ((Openable) iBuffer.getOwner()).toStringWithAncestors();
            System.out.println("Adding buffer for " + stringWithAncestors);
        }
        synchronized (this.openBuffers) {
            this.openBuffers.put(iBuffer.getOwner(), iBuffer);
        }
        this.openBuffers.closeBuffers();
        if (VERBOSE) {
            System.out.println("-> Buffer cache filling ratio = " + NumberFormat.getInstance().format(this.openBuffers.fillingRatio()) + ve.j.f121589a);
        }
    }

    public IBuffer getBuffer(IOpenable iOpenable) {
        IBuffer iBuffer;
        synchronized (this.openBuffers) {
            iBuffer = this.openBuffers.get(iOpenable);
        }
        return iBuffer;
    }

    public IBufferFactory getDefaultBufferFactory() {
        return this.defaultBufferFactory;
    }

    public Enumeration<IBuffer> getOpenBuffers() {
        Enumeration<IBuffer> elements;
        synchronized (this.openBuffers) {
            this.openBuffers.shrink();
            elements = this.openBuffers.elements();
        }
        this.openBuffers.closeBuffers();
        return elements;
    }

    public void removeBuffer(IBuffer iBuffer) {
        if (VERBOSE) {
            String stringWithAncestors = ((Openable) iBuffer.getOwner()).toStringWithAncestors();
            System.out.println("Removing buffer for " + stringWithAncestors);
        }
        synchronized (this.openBuffers) {
            this.openBuffers.remove(iBuffer.getOwner());
        }
        this.openBuffers.closeBuffers();
        if (VERBOSE) {
            System.out.println("-> Buffer cache filling ratio = " + NumberFormat.getInstance().format(this.openBuffers.fillingRatio()) + ve.j.f121589a);
        }
    }
}
