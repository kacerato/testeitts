package com.jme3.util.clone;

import com.jme3.util.SafeArrayList;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Stack;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Cloner {
    private static final Logger log = Logger.getLogger(Cloner.class.getName());
    private static final Map<Class, Method> methodCache = new ConcurrentHashMap();
    private final Map<Class, CloneFunction> functions;
    private final IdentityHashMap<Object, Object> index = new IdentityHashMap<>();

    public Cloner() {
        HashMap hashMap = new HashMap();
        this.functions = hashMap;
        ListCloneFunction listCloneFunction = new ListCloneFunction();
        hashMap.put(ArrayList.class, listCloneFunction);
        hashMap.put(LinkedList.class, listCloneFunction);
        hashMap.put(CopyOnWriteArrayList.class, listCloneFunction);
        hashMap.put(Vector.class, listCloneFunction);
        hashMap.put(Stack.class, listCloneFunction);
        hashMap.put(SafeArrayList.class, listCloneFunction);
    }

    public static <T> T deepClone(T t10) {
        return (T) new Cloner().clone(t10);
    }

    private <T> Class<T> objectClass(T t10) {
        return (Class<T>) t10.getClass();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T arrayClone(T t10) {
        Class objectClass = objectClass(t10);
        Class<?> componentType = objectClass.getComponentType();
        int length = Array.getLength(t10);
        Object newInstance = Array.newInstance(componentType, length);
        this.index.put(t10, newInstance);
        if (componentType.isPrimitive()) {
            System.arraycopy(t10, 0, newInstance, 0, length);
        } else {
            for (int i10 = 0; i10 < length; i10++) {
                Array.set(newInstance, i10, clone(Array.get(t10, i10)));
            }
        }
        return (T) objectClass.cast(newInstance);
    }

    public void clearIndex() {
        this.index.clear();
    }

    public <T> T clone(T t10) {
        return (T) clone(t10, true);
    }

    public <T> CloneFunction<T> getCloneFunction(Class<T> cls) {
        CloneFunction cloneFunction = this.functions.get(cls);
        if (cloneFunction == null) {
            Iterator<Map.Entry<Class, CloneFunction>> it = this.functions.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class, CloneFunction> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    cloneFunction = next.getValue();
                    break;
                }
            }
            if (cloneFunction != null) {
                this.functions.put(cls, cloneFunction);
            }
        }
        return cloneFunction;
    }

    public boolean isCloned(Object obj) {
        return this.index.containsKey(obj);
    }

    public <T> T javaClone(T t10) throws CloneNotSupportedException {
        if (t10 == null) {
            return null;
        }
        Map<Class, Method> map = methodCache;
        Method method = map.get(t10.getClass());
        if (method == null) {
            try {
                method = t10.getClass().getMethod("clone", null);
                map.put(t10.getClass(), method);
            } catch (NoSuchMethodException unused) {
                throw new CloneNotSupportedException("No public clone method found for:" + ((Object) t10.getClass()));
            }
        }
        try {
            return objectClass(t10).cast(method.invoke(t10, null));
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException("Error cloning object of type:" + ((Object) t10.getClass()), e10);
        }
    }

    public <T> void setCloneFunction(Class<T> cls, CloneFunction<T> cloneFunction) {
        if (cloneFunction == null) {
            this.functions.remove(cls);
        } else {
            this.functions.put(cls, cloneFunction);
        }
    }

    public <T> void setClonedValue(T t10, T t11) {
        this.index.put(t10, t11);
    }

    public <T> T clone(T t10, boolean z10) {
        String str;
        Object javaClone;
        if (t10 == null) {
            return null;
        }
        Logger logger = log;
        Level level = Level.FINER;
        if (logger.isLoggable(level)) {
            logger.finer("cloning:" + ((Object) t10.getClass()) + "@" + System.identityHashCode(t10));
        }
        Class<T> objectClass = objectClass(t10);
        Object obj = this.index.get(t10);
        if (obj == null && !this.index.containsKey(t10)) {
            CloneFunction<T> cloneFunction = getCloneFunction(objectClass);
            if (cloneFunction != null) {
                T cloneObject = cloneFunction.cloneObject(this, t10);
                this.index.put(t10, cloneObject);
                cloneFunction.cloneFields(this, cloneObject, t10);
                if (logger.isLoggable(level)) {
                    if (cloneObject == null) {
                        logger.finer("cloned:" + ((Object) t10.getClass()) + "@" + System.identityHashCode(t10) + " as transformed:null");
                    } else {
                        logger.finer("clone:" + ((Object) t10.getClass()) + "@" + System.identityHashCode(t10) + " as transformed:" + ((Object) cloneObject.getClass()) + "@" + System.identityHashCode(cloneObject));
                    }
                }
                return cloneObject;
            }
            if (t10.getClass().isArray()) {
                javaClone = arrayClone(t10);
            } else if (t10 instanceof JmeCloneable) {
                javaClone = ((JmeCloneable) t10).jmeClone();
                this.index.put(t10, javaClone);
                ((JmeCloneable) javaClone).cloneFields(this, t10);
            } else if (t10 instanceof Cloneable) {
                try {
                    javaClone = javaClone(t10);
                    this.index.put(t10, javaClone);
                } catch (CloneNotSupportedException e10) {
                    throw new IllegalArgumentException("Object is not cloneable, type:" + ((Object) objectClass), e10);
                }
            } else {
                throw new IllegalArgumentException("Object is not cloneable, type:" + ((Object) objectClass));
            }
            if (logger.isLoggable(level)) {
                logger.finer("cloned:" + ((Object) t10.getClass()) + "@" + System.identityHashCode(t10) + " as " + ((Object) javaClone.getClass()) + "@" + System.identityHashCode(javaClone));
            }
            return objectClass.cast(javaClone);
        }
        if (logger.isLoggable(level)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("cloned:");
            sb2.append((Object) t10.getClass());
            sb2.append("@");
            sb2.append(System.identityHashCode(t10));
            sb2.append(" as cached:");
            if (obj == null) {
                str = "null";
            } else {
                str = ((Object) obj.getClass()) + "@" + System.identityHashCode(obj);
            }
            sb2.append(str);
            logger.finer(sb2.toString());
        }
        return objectClass.cast(obj);
    }
}
