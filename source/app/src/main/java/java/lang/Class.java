package java.lang;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.lang.ClassValue;
import java.lang.PublicMethods;
import java.lang.annotation.Annotation;
import java.lang.constant.ClassDesc;
import java.lang.constant.Constable;
import java.lang.constant.ConstantDescs;
import java.lang.invoke.TypeDescriptor;
import java.lang.ref.SoftReference;
import java.lang.reflect.AccessFlag;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.AnnotatedType;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Executable;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.RecordComponent;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.net.URL;
import java.security.AllPermission;
import java.security.Permissions;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.loader.BootLoader;
import jdk.internal.loader.BuiltinClassLoader;
import jdk.internal.misc.Unsafe;
import jdk.internal.module.Resources;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.CallerSensitiveAdapter;
import jdk.internal.reflect.ConstantPool;
import jdk.internal.reflect.Reflection;
import jdk.internal.reflect.ReflectionFactory;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;
import okhttp3.v;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.openjdk.tools.doclint.DocLint;
import sun.invoke.util.Wrapper;
import sun.reflect.annotation.AnnotationParser;
import sun.reflect.annotation.AnnotationSupport;
import sun.reflect.annotation.AnnotationType;
import sun.reflect.annotation.TypeAnnotationParser;
import sun.reflect.generics.factory.CoreReflectionFactory;
import sun.reflect.generics.factory.GenericsFactory;
import sun.reflect.generics.repository.ClassRepository;
import sun.reflect.generics.repository.ConstructorRepository;
import sun.reflect.generics.repository.MethodRepository;
import sun.reflect.generics.scope.ClassScope;
import w2.C15883c;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Class.class
 */
public final class Class<T> implements Serializable, GenericDeclaration, Type, AnnotatedElement, TypeDescriptor.OfField<Class<?>>, Constable {
    private static final int ANNOTATION = 8192;
    private static final int ENUM = 16384;
    private static final int SYNTHETIC = 4096;
    private volatile transient Constructor<T> cachedConstructor;
    private transient String name;

    @Stable
    private transient Module module;
    private final ClassLoader classLoader;
    private transient Object classData;
    private transient Object[] signers;
    private final transient char modifiers;
    private final transient boolean primitive;
    private transient String packageName;
    private final transient Class<?> componentType;
    private final transient ProtectionDomain protectionDomain;
    private volatile transient SoftReference<ReflectionData<T>> reflectionData;
    private volatile transient int classRedefinedCount;
    private volatile transient ClassRepository genericInfo;
    private static final Class<?>[] EMPTY_CLASS_ARRAY;
    private static final long serialVersionUID = 3206093459760846163L;
    private static final ObjectStreamField[] serialPersistentFields;
    private static ReflectionFactory reflectionFactory;
    private volatile transient T[] enumConstants;
    private volatile transient Map<String, T> enumConstantDirectory;
    private volatile transient AnnotationData annotationData;
    private volatile transient AnnotationType annotationType;
    transient ClassValue.ClassValueMap classValueMap;

    private static native void registerNatives();

    private static native Class<?> forName0(String str, boolean z10, ClassLoader classLoader, Class<?> cls) throws ClassNotFoundException;

    @IntrinsicCandidate
    public native boolean isInstance(Object obj);

    @IntrinsicCandidate
    public native boolean isAssignableFrom(Class<?> cls);

    private native String initClassName();

    @IntrinsicCandidate
    public native Class<? super T> getSuperclass();

    private native Class<?>[] getInterfaces0();

    private native Object[] getEnclosingMethod0();

    private native Class<?> getDeclaringClass0();

    private native String getSimpleBinaryName0();

    public static native <T> Class<T> getPrimitiveClass(String str);

    private native String getGenericSignature0();

    public native byte[] getRawAnnotations();

    public native byte[] getRawTypeAnnotations();

    public native ConstantPool getConstantPool();

    private native Field[] getDeclaredFields0(boolean z10);

    private native Method[] getDeclaredMethods0(boolean z10);

    private native Constructor<T>[] getDeclaredConstructors0(boolean z10);

    private native Class<?>[] getDeclaredClasses0();

    private native RecordComponent[] getRecordComponents0();

    private native boolean isRecord0();

    private static native boolean desiredAssertionStatus0(Class<?> cls);

    private native Class<?> getNestHost0();

    private native Class<?>[] getNestMembers0();

    @IntrinsicCandidate
    public native boolean isHidden();

    private native Class<?>[] getPermittedSubclasses0();

    private native int getClassFileVersion0();

    private native int getClassAccessFlagsRaw0();

    static {
        runtimeSetup();
        EMPTY_CLASS_ARRAY = new Class[0];
        serialPersistentFields = new ObjectStreamField[0];
    }

    private static void runtimeSetup() {
        registerNatives();
    }

    private Class(ClassLoader loader, Class<?> arrayComponentType, char mods, ProtectionDomain pd2, boolean isPrim) {
        this.classLoader = loader;
        this.componentType = arrayComponentType;
        this.modifiers = mods;
        this.protectionDomain = pd2;
        this.primitive = isPrim;
    }

