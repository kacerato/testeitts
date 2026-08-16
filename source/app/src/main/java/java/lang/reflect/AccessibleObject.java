package java.lang.reflect;

import java.lang.annotation.Annotation;
import java.lang.invoke.MethodHandle;
import java.lang.ref.WeakReference;
import jdk.internal.access.SharedSecrets;
import jdk.internal.misc.VM;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.Reflection;
import jdk.internal.reflect.ReflectionFactory;
import org.eclipse.jdt.internal.core.JavadocConstants;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/AccessibleObject.class
 */
public class AccessibleObject implements AnnotatedElement {
    boolean override;
    static final ReflectionFactory reflectionFactory;
    volatile Object accessCheckCache;
    private static volatile boolean printStackWhenAccessFails;
    private static volatile boolean printStackPropertiesSet;

    static {
        SharedSecrets.setJavaLangReflectAccess(new ReflectAccess());
        reflectionFactory = ReflectionFactory.getReflectionFactory();
    }

    @CallerSensitive
    public static void setAccessible(AccessibleObject[] array, boolean flag) {
        if (flag) {
            Class<?> caller = Reflection.getCallerClass();
            array = (AccessibleObject[]) array.clone();
            for (AccessibleObject ao : array) {
                ao.checkCanSetAccessible(caller);
            }
        }
        for (AccessibleObject ao2 : array) {
            ao2.setAccessible0(flag);
        }
    }

    @CallerSensitive
    public void setAccessible(boolean flag) {
        setAccessible0(flag);
    }

