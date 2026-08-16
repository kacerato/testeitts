package java.lang.reflect;

import java.lang.annotation.Annotation;
import java.lang.annotation.AnnotationFormatError;
import java.nio.ByteBuffer;
import java.util.StringJoiner;
import jdk.internal.access.SharedSecrets;
import jdk.internal.misc.VM;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.CallerSensitiveAdapter;
import jdk.internal.reflect.MethodAccessor;
import jdk.internal.reflect.Reflection;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;
import org.openjdk.tools.doclint.DocLint;
import sun.reflect.annotation.AnnotationParser;
import sun.reflect.annotation.AnnotationType;
import sun.reflect.annotation.ExceptionProxy;
import sun.reflect.annotation.TypeNotPresentExceptionProxy;
import sun.reflect.generics.factory.CoreReflectionFactory;
import sun.reflect.generics.factory.GenericsFactory;
import sun.reflect.generics.repository.GenericDeclRepository;
import sun.reflect.generics.repository.MethodRepository;
import sun.reflect.generics.scope.MethodScope;
import w2.C15883c;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/Method.class
 */
public final class Method extends Executable {
    private final Class<?> clazz;
    private final int slot;
    private final String name;
    private final Class<?> returnType;
    private final Class<?>[] parameterTypes;
    private final Class<?>[] exceptionTypes;
    private final int modifiers;
    private final transient String signature;
    private final byte[] annotations;
    private final byte[] parameterAnnotations;
    private final byte[] annotationDefault;
    private Method root;
    private volatile transient MethodRepository genericInfo;

    @Stable
    private MethodAccessor methodAccessor;
    private int hash;

    @Stable
    private byte callerSensitive;

    private String getGenericSignature() {
        return this.signature;
    }

    private GenericsFactory getFactory() {
        return CoreReflectionFactory.make(this, MethodScope.make(this));
    }

    @Override
    public MethodRepository mo1663getGenericInfo() {
        MethodRepository genericInfo = this.genericInfo;
        if (genericInfo == null) {
            Method root = this.root;
            if (root != null) {
                genericInfo = root.mo1663getGenericInfo();
            } else {
                genericInfo = MethodRepository.make(getGenericSignature(), getFactory());
            }
            this.genericInfo = genericInfo;
        }
        return genericInfo;
    }

    Method(Class<?> declaringClass, String name, Class<?>[] parameterTypes, Class<?> returnType, Class<?>[] checkedExceptions, int modifiers, int slot, String signature, byte[] annotations, byte[] parameterAnnotations, byte[] annotationDefault) {
        this.clazz = declaringClass;
        this.name = name;
        this.parameterTypes = parameterTypes;
        this.returnType = returnType;
        this.exceptionTypes = checkedExceptions;
        this.modifiers = modifiers;
        this.slot = slot;
        this.signature = signature;
        this.annotations = annotations;
        this.parameterAnnotations = parameterAnnotations;
        this.annotationDefault = annotationDefault;
    }

    public Method copy() {
        if (this.root != null) {
            throw new IllegalArgumentException("Can not copy a non-root Method");
        }
        Method res = new Method(this.clazz, this.name, this.parameterTypes, this.returnType, this.exceptionTypes, this.modifiers, this.slot, this.signature, this.annotations, this.parameterAnnotations, this.annotationDefault);
        res.root = this;
        res.methodAccessor = this.methodAccessor;
        res.genericInfo = this.genericInfo;
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
    }

    @Override
    public Method getRoot() {
        return this.root;
    }

    @Override
    boolean hasGenericInformation() {
        return getGenericSignature() != null;
    }

    @Override
    byte[] getAnnotationBytes() {
        return this.annotations;
    }

