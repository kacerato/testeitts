package java.lang.reflect;

import java.lang.annotation.Annotation;
import java.lang.annotation.AnnotationFormatError;
import java.util.StringJoiner;
import jdk.internal.access.SharedSecrets;
import jdk.internal.misc.VM;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.ConstructorAccessor;
import jdk.internal.reflect.Reflection;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Stable;
import org.openjdk.tools.doclint.DocLint;
import sun.reflect.annotation.TypeAnnotation;
import sun.reflect.annotation.TypeAnnotationParser;
import sun.reflect.generics.factory.CoreReflectionFactory;
import sun.reflect.generics.factory.GenericsFactory;
import sun.reflect.generics.repository.ConstructorRepository;
import sun.reflect.generics.repository.GenericDeclRepository;
import sun.reflect.generics.scope.ConstructorScope;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/Constructor.class
 */
public final class Constructor<T> extends Executable {
    private final Class<T> clazz;
    private final int slot;
    private final Class<?>[] parameterTypes;
    private final Class<?>[] exceptionTypes;
    private final int modifiers;
    private final transient String signature;
    private final byte[] annotations;
    private final byte[] parameterAnnotations;
    private Constructor<T> root;
    private volatile transient ConstructorRepository genericInfo;

    @Stable
    private ConstructorAccessor constructorAccessor;

    private GenericsFactory getFactory() {
        return CoreReflectionFactory.make(this, ConstructorScope.make(this));
    }

    @Override
    ConstructorRepository mo1663getGenericInfo() {
        ConstructorRepository genericInfo = this.genericInfo;
        if (genericInfo == null) {
            Constructor<T> root = this.root;
            if (root != null) {
                genericInfo = root.mo1663getGenericInfo();
            } else {
                genericInfo = ConstructorRepository.make(getSignature(), getFactory());
            }
            this.genericInfo = genericInfo;
        }
        return genericInfo;
    }

    @Override
    public Constructor<T> getRoot() {
        return this.root;
    }

    Constructor(Class<T> declaringClass, Class<?>[] parameterTypes, Class<?>[] checkedExceptions, int modifiers, int slot, String signature, byte[] annotations, byte[] parameterAnnotations) {
        this.clazz = declaringClass;
        this.parameterTypes = parameterTypes;
        this.exceptionTypes = checkedExceptions;
        this.modifiers = modifiers;
        this.slot = slot;
        this.signature = signature;
        this.annotations = annotations;
        this.parameterAnnotations = parameterAnnotations;
    }

    public Constructor<T> copy() {
        if (this.root != null) {
            throw new IllegalArgumentException("Can not copy a non-root Constructor");
        }
        Constructor<T> res = new Constructor<>(this.clazz, this.parameterTypes, this.exceptionTypes, this.modifiers, this.slot, this.signature, this.annotations, this.parameterAnnotations);
        res.root = this;
        res.constructorAccessor = this.constructorAccessor;
        res.genericInfo = this.genericInfo;
        return res;
    }

    public Constructor<T> newWithAccessor(ConstructorAccessor accessor) {
        Constructor<T> res = new Constructor<>(this.clazz, this.parameterTypes, this.exceptionTypes, this.modifiers, this.slot, this.signature, this.annotations, this.parameterAnnotations);
        res.constructorAccessor = accessor;
        return res;
    }

    @Override
    @CallerSensitive
    public void setAccessible(boolean flag) {
        if (flag) {
            checkCanSetAccessible(Reflection.getCallerClass());
        }
        setAccessible0(flag);
    }

    @Override
    void checkCanSetAccessible(Class<?> caller) {
        checkCanSetAccessible(caller, this.clazz);
        if (this.clazz == Class.class) {
            throw new SecurityException("Cannot make a java.lang.Class constructor accessible");
        }
    }

    @Override
    boolean hasGenericInformation() {
        return getSignature() != null;
    }

    @Override
    byte[] getAnnotationBytes() {
        return this.annotations;
    }

    @Override
    public Class<T> getDeclaringClass() {
        return this.clazz;
    }

    @Override
    public String getName() {
        return getDeclaringClass().getName();
    }

    @Override
    public int getModifiers() {
        return this.modifiers;
    }

    @Override
    public TypeVariable<Constructor<T>>[] getTypeParameters() {
        if (getSignature() != null) {
            return mo1663getGenericInfo().getTypeParameters();
        }
        return GenericDeclRepository.EMPTY_TYPE_VARS;
    }

    @Override
    Class<?>[] getSharedParameterTypes() {
        return this.parameterTypes;
    }

    @Override
    Class<?>[] getSharedExceptionTypes() {
        return this.exceptionTypes;
    }

    @Override
    public Class<?>[] getParameterTypes() {
        return this.parameterTypes.length == 0 ? this.parameterTypes : (Class[]) this.parameterTypes.clone();
    }

    @Override
    public int getParameterCount() {
        return this.parameterTypes.length;
    }

    @Override
    public Type[] getGenericParameterTypes() {
        return super.getGenericParameterTypes();
    }

    @Override
    public Class<?>[] getExceptionTypes() {
        return this.exceptionTypes.length == 0 ? this.exceptionTypes : (Class[]) this.exceptionTypes.clone();
    }

    @Override
    public Type[] getGenericExceptionTypes() {
        return super.getGenericExceptionTypes();
    }