    public boolean setAccessible0(boolean flag) {
        this.override = flag;
        return flag;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CallerSensitive
    public final boolean trySetAccessible() {
        if (this.override) {
            return true;
        }
        if (!Member.class.isInstance(this)) {
            return setAccessible0(true);
        }
        Class<?> declaringClass = ((Member) this).getDeclaringClass();
        if ((declaringClass != Class.class || !(this instanceof Constructor)) && checkCanSetAccessible(Reflection.getCallerClass(), declaringClass, false)) {
            return setAccessible0(true);
        }
        return false;
    }

    void checkCanSetAccessible(Class<?> caller) {
    }

    public final void checkCanSetAccessible(Class<?> caller, Class<?> declaringClass) {
        checkCanSetAccessible(caller, declaringClass, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean checkCanSetAccessible(Class<?> caller, Class<?> declaringClass, boolean throwExceptionIfDenied) {
        if (caller == MethodHandle.class) {
            throw new IllegalCallerException();
        }
        if (caller == null) {
            boolean canAccess = Reflection.verifyPublicMemberAccess(declaringClass, declaringClass.getModifiers());
            if (!canAccess && throwExceptionIfDenied) {
                throwInaccessibleObjectException(caller, declaringClass);
            }
            return canAccess;
        }
        Module callerModule = caller.getModule();
        Module declaringModule = declaringClass.getModule();
        if (callerModule == declaringModule || callerModule == Object.class.getModule() || !declaringModule.isNamed()) {
            return true;
        }
        String pn2 = declaringClass.getPackageName();
        int modifiers = ((Member) this).getModifiers();
        boolean isClassPublic = Modifier.isPublic(declaringClass.getModifiers());
        if (isClassPublic && declaringModule.isExported(pn2, callerModule)) {
            if (Modifier.isPublic(modifiers)) {
                return true;
            }
            if (Modifier.isProtected(modifiers) && Modifier.isStatic(modifiers) && isSubclassOf(caller, declaringClass)) {
                return true;
            }
        }
        if (declaringModule.isOpen(pn2, callerModule)) {
            return true;
        }
        if (throwExceptionIfDenied) {
            throwInaccessibleObjectException(caller, declaringClass);
            return false;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void throwInaccessibleObjectException(Class<?> caller, Class<?> declaringClass) {
        String msg;
        boolean isClassPublic = Modifier.isPublic(declaringClass.getModifiers());
        String pn2 = declaringClass.getPackageName();
        int modifiers = ((Member) this).getModifiers();
        String msg2 = "Unable to make ";
        if (this instanceof Field) {
            msg2 = msg2 + "field ";
        }
        String msg3 = ((msg2 + ((Object) this) + " accessible") + (caller == null ? " by JNI attached native thread with no caller frame: " : ": ")) + ((Object) declaringClass.getModule()) + " does not \"";
        if (isClassPublic && Modifier.isPublic(modifiers)) {
            msg = msg3 + "exports";
        } else {
            msg = msg3 + "opens";
        }
        String msg4 = msg + " " + pn2 + JavadocConstants.ANCHOR_PREFIX_END;
        if (caller != null) {
            msg4 = msg4 + " to " + ((Object) caller.getModule());
        }
        InaccessibleObjectException e10 = new InaccessibleObjectException(msg4);
        if (printStackTraceWhenAccessFails()) {
            e10.printStackTrace(System.err);
        }
        throw e10;
    }

    private boolean isSubclassOf(Class<?> queryClass, Class<?> ofClass) {
        while (queryClass != null) {
            if (queryClass == ofClass) {
                return true;
            }
            queryClass = queryClass.getSuperclass();
        }
        return false;
    }

    String toShortString() {
        return toString();
    }

    @Deprecated(since = "9")
    public boolean isAccessible() {
        return this.override;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CallerSensitive
    public final boolean canAccess(Object obj) {
        Class<?> targetClass;
        if (!Member.class.isInstance(this)) {
            return this.override;
        }
        Class<?> declaringClass = ((Member) this).getDeclaringClass();
        int modifiers = ((Member) this).getModifiers();
        if (!Modifier.isStatic(modifiers) && ((this instanceof Method) || (this instanceof Field))) {
            if (obj == null) {
                throw new IllegalArgumentException("null object for " + ((Object) this));
            }
            if (!declaringClass.isInstance(obj)) {
                throw new IllegalArgumentException("object is not an instance of " + declaringClass.getName());
            }
        } else if (obj != null) {
            throw new IllegalArgumentException("non-null object for " + ((Object) this));
        }
        if (this.override) {
            return true;
        }
        Class<?> caller = Reflection.getCallerClass();
        if (this instanceof Constructor) {
            targetClass = declaringClass;
        } else {
            targetClass = Modifier.isStatic(modifiers) ? null : obj.getClass();
        }
        return verifyAccess(caller, declaringClass, targetClass, modifiers);
    }

    @Deprecated(since = "17")
    public AccessibleObject() {
    }

    @Override
    public <T extends Annotation> T getAnnotation(Class<T> annotationClass) {
        throw new UnsupportedOperationException("All subclasses should override this method");
    }

    @Override
    public boolean isAnnotationPresent(Class<? extends Annotation> annotationClass) {
        return super.isAnnotationPresent(annotationClass);
    }

    @Override
    public <T extends Annotation> T[] getAnnotationsByType(Class<T> annotationClass) {
        throw new UnsupportedOperationException("All subclasses should override this method");
    }

    @Override
    public Annotation[] getAnnotations() {
        return getDeclaredAnnotations();
    }

    @Override
    public <T extends Annotation> T getDeclaredAnnotation(Class<T> cls) {
        return (T) getAnnotation(cls);
    }

    @Override
    public <T extends Annotation> T[] getDeclaredAnnotationsByType(Class<T> cls) {
        return (T[]) getAnnotationsByType(cls);
    }

    @Override
    public Annotation[] getDeclaredAnnotations() {
        throw new UnsupportedOperationException("All subclasses should override this method");
    }

    public static class Cache {
        final WeakReference<Class<?>> callerRef;
        final WeakReference<Class<?>> targetRef;

        Cache(Class<?> caller, Class<?> target) {
            this.callerRef = new WeakReference<>(caller);
            this.targetRef = new WeakReference<>(target);
        }

        boolean isCacheFor(Class<?> caller, Class<?> refc) {
            return this.callerRef.refersTo(caller) && this.targetRef.refersTo(refc);
        }

        static Object protectedMemberCallerCache(Class<?> caller, Class<?> refc) {
            return new Cache(caller, refc);
        }
    }

    private boolean isAccessChecked(Class<?> caller, Class<?> targetClass) {
        Object cache = this.accessCheckCache;
        if (cache instanceof Cache) {
            Cache c10 = (Cache) cache;
            return c10.isCacheFor(caller, targetClass);
        }
        return false;
    }

    private boolean isAccessChecked(Class<?> caller) {
        Object cache = this.accessCheckCache;
        if (cache instanceof WeakReference) {
            WeakReference<Class<?>> ref = (WeakReference) cache;
            return ref.refersTo(caller);
        }
        return false;
    }

    public final void checkAccess(Class<?> caller, Class<?> memberClass, Class<?> targetClass, int modifiers) throws IllegalAccessException {
        if (!verifyAccess(caller, memberClass, targetClass, modifiers)) {
            IllegalAccessException e10 = Reflection.newIllegalAccessException(caller, memberClass, targetClass, modifiers);
            if (printStackTraceWhenAccessFails()) {
                e10.printStackTrace(System.err);
            }
            throw e10;
        }
    }

    final boolean verifyAccess(Class<?> caller, Class<?> memberClass, Class<?> targetClass, int modifiers) {
        if (caller == memberClass) {
            return true;
        }
        if (targetClass != null && Modifier.isProtected(modifiers) && targetClass != memberClass) {
            if (isAccessChecked(caller, targetClass)) {
                return true;
            }
        } else if (isAccessChecked(caller)) {
            return true;
        }
        return slowVerifyAccess(caller, memberClass, targetClass, modifiers);
    }

    private boolean slowVerifyAccess(Class<?> caller, Class<?> memberClass, Class<?> targetClass, int modifiers) {
        Object weakReference;
        if (caller == null) {
            return Reflection.verifyPublicMemberAccess(memberClass, modifiers);
        }
        if (!Reflection.verifyMemberAccess(caller, memberClass, targetClass, modifiers)) {
            return false;
        }
        if (targetClass != null && Modifier.isProtected(modifiers) && targetClass != memberClass) {
            weakReference = Cache.protectedMemberCallerCache(caller, targetClass);
        } else {
            weakReference = new WeakReference(caller);
        }
        Object cache = weakReference;
        this.accessCheckCache = cache;
        return true;
    }

    private static boolean printStackTraceWhenAccessFails() {
        if (!printStackPropertiesSet && VM.initLevel() >= 1) {
            String s10 = System.getProperty("sun.reflect.debugModuleAccessChecks");
            if (s10 != null) {
                printStackWhenAccessFails = !s10.equalsIgnoreCase("false");
            }
            printStackPropertiesSet = true;
        }
        return printStackWhenAccessFails;
    }

    public AccessibleObject getRoot() {
        throw new InternalError();
    }
}
