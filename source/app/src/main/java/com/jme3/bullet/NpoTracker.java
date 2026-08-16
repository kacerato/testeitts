package com.jme3.bullet;

import java.lang.constant.ConstantDescs;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.logging.Logger;

public class NpoTracker extends WeakReference<NativePhysicsObject> {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(NpoTracker.class.getName());

    private final long f81567id;
    private final Class<? extends NativePhysicsObject> referentClass;

    public NpoTracker(NativePhysicsObject nativePhysicsObject) {
        super(nativePhysicsObject, NativePhysicsObject.weakReferenceQueue);
        this.referentClass = nativePhysicsObject.getClass();
        this.f81567id = nativePhysicsObject.nativeId();
    }

    public void freeTrackedObject() {
        NativePhysicsObject.removeTracker(this.f81567id);
        Method[] listMethods = FreeingMethods.listMethods(this.referentClass);
        Object[] objArr = {Long.valueOf(this.f81567id)};
        for (Method method : listMethods) {
            try {
                method.invoke(null, objArr);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    public String toString() {
        return this.referentClass.getSimpleName() + ConstantDescs.DEFAULT_NAME + Long.toHexString(this.f81567id);
    }
}
