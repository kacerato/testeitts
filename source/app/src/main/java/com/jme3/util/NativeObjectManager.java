package com.jme3.util;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

public class NativeObjectManager {
    static final boolean $assertionsDisabled = false;
    private static final int MAX_REMOVES_PER_FRAME = 100;
    private static final Logger logger = Logger.getLogger(NativeObjectManager.class.getName());
    public static boolean UNSAFE = false;
    private ReferenceQueue<Object> refQueue = new ReferenceQueue<>();
    private final HashMap<Long, NativeObjectRef> refMap = new HashMap<>();
    private final ArrayDeque<NativeObject> userDeletionQueue = new ArrayDeque<>();

    public static class NativeObjectRef extends PhantomReference<Object> {
        static final boolean $assertionsDisabled = false;
        private final NativeObject objClone;
        private final WeakReference<NativeObject> realObj;

        public NativeObjectRef(ReferenceQueue<Object> referenceQueue, NativeObject nativeObject) {
            super(nativeObject.handleRef, referenceQueue);
            this.realObj = new WeakReference<>(nativeObject);
            this.objClone = nativeObject.createDestructableClone();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void deleteNativeObject(Object obj, NativeObject nativeObject, NativeObjectRef nativeObjectRef, boolean z10, boolean z11) {
        NativeObject nativeObject2 = nativeObjectRef != null ? (NativeObject) nativeObjectRef.realObj.get() : nativeObject;
        if (z10) {
            if (nativeObject.getId() <= 0) {
                logger.log(Level.WARNING, "Object already deleted: {0}", nativeObject.getClass().getSimpleName() + "/" + nativeObject.getId());
            } else {
                NativeObjectRef remove = this.refMap.remove(Long.valueOf(nativeObject.getUniqueId()));
                if (remove == null) {
                    throw new IllegalArgumentException("The " + ((Object) nativeObject) + " NativeObject is not registered in this NativeObjectManager");
                }
                remove.clear();
                int id2 = nativeObject.getId();
                nativeObject.deleteObject(obj);
                Logger logger2 = logger;
                Level level = Level.FINEST;
                if (logger2.isLoggable(level)) {
                    logger2.log(level, "Deleted: {0}", nativeObject.getClass().getSimpleName() + "/" + id2);
                }
                if (nativeObject2 != null) {
                    nativeObject2.resetObject();
                }
            }
        }
        if (z11 && UNSAFE && nativeObject2 != null) {
            nativeObject2.deleteNativeBuffersInternal();
        }
    }

    public void deleteAllObjects(Object obj) {
        deleteUnused(obj);
        Iterator it = new ArrayList(this.refMap.values()).iterator();
        while (it.hasNext()) {
            NativeObjectRef nativeObjectRef = (NativeObjectRef) it.next();
            deleteNativeObject(obj, nativeObjectRef.objClone, nativeObjectRef, true, false);
        }
    }

    public void deleteUnused(Object obj) {
        int i10 = 0;
        while (i10 < 100 && !this.userDeletionQueue.isEmpty()) {
            deleteNativeObject(obj, this.userDeletionQueue.pop(), null, true, true);
            i10++;
        }
        while (i10 < 100) {
            NativeObjectRef nativeObjectRef = (NativeObjectRef) this.refQueue.poll();
            if (nativeObjectRef == null) {
                break;
            }
            deleteNativeObject(obj, nativeObjectRef.objClone, nativeObjectRef, true, false);
            i10++;
        }
        if (i10 >= 1) {
            logger.log(Level.FINE, "NativeObjectManager: {0} native objects were removed from native", Integer.valueOf(i10));
        }
    }

    public void enqueueUnusedObject(NativeObject nativeObject) {
        this.userDeletionQueue.push(nativeObject);
    }

    public void registerObject(NativeObject nativeObject) {
        if (nativeObject.getId() <= 0) {
            throw new IllegalArgumentException("object id must be greater than zero");
        }
        this.refMap.put(Long.valueOf(nativeObject.getUniqueId()), new NativeObjectRef(this.refQueue, nativeObject));
        nativeObject.setNativeObjectManager(this);
        Logger logger2 = logger;
        Level level = Level.FINEST;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Registered: {0}", (Object[]) new String[]{nativeObject.toString()});
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void resetObjects() {
        Iterator<NativeObjectRef> it = this.refMap.values().iterator();
        while (it.hasNext()) {
            NativeObject nativeObject = (NativeObject) it.next().realObj.get();
            if (nativeObject != null) {
                nativeObject.resetObject();
                logger.log(Level.FINEST, "Reset: {0}", nativeObject);
            }
        }
        this.refMap.clear();
        this.refQueue = new ReferenceQueue<>();
    }
}