    public String toString() {
        String kind = isInterface() ? "interface " : isPrimitive() ? "" : ExternalAnnotationProvider.CLASS_PREFIX;
        return kind.concat(getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toGenericString() {
        TypeVariable<?>[] typeparms;
        if (isPrimitive()) {
            return toString();
        }
        StringBuilder sb2 = new StringBuilder();
        Class<T> cls = this;
        int arrayDepth = 0;
        if (!isArray()) {
            int modifiers = getModifiers() & Modifier.classModifiers();
            if (modifiers != 0) {
                sb2.append(Modifier.toString(modifiers));
                sb2.append(C15883c.f126249O);
            }
            addSealingInfo(modifiers, sb2);
            if (isAnnotation()) {
                sb2.append('@');
            }
            if (isInterface()) {
                sb2.append("interface");
            } else if (isEnum()) {
                sb2.append("enum");
            } else if (isRecord()) {
                sb2.append("record");
            } else {
                sb2.append("class");
            }
            sb2.append(C15883c.f126249O);
            sb2.append(getName());
            typeparms = cls.getTypeParameters();
            if (typeparms.length > 0) {
                sb2.append((String) Arrays.stream(typeparms).map(Class::typeVarBounds).collect(Collectors.joining(DocLint.SEPARATOR, "<", ">")));
            }
            if (arrayDepth > 0) {
                sb2.append(v.f99450n.repeat(arrayDepth));
            }
            return sb2.toString();
        }
        do {
            arrayDepth++;
            cls = cls.getComponentType();
        } while (cls.isArray());
        sb2.append(cls.getName());
        typeparms = cls.getTypeParameters();
        if (typeparms.length > 0) {
        }
        if (arrayDepth > 0) {
        }
        return sb2.toString();
    }

    private void addSealingInfo(int modifiers, StringBuilder sb2) {
        if (Modifier.isFinal(modifiers)) {
            return;
        }
        if (isSealed()) {
            sb2.append("sealed ");
        } else if (hasSealedAncestor(this)) {
            sb2.append("non-sealed ");
        }
    }

    private boolean hasSealedAncestor(Class<?> clazz) {
        Class<?> superclass = clazz.getSuperclass();
        if (superclass != null && superclass.isSealed()) {
            return true;
        }
        for (Class<?> superinterface : clazz.getInterfaces()) {
            if (superinterface.isSealed()) {
                return true;
            }
        }
        return false;
    }

    static String typeVarBounds(TypeVariable<?> typeVar) {
        Type[] bounds = typeVar.getBounds();
        if (bounds.length == 1 && bounds[0].equals(Object.class)) {
            return typeVar.getName();
        }
        return typeVar.getName() + " extends " + ((String) Arrays.stream(bounds).map((v0) -> {
            return v0.getTypeName();
        }).collect(Collectors.joining(" & ")));
    }

    @CallerSensitive
    public static Class<?> forName(String className) throws ClassNotFoundException {
        Class<?> caller = Reflection.getCallerClass();
        return forName(className, caller);
    }

    @CallerSensitiveAdapter
    private static Class<?> forName(String className, Class<?> caller) throws ClassNotFoundException {
        ClassLoader loader = caller == null ? ClassLoader.getSystemClassLoader() : ClassLoader.getClassLoader(caller);
        return forName0(className, true, loader, caller);
    }

    public static Class<?> forName(String name, boolean initialize, ClassLoader loader) throws ClassNotFoundException {
        return forName0(name, initialize, loader, null);
    }

    public static Class<?> forName(Module module, String name) {
        Objects.requireNonNull(module);
        Objects.requireNonNull(name);
        ClassLoader cl2 = module.getClassLoader();
        if (cl2 != null) {
            return cl2.loadClass(module, name);
        }
        return BootLoader.loadClass(module, name);
    }

    public static Class<?> forPrimitiveName(String primitiveName) {
        boolean z10 = -1;
        switch (primitiveName.hashCode()) {
            case -1325958191:
                if (primitiveName.equals("double")) {
                    z10 = 6;
                    break;
                }
                break;
            case 104431:
                if (primitiveName.equals("int")) {
                    z10 = false;
                    break;
                }
                break;
            case 3039496:
                if (primitiveName.equals("byte")) {
                    z10 = 4;
                    break;
                }
                break;
            case 3052374:
                if (primitiveName.equals("char")) {
                    z10 = 3;
                    break;
                }
                break;
            case 3327612:
                if (primitiveName.equals("long")) {
                    z10 = true;
                    break;
                }
                break;
            case 3625364:
                if (primitiveName.equals("void")) {
                    z10 = 8;
                    break;
                }
                break;
            case 64711720:
                if (primitiveName.equals(TypedValues.Custom.S_BOOLEAN)) {
                    z10 = 7;
                    break;
                }
                break;
            case 97526364:
                if (primitiveName.equals(TypedValues.Custom.S_FLOAT)) {
                    z10 = 5;
                    break;
                }
                break;
            case 109413500:
                if (primitiveName.equals("short")) {
                    z10 = 2;
                    break;
                }
                break;
        }
        switch (z10) {
            case false:
                return Integer.TYPE;
            case true:
                return Long.TYPE;
            case true:
                return Short.TYPE;
            case true:
                return Character.TYPE;
            case true:
                return Byte.TYPE;
            case true:
                return Float.TYPE;
            case true:
                return Double.TYPE;
            case true:
                return Boolean.TYPE;
            case true:
                return Void.TYPE;
            default:
                return null;
        }
    }

    @CallerSensitive
    @Deprecated(since = "9")
    public T newInstance() throws InstantiationException, IllegalAccessException {
        Constructor<T> constructor = this.cachedConstructor;
        if (constructor == null) {
            if (this == Class.class) {
                throw new IllegalAccessException("Can not call newInstance() on the Class for java.lang.Class");
            }
            try {
                Constructor<T> copyConstructor = getReflectionFactory().copyConstructor(getConstructor0(new Class[0], 1));
                copyConstructor.setAccessible(true);
                constructor = copyConstructor;
                this.cachedConstructor = copyConstructor;
            } catch (NoSuchMethodException e10) {
                throw ((InstantiationException) new InstantiationException(getName()).initCause(e10));
            }
        }
        try {
            return (T) getReflectionFactory().newInstance(constructor, (Object[]) null, Reflection.getCallerClass());
        } catch (InvocationTargetException e11) {
            Unsafe.getUnsafe().throwException(e11.getTargetException());
            return null;
        }
    }

    public boolean isInterface() {
        return Modifier.isInterface(this.modifiers);
    }

    @Override
    public boolean isArray() {
        return this.componentType != null;
    }

    @Override
    public boolean isPrimitive() {
        return this.primitive;
    }

    public boolean isAnnotation() {
        return (getModifiers() & 8192) != 0;
    }

    public boolean isSynthetic() {
        return (getModifiers() & 4096) != 0;
    }

    public String getName() {
        String name = this.name;
        return name != null ? name : initClassName();
    }

    public ClassLoader getClassLoader() {
        return this.classLoader;
    }

    public ClassLoader getClassLoader0() {
        return this.classLoader;
    }

    public Module getModule() {
        return this.module;
    }

    public Object getClassData() {
        return this.classData;
    }

    @Override
    public TypeVariable<Class<T>>[] getTypeParameters() {
        ClassRepository info = getGenericInfo();
        if (info != null) {
            return info.getTypeParameters();
        }
        return new TypeVariable[0];
    }

    public Type getGenericSuperclass() {
        ClassRepository info = getGenericInfo();
        if (info == null) {
            return getSuperclass();
        }
        if (isInterface()) {
            return null;
        }
        return info.getSuperclass();
    }

    public Package getPackage() {
        if (isPrimitive() || isArray()) {
            return null;
        }
        ClassLoader cl2 = this.classLoader;
        return cl2 != null ? cl2.definePackage(this) : BootLoader.definePackage(this);
    }

    public String getPackageName() {
        String pn2 = this.packageName;
        if (pn2 == null) {
            Class<?> c10 = isArray() ? elementType() : this;
            if (c10.isPrimitive()) {
                pn2 = "java.lang";
            } else {
                String cn2 = c10.getName();
                int dot = cn2.lastIndexOf(46);
                pn2 = dot != -1 ? cn2.substring(0, dot).intern() : "";
            }
            this.packageName = pn2;
        }
        return pn2;
    }

    public Class<?>[] getInterfaces() {
        return getInterfaces(true);
    }

    private Class<?>[] getInterfaces(boolean cloneArray) {
        ReflectionData<T> rd2 = reflectionData();
        Class<?>[] interfaces = rd2.interfaces;
        if (interfaces == null) {
            interfaces = getInterfaces0();
            rd2.interfaces = interfaces;
        }
        return cloneArray ? (Class[]) interfaces.clone() : interfaces;
    }

    public Type[] getGenericInterfaces() {
        ClassRepository info = getGenericInfo();
        return info == null ? getInterfaces() : info.getSuperInterfaces();
    }

    public Class<?> getComponentType() {
        return this.componentType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Class<?> elementType() {
        if (!isArray()) {
            return null;
        }
        Class cls = this;
        while (true) {
            Class cls2 = cls;
            if (cls2.isArray()) {
                cls = cls2.getComponentType();
            } else {
                return cls2;
            }
        }
    }

    public int getModifiers() {
        return this.modifiers;
    }

    public Set<AccessFlag> accessFlags() {
        AccessFlag.Location location;
        if (isMemberClass() || isLocalClass() || isAnonymousClass() || isArray()) {
            location = AccessFlag.Location.INNER_CLASS;
        } else {
            location = AccessFlag.Location.CLASS;
        }
        AccessFlag.Location location2 = location;
        return getReflectionFactory().parseAccessFlags(location2 == AccessFlag.Location.CLASS ? getClassAccessFlagsRaw() : getModifiers(), location2, this);
    }

    public Object[] getSigners() {
        Object[] signers = this.signers;
        if (signers == null) {
            return null;
        }
        return (Object[]) signers.clone();
    }

    public void setSigners(Object[] signers) {
        if (!isPrimitive() && !isArray()) {
            this.signers = signers;
        }
    }

    public Method getEnclosingMethod() {
        EnclosingMethodInfo enclosingInfo = getEnclosingMethodInfo();
        if (enclosingInfo == null || !enclosingInfo.isMethod()) {
            return null;
        }
        MethodRepository typeInfo = MethodRepository.make(enclosingInfo.getDescriptor(), getFactory());
        Class<?> returnType = toClass(typeInfo.getReturnType());
        Type[] parameterTypes = typeInfo.getParameterTypes();
        Class<?>[] parameterClasses = new Class[parameterTypes.length];
        for (int i10 = 0; i10 < parameterClasses.length; i10++) {
            parameterClasses[i10] = toClass(parameterTypes[i10]);
        }
        Class<?> enclosingCandidate = enclosingInfo.getEnclosingClass();
        Method[] candidates = enclosingCandidate.privateGetDeclaredMethods(false);
        ReflectionFactory fact = getReflectionFactory();
        for (Method m10 : candidates) {
            if (m10.getName().equals(enclosingInfo.getName()) && arrayContentsEq(parameterClasses, fact.getExecutableSharedParameterTypes(m10)) && m10.getReturnType().equals(returnType)) {
                return fact.copyMethod(m10);
            }
        }
        throw new InternalError("Enclosing method not found");
    }

    private EnclosingMethodInfo getEnclosingMethodInfo() {
        Object[] enclosingInfo = getEnclosingMethod0();
        if (enclosingInfo == null) {
            return null;
        }
        return new EnclosingMethodInfo(enclosingInfo);
    }

    public static final class EnclosingMethodInfo {
        private final Class<?> enclosingClass;
        private final String name;
        private final String descriptor;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !Class.class.desiredAssertionStatus();
        }

        static void validate(Object[] enclosingInfo) {
            if (enclosingInfo.length != 3) {
                throw new InternalError("Malformed enclosing method information");
            }
            try {
                Class<?> enclosingClass = (Class) enclosingInfo[0];
                if (!$assertionsDisabled && enclosingClass == null) {
                    throw new AssertionError();
                }
                String name = (String) enclosingInfo[1];
                String descriptor = (String) enclosingInfo[2];
                if (!$assertionsDisabled && ((name == null || descriptor == null) && name != descriptor)) {
                    throw new AssertionError();
                }
            } catch (ClassCastException cce) {
                throw new InternalError("Invalid type in enclosing method information", cce);
            }
        }

        EnclosingMethodInfo(Object[] enclosingInfo) {
            validate(enclosingInfo);
            this.enclosingClass = (Class) enclosingInfo[0];
            this.name = (String) enclosingInfo[1];
            this.descriptor = (String) enclosingInfo[2];
        }

        boolean isPartial() {
            return this.enclosingClass == null || this.name == null || this.descriptor == null;
        }

        boolean isConstructor() {
            return !isPartial() && ConstantDescs.INIT_NAME.equals(this.name);
        }

        boolean isMethod() {
            return (isPartial() || isConstructor() || ConstantDescs.CLASS_INIT_NAME.equals(this.name)) ? false : true;
        }

        Class<?> getEnclosingClass() {
            return this.enclosingClass;
        }

        String getName() {
            return this.name;
        }

        String getDescriptor() {
            return this.descriptor;
        }
    }

    private static Class<?> toClass(Type o10) {
        if (o10 instanceof GenericArrayType) {
            GenericArrayType gat = (GenericArrayType) o10;
            return toClass(gat.getGenericComponentType()).arrayType();
        }
        return (Class) o10;
    }

    public Constructor<?> getEnclosingConstructor() {
        EnclosingMethodInfo enclosingInfo = getEnclosingMethodInfo();
        if (enclosingInfo == null || !enclosingInfo.isConstructor()) {
            return null;
        }
        ConstructorRepository typeInfo = ConstructorRepository.make(enclosingInfo.getDescriptor(), getFactory());
        Type[] parameterTypes = typeInfo.getParameterTypes();
        Class<?>[] parameterClasses = new Class[parameterTypes.length];
        for (int i10 = 0; i10 < parameterClasses.length; i10++) {
            parameterClasses[i10] = toClass(parameterTypes[i10]);
        }
        Class<?> enclosingCandidate = enclosingInfo.getEnclosingClass();
        Constructor<?>[] candidates = enclosingCandidate.privateGetDeclaredConstructors(false);
        ReflectionFactory fact = getReflectionFactory();
        for (Constructor<?> c10 : candidates) {
            if (arrayContentsEq(parameterClasses, fact.getExecutableSharedParameterTypes(c10))) {
                return fact.copyConstructor(c10);
            }
        }
        throw new InternalError("Enclosing constructor not found");
    }

    public Class<?> getDeclaringClass() {
        return getDeclaringClass0();
    }

    public Class<?> getEnclosingClass() {
        Class<?> enclosingCandidate;
        EnclosingMethodInfo enclosingInfo = getEnclosingMethodInfo();
        if (enclosingInfo == null) {
            enclosingCandidate = getDeclaringClass0();
        } else {
            Class<?> enclosingClass = enclosingInfo.getEnclosingClass();
            if (enclosingClass == this || enclosingClass == null) {
                throw new InternalError("Malformed enclosing method information");
            }
            enclosingCandidate = enclosingClass;
        }
        return enclosingCandidate;
    }

    public String getSimpleName() {
        ReflectionData<T> rd2 = reflectionData();
        String simpleName = rd2.simpleName;
        if (simpleName == null) {
            String simpleName0 = getSimpleName0();
            simpleName = simpleName0;
            rd2.simpleName = simpleName0;
        }
        return simpleName;
    }

    private String getSimpleName0() {
        if (isArray()) {
            return getComponentType().getSimpleName().concat(v.f99450n);
        }
        String simpleName = getSimpleBinaryName();
        if (simpleName == null) {
            String simpleName2 = getName();
            simpleName = simpleName2.substring(simpleName2.lastIndexOf(46) + 1);
        }
        return simpleName;
    }

    @Override
    public String getTypeName() {
        if (isArray()) {
            Class<T> cls = this;
            int dimensions = 0;
            do {
                try {
                    dimensions++;
                    cls = cls.getComponentType();
                } catch (Throwable th2) {
                }
            } while (cls.isArray());
            return cls.getName().concat(v.f99450n.repeat(dimensions));
        }
        return getName();
    }

    public String getCanonicalName() {
        ReflectionData<T> rd2 = reflectionData();
        String canonicalName = rd2.canonicalName;
        if (canonicalName == null) {
            String canonicalName0 = getCanonicalName0();
            canonicalName = canonicalName0;
            rd2.canonicalName = canonicalName0;
        }
        if (canonicalName == ReflectionData.NULL_SENTINEL) {
            return null;
        }
        return canonicalName;
    }

    private String getCanonicalName0() {
        if (isArray()) {
            String canonicalName = getComponentType().getCanonicalName();
            if (canonicalName != null) {
                return canonicalName.concat(v.f99450n);
            }
            return ReflectionData.NULL_SENTINEL;
        }
        if (isHidden() || isLocalOrAnonymousClass()) {
            return ReflectionData.NULL_SENTINEL;
        }
        Class<?> enclosingClass = getEnclosingClass();
        if (enclosingClass == null) {
            return getName();
        }
        String enclosingName = enclosingClass.getCanonicalName();
        if (enclosingName == null) {
            return ReflectionData.NULL_SENTINEL;
        }
        String simpleName = getSimpleName();
        return new StringBuilder(enclosingName.length() + simpleName.length() + 1).append(enclosingName).append('.').append(simpleName).toString();
    }

    public boolean isAnonymousClass() {
        return !isArray() && isLocalOrAnonymousClass() && getSimpleBinaryName0() == null;
    }

    public boolean isLocalClass() {
        return isLocalOrAnonymousClass() && (isArray() || getSimpleBinaryName0() != null);
    }

    public boolean isMemberClass() {
        return (isLocalOrAnonymousClass() || getDeclaringClass0() == null) ? false : true;
    }

    private String getSimpleBinaryName() {
        if (isTopLevelClass()) {
            return null;
        }
        String name = getSimpleBinaryName0();
        if (name == null) {
            return "";
        }
        return name;
    }

    private boolean isTopLevelClass() {
        return !isLocalOrAnonymousClass() && getDeclaringClass0() == null;
    }

    private boolean isLocalOrAnonymousClass() {
        return hasEnclosingMethodInfo();
    }

    private boolean hasEnclosingMethodInfo() {
        Object[] enclosingInfo = getEnclosingMethod0();
        if (enclosingInfo != null) {
            EnclosingMethodInfo.validate(enclosingInfo);
            return true;
        }
        return false;
    }

    public Class<?>[] getClasses() {
        List<Class<?>> list = new ArrayList<>();
        Class<T> cls = this;
        while (true) {
            Class<T> cls2 = cls;
            if (cls2 != null) {
                for (Class<?> m10 : cls2.getDeclaredClasses()) {
                    if (Modifier.isPublic(m10.getModifiers())) {
                        list.add(m10);
                    }
                }
                cls = cls2.getSuperclass();
            } else {
                return (Class[]) list.toArray(new Class[0]);
            }
        }
    }

    public Field[] getFields() {
        return copyFields(privateGetPublicFields());
    }

    public Method[] getMethods() {
        return copyMethods(privateGetPublicMethods());
    }

    public Constructor<?>[] getConstructors() {
        return copyConstructors(privateGetDeclaredConstructors(true));
    }

    public Field getField(String name) throws NoSuchFieldException {
        Objects.requireNonNull(name);
        Field field = getField0(name);
        if (field == null) {
            throw new NoSuchFieldException(name);
        }
        return getReflectionFactory().copyField(field);
    }

    public Method getMethod(String name, Class<?>... parameterTypes) throws NoSuchMethodException {
        Objects.requireNonNull(name);
        Method method = getMethod0(name, parameterTypes);
        if (method == null) {
            throw new NoSuchMethodException(methodToString(name, parameterTypes));
        }
        return getReflectionFactory().copyMethod(method);
    }

    public Constructor<T> getConstructor(Class<?>... parameterTypes) throws NoSuchMethodException {
        return getReflectionFactory().copyConstructor(getConstructor0(parameterTypes, 0));
    }

    public Class<?>[] getDeclaredClasses() {
        return getDeclaredClasses0();
    }

    public Field[] getDeclaredFields() {
        return copyFields(privateGetDeclaredFields(false));
    }

    public RecordComponent[] getRecordComponents() {
        if (!isRecord()) {
            return null;
        }
        return getRecordComponents0();
    }

    public Method[] getDeclaredMethods() {
        return copyMethods(privateGetDeclaredMethods(false));
    }

    public Constructor<?>[] getDeclaredConstructors() {
        return copyConstructors(privateGetDeclaredConstructors(false));
    }

    public Field getDeclaredField(String name) throws NoSuchFieldException {
        Objects.requireNonNull(name);
        Field field = searchFields(privateGetDeclaredFields(false), name);
        if (field == null) {
            throw new NoSuchFieldException(name);
        }
        return getReflectionFactory().copyField(field);
    }

    public Method getDeclaredMethod(String name, Class<?>... parameterTypes) throws NoSuchMethodException {
        Objects.requireNonNull(name);
        Method method = searchMethods(privateGetDeclaredMethods(false), name, parameterTypes);
        if (method == null) {
            throw new NoSuchMethodException(methodToString(name, parameterTypes));
        }
        return getReflectionFactory().copyMethod(method);
    }

    public List<Method> getDeclaredPublicMethods(String name, Class<?>... parameterTypes) {
        Method[] methods = privateGetDeclaredMethods(true);
        ReflectionFactory factory = getReflectionFactory();
        List<Method> result = new ArrayList<>();
        for (Method method : methods) {
            if (method.getName().equals(name) && Arrays.equals(factory.getExecutableSharedParameterTypes(method), parameterTypes)) {
                result.add(factory.copyMethod(method));
            }
        }
        return result;
    }

    public Method findMethod(boolean publicOnly, String name, Class<?>... parameterTypes) {
        PublicMethods.MethodList res = getMethodsRecursive(name, parameterTypes, true, publicOnly);
        if (res == null) {
            return null;
        }
        return getReflectionFactory().copyMethod(res.getMostSpecific());
    }

    public Constructor<T> getDeclaredConstructor(Class<?>... parameterTypes) throws NoSuchMethodException {
        return getReflectionFactory().copyConstructor(getConstructor0(parameterTypes, 1));
    }

    @CallerSensitive
    public InputStream getResourceAsStream(String name) {
        String name2 = resolveName(name);
        Module thisModule = getModule();
        if (thisModule.isNamed()) {
            if (Resources.canEncapsulate(name2) && !isOpenToCaller(name2, Reflection.getCallerClass())) {
                return null;
            }
            String mn2 = thisModule.getName();
            BuiltinClassLoader builtinClassLoader = this.classLoader;
            try {
                if (builtinClassLoader == null) {
                    return BootLoader.findResourceAsStream(mn2, name2);
                }
                if (builtinClassLoader instanceof BuiltinClassLoader) {
                    BuiltinClassLoader bcl = builtinClassLoader;
                    return bcl.findResourceAsStream(mn2, name2);
                }
                URL url = builtinClassLoader.findResource(mn2, name2);
                if (url != null) {
                    return url.openStream();
                }
                return null;
            } catch (IOException | SecurityException e10) {
                return null;
            }
        }
        ClassLoader cl2 = this.classLoader;
        if (cl2 == null) {
            return ClassLoader.getSystemResourceAsStream(name2);
        }
        return cl2.getResourceAsStream(name2);
    }

    @CallerSensitive
    public URL getResource(String name) {
        String name2 = resolveName(name);
        Module thisModule = getModule();
        if (thisModule.isNamed()) {
            if (Resources.canEncapsulate(name2) && !isOpenToCaller(name2, Reflection.getCallerClass())) {
                return null;
            }
            String mn2 = thisModule.getName();
            ClassLoader cl2 = this.classLoader;
            try {
                if (cl2 == null) {
                    return BootLoader.findResource(mn2, name2);
                }
                return cl2.findResource(mn2, name2);
            } catch (IOException e10) {
                return null;
            }
        }
        ClassLoader cl3 = this.classLoader;
        if (cl3 == null) {
            return ClassLoader.getSystemResource(name2);
        }
        return cl3.getResource(name2);
    }

    private boolean isOpenToCaller(String name, Class<?> caller) {
        Module thisModule = getModule();
        Module callerModule = caller != null ? caller.getModule() : null;
        if (callerModule != thisModule) {
            String pn2 = Resources.toPackageName(name);
            if (thisModule.getDescriptor().packages().contains(pn2)) {
                if (callerModule == null) {
                    return thisModule.isOpen(pn2);
                }
                if (!thisModule.isOpen(pn2, callerModule)) {
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public static class Holder {
        private static final ProtectionDomain allPermDomain;

        private Holder() {
        }

        static {
            Permissions perms = new Permissions();
            perms.add(new AllPermission());
            allPermDomain = new ProtectionDomain(null, perms);
        }
    }

    public ProtectionDomain getProtectionDomain() {
        if (this.protectionDomain == null) {
            return Holder.allPermDomain;
        }
        return this.protectionDomain;
    }

    private String resolveName(String name) {
        if (!name.startsWith("/")) {
            String baseName = getPackageName();
            if (!baseName.isEmpty()) {
                int len = baseName.length() + 1 + name.length();
                StringBuilder sb2 = new StringBuilder(len);
                name = sb2.append(baseName.replace('.', '/')).append('/').append(name).toString();
            }
        } else {
            name = name.substring(1);
        }
        return name;
    }

    public static class Atomic {
        private static final Unsafe unsafe = Unsafe.getUnsafe();
        private static final long reflectionDataOffset = unsafe.objectFieldOffset(Class.class, "reflectionData");
        private static final long annotationTypeOffset = unsafe.objectFieldOffset(Class.class, "annotationType");
        private static final long annotationDataOffset = unsafe.objectFieldOffset(Class.class, "annotationData");

        private Atomic() {
        }

        static <T> boolean casReflectionData(Class<?> clazz, SoftReference<ReflectionData<T>> oldData, SoftReference<ReflectionData<T>> newData) {
            return unsafe.compareAndSetReference(clazz, reflectionDataOffset, oldData, newData);
        }

        static boolean casAnnotationType(Class<?> clazz, AnnotationType oldType, AnnotationType newType) {
            return unsafe.compareAndSetReference(clazz, annotationTypeOffset, oldType, newType);
        }

        static boolean casAnnotationData(Class<?> clazz, AnnotationData oldData, AnnotationData newData) {
            return unsafe.compareAndSetReference(clazz, annotationDataOffset, oldData, newData);
        }
    }

    public static class ReflectionData<T> {
        volatile Field[] declaredFields;
        volatile Field[] publicFields;
        volatile Method[] declaredMethods;
        volatile Method[] publicMethods;
        volatile Constructor<T>[] declaredConstructors;
        volatile Constructor<T>[] publicConstructors;
        volatile Field[] declaredPublicFields;
        volatile Method[] declaredPublicMethods;
        volatile Class<?>[] interfaces;
        String simpleName;
        String canonicalName;
        static final String NULL_SENTINEL = new String();
        final int redefinedCount;

        ReflectionData(int redefinedCount) {
            this.redefinedCount = redefinedCount;
        }
    }

    private ReflectionData<T> reflectionData() {
        ReflectionData<T> rd2;
        SoftReference<ReflectionData<T>> reflectionData = this.reflectionData;
        int classRedefinedCount = this.classRedefinedCount;
        if (reflectionData != null && (rd2 = reflectionData.get()) != null && rd2.redefinedCount == classRedefinedCount) {
            return rd2;
        }
        return newReflectionData(reflectionData, classRedefinedCount);
    }

    private ReflectionData<T> newReflectionData(SoftReference<ReflectionData<T>> oldReflectionData, int classRedefinedCount) {
        ReflectionData<T> rd2;
        while (true) {
            ReflectionData<T> rd3 = new ReflectionData<>(classRedefinedCount);
            if (Atomic.casReflectionData(this, oldReflectionData, new SoftReference(rd3))) {
                return rd3;
            }
            oldReflectionData = this.reflectionData;
            classRedefinedCount = this.classRedefinedCount;
            if (oldReflectionData != null && (rd2 = oldReflectionData.get()) != null && rd2.redefinedCount == classRedefinedCount) {
                return rd2;
            }
        }
    }

    private GenericsFactory getFactory() {
        return CoreReflectionFactory.make(this, ClassScope.make(this));
    }

    private ClassRepository getGenericInfo() {
        ClassRepository genericInfo = this.genericInfo;
        if (genericInfo == null) {
            String signature = getGenericSignature0();
            if (signature == null) {
                genericInfo = ClassRepository.NONE;
            } else {
                genericInfo = ClassRepository.make(signature, getFactory());
            }
            this.genericInfo = genericInfo;
        }
        if (genericInfo != ClassRepository.NONE) {
            return genericInfo;
        }
        return null;
    }

    public static byte[] getExecutableTypeAnnotationBytes(Executable ex) {
        return getReflectionFactory().getExecutableTypeAnnotationBytes(ex);
    }

    private Field[] privateGetDeclaredFields(boolean publicOnly) {
        ReflectionData<T> rd2 = reflectionData();
        Field[] res = publicOnly ? rd2.declaredPublicFields : rd2.declaredFields;
        if (res != null) {
            return res;
        }
        Field[] res2 = Reflection.filterFields(this, getDeclaredFields0(publicOnly));
        if (publicOnly) {
            rd2.declaredPublicFields = res2;
        } else {
            rd2.declaredFields = res2;
        }
        return res2;
    }

    private Field[] privateGetPublicFields() {
        ReflectionData<T> rd2 = reflectionData();
        Field[] res = rd2.publicFields;
        if (res != null) {
            return res;
        }
        LinkedHashSet<Field> fields = new LinkedHashSet<>();
        addAll(fields, privateGetDeclaredFields(true));
        for (Class<?> si2 : getInterfaces(false)) {
            addAll(fields, si2.privateGetPublicFields());
        }
        Class<?> sc2 = getSuperclass();
        if (sc2 != null) {
            addAll(fields, sc2.privateGetPublicFields());
        }
        Field[] res2 = (Field[]) fields.toArray(new Field[0]);
        rd2.publicFields = res2;
        return res2;
    }

    private static void addAll(Collection<Field> c10, Field[] o10) {
        for (Field f10 : o10) {
            c10.add(f10);
        }
    }

    private Constructor<T>[] privateGetDeclaredConstructors(boolean publicOnly) {
        Constructor<T>[] res;
        ReflectionData<T> rd2 = reflectionData();
        Constructor<T>[] res2 = publicOnly ? rd2.publicConstructors : rd2.declaredConstructors;
        if (res2 != null) {
            return res2;
        }
        if (isInterface()) {
            Constructor<T>[] temporaryRes = new Constructor[0];
            res = temporaryRes;
        } else {
            res = getDeclaredConstructors0(publicOnly);
        }
        if (publicOnly) {
            rd2.publicConstructors = res;
        } else {
            rd2.declaredConstructors = res;
        }
        return res;
    }

    private Method[] privateGetDeclaredMethods(boolean publicOnly) {
        ReflectionData<T> rd2 = reflectionData();
        Method[] res = publicOnly ? rd2.declaredPublicMethods : rd2.declaredMethods;
        if (res != null) {
            return res;
        }
        Method[] res2 = Reflection.filterMethods(this, getDeclaredMethods0(publicOnly));
        if (publicOnly) {
            rd2.declaredPublicMethods = res2;
        } else {
            rd2.declaredMethods = res2;
        }
        return res2;
    }

    private Method[] privateGetPublicMethods() {
        ReflectionData<T> rd2 = reflectionData();
        Method[] res = rd2.publicMethods;
        if (res != null) {
            return res;
        }
        PublicMethods pms = new PublicMethods();
        for (Method method : privateGetDeclaredMethods(true)) {
            pms.merge(method);
        }
        Class<?> sc2 = getSuperclass();
        if (sc2 != null) {
            for (Method method2 : sc2.privateGetPublicMethods()) {
                pms.merge(method2);
            }
        }
        for (Class<?> intf : getInterfaces(false)) {
            for (Method m10 : intf.privateGetPublicMethods()) {
                if (!Modifier.isStatic(m10.getModifiers())) {
                    pms.merge(m10);
                }
            }
        }
        Method[] res2 = pms.toArray();
        rd2.publicMethods = res2;
        return res2;
    }

    private static Field searchFields(Field[] fields, String name) {
        for (Field field : fields) {
            if (field.getName().equals(name)) {
                return field;
            }
        }
        return null;
    }

    private Field getField0(String name) {
        Class<?> c10;
        Field res;
        Field res2 = searchFields(privateGetDeclaredFields(true), name);
        if (res2 != null) {
            return res2;
        }
        Class<?>[] interfaces = getInterfaces(false);
        for (Class<?> cls : interfaces) {
            Field res3 = cls.getField0(name);
            if (res3 != null) {
                return res3;
            }
        }
        if (!isInterface() && (c10 = getSuperclass()) != null && (res = c10.getField0(name)) != null) {
            return res;
        }
        return null;
    }

    private static Method searchMethods(Method[] methods, String name, Class<?>[] parameterTypes) {
        ReflectionFactory fact = getReflectionFactory();
        Method res = null;
        for (Method m10 : methods) {
            if (m10.getName().equals(name) && arrayContentsEq(parameterTypes, fact.getExecutableSharedParameterTypes(m10)) && (res == null || (res.getReturnType() != m10.getReturnType() && res.getReturnType().isAssignableFrom(m10.getReturnType())))) {
                res = m10;
            }
        }
        return res;
    }

    private Method getMethod0(String name, Class<?>[] parameterTypes) {
        PublicMethods.MethodList res = getMethodsRecursive(name, parameterTypes == null ? EMPTY_CLASS_ARRAY : parameterTypes, true, true);
        if (res == null) {
            return null;
        }
        return res.getMostSpecific();
    }

    private PublicMethods.MethodList getMethodsRecursive(String name, Class<?>[] parameterTypes, boolean includeStatic, boolean publicOnly) {
        Method[] methods = privateGetDeclaredMethods(publicOnly);
        PublicMethods.MethodList res = PublicMethods.MethodList.filter(methods, name, parameterTypes, includeStatic);
        if (res != null) {
            return res;
        }
        Class<?> sc2 = getSuperclass();
        if (sc2 != null) {
            res = sc2.getMethodsRecursive(name, parameterTypes, includeStatic, publicOnly);
        }
        for (Class<?> intf : getInterfaces(false)) {
            res = PublicMethods.MethodList.merge(res, intf.getMethodsRecursive(name, parameterTypes, false, publicOnly));
        }
        return res;
    }

    private Constructor<T> getConstructor0(Class<?>[] parameterTypes, int which) throws NoSuchMethodException {
        ReflectionFactory fact = getReflectionFactory();
        Constructor<T>[] constructors = privateGetDeclaredConstructors(which == 0);
        for (Constructor<T> constructor : constructors) {
            if (arrayContentsEq(parameterTypes, fact.getExecutableSharedParameterTypes(constructor))) {
                return constructor;
            }
        }
        throw new NoSuchMethodException(methodToString(ConstantDescs.INIT_NAME, parameterTypes));
    }

    private static boolean arrayContentsEq(Object[] a12, Object[] a22) {
        if (a12 == null) {
            return a22 == null || a22.length == 0;
        }
        if (a22 == null) {
            return a12.length == 0;
        }
        if (a12.length != a22.length) {
            return false;
        }
        for (int i10 = 0; i10 < a12.length; i10++) {
            if (a12[i10] != a22[i10]) {
                return false;
            }
        }
        return true;
    }

    private static Field[] copyFields(Field[] arg) {
        Field[] out = new Field[arg.length];
        ReflectionFactory fact = getReflectionFactory();
        for (int i10 = 0; i10 < arg.length; i10++) {
            out[i10] = fact.copyField(arg[i10]);
        }
        return out;
    }

    private static Method[] copyMethods(Method[] arg) {
        Method[] out = new Method[arg.length];
        ReflectionFactory fact = getReflectionFactory();
        for (int i10 = 0; i10 < arg.length; i10++) {
            out[i10] = fact.copyMethod(arg[i10]);
        }
        return out;
    }

    private static <U> Constructor<U>[] copyConstructors(Constructor<U>[] arg) {
        Constructor<U>[] out = (Constructor[]) arg.clone();
        ReflectionFactory fact = getReflectionFactory();
        for (int i10 = 0; i10 < out.length; i10++) {
            out[i10] = fact.copyConstructor(out[i10]);
        }
        return out;
    }

    private String methodToString(String name, Class<?>[] argTypes) {
        String str;
        StringBuilder append = new StringBuilder().append(getName()).append('.').append(name);
        if (argTypes == null || argTypes.length == 0) {
            str = "()";
        } else {
            str = (String) Arrays.stream(argTypes).map(c10 -> {
                return c10 == null ? "null" : c10.getName();
            }).collect(Collectors.joining(DocLint.SEPARATOR, "(", ")"));
        }
        return append.append(str).toString();
    }

    public boolean desiredAssertionStatus() {
        ClassLoader loader = this.classLoader;
        if (loader == null) {
            return desiredAssertionStatus0(this);
        }
        synchronized (loader.assertionLock) {
            if (loader.classAssertionStatus != null) {
                return loader.desiredAssertionStatus(getName());
            }
            return desiredAssertionStatus0(this);
        }
    }

    public boolean isEnum() {
        return (getModifiers() & 16384) != 0 && getSuperclass() == Enum.class;
    }

    public boolean isRecord() {
        return getSuperclass() == Record.class && (getModifiers() & 16) != 0 && isRecord0();
    }

    private static ReflectionFactory getReflectionFactory() {
        ReflectionFactory factory = reflectionFactory;
        if (factory != null) {
            return factory;
        }
        ReflectionFactory reflectionFactory2 = ReflectionFactory.getReflectionFactory();
        reflectionFactory = reflectionFactory2;
        return reflectionFactory2;
    }

    private static void resetArchivedStates() {
        reflectionFactory = null;
    }

    public T[] getEnumConstants() {
        T[] enumConstantsShared = getEnumConstantsShared();
        if (enumConstantsShared != null) {
            return (T[]) ((Object[]) enumConstantsShared.clone());
        }
        return null;
    }

    public T[] getEnumConstantsShared() {
        T[] tArr = this.enumConstants;
        if (tArr == null) {
            if (!isEnum()) {
                return null;
            }
            try {
                Method method = getMethod("values", new Class[0]);
                method.setAccessible(true);
                T[] tArr2 = (T[]) ((Object[]) method.invoke(null, new Object[0]));
                tArr = tArr2;
                this.enumConstants = tArr2;
            } catch (ClassCastException | IllegalAccessException | NoSuchMethodException | NullPointerException | InvocationTargetException e10) {
                return null;
            }
        }
        return tArr;
    }

    public Map<String, T> enumConstantDirectory() {
        HashMap hashMap = this.enumConstantDirectory;
        if (hashMap == null) {
            T[] enumConstantsShared = getEnumConstantsShared();
            if (enumConstantsShared == null) {
                throw new IllegalArgumentException(getName() + " is not an enum class");
            }
            hashMap = HashMap.newHashMap(enumConstantsShared.length);
            for (Enum r02 : enumConstantsShared) {
                hashMap.put(r02.name(), r02);
            }
            this.enumConstantDirectory = hashMap;
        }
        return hashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @IntrinsicCandidate
    public T cast(Object obj) {
        if (obj != 0 && !isInstance(obj)) {
            throw new ClassCastException(cannotCastMsg(obj));
        }
        return obj;
    }

    private String cannotCastMsg(Object obj) {
        return "Cannot cast " + obj.getClass().getName() + " to " + getName();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <U> Class<? extends U> asSubclass(Class<U> clazz) {
        if (clazz.isAssignableFrom(this)) {
            return this;
        }
        throw new ClassCastException(toString());
    }

    @Override
    public <A extends Annotation> A getAnnotation(Class<A> annotationClass) {
        Objects.requireNonNull(annotationClass);
        return (A) annotationData().annotations.get(annotationClass);
    }

    @Override
    public boolean isAnnotationPresent(Class<? extends Annotation> annotationClass) {
        return super.isAnnotationPresent(annotationClass);
    }

    @Override
    public <A extends Annotation> A[] getAnnotationsByType(Class<A> cls) {
        Objects.requireNonNull(cls);
        return (A[]) AnnotationSupport.getAssociatedAnnotations(annotationData().declaredAnnotations, this, cls);
    }

    @Override
    public Annotation[] getAnnotations() {
        return AnnotationParser.toArray(annotationData().annotations);
    }

    @Override
    public <A extends Annotation> A getDeclaredAnnotation(Class<A> annotationClass) {
        Objects.requireNonNull(annotationClass);
        return (A) annotationData().declaredAnnotations.get(annotationClass);
    }

    @Override
    public <A extends Annotation> A[] getDeclaredAnnotationsByType(Class<A> cls) {
        Objects.requireNonNull(cls);
        return (A[]) AnnotationSupport.getDirectlyAndIndirectlyPresent(annotationData().declaredAnnotations, cls);
    }

    @Override
    public Annotation[] getDeclaredAnnotations() {
        return AnnotationParser.toArray(annotationData().declaredAnnotations);
    }

    public static class AnnotationData {
        final Map<Class<? extends Annotation>, Annotation> annotations;
        final Map<Class<? extends Annotation>, Annotation> declaredAnnotations;
        final int redefinedCount;

        AnnotationData(Map<Class<? extends Annotation>, Annotation> annotations, Map<Class<? extends Annotation>, Annotation> declaredAnnotations, int redefinedCount) {
            this.annotations = annotations;
            this.declaredAnnotations = declaredAnnotations;
            this.redefinedCount = redefinedCount;
        }
    }

    private AnnotationData annotationData() {
        AnnotationData annotationData;
        AnnotationData newAnnotationData;
        do {
            annotationData = this.annotationData;
            int classRedefinedCount = this.classRedefinedCount;
            if (annotationData != null && annotationData.redefinedCount == classRedefinedCount) {
                return annotationData;
            }
            newAnnotationData = createAnnotationData(classRedefinedCount);
        } while (!Atomic.casAnnotationData(this, annotationData, newAnnotationData));
        return newAnnotationData;
    }

    private AnnotationData createAnnotationData(int classRedefinedCount) {
        Map<? extends Class<? extends Annotation>, ? extends Annotation> declaredAnnotations = AnnotationParser.parseAnnotations(getRawAnnotations(), getConstantPool(), this);
        Class<?> superClass = getSuperclass();
        Map<Class<? extends Annotation>, Annotation> annotations = null;
        if (superClass != null) {
            Map<Class<? extends Annotation>, Annotation> superAnnotations = superClass.annotationData().annotations;
            for (Map.Entry<Class<? extends Annotation>, Annotation> e10 : superAnnotations.entrySet()) {
                Class<? extends Annotation> annotationClass = e10.getKey();
                if (AnnotationType.getInstance(annotationClass).isInherited()) {
                    if (annotations == null) {
                        annotations = LinkedHashMap.newLinkedHashMap(Math.max(declaredAnnotations.size(), Math.min(12, declaredAnnotations.size() + superAnnotations.size())));
                    }
                    annotations.put(annotationClass, e10.getValue());
                }
            }
        }
        if (annotations == null) {
            annotations = declaredAnnotations;
        } else {
            annotations.putAll(declaredAnnotations);
        }
        return new AnnotationData(annotations, declaredAnnotations, classRedefinedCount);
    }

    public boolean casAnnotationType(AnnotationType oldType, AnnotationType newType) {
        return Atomic.casAnnotationType(this, oldType, newType);
    }

    public AnnotationType getAnnotationType() {
        return this.annotationType;
    }

    public Map<Class<? extends Annotation>, Annotation> getDeclaredAnnotationMap() {
        return annotationData().declaredAnnotations;
    }

    public AnnotatedType getAnnotatedSuperclass() {
        if (this == Object.class || isInterface() || isArray() || isPrimitive() || this == Void.TYPE) {
            return null;
        }
        return TypeAnnotationParser.buildAnnotatedSuperclass(getRawTypeAnnotations(), getConstantPool(), this);
    }

    public AnnotatedType[] getAnnotatedInterfaces() {
        return TypeAnnotationParser.buildAnnotatedInterfaces(getRawTypeAnnotations(), getConstantPool(), this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Class<?> getNestHost() {
        if (isPrimitive() || isArray()) {
            return this;
        }
        return getNestHost0();
    }

    public boolean isNestmateOf(Class<?> c10) {
        if (this == c10) {
            return true;
        }
        return (isPrimitive() || isArray() || c10.isPrimitive() || c10.isArray() || getNestHost() != c10.getNestHost()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Class<?>[] getNestMembers() {
        if (isPrimitive() || isArray()) {
            return new Class[]{this};
        }
        Class<?>[] members = getNestMembers0();
        return members;
    }

    @Override
    public String descriptorString() {
        if (isPrimitive()) {
            return Wrapper.forPrimitiveType(this).basicTypeString();
        }
        if (isArray()) {
            return "[".concat(this.componentType.descriptorString());
        }
        if (isHidden()) {
            String name = getName();
            int index = name.indexOf(47);
            return new StringBuilder(name.length() + 2).append('L').append(name.substring(0, index).replace('.', '/')).append('.').append((CharSequence) name, index + 1, name.length()).append(';').toString();
        }
        return StringConcatHelper.concat("L", getName().replace('.', '/'), ";");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Class<?> componentType() {
        return getComponentType();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Class<?> arrayType() {
        try {
            return Array.newInstance((Class<?>) this, 0).getClass();
        } catch (IllegalArgumentException iae) {
            throw new UnsupportedOperationException(iae);
        }
    }

    @Override
    public Optional<ClassDesc> describeConstable() {
        Class<?> c10 = isArray() ? elementType() : this;
        return c10.isHidden() ? Optional.empty() : Optional.of(ConstantUtils.classDesc(this));
    }

    public Class<?>[] getPermittedSubclasses() {
        if (isArray() || isPrimitive()) {
            return null;
        }
        Class<?>[] permittedSubclasses0 = getPermittedSubclasses0();
        Class<?>[] subClasses = permittedSubclasses0;
        if (permittedSubclasses0 == null) {
            return null;
        }
        if (subClasses.length > 0 && Arrays.stream(subClasses).anyMatch(c10 -> {
            return !isDirectSubType(c10);
        })) {
            subClasses = (Class[]) Arrays.stream(subClasses).filter(this::isDirectSubType).toArray(s10 -> {
                return new Class[s10];
            });
        }
        return subClasses;
    }

    private boolean isDirectSubType(Class<?> c10) {
        if (!isInterface()) {
            return c10.getSuperclass() == this;
        }
        for (Class<?> i10 : c10.getInterfaces(false)) {
            if (i10 == this) {
                return true;
            }
        }
        return false;
    }

    public boolean isSealed() {
        return (isArray() || isPrimitive() || getPermittedSubclasses() == null) ? false : true;
    }

    public int getClassFileVersion() {
        Class<?> c10 = isArray() ? elementType() : this;
        return c10.getClassFileVersion0();
    }

    private int getClassAccessFlagsRaw() {
        Class<?> c10 = isArray() ? elementType() : this;
        return c10.getClassAccessFlagsRaw0();
    }
}