    @Override
    public Class<?> getDeclaringClass() {
        return this.clazz;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public int getModifiers() {
        return this.modifiers;
    }

    @Override
    public TypeVariable<Method>[] getTypeParameters() {
        if (getGenericSignature() != null) {
            return mo1663getGenericInfo().getTypeParameters();
        }
        return GenericDeclRepository.EMPTY_TYPE_VARS;
    }

    public Class<?> getReturnType() {
        return this.returnType;
    }

    public Type getGenericReturnType() {
        if (getGenericSignature() != null) {
            return mo1663getGenericInfo().getReturnType();
        }
        return getReturnType();
    }

    @Override
    public Class<?>[] getSharedParameterTypes() {
        return this.parameterTypes;
    }

    @Override
    public Class<?>[] getSharedExceptionTypes() {
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
        if (obj instanceof Method) {
            Method other = (Method) obj;
            if (getDeclaringClass() != other.getDeclaringClass() || getName() != other.getName() || !this.returnType.equals(other.getReturnType())) {
                return false;
            }
            return equalParamTypes(this.parameterTypes, other.parameterTypes);
        }
        return false;
    }

    public int hashCode() {
        int hc2 = this.hash;
        if (hc2 == 0) {
            int hashCode = getDeclaringClass().getName().hashCode() ^ getName().hashCode();
            this.hash = hashCode;
            hc2 = hashCode;
        }
        return hc2;
    }

    public String toString() {
        return sharedToString(Modifier.methodModifiers(), isDefault(), this.parameterTypes, this.exceptionTypes);
    }

    @Override
    void specificToStringHeader(StringBuilder sb2) {
        sb2.append(getReturnType().getTypeName()).append(C15883c.f126249O);
        sb2.append(getDeclaringClass().getTypeName()).append('.');
        sb2.append(getName());
    }

    @Override
    public String toShortString() {
        return "method " + getDeclaringClass().getTypeName() + '.' + toShortSignature();
    }

    public String toShortSignature() {
        StringJoiner sj2 = new StringJoiner(DocLint.SEPARATOR, getName() + "(", ")");
        for (Class<?> parameterType : getSharedParameterTypes()) {
            sj2.add(parameterType.getTypeName());
        }
        return sj2.toString();
    }

    @Override
    public String toGenericString() {
        return sharedToGenericString(Modifier.methodModifiers(), isDefault());
    }

    @Override
    void specificToGenericStringHeader(StringBuilder sb2) {
        Type genRetType = getGenericReturnType();
        sb2.append(genRetType.getTypeName()).append(C15883c.f126249O);
        sb2.append(getDeclaringClass().getTypeName()).append('.');
        sb2.append(getName());
    }

    @ForceInline
    @IntrinsicCandidate
    @CallerSensitive
    public Object invoke(Object obj, Object... args) throws IllegalAccessException, InvocationTargetException {
        boolean callerSensitive = isCallerSensitive();
        Class<?> caller = null;
        if (!this.override || callerSensitive) {
            caller = Reflection.getCallerClass();
        }
        if (!this.override) {
            checkAccess(caller, this.clazz, Modifier.isStatic(this.modifiers) ? null : obj.getClass(), this.modifiers);
        }
        MethodAccessor ma2 = this.methodAccessor;
        if (ma2 == null) {
            ma2 = acquireMethodAccessor();
        }
        return callerSensitive ? ma2.invoke(obj, args, caller) : ma2.invoke(obj, args);
    }

    @CallerSensitiveAdapter
    private Object invoke(Object obj, Object[] args, Class<?> caller) throws IllegalAccessException, InvocationTargetException {
        boolean callerSensitive = isCallerSensitive();
        if (!this.override) {
            checkAccess(caller, this.clazz, Modifier.isStatic(this.modifiers) ? null : obj.getClass(), this.modifiers);
        }
        MethodAccessor ma2 = this.methodAccessor;
        if (ma2 == null) {
            ma2 = acquireMethodAccessor();
        }
        return callerSensitive ? ma2.invoke(obj, args, caller) : ma2.invoke(obj, args);
    }

    private boolean isCallerSensitive() {
        byte cs = this.callerSensitive;
        if (cs == 0) {
            byte b10 = (byte) (Reflection.isCallerSensitive(this) ? 1 : -1);
            cs = b10;
            this.callerSensitive = b10;
        }
        return cs > 0;
    }

    public boolean isBridge() {
        return (getModifiers() & 64) != 0;
    }

    @Override
    public boolean isVarArgs() {
        return super.isVarArgs();
    }

    @Override
    public boolean isSynthetic() {
        return super.isSynthetic();
    }

    public boolean isDefault() {
        return (getModifiers() & 1033) == 1 && getDeclaringClass().isInterface();
    }

    private MethodAccessor acquireMethodAccessor() {
        Method root = this.root;
        MethodAccessor tmp = root == null ? null : root.getMethodAccessor();
        if (tmp != null) {
            this.methodAccessor = tmp;
        } else {
            tmp = reflectionFactory.newMethodAccessor(this, isCallerSensitive());
            if (VM.isJavaLangInvokeInited()) {
                setMethodAccessor(tmp);
            }
        }
        return tmp;
    }

    MethodAccessor getMethodAccessor() {
        return this.methodAccessor;
    }

    void setMethodAccessor(MethodAccessor accessor) {
        this.methodAccessor = accessor;
        Method root = this.root;
        if (root != null) {
            root.setMethodAccessor(accessor);
        }
    }

    public Object getDefaultValue() {
        if (this.annotationDefault == null) {
            return null;
        }
        Class<?> memberType = AnnotationType.invocationHandlerReturnType(getReturnType());
        Object result = AnnotationParser.parseMemberValue(memberType, ByteBuffer.wrap(this.annotationDefault), SharedSecrets.getJavaLangAccess().getConstantPool(getDeclaringClass()), getDeclaringClass());
        if (result instanceof ExceptionProxy) {
            if (result instanceof TypeNotPresentExceptionProxy) {
                TypeNotPresentExceptionProxy proxy = (TypeNotPresentExceptionProxy) result;
                throw new TypeNotPresentException(proxy.typeName(), proxy.getCause());
            }
            throw new AnnotationFormatError("Invalid default: " + ((Object) this));
        }
        return result;
    }

    @Override
    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return (T) super.getAnnotation(cls);
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
    public AnnotatedType getAnnotatedReturnType() {
        return getAnnotatedReturnType0(getGenericReturnType());
    }

    @Override
    boolean handleParameterNumberMismatch(int resultLength, Class<?>[] parameterTypes) {
        throw new AnnotationFormatError("Parameter annotations don't match number of parameters");
    }
}
