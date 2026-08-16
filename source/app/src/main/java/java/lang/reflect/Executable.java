package java.lang.reflect;

import java.lang.annotation.Annotation;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.reflect.AccessFlag;
import java.lang.runtime.ObjectMethods;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.StringJoiner;
import java.util.stream.Collectors;
import jdk.internal.access.SharedSecrets;
import jdk.internal.vm.annotation.Stable;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;
import sun.reflect.annotation.AnnotationParser;
import sun.reflect.annotation.AnnotationSupport;
import sun.reflect.annotation.TypeAnnotation;
import sun.reflect.annotation.TypeAnnotationParser;
import sun.reflect.generics.reflectiveObjects.ParameterizedTypeImpl;
import sun.reflect.generics.repository.ConstructorRepository;
import w2.C15883c;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/Executable.class
 */
public abstract class Executable extends AccessibleObject implements Member, GenericDeclaration {

    @Stable
    private transient ParameterData parameterData;
    private volatile transient Map<Class<? extends Annotation>, Annotation> declaredAnnotations;

    abstract byte[] getAnnotationBytes();

    abstract boolean hasGenericInformation();

    abstract ConstructorRepository mo1663getGenericInfo();

    abstract void specificToStringHeader(StringBuilder sb2);

    abstract void specificToGenericStringHeader(StringBuilder sb2);

    public abstract Class<?> getDeclaringClass();

    public abstract String getName();

    public abstract int getModifiers();

    public abstract TypeVariable<?>[] getTypeParameters();

    public abstract Class<?>[] getSharedParameterTypes();

    public abstract Class<?>[] getSharedExceptionTypes();

    public abstract Class<?>[] getParameterTypes();

    public abstract int getParameterCount();

    private native Parameter[] getParameters0();

    public native byte[] getTypeAnnotationBytes0();

    public abstract Class<?>[] getExceptionTypes();

    public abstract String toGenericString();

    public abstract Annotation[][] getParameterAnnotations();

    abstract boolean handleParameterNumberMismatch(int i10, Class<?>[] clsArr);

    public abstract AnnotatedType getAnnotatedReturnType();