    public boolean equals(Object obj) {
        if (obj instanceof Constructor) {
            Constructor<?> other = (Constructor) obj;
            if (getDeclaringClass() == other.getDeclaringClass()) {
                return equalParamTypes(this.parameterTypes, other.parameterTypes);
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return getDeclaringClass().getName().hashCode();
    }

    public String toString() {
        return sharedToString(Modifier.constructorModifiers(), false, this.parameterTypes, this.exceptionTypes);
    }

    @Override
    void specificToStringHeader(StringBuilder sb2) {
        sb2.append(getDeclaringClass().getTypeName());
    }

    @Override
    String toShortString() {
        StringBuilder sb2 = new StringBuilder("constructor ");
        sb2.append(getDeclaringClass().getTypeName());
        sb2.append('(');
        StringJoiner sj2 = new StringJoiner(DocLint.SEPARATOR);
        for (Class<?> parameterType : getSharedParameterTypes()) {
            sj2.add(parameterType.getTypeName());
        }
        sb2.append((Object) sj2);
        sb2.append(')');
        return sb2.toString();
    }

    @Override
    public String toGenericString() {
        return sharedToGenericString(Modifier.constructorModifiers(), false);
    }

    @Override
    void specificToGenericStringHeader(StringBuilder sb2) {
        specificToStringHeader(sb2);
    }

    @ForceInline
    @CallerSensitive
    public T newInstance(Object... initargs) throws InstantiationException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class<?> caller = this.override ? null : Reflection.getCallerClass();
        return newInstanceWithCaller(initargs, !this.override, caller);
    }

    public T newInstanceWithCaller(Object[] objArr, boolean z10, Class<?> cls) throws InstantiationException, IllegalAccessException, InvocationTargetException {
        if (z10) {
            checkAccess(cls, this.clazz, this.clazz, this.modifiers);
        }
        ConstructorAccessor constructorAccessor = this.constructorAccessor;
        if (constructorAccessor == null) {
            constructorAccessor = acquireConstructorAccessor();
        }
        return (T) constructorAccessor.newInstance(objArr);
    }

    @Override
    public boolean isVarArgs() {
        return super.isVarArgs();
    }

    @Override
    public boolean isSynthetic() {
        return super.isSynthetic();
    }

    private ConstructorAccessor acquireConstructorAccessor() {
        Constructor<T> constructor = this.root;
        ConstructorAccessor tmp = constructor == null ? null : constructor.getConstructorAccessor();
        if (tmp != null) {
            this.constructorAccessor = tmp;
        } else {
            if ((this.clazz.getModifiers() & 16384) != 0) {
                throw new IllegalArgumentException("Cannot reflectively create enum objects");
            }
            tmp = reflectionFactory.newConstructorAccessor(this);
            if (VM.isJavaLangInvokeInited()) {
                setConstructorAccessor(tmp);
            }
        }
        return tmp;
    }

    ConstructorAccessor getConstructorAccessor() {
        return this.constructorAccessor;
    }

    void setConstructorAccessor(ConstructorAccessor accessor) {
        this.constructorAccessor = accessor;
        Constructor<T> constructor = this.root;
        if (constructor != null) {
            constructor.setConstructorAccessor(accessor);
        }
    }

    int getSlot() {
        return this.slot;
    }

    String getSignature() {
        return this.signature;
    }

    byte[] getRawAnnotations() {
        return this.annotations;
    }

    byte[] getRawParameterAnnotations() {
        return this.parameterAnnotations;
    }

    /* JADX WARN: Incorrect return type in method signature: <T::Ljava/lang/annotation/Annotation;>(Ljava/lang/Class<TT;>;)TT; */
    @Override
    public Annotation getAnnotation(Class cls) {
        return super.getAnnotation(cls);
    }

    @Override
    public Annotation[] getDeclaredAnnotations() {
        return super.getDeclaredAnnotations();
    }

    @Override
    public Annotation[][] getParameterAnnotations() {
        return sharedGetParameterAnnotations(this.parameterTypes, this.parameterAnnotations);
    }

    @Override
    boolean handleParameterNumberMismatch(int resultLength, Class<?>[] parameterTypes) {
        int numParameters = parameterTypes.length;
        Class<T> declaringClass = getDeclaringClass();
        if (declaringClass.isEnum()) {
            return resultLength + 2 == numParameters && parameterTypes[0] == String.class && parameterTypes[1] == Integer.TYPE;
        }
        if (declaringClass.isAnonymousClass() || declaringClass.isLocalClass()) {
            return false;
        }
        if (declaringClass.isMemberClass() && (declaringClass.getModifiers() & 8) == 0 && resultLength + 1 == numParameters) {
            return true;
        }
        throw new AnnotationFormatError("Parameter annotations don't match number of parameters");
    }

    @Override
    public AnnotatedType getAnnotatedReturnType() {
        return getAnnotatedReturnType0(getDeclaringClass());
    }

    @Override
    public AnnotatedType getAnnotatedReceiverType() {
        Class<T> declaringClass = getDeclaringClass();
        Class<?> enclosingClass = declaringClass.getEnclosingClass();
        if (enclosingClass == null) {
            return null;
        }
        Class<?> outerDeclaringClass = declaringClass.getDeclaringClass();
        if (outerDeclaringClass == null || Modifier.isStatic(declaringClass.getModifiers())) {
            return null;
        }
        return TypeAnnotationParser.buildAnnotatedType(getTypeAnnotationBytes0(), SharedSecrets.getJavaLangAccess().getConstantPool(declaringClass), this, declaringClass, parameterize(enclosingClass), TypeAnnotation.TypeAnnotationTarget.METHOD_RECEIVER);
    }
}
