package com.jme3.opencl;

import com.jme3.opencl.OpenCLObject;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.HashSet;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OpenCLObjectManager {
    private static final Logger LOG = Logger.getLogger(OpenCLObjectManager.class.getName());
    private static final Level LOG_LEVEL1 = Level.FINEST;
    private static final Level LOG_LEVEL2 = Level.FINER;
    private static final OpenCLObjectManager INSTANCE = new OpenCLObjectManager();
    private final ReferenceQueue<Object> refQueue = new ReferenceQueue<>();
    private final HashSet<OpenCLObjectRef> activeObjects = new HashSet<>();

    public static class OpenCLObjectRef extends PhantomReference<Object> {
        private final OpenCLObject.ObjectReleaser releaser;

        public OpenCLObjectRef(ReferenceQueue<Object> referenceQueue, OpenCLObject openCLObject) {
            super(openCLObject, referenceQueue);
            this.releaser = openCLObject.getReleaser();
        }
    }

    private OpenCLObjectManager() {
    }

    private void deleteObject(OpenCLObjectRef openCLObjectRef) {
        LOG.log(LOG_LEVEL1, "deleting OpenCL object by: {0}", openCLObjectRef.releaser);
        openCLObjectRef.releaser.release();
        openCLObjectRef.clear();
        this.activeObjects.remove(openCLObjectRef);
    }

    public static OpenCLObjectManager getInstance() {
        return INSTANCE;
    }

    public void deleteAllObjects() {
        Iterator<OpenCLObjectRef> it = this.activeObjects.iterator();
        while (it.hasNext()) {
            OpenCLObjectRef next = it.next();
            LOG.log(LOG_LEVEL1, "deleting OpenCL object by: {0}", next.releaser);
            next.releaser.release();
            next.clear();
        }
        this.activeObjects.clear();
    }

    public void deleteUnusedObjects() {
        if (this.activeObjects.isEmpty()) {
            LOG.log(LOG_LEVEL2, "no active natives");
            return;
        }
        int i10 = 0;
        while (true) {
            OpenCLObjectRef openCLObjectRef = (OpenCLObjectRef) this.refQueue.poll();
            if (openCLObjectRef == null) {
                break;
            }
            deleteObject(openCLObjectRef);
            i10++;
        }
        if (i10 >= 1) {
            LOG.log(LOG_LEVEL2, "{0} native objects were removed from native", Integer.valueOf(i10));
        }
    }

    public void registerObject(OpenCLObject openCLObject) {
        this.activeObjects.add(new OpenCLObjectRef(this.refQueue, openCLObject));
        LOG.log(LOG_LEVEL1, "registered OpenCL object: {0}", openCLObject);
    }
}