    public boolean equalParamTypes(Class<?>[] params1, Class<?>[] params2) {
        if (params1.length == params2.length) {
            for (int i10 = 0; i10 < params1.length; i10++) {
                if (params1[i10] != params2[i10]) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    Annotation[][] parseParameterAnnotations(byte[] parameterAnnotations) {
        return AnnotationParser.parseParameterAnnotations(parameterAnnotations, SharedSecrets.getJavaLangAccess().getConstantPool(getDeclaringClass()), getDeclaringClass());
    }

    void printModifiersIfNonzero(StringBuilder sb2, int mask, boolean isDefault) {
        int mod = getModifiers() & mask;
        if (mod != 0 && !isDefault) {
            sb2.append(Modifier.toString(mod)).append(C15883c.f126249O);
            return;
        }
        int access_mod = mod & 7;
        if (access_mod != 0) {
            sb2.append(Modifier.toString(access_mod)).append(C15883c.f126249O);
        }
        if (isDefault) {
            sb2.append("default ");
        }
        int mod2 = mod & (-8);
        if (mod2 != 0) {
            sb2.append(Modifier.toString(mod2)).append(C15883c.f126249O);
        }
    }

    public String sharedToString(int modifierMask, boolean isDefault, Class<?>[] parameterTypes, Class<?>[] exceptionTypes) {
        try {
            StringBuilder sb2 = new StringBuilder();
            printModifiersIfNonzero(sb2, modifierMask, isDefault);
            specificToStringHeader(sb2);
            sb2.append((String) Arrays.stream(parameterTypes).map((v0) -> {
                return v0.getTypeName();
            }).collect(Collectors.joining(DocLint.SEPARATOR, "(", ")")));
            if (exceptionTypes.length > 0) {
                sb2.append((String) Arrays.stream(exceptionTypes).map((v0) -> {
                    return v0.getTypeName();
                }).collect(Collectors.joining(DocLint.SEPARATOR, " throws ", "")));
            }
            return sb2.toString();
        } catch (Exception e10) {
            return "<" + ((Object) e10) + ">";
        }
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

    public String sharedToGenericString(int modifierMask, boolean isDefault) {
        try {
            StringBuilder sb2 = new StringBuilder();
            printModifiersIfNonzero(sb2, modifierMask, isDefault);
            TypeVariable<?>[] typeparms = getTypeParameters();
            if (typeparms.length > 0) {
                sb2.append((String) Arrays.stream(typeparms).map(Executable::typeVarBounds).collect(Collectors.joining(DocLint.SEPARATOR, "<", "> ")));
            }
            specificToGenericStringHeader(sb2);
            sb2.append('(');
            StringJoiner sj2 = new StringJoiner(DocLint.SEPARATOR);
            Type[] params = getGenericParameterTypes();
            for (int j10 = 0; j10 < params.length; j10++) {
                String param = params[j10].getTypeName();
                if (isVarArgs() && j10 == params.length - 1) {
                    param = param.replaceFirst("\\[\\]$", "...");
                }
                sj2.add(param);
            }
            sb2.append(sj2.toString());
            sb2.append(')');
            Type[] exceptionTypes = getGenericExceptionTypes();
            if (exceptionTypes.length > 0) {
                sb2.append((String) Arrays.stream(exceptionTypes).map((v0) -> {
                    return v0.getTypeName();
                }).collect(Collectors.joining(DocLint.SEPARATOR, " throws ", "")));
            }
            return sb2.toString();
        } catch (Exception e10) {
            return "<" + ((Object) e10) + ">";
        }
    }

    @Override
    public Set<AccessFlag> accessFlags() {
        return reflectionFactory.parseAccessFlags(getModifiers(), AccessFlag.Location.METHOD, getDeclaringClass());
    }

    public Type[] getGenericParameterTypes() {
        if (hasGenericInformation()) {
            return mo1663getGenericInfo().getParameterTypes();
        }
        return getParameterTypes();
    }

    public Type[] getAllGenericParameterTypes() {
        boolean genericInfo = hasGenericInformation();
        if (!genericInfo) {
            return getParameterTypes();
        }
        boolean realParamData = hasRealParameterData();
        Type[] genericParamTypes = getGenericParameterTypes();
        Type[] nonGenericParamTypes = getSharedParameterTypes();
        if (!realParamData) {
            return genericParamTypes.length == nonGenericParamTypes.length ? genericParamTypes : getParameterTypes();
        }
        if (getDeclaringClass().isRecord() && (this instanceof Constructor)) {
            if (genericParamTypes.length == nonGenericParamTypes.length) {
                return genericParamTypes;
            }
            return (Type[]) nonGenericParamTypes.clone();
        }
        Type[] out = new Type[nonGenericParamTypes.length];
        Parameter[] params = getParameters();
        int fromidx = 0;
        for (int i10 = 0; i10 < out.length; i10++) {
            Parameter param = params[i10];
            if (param.isSynthetic() || param.isImplicit()) {
                out[i10] = nonGenericParamTypes[i10];
            } else {
                out[i10] = genericParamTypes[fromidx];
                fromidx++;
            }
        }
        return out;
    }

    public Parameter[] getParameters() {
        return (Parameter[]) parameterData().parameters.clone();
    }

    private Parameter[] synthesizeAllParams() {
        int realparams = getParameterCount();
        Parameter[] out = new Parameter[realparams];
        for (int i10 = 0; i10 < realparams; i10++) {
            out[i10] = new Parameter("arg" + i10, 0, this, i10);
        }
        return out;
    }

    private void verifyParameters(Parameter[] parameters) {
        if (getParameterCount() != parameters.length) {
            throw new MalformedParametersException("Wrong number of parameters in MethodParameters attribute");
        }
        for (Parameter parameter : parameters) {
            String name = parameter.getRealName();
            int mods = parameter.getModifiers();
            if (name != null && (name.isEmpty() || name.indexOf(46) != -1 || name.indexOf(59) != -1 || name.indexOf(91) != -1 || name.indexOf(47) != -1)) {
                throw new MalformedParametersException("Invalid parameter name \"" + name + JavadocConstants.ANCHOR_PREFIX_END);
            }
            if (mods != (mods & 36880)) {
                throw new MalformedParametersException("Invalid parameter modifiers");
            }
        }
    }

    public boolean hasRealParameterData() {
        return parameterData().isReal;
    }

    private ParameterData parameterData() {
        ParameterData parameterData;
        ParameterData parameterData2 = this.parameterData;
        if (parameterData2 != null) {
            return parameterData2;
        }
        try {
            Parameter[] tmp = getParameters0();
            if (tmp == null) {
                parameterData = new ParameterData(synthesizeAllParams(), false);
            } else {
                verifyParameters(tmp);
                parameterData = new ParameterData(tmp, true);
            }
            ParameterData parameterData3 = parameterData;
            this.parameterData = parameterData3;
            return parameterData3;
        } catch (IllegalArgumentException e10) {
            throw new MalformedParametersException("Invalid constant pool index");
        }
    }

    public static final class ParameterData extends Record {

        @Stable
        private final Parameter[] parameters;
        private final boolean isReal;

        ParameterData(Parameter[] parameters, boolean isReal) {
            this.parameters = parameters;
            this.isReal = isReal;
        }

        @Override
        public final String toString() {
            return (String) ObjectMethods.bootstrap(MethodHandles.lookup(), "toString", MethodType.methodType(String.class, ParameterData.class), ParameterData.class, "parameters;isReal", "FIELD:Ljava/lang/reflect/Executable$ParameterData;->parameters:[Ljava/lang/reflect/Parameter;", "FIELD:Ljava/lang/reflect/Executable$ParameterData;->isReal:Z").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final int hashCode() {
            return (int) ObjectMethods.bootstrap(MethodHandles.lookup(), "hashCode", MethodType.methodType(Integer.TYPE, ParameterData.class), ParameterData.class, "parameters;isReal", "FIELD:Ljava/lang/reflect/Executable$ParameterData;->parameters:[Ljava/lang/reflect/Parameter;", "FIELD:Ljava/lang/reflect/Executable$ParameterData;->isReal:Z").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final boolean equals(Object o10) {
            return (boolean) ObjectMethods.bootstrap(MethodHandles.lookup(), "equals", MethodType.methodType(Boolean.TYPE, ParameterData.class, Object.class), ParameterData.class, "parameters;isReal", "FIELD:Ljava/lang/reflect/Executable$ParameterData;->parameters:[Ljava/lang/reflect/Parameter;", "FIELD:Ljava/lang/reflect/Executable$ParameterData;->isReal:Z").dynamicInvoker().invoke(this, o10) /* invoke-custom */;
        }

        public Parameter[] parameters() {
            return this.parameters;
        }

        public boolean isReal() {
            return this.isReal;
        }
    }

    public byte[] getTypeAnnotationBytes() {
        return getTypeAnnotationBytes0();
    }

    public Type[] getGenericExceptionTypes() {
        if (hasGenericInformation()) {
            Type[] result = mo1663getGenericInfo().getExceptionTypes();
            if (result.length > 0) {
                return result;
            }
        }
        return getExceptionTypes();
    }

    public boolean isVarArgs() {
        return (getModifiers() & 128) != 0;
    }

    public boolean isSynthetic() {
        return Modifier.isSynthetic(getModifiers());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.annotation.Annotation[], java.lang.Object] */
    public Annotation[][] sharedGetParameterAnnotations(Class<?>[] parameterTypes, byte[] parameterAnnotations) {
        int numParameters = parameterTypes.length;
        if (parameterAnnotations == null) {
            return new Annotation[numParameters][0];
        }
        Annotation[][] result = parseParameterAnnotations(parameterAnnotations);
        if (result.length != numParameters && handleParameterNumberMismatch(result.length, parameterTypes)) {
            ?? r02 = new Annotation[numParameters];
            System.arraycopy(result, 0, r02, numParameters - result.length, result.length);
            for (int i10 = 0; i10 < numParameters - result.length; i10++) {
                r02[i10] = new Annotation[0];
            }
            result = r02;
        }
        return result;
    }

    @Override
    public <T extends Annotation> T getAnnotation(Class<T> annotationClass) {
        Objects.requireNonNull(annotationClass);
        return annotationClass.cast(declaredAnnotations().get(annotationClass));
    }

    @Override
    public <T extends Annotation> T[] getAnnotationsByType(Class<T> cls) {
        Objects.requireNonNull(cls);
        return (T[]) AnnotationSupport.getDirectlyAndIndirectlyPresent(declaredAnnotations(), cls);
    }

    @Override
    public Annotation[] getDeclaredAnnotations() {
        return AnnotationParser.toArray(declaredAnnotations());
    }

    private Map<Class<? extends Annotation>, Annotation> declaredAnnotations() {
        Map<Class<? extends Annotation>, Annotation> map = this.declaredAnnotations;
        Map<Class<? extends Annotation>, Annotation> declAnnos = map;
        if (map == null) {
            synchronized (this) {
                Map<Class<? extends Annotation>, Annotation> map2 = this.declaredAnnotations;
                declAnnos = map2;
                if (map2 == null) {
                    Executable root = (Executable) getRoot();
                    if (root != null) {
                        declAnnos = root.declaredAnnotations();
                    } else {
                        declAnnos = AnnotationParser.parseAnnotations(getAnnotationBytes(), SharedSecrets.getJavaLangAccess().getConstantPool(getDeclaringClass()), getDeclaringClass());
                    }
                    this.declaredAnnotations = declAnnos;
                }
            }
        }
        return declAnnos;
    }

    public AnnotatedType getAnnotatedReturnType0(Type returnType) {
        return TypeAnnotationParser.buildAnnotatedType(getTypeAnnotationBytes0(), SharedSecrets.getJavaLangAccess().getConstantPool(getDeclaringClass()), this, getDeclaringClass(), returnType, TypeAnnotation.TypeAnnotationTarget.METHOD_RETURN);
    }

    public AnnotatedType getAnnotatedReceiverType() {
        if (Modifier.isStatic(getModifiers())) {
            return null;
        }
        return TypeAnnotationParser.buildAnnotatedType(getTypeAnnotationBytes0(), SharedSecrets.getJavaLangAccess().getConstantPool(getDeclaringClass()), this, getDeclaringClass(), parameterize(getDeclaringClass()), TypeAnnotation.TypeAnnotationTarget.METHOD_RECEIVER);
    }

    public Type parameterize(Class<?> c10) {
        Class<?> ownerClass = c10.getDeclaringClass();
        TypeVariable<?>[] typeVars = c10.getTypeParameters();
        if (ownerClass == null || Modifier.isStatic(c10.getModifiers())) {
            if (typeVars.length == 0) {
                return c10;
            }
            return ParameterizedTypeImpl.make(c10, typeVars, (Type) null);
        }
        Type ownerType = parameterize(ownerClass);
        if ((ownerType instanceof Class) && typeVars.length == 0) {
            return c10;
        }
        return ParameterizedTypeImpl.make(c10, typeVars, ownerType);
    }

    public AnnotatedType[] getAnnotatedParameterTypes() {
        return TypeAnnotationParser.buildAnnotatedTypes(getTypeAnnotationBytes0(), SharedSecrets.getJavaLangAccess().getConstantPool(getDeclaringClass()), this, getDeclaringClass(), getAllGenericParameterTypes(), TypeAnnotation.TypeAnnotationTarget.METHOD_FORMAL_PARAMETER);
    }

    public AnnotatedType[] getAnnotatedExceptionTypes() {
        return TypeAnnotationParser.buildAnnotatedTypes(getTypeAnnotationBytes0(), SharedSecrets.getJavaLangAccess().getConstantPool(getDeclaringClass()), this, getDeclaringClass(), getGenericExceptionTypes(), TypeAnnotation.TypeAnnotationTarget.THROWS);
    }
}
