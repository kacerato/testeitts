package com.jme3.export;

import com.jme3.animation.Animation;
import com.jme3.effect.shapes.EmitterBoxShape;
import com.jme3.effect.shapes.EmitterMeshConvexHullShape;
import com.jme3.effect.shapes.EmitterMeshFaceShape;
import com.jme3.effect.shapes.EmitterMeshVertexShape;
import com.jme3.effect.shapes.EmitterPointShape;
import com.jme3.effect.shapes.EmitterSphereShape;
import com.jme3.material.MatParamTexture;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SavableClassUtil {
    private static final HashMap<String, String> CLASS_REMAPPINGS = new HashMap<>();

    static {
        addRemapping("com.jme3.effect.EmitterSphereShape", EmitterSphereShape.class);
        addRemapping("com.jme3.effect.EmitterBoxShape", EmitterBoxShape.class);
        addRemapping("com.jme3.effect.EmitterMeshConvexHullShape", EmitterMeshConvexHullShape.class);
        addRemapping("com.jme3.effect.EmitterMeshFaceShape", EmitterMeshFaceShape.class);
        addRemapping("com.jme3.effect.EmitterMeshVertexShape", EmitterMeshVertexShape.class);
        addRemapping("com.jme3.effect.EmitterPointShape", EmitterPointShape.class);
        addRemapping("com.jme3.material.Material$MatParamTexture", MatParamTexture.class);
        addRemapping("com.jme3.animation.BoneAnimation", Animation.class);
        addRemapping("com.jme3.animation.SpatialAnimation", Animation.class);
        addRemapping("com.jme3.scene.plugins.blender.objects.Properties", NullSavable.class);
    }

    private SavableClassUtil() {
    }

    private static void addRemapping(String str, Class<? extends Savable> cls) {
        CLASS_REMAPPINGS.put(str, cls.getName());
    }

    private static Constructor findNoArgConstructor(String str) throws ClassNotFoundException, InstantiationException {
        Class<?> cls = Class.forName(str);
        if (!isImplementingSavable(cls)) {
            throw new InstantiationException("Class " + str + " does not implement Savable.");
        }
        try {
            return cls.getDeclaredConstructor(null);
        } catch (NoSuchMethodException unused) {
            throw new InstantiationException("Loading requires a no-arg constructor, but class " + str + " lacks one.");
        }
    }

    public static Savable fromName(String str) throws ClassNotFoundException, IllegalAccessException, InstantiationException, InvocationTargetException {
        return fromName(str, SavableClassFilter.ACCEPT_ALL);
    }

    public static int getSavableVersion(Class<? extends Savable> cls) throws IOException {
        try {
            Field field = cls.getField("SAVABLE_VERSION");
            if (field.getDeclaringClass() == cls) {
                return field.getInt(null);
            }
        } catch (IllegalAccessException e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        } catch (IllegalArgumentException e11) {
            throw e11;
        } catch (NoSuchFieldException unused) {
        }
        return 0;
    }

    public static int[] getSavableVersions(Class<? extends Savable> cls) throws IOException {
        ArrayList arrayList = new ArrayList();
        do {
            arrayList.add(Integer.valueOf(getSavableVersion(cls)));
            cls = cls.getSuperclass();
            if (cls == null) {
                break;
            }
        } while (isImplementingSavable(cls));
        int[] iArr = new int[arrayList.size()];
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            iArr[i10] = ((Integer) arrayList.get(i10)).intValue();
        }
        return iArr;
    }

    public static int getSavedSavableVersion(Object obj, Class<? extends Savable> cls, int[] iArr, int i10) {
        Class<?> cls2 = obj.getClass();
        int i11 = 0;
        while (cls2 != cls) {
            cls2 = cls2.getSuperclass();
            if (cls2 == null || !isImplementingSavable(cls2)) {
                break;
            }
            i11++;
        }
        if (cls2 == null) {
            throw new IllegalArgumentException(obj.getClass().getName() + " does not extend " + cls.getName() + "!");
        }
        if (i11 < iArr.length) {
            return iArr[i11];
        }
        if (i10 <= 1) {
            return 0;
        }
        throw new IllegalArgumentException(obj.getClass().getName() + " cannot access version of " + cls.getName() + " because it doesn't implement Savable");
    }

    public static boolean isImplementingSavable(Class cls) {
        return Savable.class.isAssignableFrom(cls);
    }

    public static String remapClass(String str) {
        String str2 = CLASS_REMAPPINGS.get(str);
        return str2 == null ? str : str2;
    }

    public static Savable fromName(String str, SavableClassFilter savableClassFilter) throws ClassNotFoundException, IllegalAccessException, InstantiationException, InvocationTargetException {
        String remapClass = remapClass(str);
        if (savableClassFilter != null) {
            if (savableClassFilter.isAllowed(remapClass)) {
                Constructor findNoArgConstructor = findNoArgConstructor(remapClass);
                findNoArgConstructor.setAccessible(true);
                try {
                    return (Savable) findNoArgConstructor.newInstance(null);
                } catch (IllegalAccessException e10) {
                    Logger.getLogger(SavableClassUtil.class.getName()).log(Level.SEVERE, "{0} \nSome types need to have the BinaryImporter set up in a special way. Please double-check the setup.", e10.getMessage());
                    throw e10;
                } catch (InstantiationException e11) {
                    e = e11;
                    Logger.getLogger(SavableClassUtil.class.getName()).log(Level.SEVERE, "Could not access constructor of class ''{0}''! \nSome types need to have the BinaryImporter set up in a special way. Please double-check the setup.", remapClass);
                    throw e;
                } catch (InvocationTargetException e12) {
                    e = e12;
                    Logger.getLogger(SavableClassUtil.class.getName()).log(Level.SEVERE, "Could not access constructor of class ''{0}''! \nSome types need to have the BinaryImporter set up in a special way. Please double-check the setup.", remapClass);
                    throw e;
                }
            }
            throw new SecurityException("Savable class rejected by filter: " + remapClass);
        }
        throw new NullPointerException("classFilter");
    }

    @Deprecated
    public static Savable fromName(String str, List<ClassLoader> list) throws InstantiationException, InvocationTargetException, NoSuchMethodException, IllegalAccessException, ClassNotFoundException, IOException {
        if (list == null) {
            return fromName(str);
        }
        String remapClass = remapClass(str);
        synchronized (list) {
            try {
                Iterator<ClassLoader> it = list.iterator();
                while (it.hasNext()) {
                    try {
                        return (Savable) it.next().loadClass(remapClass).newInstance();
                    } catch (ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
                    }
                }
                return fromName(str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
