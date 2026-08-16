package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExpressionContext;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Invocation;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;

public abstract class Scope {
    public static final int AUTOBOX_COMPATIBLE = 1;
    public static final int BLOCK_SCOPE = 1;
    public static final int CLASS_SCOPE = 3;
    public static final int COMPATIBLE = 0;
    public static final int COMPILATION_UNIT_SCOPE = 4;
    public static final int EQUAL_OR_MORE_SPECIFIC = -1;
    public static final int METHOD_SCOPE = 2;
    public static final int MORE_GENERIC = 1;
    public static final int NOT_COMPATIBLE = -1;
    public static final int NOT_RELATED = 0;
    public static final int VARARGS_COMPATIBLE = 2;
    public int kind;
    private ArrayList<NullDefaultRange> nullDefaultRanges;
    public Scope parent;
    public static Binding NOT_REDUNDANT = new Binding() {
        @Override
        public int kind() {
            throw new IllegalStateException();
        }

        @Override
        public char[] readableName() {
            throw new IllegalStateException();
        }
    };
    private static Substitutor defaultSubstitutor = new Substitutor();

    public class MethodClashException extends RuntimeException {
        private static final long serialVersionUID = -7996779527641476028L;

        public MethodClashException() {
        }
    }

    public static class NullDefaultRange {
        private Annotation[] annotations;
        final int end;
        final int start;
        Binding target;
        int value;

        public NullDefaultRange(int i10, Annotation annotation, int i11, int i12, Binding binding) {
            this.start = i11;
            this.end = i12;
            this.value = i10;
            this.annotations = new Annotation[]{annotation};
            this.target = binding;
        }

        public boolean contains(Annotation annotation) {
            for (Annotation annotation2 : this.annotations) {
                if (annotation2 == annotation) {
                    return true;
                }
            }
            return false;
        }

        public void merge(int i10, Annotation annotation, Binding binding) {
            Annotation[] annotationArr = this.annotations;
            int length = annotationArr.length;
            Annotation[] annotationArr2 = new Annotation[length + 1];
            this.annotations = annotationArr2;
            System.arraycopy(annotationArr, 0, annotationArr2, 0, length);
            this.annotations[length] = annotation;
            this.target = binding;
            this.value = i10 | this.value;
        }
    }

    public Scope(int i10, Scope scope) {
        this.kind = i10;
        this.parent = scope;
    }

    public static int compareTypes(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (typeBinding.isCompatibleWith(typeBinding2)) {
            return -1;
        }
        return typeBinding2.isCompatibleWith(typeBinding) ? 1 : 0;
    }

    public static TypeBinding convertEliminatingTypeVariables(TypeBinding typeBinding, ReferenceBinding referenceBinding, int i10, Set set) {
        if ((typeBinding.tagBits & TagBits.HasTypeVariable) == 0) {
            return typeBinding;
        }
        int kind = typeBinding.kind();
        if (kind == 68) {
            ArrayBinding arrayBinding = (ArrayBinding) typeBinding;
            TypeBinding typeBinding2 = arrayBinding.leafComponentType;
            TypeBinding convertEliminatingTypeVariables = convertEliminatingTypeVariables(typeBinding2, referenceBinding, i10, set);
            return TypeBinding.notEquals(convertEliminatingTypeVariables, typeBinding2) ? arrayBinding.environment.createArrayType(convertEliminatingTypeVariables.leafComponentType(), convertEliminatingTypeVariables.dimensions() + arrayBinding.dimensions()) : typeBinding;
        }
        if (kind == 260) {
            ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) typeBinding;
            ReferenceBinding enclosingType = parameterizedTypeBinding.enclosingType();
            ReferenceBinding referenceBinding2 = enclosingType != null ? (ReferenceBinding) convertEliminatingTypeVariables(enclosingType, referenceBinding, i10, set) : enclosingType;
            TypeBinding[] typeBindingArr = parameterizedTypeBinding.arguments;
            int length = typeBindingArr == null ? 0 : typeBindingArr.length;
            TypeBinding[] typeBindingArr2 = typeBindingArr;
            for (int i11 = 0; i11 < length; i11++) {
                TypeBinding typeBinding3 = typeBindingArr[i11];
                TypeBinding convertEliminatingTypeVariables2 = convertEliminatingTypeVariables(typeBinding3, parameterizedTypeBinding.genericType(), i11, set);
                if (TypeBinding.notEquals(convertEliminatingTypeVariables2, typeBinding3)) {
                    if (typeBindingArr2 == typeBindingArr) {
                        typeBindingArr2 = new TypeBinding[length];
                        System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, i11);
                    }
                    typeBindingArr2[i11] = convertEliminatingTypeVariables2;
                } else if (typeBindingArr2 != typeBindingArr) {
                    typeBindingArr2[i11] = typeBinding3;
                }
            }
            return (TypeBinding.notEquals(enclosingType, referenceBinding2) || typeBindingArr != typeBindingArr2) ? parameterizedTypeBinding.environment.createParameterizedType(parameterizedTypeBinding.genericType(), typeBindingArr2, referenceBinding2) : typeBinding;
        }
        if (kind == 516) {
            WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
            TypeBinding typeBinding4 = wildcardBinding.bound;
            if (typeBinding4 == null) {
                return typeBinding;
            }
            TypeBinding convertEliminatingTypeVariables3 = convertEliminatingTypeVariables(typeBinding4, referenceBinding, i10, set);
            return TypeBinding.notEquals(convertEliminatingTypeVariables3, typeBinding4) ? wildcardBinding.environment.createWildcard(wildcardBinding.genericType, wildcardBinding.rank, convertEliminatingTypeVariables3, null, wildcardBinding.boundKind) : typeBinding;
        }
        if (kind == 2052) {
            ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding;
            ReferenceBinding enclosingType2 = referenceBinding3.enclosingType();
            ReferenceBinding referenceBinding4 = enclosingType2 != null ? (ReferenceBinding) convertEliminatingTypeVariables(enclosingType2, referenceBinding, i10, set) : enclosingType2;
            TypeVariableBinding[] typeVariables = referenceBinding3.typeVariables();
            int length2 = typeVariables == null ? 0 : typeVariables.length;
            TypeBinding[] typeBindingArr3 = typeVariables;
            for (int i12 = 0; i12 < length2; i12++) {
                TypeVariableBinding typeVariableBinding = typeVariables[i12];
                TypeBinding convertEliminatingTypeVariables4 = convertEliminatingTypeVariables(typeVariableBinding, referenceBinding3, i12, set);
                if (TypeBinding.notEquals(convertEliminatingTypeVariables4, typeVariableBinding)) {
                    if (typeBindingArr3 == typeVariables) {
                        typeBindingArr3 = new TypeBinding[length2];
                        System.arraycopy(typeVariables, 0, typeBindingArr3, 0, i12);
                    }
                    typeBindingArr3[i12] = convertEliminatingTypeVariables4;
                } else if (typeBindingArr3 != typeVariables) {
                    typeBindingArr3[i12] = typeVariableBinding;
                }
            }
            return (TypeBinding.notEquals(enclosingType2, referenceBinding4) || typeVariables != typeBindingArr3) ? typeVariables[0].environment.createParameterizedType(referenceBinding, typeBindingArr3, referenceBinding4) : typeBinding;
        }
        if (kind == 4100) {
            if (referenceBinding == null) {
                return typeBinding;
            }
            TypeVariableBinding typeVariableBinding2 = (TypeVariableBinding) typeBinding;
            if (set != null && set.contains(typeBinding)) {
                return typeVariableBinding2.environment.createWildcard(referenceBinding, i10, null, null, 0);
            }
            TypeBinding upperBound = typeVariableBinding2.upperBound();
            if (set == null) {
                set = new HashSet(2);
            }
            set.add(typeVariableBinding2);
            TypeBinding convertEliminatingTypeVariables5 = convertEliminatingTypeVariables(upperBound, referenceBinding, i10, set);
            set.remove(typeVariableBinding2);
            return typeVariableBinding2.environment.createWildcard(referenceBinding, i10, convertEliminatingTypeVariables5, null, 1);
        }
        if (kind != 8196) {
            return typeBinding;
        }
        WildcardBinding wildcardBinding2 = (WildcardBinding) typeBinding;
        TypeBinding typeBinding5 = wildcardBinding2.bound;
        TypeBinding convertEliminatingTypeVariables6 = typeBinding5 != null ? convertEliminatingTypeVariables(typeBinding5, referenceBinding, i10, set) : typeBinding5;
        TypeBinding[] typeBindingArr4 = wildcardBinding2.otherBounds;
        int length3 = typeBindingArr4 == null ? 0 : typeBindingArr4.length;
        TypeBinding[] typeBindingArr5 = typeBindingArr4;
        for (int i13 = 0; i13 < length3; i13++) {
            TypeBinding typeBinding6 = typeBindingArr4[i13];
            TypeBinding convertEliminatingTypeVariables7 = convertEliminatingTypeVariables(typeBinding6, referenceBinding, i10, set);
            if (TypeBinding.notEquals(convertEliminatingTypeVariables7, typeBinding6)) {
                if (typeBindingArr5 == typeBindingArr4) {
                    typeBindingArr5 = new TypeBinding[length3];
                    System.arraycopy(typeBindingArr4, 0, typeBindingArr5, 0, i13);
                }
                typeBindingArr5[i13] = convertEliminatingTypeVariables7;
            } else if (typeBindingArr5 != typeBindingArr4) {
                typeBindingArr5[i13] = typeBinding6;
            }
        }
        return (TypeBinding.notEquals(convertEliminatingTypeVariables6, typeBinding5) || typeBindingArr5 != typeBindingArr4) ? wildcardBinding2.environment.createWildcard(wildcardBinding2.genericType, wildcardBinding2.rank, convertEliminatingTypeVariables6, typeBindingArr5, wildcardBinding2.boundKind) : typeBinding;
    }

    public static <T extends TypeBinding> T[] filterValidTypes(T[] tArr, Function<Integer, T[]> function) {
        T[] apply = function.apply(Integer.valueOf(tArr.length));
        int i10 = 0;
        for (int i11 = 0; i11 < tArr.length; i11++) {
            if (tArr[i11].isValidBinding()) {
                apply[i10] = tArr[i11];
                i10++;
            }
        }
        return i10 == tArr.length ? tArr : (i10 != 0 || tArr.length <= 0) ? (T[]) ((TypeBinding[]) Arrays.copyOf(apply, i10)) : (T[]) ((TypeBinding[]) Arrays.copyOf(tArr, 1));
    }

    public static TypeBinding getBaseType(char[] cArr) {
        int length = cArr.length;
        if (length <= 2 || length >= 8) {
            return null;
        }
        char c10 = cArr[0];
        if (c10 == 'f') {
            if (length == 5 && cArr[1] == 'l' && cArr[2] == 'o' && cArr[3] == 'a' && cArr[4] == 't') {
                return TypeBinding.FLOAT;
            }
            return null;
        }
        if (c10 == 'i') {
            if (length == 3 && cArr[1] == 'n' && cArr[2] == 't') {
                return TypeBinding.INT;
            }
            return null;
        }
        if (c10 == 'l') {
            if (length == 4 && cArr[1] == 'o' && cArr[2] == 'n' && cArr[3] == 'g') {
                return TypeBinding.LONG;
            }
            return null;
        }
        if (c10 == 's') {
            if (length == 5 && cArr[1] == 'h' && cArr[2] == 'o' && cArr[3] == 'r' && cArr[4] == 't') {
                return TypeBinding.SHORT;
            }
            return null;
        }
        if (c10 == 'v') {
            if (length == 4 && cArr[1] == 'o' && cArr[2] == 'i' && cArr[3] == 'd') {
                return TypeBinding.VOID;
            }
            return null;
        }
        switch (c10) {
            case 'b':
                if (length == 7 && cArr[1] == 'o' && cArr[2] == 'o' && cArr[3] == 'l' && cArr[4] == 'e' && cArr[5] == 'a' && cArr[6] == 'n') {
                    return TypeBinding.BOOLEAN;
                }
                if (length == 4 && cArr[1] == 'y' && cArr[2] == 't' && cArr[3] == 'e') {
                    return TypeBinding.BYTE;
                }
                return null;
            case 'c':
                if (length == 4 && cArr[1] == 'h' && cArr[2] == 'a' && cArr[3] == 'r') {
                    return TypeBinding.CHAR;
                }
                return null;
            case 'd':
                if (length == 6 && cArr[1] == 'o' && cArr[2] == 'u' && cArr[3] == 'b' && cArr[4] == 'l' && cArr[5] == 'e') {
                    return TypeBinding.DOUBLE;
                }
                return null;
            default:
                return null;
        }
    }

    private MethodBinding getExactMethod(TypeBinding typeBinding, TypeBinding typeBinding2, char[] cArr, InvocationSite invocationSite, MethodBinding methodBinding) {
        if (typeBinding2 == null) {
            return null;
        }
        ReferenceBinding[] superInterfaces = typeBinding2.superInterfaces();
        int length = superInterfaces.length + 2;
        TypeBinding[] typeBindingArr = new TypeBinding[length];
        typeBindingArr[0] = typeBinding2;
        typeBindingArr[1] = typeBinding2.superclass();
        if (superInterfaces.length != 0) {
            System.arraycopy(superInterfaces, 0, typeBindingArr, 2, superInterfaces.length);
        }
        compilationUnitScope().recordTypeReference(typeBinding2);
        TypeBinding capture = typeBinding2.capture(this, invocationSite.sourceStart(), invocationSite.sourceEnd());
        MethodBinding methodBinding2 = methodBinding;
        int i10 = 0;
        while (i10 < length) {
            for (MethodBinding methodBinding3 : i10 == 0 ? capture.getMethods(cArr) : new MethodBinding[]{getExactMethod(typeBinding, typeBindingArr[i10], cArr, invocationSite, methodBinding2)}) {
                if (methodBinding3 != null && methodBinding2 != methodBinding3) {
                    if (i10 != 0 || (methodBinding3.canBeSeenBy(typeBinding, invocationSite, this) && !methodBinding3.isSynthetic() && !methodBinding3.isBridge())) {
                        if (methodBinding2 == null) {
                            methodBinding2 = methodBinding3;
                        } else if (!methodBinding2.areParameterErasuresEqual(methodBinding3)) {
                            throw new MethodClashException();
                        }
                    }
                }
            }
            i10++;
        }
        return methodBinding2;
    }

    private ReferenceBinding[] getFilteredExceptions(MethodBinding methodBinding) {
        ReferenceBinding[] referenceBindingArr = methodBinding.thrownExceptions;
        int length = referenceBindingArr.length;
        if (length < 2) {
            return referenceBindingArr;
        }
        ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[length];
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            ReferenceBinding referenceBinding = referenceBindingArr[i11];
            int i12 = 0;
            while (true) {
                if (i12 >= length) {
                    break;
                }
                if (i11 != i12) {
                    if (!TypeBinding.equalsEquals(referenceBinding, referenceBindingArr[i12])) {
                        if (referenceBinding.isCompatibleWith(referenceBindingArr[i12])) {
                            break;
                        }
                    } else if (i11 >= i12) {
                    }
                }
                i12++;
            }
            referenceBindingArr2[i10] = referenceBinding;
            i10++;
        }
        if (i10 == length) {
            return referenceBindingArr;
        }
        ReferenceBinding[] referenceBindingArr3 = new ReferenceBinding[i10];
        System.arraycopy(referenceBindingArr2, 0, referenceBindingArr3, 0, i10);
        return referenceBindingArr3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v4 */
    public static ReferenceBinding[] greaterLowerBound(ReferenceBinding[] referenceBindingArr) {
        ReferenceBinding[] referenceBindingArr2;
        int length;
        LocalTypeBinding localTypeBinding;
        if (referenceBindingArr == null || (length = (referenceBindingArr2 = (ReferenceBinding[]) filterValidTypes(referenceBindingArr, new Function() {
            @Override
            public final Object apply(Object obj) {
                ReferenceBinding[] lambda$0;
                lambda$0 = Scope.lambda$0(((Integer) obj).intValue());
                return lambda$0;
            }
        })).length) == 0) {
            return null;
        }
        ReferenceBinding[] referenceBindingArr3 = referenceBindingArr2;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            LocalTypeBinding localTypeBinding2 = referenceBindingArr3[i10];
            if (localTypeBinding2 != 0) {
                int i12 = 0;
                referenceBindingArr3 = referenceBindingArr3;
                while (i12 < length) {
                    if (i10 != i12 && (localTypeBinding = referenceBindingArr3[i12]) != 0) {
                        if (isMalformedPair(localTypeBinding2, localTypeBinding, null)) {
                            return null;
                        }
                        referenceBindingArr3 = referenceBindingArr3;
                        if (localTypeBinding2.isCompatibleWith(localTypeBinding)) {
                            if (referenceBindingArr3 == referenceBindingArr2) {
                                ReferenceBinding[] referenceBindingArr4 = new ReferenceBinding[length];
                                System.arraycopy(referenceBindingArr3, 0, referenceBindingArr4, 0, length);
                                referenceBindingArr3 = referenceBindingArr4;
                            }
                            referenceBindingArr3[i12] = 0;
                            i11++;
                        }
                    }
                    i12++;
                    referenceBindingArr3 = referenceBindingArr3;
                }
            }
            i10++;
            referenceBindingArr3 = referenceBindingArr3;
        }
        if (i11 == 0) {
            return referenceBindingArr3;
        }
        if (length == i11) {
            return null;
        }
        ReferenceBinding[] referenceBindingArr5 = new ReferenceBinding[length - i11];
        int i13 = 0;
        for (int i14 = 0; i14 < length; i14++) {
            Object[] objArr = referenceBindingArr3[i14];
            if (objArr != 0) {
                referenceBindingArr5[i13] = objArr;
                i13++;
            }
        }
        return referenceBindingArr5;
    }

    public static boolean isMalformedPair(TypeBinding typeBinding, TypeBinding typeBinding2, Scope scope) {
        int kind = typeBinding.kind();
        if ((kind != 4 && kind != 260 && kind != 1028 && kind != 2052) || !typeBinding.isClass() || typeBinding2.getClass() != TypeVariableBinding.class) {
            return false;
        }
        TypeBinding typeBinding3 = ((TypeVariableBinding) typeBinding2).firstBound;
        return typeBinding3 == null || !typeBinding3.erasure().isCompatibleWith(typeBinding.erasure());
    }

    private boolean isOverriddenMethodGeneric(MethodBinding methodBinding) {
        MethodVerifier methodVerifier = environment().methodVerifier();
        ReferenceBinding superclass = methodBinding.declaringClass.superclass();
        while (true) {
            if (superclass == null) {
                return false;
            }
            for (MethodBinding methodBinding2 : superclass.getMethods(methodBinding.selector)) {
                if (methodBinding2 != null && methodBinding2.original().typeVariables != Binding.NO_TYPE_VARIABLES && methodVerifier.doesMethodOverride(methodBinding, methodBinding2)) {
                    return true;
                }
            }
            superclass = superclass.superclass();
        }
    }

    public static ReferenceBinding[] lambda$0(int i10) {
        return new ReferenceBinding[i10];
    }

    public static TypeBinding[] lambda$1(int i10) {
        return new TypeBinding[i10];
    }

    private TypeBinding leastContainingInvocation(TypeBinding typeBinding, Object obj, ArrayList arrayList) {
        if (obj == null) {
            return typeBinding;
        }
        if (obj instanceof TypeBinding) {
            return (TypeBinding) obj;
        }
        TypeBinding[] typeBindingArr = (TypeBinding[]) obj;
        int dimensions = typeBinding.dimensions();
        TypeBinding leafComponentType = typeBinding.leafComponentType();
        int length = leafComponentType.typeVariables().length;
        if (length == 0) {
            return leafComponentType;
        }
        TypeBinding[] typeBindingArr2 = new TypeBinding[length];
        for (TypeBinding typeBinding2 : typeBindingArr) {
            TypeBinding leafComponentType2 = typeBinding2.leafComponentType();
            int kind = leafComponentType2.kind();
            if (kind == 260) {
                ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) leafComponentType2;
                for (int i10 = 0; i10 < length; i10++) {
                    TypeBinding leastContainingTypeArgument = leastContainingTypeArgument(typeBindingArr2[i10], parameterizedTypeBinding.arguments[i10], (ReferenceBinding) leafComponentType, i10, (ArrayList) arrayList.clone());
                    if (leastContainingTypeArgument == null) {
                        return null;
                    }
                    typeBindingArr2[i10] = leastContainingTypeArgument;
                }
            } else {
                if (kind == 1028) {
                    return dimensions == 0 ? leafComponentType2 : environment().createArrayType(leafComponentType2, dimensions);
                }
                if (kind != 2052) {
                    continue;
                } else {
                    TypeVariableBinding[] typeVariables = leafComponentType2.typeVariables();
                    for (int i11 = 0; i11 < length; i11++) {
                        TypeBinding leastContainingTypeArgument2 = leastContainingTypeArgument(typeBindingArr2[i11], typeVariables[i11], (ReferenceBinding) leafComponentType, i11, (ArrayList) arrayList.clone());
                        if (leastContainingTypeArgument2 == null) {
                            return null;
                        }
                        typeBindingArr2[i11] = leastContainingTypeArgument2;
                    }
                }
            }
        }
        ParameterizedTypeBinding createParameterizedType = environment().createParameterizedType((ReferenceBinding) leafComponentType.erasure(), typeBindingArr2, leafComponentType.enclosingType());
        return dimensions == 0 ? createParameterizedType : environment().createArrayType(createParameterizedType, dimensions);
    }

    private TypeBinding leastContainingTypeArgument(TypeBinding typeBinding, TypeBinding typeBinding2, ReferenceBinding referenceBinding, int i10, ArrayList arrayList) {
        if (typeBinding == null) {
            return typeBinding2;
        }
        if (TypeBinding.equalsEquals(typeBinding, typeBinding2)) {
            return typeBinding;
        }
        if (typeBinding2.isWildcard()) {
            WildcardBinding wildcardBinding = (WildcardBinding) typeBinding2;
            if (typeBinding.isWildcard()) {
                WildcardBinding wildcardBinding2 = (WildcardBinding) typeBinding;
                int i11 = wildcardBinding2.boundKind;
                if (i11 == 1) {
                    int i12 = wildcardBinding.boundKind;
                    if (i12 == 1) {
                        TypeBinding lowerUpperBound = lowerUpperBound(new TypeBinding[]{wildcardBinding2.bound, wildcardBinding.bound}, arrayList);
                        if (lowerUpperBound == null) {
                            return null;
                        }
                        return TypeBinding.equalsEquals(lowerUpperBound, TypeBinding.INT) ? environment().createWildcard(referenceBinding, i10, null, null, 0) : environment().createWildcard(referenceBinding, i10, lowerUpperBound, null, 1);
                    }
                    if (i12 == 2) {
                        return TypeBinding.equalsEquals(wildcardBinding2.bound, wildcardBinding.bound) ? wildcardBinding2.bound : environment().createWildcard(referenceBinding, i10, null, null, 0);
                    }
                } else if (i11 == 2 && i11 == 2) {
                    TypeBinding[] greaterLowerBound = greaterLowerBound(new TypeBinding[]{wildcardBinding2.bound, wildcardBinding.bound}, this, environment());
                    if (greaterLowerBound == null) {
                        return null;
                    }
                    return environment().createWildcard(referenceBinding, i10, greaterLowerBound[0], null, 2);
                }
            } else {
                int i13 = wildcardBinding.boundKind;
                if (i13 == 1) {
                    TypeBinding lowerUpperBound2 = lowerUpperBound(new TypeBinding[]{typeBinding, wildcardBinding.bound}, arrayList);
                    if (lowerUpperBound2 == null) {
                        return null;
                    }
                    return TypeBinding.equalsEquals(lowerUpperBound2, TypeBinding.INT) ? environment().createWildcard(referenceBinding, i10, null, null, 0) : environment().createWildcard(referenceBinding, i10, lowerUpperBound2, null, 1);
                }
                if (i13 == 2) {
                    TypeBinding[] greaterLowerBound2 = greaterLowerBound(new TypeBinding[]{typeBinding, wildcardBinding.bound}, this, environment());
                    if (greaterLowerBound2 == null) {
                        return null;
                    }
                    return environment().createWildcard(referenceBinding, i10, greaterLowerBound2[0], null, 2);
                }
            }
        } else if (typeBinding.isWildcard()) {
            WildcardBinding wildcardBinding3 = (WildcardBinding) typeBinding;
            int i14 = wildcardBinding3.boundKind;
            if (i14 == 1) {
                TypeBinding lowerUpperBound3 = lowerUpperBound(new TypeBinding[]{wildcardBinding3.bound, typeBinding2}, arrayList);
                if (lowerUpperBound3 == null) {
                    return null;
                }
                return TypeBinding.equalsEquals(lowerUpperBound3, TypeBinding.INT) ? environment().createWildcard(referenceBinding, i10, null, null, 0) : environment().createWildcard(referenceBinding, i10, lowerUpperBound3, null, 1);
            }
            if (i14 == 2) {
                TypeBinding[] greaterLowerBound3 = greaterLowerBound(new TypeBinding[]{wildcardBinding3.bound, typeBinding2}, this, environment());
                if (greaterLowerBound3 == null) {
                    return null;
                }
                return environment().createWildcard(referenceBinding, i10, greaterLowerBound3[0], null, 2);
            }
        }
        TypeBinding lowerUpperBound4 = lowerUpperBound(new TypeBinding[]{typeBinding, typeBinding2}, arrayList);
        if (lowerUpperBound4 == null) {
            return null;
        }
        return TypeBinding.equalsEquals(lowerUpperBound4, TypeBinding.INT) ? environment().createWildcard(referenceBinding, i10, null, null, 0) : environment().createWildcard(referenceBinding, i10, lowerUpperBound4, null, 1);
    }

    private NullDefaultRange nullDefaultRangeForPosition(int i10) {
        ArrayList<NullDefaultRange> arrayList = this.nullDefaultRanges;
        if (arrayList == null) {
            return null;
        }
        Iterator<NullDefaultRange> it = arrayList.iterator();
        while (it.hasNext()) {
            NullDefaultRange next = it.next();
            if (i10 >= next.start && i10 < next.end) {
                return next;
            }
        }
        return null;
    }

    public static ReferenceBinding[] substitute(Substitution substitution, ReferenceBinding[] referenceBindingArr) {
        return defaultSubstitutor.substitute(substitution, referenceBindingArr);
    }

    public static BlockScope typeAnnotationsResolutionScope(Scope scope) {
        int i10 = scope.kind;
        if (i10 == 1 || i10 == 2) {
            return (BlockScope) scope;
        }
        if (i10 != 3) {
            return null;
        }
        return ((ClassScope) scope).referenceContext.staticInitializerScope;
    }

    public TypeBinding boxing(TypeBinding typeBinding) {
        return (typeBinding.isBaseType() || typeBinding.kind() == 65540) ? environment().computeBoxingType(typeBinding) : typeBinding;
    }

    public Binding checkRedundantDefaultNullness(int i10, int i11) {
        Binding localCheckRedundantDefaultNullness = localCheckRedundantDefaultNullness(i10, i11);
        return localCheckRedundantDefaultNullness != null ? localCheckRedundantDefaultNullness : this.parent.checkRedundantDefaultNullness(i10, i11);
    }

    public final ClassScope classScope() {
        Scope scope = this;
        while (!(scope instanceof ClassScope)) {
            scope = scope.parent;
            if (scope == null) {
                return null;
            }
        }
        return (ClassScope) scope;
    }

    public final CompilationUnitScope compilationUnitScope() {
        Scope scope = this;
        while (true) {
            Scope scope2 = scope.parent;
            if (scope2 == null) {
                return (CompilationUnitScope) scope;
            }
            scope = scope2;
        }
    }

    public final CompilerOptions compilerOptions() {
        return compilationUnitScope().environment.globalOptions;
    }

    public final MethodBinding computeCompatibleMethod(MethodBinding methodBinding, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        return computeCompatibleMethod(methodBinding, typeBindingArr, invocationSite, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x025e  */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r12v3, types: [int] */
    /* JADX WARN: Type inference failed for: r12v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3, types: [org.eclipse.jdt.internal.compiler.ast.Expression, org.eclipse.jdt.internal.compiler.ast.ASTNode, org.eclipse.jdt.internal.compiler.ast.TypeReference] */
    /* JADX WARN: Type inference failed for: r29v0, types: [org.eclipse.jdt.internal.compiler.lookup.Scope] */
    /* JADX WARN: Type inference failed for: r2v9, types: [org.eclipse.jdt.internal.compiler.problem.ProblemReporter] */
    /* JADX WARN: Type inference failed for: r3v12, types: [org.eclipse.jdt.internal.compiler.problem.ProblemReporter] */
    /* JADX WARN: Type inference failed for: r3v2, types: [org.eclipse.jdt.internal.compiler.problem.ProblemReporter] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean connectTypeVariables(TypeParameter[] typeParameterArr, boolean z10) {
        int i10;
        boolean z11;
        boolean z12;
        TypeReference[] typeReferenceArr;
        int i11;
        int i12;
        int i13;
        int i14;
        TypeBinding typeBinding;
        TypeReference typeReference;
        ReferenceBinding referenceBinding;
        if (typeParameterArr == null || typeParameterArr.length == 0) {
            return true;
        }
        int i15 = 2;
        HashMap hashMap = new HashMap(2);
        int length = typeParameterArr.length;
        boolean z13 = false;
        int i16 = 0;
        while (i16 < length) {
            int i17 = length;
            TypeVariableBinding typeVariableBinding = typeParameterArr[i16].binding;
            if (typeVariableBinding == null) {
                return false;
            }
            typeVariableBinding.setSuperClass(getJavaLangObject());
            typeVariableBinding.setSuperInterfaces(Binding.NO_SUPERINTERFACES);
            typeVariableBinding.setFirstBound(null);
            i16++;
            z13 = false;
            length = i17;
            i15 = 2;
        }
        int i18 = z13 ? 1 : 0;
        boolean z14 = true;
        ?? r12 = z13;
        while (i18 < length) {
            TypeParameter typeParameter = typeParameterArr[i18];
            TypeVariableBinding typeVariableBinding2 = typeParameter.binding;
            ?? r13 = typeParameter.type;
            if (r13 == 0) {
                i11 = length;
                i10 = i18;
            } else {
                TypeBinding resolveType = this.kind == i15 ? r13.resolveType((BlockScope) this, r12, 256) : r13.resolveType((ClassScope) this, 256);
                if (resolveType == null) {
                    typeVariableBinding2.tagBits |= 131072;
                    i10 = i18;
                } else {
                    r13.resolvedType = resolveType;
                    int kind = resolveType.kind();
                    if (kind != 68) {
                        if (kind != 4100) {
                            if (((ReferenceBinding) resolveType).isFinal() && (!environment().usesNullTypeAnnotations() || (resolveType.tagBits & 36028797018963968L) == 0)) {
                                problemReporter().finalVariableBound(typeVariableBinding2, r13);
                            }
                            z11 = r12;
                        } else {
                            TypeVariableBinding typeVariableBinding3 = (TypeVariableBinding) resolveType;
                            if (typeVariableBinding3.rank < typeVariableBinding2.rank || typeVariableBinding3.declaringElement != typeVariableBinding2.declaringElement || compilerOptions().complianceLevel > ClassFileConstants.JDK1_6) {
                                if (compilerOptions().complianceLevel > ClassFileConstants.JDK1_6 && typeVariableBinding2.rank >= typeVariableBinding3.rank && typeVariableBinding3.declaringElement == typeVariableBinding2.declaringElement) {
                                    SimpleSet simpleSet = new SimpleSet(typeParameterArr.length);
                                    simpleSet.add(typeVariableBinding2);
                                    for (ReferenceBinding referenceBinding2 = typeVariableBinding3; referenceBinding2 instanceof TypeVariableBinding; referenceBinding2 = ((TypeVariableBinding) referenceBinding2).superclass) {
                                        if (simpleSet.includes(referenceBinding2)) {
                                            problemReporter().hierarchyCircularity(typeVariableBinding2, typeVariableBinding3, r13);
                                            typeVariableBinding2.tagBits |= 131072;
                                        } else {
                                            simpleSet.add(referenceBinding2);
                                        }
                                    }
                                }
                                z11 = true;
                            } else {
                                problemReporter().forwardTypeVariableReference(typeParameter, typeVariableBinding3);
                                typeVariableBinding2.tagBits |= 131072;
                            }
                            i10 = i18;
                            z12 = true;
                            typeReferenceArr = typeParameter.bounds;
                            if (typeReferenceArr != null) {
                                int length2 = typeReferenceArr.length;
                                int i19 = 0;
                                while (i19 < length2) {
                                    TypeReference typeReference2 = typeReferenceArr[i19];
                                    TypeBinding resolveType2 = this.kind == i15 ? typeReference2.resolveType((BlockScope) this, false) : typeReference2.resolveType((ClassScope) this);
                                    if (resolveType2 == null) {
                                        typeVariableBinding2.tagBits |= 131072;
                                        i13 = i19;
                                        i14 = length2;
                                        i12 = length;
                                    } else {
                                        i12 = length;
                                        typeVariableBinding2.tagBits |= resolveType2.tagBits & 2048;
                                        boolean isValidBinding = typeReference2.resolvedType.isValidBinding();
                                        if (z12 && i19 == 0) {
                                            problemReporter().noAdditionalBoundAfterTypeVariable(typeReference2);
                                            typeVariableBinding2.tagBits |= 131072;
                                        } else {
                                            if (resolveType2.isArrayType()) {
                                                if (isValidBinding) {
                                                    problemReporter().boundCannotBeArray(typeReference2, resolveType2);
                                                    typeVariableBinding2.tagBits |= 131072;
                                                }
                                            } else if (!resolveType2.isInterface()) {
                                                if (isValidBinding) {
                                                    problemReporter().boundMustBeAnInterface(typeReference2, resolveType2);
                                                    typeVariableBinding2.tagBits |= 131072;
                                                }
                                            }
                                            i13 = i19;
                                            i14 = length2;
                                        }
                                        if (z10 && TypeBinding.equalsEquals(typeVariableBinding2.firstBound, typeVariableBinding2.superclass)) {
                                            typeBinding = resolveType2;
                                            typeReference = typeReference2;
                                            i13 = i19;
                                            i14 = length2;
                                            if (hasErasedCandidatesCollisions(resolveType2, typeVariableBinding2.superclass, hashMap, typeVariableBinding2, typeReference)) {
                                            }
                                        } else {
                                            typeBinding = resolveType2;
                                            typeReference = typeReference2;
                                            i13 = i19;
                                            i14 = length2;
                                        }
                                        ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding;
                                        int length3 = typeVariableBinding2.superInterfaces.length;
                                        while (true) {
                                            int i20 = length3 - 1;
                                            if (i20 < 0) {
                                                ReferenceBinding[] referenceBindingArr = typeVariableBinding2.superInterfaces;
                                                int length4 = referenceBindingArr.length;
                                                System.arraycopy(referenceBindingArr, 0, typeVariableBinding2.setSuperInterfaces(new ReferenceBinding[length4 + 1]), 0, length4);
                                                typeVariableBinding2.superInterfaces[length4] = referenceBinding3;
                                                break;
                                            }
                                            ReferenceBinding referenceBinding4 = typeVariableBinding2.superInterfaces[i20];
                                            if (TypeBinding.equalsEquals(referenceBinding4, referenceBinding3)) {
                                                problemReporter().duplicateBounds(typeReference, typeBinding);
                                                typeVariableBinding2.tagBits |= 131072;
                                                break;
                                            }
                                            if (z10) {
                                                referenceBinding = referenceBinding3;
                                                if (hasErasedCandidatesCollisions(typeBinding, referenceBinding4, hashMap, typeVariableBinding2, typeReference)) {
                                                    break;
                                                }
                                            } else {
                                                referenceBinding = referenceBinding3;
                                            }
                                            length3 = i20;
                                            referenceBinding3 = referenceBinding;
                                        }
                                    }
                                    i19 = i13 + 1;
                                    length = i12;
                                    length2 = i14;
                                    i15 = 2;
                                }
                            }
                            i11 = length;
                            z14 &= (typeVariableBinding2.tagBits & 131072) == 0;
                        }
                        ReferenceBinding referenceBinding5 = (ReferenceBinding) resolveType;
                        if (resolveType.isInterface()) {
                            typeVariableBinding2.setSuperInterfaces(new ReferenceBinding[]{referenceBinding5});
                        } else {
                            typeVariableBinding2.setSuperClass(referenceBinding5);
                        }
                        i10 = i18;
                        typeVariableBinding2.tagBits |= resolveType.tagBits & 2048;
                        typeVariableBinding2.setFirstBound(referenceBinding5);
                        z12 = z11;
                        typeReferenceArr = typeParameter.bounds;
                        if (typeReferenceArr != null) {
                        }
                        i11 = length;
                        z14 &= (typeVariableBinding2.tagBits & 131072) == 0;
                    } else {
                        i10 = i18;
                        problemReporter().boundCannotBeArray(r13, resolveType);
                        typeVariableBinding2.tagBits |= 131072;
                    }
                }
                z12 = false;
                typeReferenceArr = typeParameter.bounds;
                if (typeReferenceArr != null) {
                }
                i11 = length;
                z14 &= (typeVariableBinding2.tagBits & 131072) == 0;
            }
            i18 = i10 + 1;
            length = i11;
            i15 = 2;
            r12 = 0;
        }
        int i21 = r12;
        int i22 = i21;
        while (i21 < length) {
            resolveTypeParameter(typeParameterArr[i21]);
            i22 |= typeParameterArr[i21].binding.hasNullTypeAnnotations() ? 1 : 0;
            i21++;
        }
        if (i22 != 0) {
            while (r12 < length) {
                typeParameterArr[r12].binding.updateTagBits();
                r12++;
            }
        }
        return z14;
    }

    public ArrayBinding createArrayType(TypeBinding typeBinding, int i10) {
        return createArrayType(typeBinding, i10, Binding.NO_ANNOTATIONS);
    }

    public TypeVariableBinding[] createTypeVariables(TypeParameter[] typeParameterArr, Binding binding) {
        TypeDeclaration typeDeclaration;
        AbstractMethodDeclaration sourceMethod;
        if (typeParameterArr == null || typeParameterArr.length == 0) {
            return Binding.NO_TYPE_VARIABLES;
        }
        PackageBinding packageBinding = compilationUnitScope().fPackage;
        int length = typeParameterArr.length;
        TypeVariableBinding[] typeVariableBindingArr = new TypeVariableBinding[length];
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            TypeParameter typeParameter = typeParameterArr[i10];
            TypeVariableBinding typeVariableBinding = new TypeVariableBinding(typeParameter.name, binding, i10, environment());
            typeVariableBinding.fPackage = packageBinding;
            typeParameter.binding = typeVariableBinding;
            if ((typeParameter.bits & 1048576) != 0) {
                int kind = binding.kind();
                if (kind != 4) {
                    if (kind == 8 && (sourceMethod = ((MethodBinding) binding).sourceMethod()) != null) {
                        sourceMethod.bits = 1048576 | sourceMethod.bits;
                    }
                } else if ((binding instanceof SourceTypeBinding) && (typeDeclaration = ((SourceTypeBinding) binding).scope.referenceContext) != null) {
                    typeDeclaration.bits = 1048576 | typeDeclaration.bits;
                }
            }
            for (int i12 = 0; i12 < i11; i12++) {
                if (CharOperation.equals(typeVariableBindingArr[i12].sourceName, typeParameter.name)) {
                    problemReporter().duplicateTypeParameterInType(typeParameter);
                }
            }
            typeVariableBindingArr[i11] = typeVariableBinding;
            i10++;
            i11++;
        }
        if (i11 == length) {
            return typeVariableBindingArr;
        }
        TypeVariableBinding[] typeVariableBindingArr2 = new TypeVariableBinding[i11];
        System.arraycopy(typeVariableBindingArr, 0, typeVariableBindingArr2, 0, i11);
        return typeVariableBindingArr2;
    }

    public void deferBoundCheck(TypeReference typeReference) {
        if (this.kind == 3) {
            ClassScope classScope = (ClassScope) this;
            ArrayList<Object> arrayList = classScope.deferredBoundChecks;
            if (arrayList == null) {
                ArrayList<Object> arrayList2 = new ArrayList<>(3);
                classScope.deferredBoundChecks = arrayList2;
                arrayList2.add(typeReference);
            } else {
                if (arrayList.contains(typeReference)) {
                    return;
                }
                classScope.deferredBoundChecks.add(typeReference);
            }
        }
    }

    public boolean deferCheck(Runnable runnable) {
        Scope scope = this.parent;
        if (scope != null) {
            return scope.deferCheck(runnable);
        }
        return false;
    }

    public final ClassScope enclosingClassScope() {
        Scope scope = this;
        do {
            scope = scope.parent;
            if (scope == null) {
                return null;
            }
        } while (!(scope instanceof ClassScope));
        return (ClassScope) scope;
    }

    public final MethodScope enclosingLambdaScope() {
        Scope scope = this;
        while (true) {
            scope = scope.parent;
            if (scope == null) {
                return null;
            }
            if (scope instanceof MethodScope) {
                MethodScope methodScope = (MethodScope) scope;
                if (methodScope.referenceContext instanceof LambdaExpression) {
                    return methodScope;
                }
            }
        }
    }

    public final MethodScope enclosingMethodScope() {
        Scope scope = this;
        do {
            scope = scope.parent;
            if (scope == null) {
                return null;
            }
        } while (!(scope instanceof MethodScope));
        return (MethodScope) scope;
    }

    public final ReferenceBinding enclosingReceiverType() {
        Scope scope = this;
        while (!(scope instanceof ClassScope)) {
            scope = scope.parent;
            if (scope == null) {
                return null;
            }
        }
        return environment().convertToParameterizedType(((ClassScope) scope).referenceContext.binding);
    }

    public ReferenceContext enclosingReferenceContext() {
        int i10;
        Scope scope = this;
        do {
            scope = scope.parent;
            if (scope == null) {
                return null;
            }
            i10 = scope.kind;
            if (i10 == 2) {
                return ((MethodScope) scope).referenceContext;
            }
            if (i10 == 3) {
                return ((ClassScope) scope).referenceContext;
            }
        } while (i10 != 4);
        return ((CompilationUnitScope) scope).referenceContext;
    }

    public final SourceTypeBinding enclosingSourceType() {
        Scope scope = this;
        while (!(scope instanceof ClassScope)) {
            scope = scope.parent;
            if (scope == null) {
                return null;
            }
        }
        return ((ClassScope) scope).referenceContext.binding;
    }

    public final ClassScope enclosingTopMostClassScope() {
        Scope scope = this;
        while (scope != null) {
            Scope scope2 = scope.parent;
            if (scope2 instanceof CompilationUnitScope) {
                break;
            }
            scope = scope2;
        }
        if (scope instanceof ClassScope) {
            return (ClassScope) scope;
        }
        return null;
    }

    public final LookupEnvironment environment() {
        Scope scope = this;
        while (true) {
            Scope scope2 = scope.parent;
            if (scope2 == null) {
                return ((CompilationUnitScope) scope).environment;
            }
            scope = scope2;
        }
    }

    public MethodBinding findDefaultAbstractMethod(ReferenceBinding referenceBinding, char[] cArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite, ReferenceBinding referenceBinding2, ObjectVector objectVector, MethodBinding[] methodBindingArr) {
        int i10;
        int i11;
        int i12 = objectVector.size;
        int i13 = 0;
        boolean z10 = compilerOptions().sourceLevel >= ClassFileConstants.JDK1_8;
        ArrayList arrayList = new ArrayList();
        for (ReferenceBinding referenceBinding3 = referenceBinding2; referenceBinding3 != null; referenceBinding3 = referenceBinding3.superclass()) {
            findMethodInSuperInterfaces(referenceBinding3, cArr, objectVector, arrayList, invocationSite);
        }
        int length = methodBindingArr == null ? 0 : methodBindingArr.length;
        int i14 = objectVector.size;
        MethodBinding[] methodBindingArr2 = new MethodBinding[(i14 - i12) + length];
        if (methodBindingArr != null) {
            System.arraycopy(methodBindingArr, 0, methodBindingArr2, 0, length);
        }
        MethodBinding methodBinding = null;
        if (i14 > i12) {
            MethodVerifier methodVerifier = environment().methodVerifier();
            int i15 = i12;
            while (i15 < i14) {
                MethodBinding computeCompatibleMethod = computeCompatibleMethod((MethodBinding) objectVector.elementAt(i15), typeBindingArr, invocationSite);
                if (computeCompatibleMethod == null) {
                    i10 = i14;
                } else if (computeCompatibleMethod.isValidBinding()) {
                    if (methodBindingArr != null) {
                        int length2 = methodBindingArr.length;
                        while (i13 < length2) {
                            methodVerifier.areMethodsCompatible(methodBindingArr[i13], computeCompatibleMethod);
                            i13++;
                            i14 = i14;
                        }
                    }
                    i10 = i14;
                    if (z10 || !computeCompatibleMethod.isVarargs() || !(computeCompatibleMethod instanceof ParameterizedGenericMethodBinding)) {
                        while (i11 < i12) {
                            MethodBinding methodBinding2 = (MethodBinding) objectVector.elementAt(i11);
                            i11 = (methodBinding2 == null || !methodVerifier.areMethodsCompatible(methodBinding2, computeCompatibleMethod)) ? i11 + 1 : 0;
                        }
                    }
                    methodBindingArr2[length] = computeCompatibleMethod;
                    length++;
                } else {
                    i10 = i14;
                    if (methodBinding == null) {
                        methodBinding = computeCompatibleMethod;
                    }
                }
                i15++;
                i14 = i10;
                i13 = 0;
            }
        }
        MethodBinding methodBinding3 = methodBinding;
        int i16 = length;
        if (i16 >= 2) {
            return compilerOptions().complianceLevel >= ClassFileConstants.JDK1_4 ? mostSpecificMethodBinding(methodBindingArr2, i16, typeBindingArr, invocationSite, referenceBinding) : mostSpecificInterfaceMethodBinding(methodBindingArr2, i16, invocationSite);
        }
        if (methodBindingArr == null && i16 == 0) {
            return methodBinding3;
        }
        MethodBinding methodBinding4 = methodBindingArr2[0];
        if (methodBinding4 != null) {
            compilationUnitScope().recordTypeReferences(methodBinding4.thrownExceptions);
        }
        return methodBinding4;
    }

    public ReferenceBinding findDirectMemberType(char[] cArr, ReferenceBinding referenceBinding) {
        if ((referenceBinding.tagBits & 65536) != 0) {
            return null;
        }
        ReferenceBinding enclosingReceiverType = enclosingReceiverType();
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        compilationUnitScope.recordReference(referenceBinding, cArr);
        ReferenceBinding memberType = referenceBinding.getMemberType(cArr);
        if (memberType == null) {
            return null;
        }
        compilationUnitScope.recordTypeReference(memberType);
        if (enclosingReceiverType == null) {
            if (memberType.canBeSeenBy(getCurrentPackage())) {
                return memberType;
            }
        } else if (memberType.canBeSeenBy(referenceBinding, enclosingReceiverType)) {
            return memberType;
        }
        return new ProblemReferenceBinding(new char[][]{cArr}, memberType, 2);
    }

    public MethodBinding findExactMethod(ReferenceBinding referenceBinding, char[] cArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        compilationUnitScope.recordTypeReferences(typeBindingArr);
        MethodBinding exactMethod = referenceBinding.getExactMethod(cArr, typeBindingArr, compilationUnitScope);
        if (exactMethod != null && exactMethod.typeVariables == Binding.NO_TYPE_VARIABLES && !exactMethod.isBridge()) {
            if (compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
                int length = typeBindingArr.length;
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    }
                    TypeBinding leafComponentType = typeBindingArr[length].leafComponentType();
                    if (leafComponentType instanceof ReferenceBinding) {
                        ReferenceBinding referenceBinding2 = (ReferenceBinding) leafComponentType;
                        if (referenceBinding2.isHierarchyConnected()) {
                            if (isSubtypeOfRawType(referenceBinding2)) {
                                return null;
                            }
                        } else if (referenceBinding2.isRawType()) {
                            return null;
                        }
                    }
                }
            }
            compilationUnitScope.recordTypeReferences(exactMethod.thrownExceptions);
            if ((!exactMethod.isAbstract() || exactMethod.thrownExceptions == Binding.NO_EXCEPTIONS) && exactMethod.canBeSeenBy(referenceBinding, invocationSite, this)) {
                return (typeBindingArr == Binding.NO_PARAMETERS && CharOperation.equals(cArr, TypeConstants.GETCLASS) && exactMethod.returnType.isParameterizedType()) ? environment().createGetClassMethod(referenceBinding, exactMethod, this) : invocationSite.genericTypeArguments() != null ? computeCompatibleMethod(exactMethod, typeBindingArr, invocationSite) : (exactMethod.tagBits & 4503599627370496L) != 0 ? environment().createPolymorphicMethod(exactMethod, typeBindingArr, this) : exactMethod;
            }
        }
        return null;
    }

    public FieldBinding findField(TypeBinding typeBinding, char[] cArr, InvocationSite invocationSite, boolean z10) {
        return findField(typeBinding, cArr, invocationSite, z10, false);
    }

    public ReferenceBinding findMemberType(char[] cArr, ReferenceBinding referenceBinding) {
        ProblemReferenceBinding problemReferenceBinding;
        int i10;
        ReferenceBinding[] referenceBindingArr;
        boolean z10;
        ReferenceBinding[] referenceBindingArr2;
        ReferenceBinding[] referenceBindingArr3;
        ReferenceBinding referenceBinding2 = null;
        if ((referenceBinding.tagBits & 65536) != 0) {
            return null;
        }
        SourceTypeBinding enclosingSourceType = enclosingSourceType();
        PackageBinding currentPackage = getCurrentPackage();
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        compilationUnitScope.recordReference(referenceBinding, cArr);
        ReferenceBinding memberType = referenceBinding.getMemberType(cArr);
        if (memberType != null) {
            compilationUnitScope.recordTypeReference(memberType);
            return (enclosingSourceType == null || (this.parent == compilationUnitScope && (enclosingSourceType.tagBits & TagBits.TypeVariablesAreConnected) == 0) ? !memberType.canBeSeenBy(currentPackage) : !memberType.canBeSeenBy(referenceBinding, enclosingSourceType)) ? new ProblemReferenceBinding(new char[][]{cArr}, memberType, 2) : memberType;
        }
        boolean z11 = true;
        ReferenceBinding referenceBinding3 = referenceBinding;
        ReferenceBinding[] referenceBindingArr4 = null;
        ReferenceBinding referenceBinding4 = null;
        ReferenceBinding referenceBinding5 = null;
        int i11 = 0;
        while (z11) {
            ReferenceBinding[] superInterfaces = referenceBinding3.superInterfaces();
            if (superInterfaces == null) {
                ReferenceBinding genericType = referenceBinding3.isParameterizedType() ? ((ParameterizedTypeBinding) referenceBinding3).genericType() : referenceBinding3;
                if (genericType instanceof SourceTypeBinding) {
                    if (genericType.isHierarchyBeingConnected()) {
                        return referenceBinding2;
                    }
                    ((SourceTypeBinding) genericType).scope.connectTypeHierarchy();
                }
                superInterfaces = referenceBinding3.superInterfaces();
            }
            ReferenceBinding[] referenceBindingArr5 = superInterfaces;
            if (referenceBindingArr5 == null || referenceBindingArr5 == Binding.NO_SUPERINTERFACES) {
                z10 = z11;
            } else if (referenceBindingArr4 == null) {
                i11 = referenceBindingArr5.length;
                z10 = z11;
                referenceBindingArr4 = referenceBindingArr5;
            } else {
                int length = referenceBindingArr5.length;
                int i12 = i11 + length;
                if (i12 >= referenceBindingArr4.length) {
                    referenceBindingArr2 = new ReferenceBinding[i12 + 5];
                    System.arraycopy(referenceBindingArr4, 0, referenceBindingArr2, 0, i11);
                } else {
                    referenceBindingArr2 = referenceBindingArr4;
                }
                int i13 = i11;
                int i14 = 0;
                while (i14 < length) {
                    ReferenceBinding referenceBinding6 = referenceBindingArr5[i14];
                    boolean z12 = z11;
                    int i15 = 0;
                    while (true) {
                        if (i15 >= i13) {
                            referenceBindingArr2[i13] = referenceBinding6;
                            i13++;
                            referenceBindingArr3 = referenceBindingArr5;
                            break;
                        }
                        referenceBindingArr3 = referenceBindingArr5;
                        if (TypeBinding.equalsEquals(referenceBinding6, referenceBindingArr2[i15])) {
                            break;
                        }
                        i15++;
                        referenceBindingArr5 = referenceBindingArr3;
                    }
                    i14++;
                    z11 = z12;
                    referenceBindingArr5 = referenceBindingArr3;
                }
                z10 = z11;
                i11 = i13;
                referenceBindingArr4 = referenceBindingArr2;
            }
            referenceBinding3 = referenceBinding3.superclass();
            if (referenceBinding3 == null) {
                break;
            }
            z11 = false;
            compilationUnitScope.recordReference(referenceBinding3, cArr);
            ReferenceBinding memberType2 = referenceBinding3.getMemberType(cArr);
            if (memberType2 != null) {
                compilationUnitScope.recordTypeReference(memberType2);
                if (enclosingSourceType != null ? !memberType2.canBeSeenBy(referenceBinding, enclosingSourceType) : !memberType2.canBeSeenBy(currentPackage)) {
                    referenceBinding5 = memberType2;
                } else {
                    if (referenceBinding4 != null) {
                        return new ProblemReferenceBinding(new char[][]{cArr}, referenceBinding4, 3);
                    }
                    referenceBinding4 = memberType2;
                }
                referenceBinding2 = null;
            } else {
                referenceBinding2 = null;
                z11 = z10;
            }
        }
        if (referenceBindingArr4 != null) {
            int i16 = 0;
            while (true) {
                if (i16 >= i11) {
                    problemReferenceBinding = null;
                    break;
                }
                ReferenceBinding referenceBinding7 = referenceBindingArr4[i16];
                compilationUnitScope.recordReference(referenceBinding7, cArr);
                ReferenceBinding memberType3 = referenceBinding7.getMemberType(cArr);
                if (memberType3 != null) {
                    compilationUnitScope.recordTypeReference(memberType3);
                    if (referenceBinding4 != null) {
                        problemReferenceBinding = new ProblemReferenceBinding(new char[][]{cArr}, referenceBinding4, 3);
                        break;
                    }
                    referenceBinding4 = memberType3;
                } else {
                    ReferenceBinding[] superInterfaces2 = referenceBinding7.superInterfaces();
                    if (superInterfaces2 != null && superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                        int length2 = superInterfaces2.length;
                        int i17 = i11 + length2;
                        if (i17 >= referenceBindingArr4.length) {
                            referenceBindingArr = new ReferenceBinding[i17 + 5];
                            i10 = 0;
                            System.arraycopy(referenceBindingArr4, 0, referenceBindingArr, 0, i11);
                        } else {
                            i10 = 0;
                            referenceBindingArr = referenceBindingArr4;
                        }
                        int i18 = i11;
                        for (int i19 = i10; i19 < length2; i19++) {
                            ReferenceBinding referenceBinding8 = superInterfaces2[i19];
                            int i20 = i10;
                            while (true) {
                                if (i20 >= i18) {
                                    referenceBindingArr[i18] = referenceBinding8;
                                    i18++;
                                    break;
                                }
                                if (TypeBinding.equalsEquals(referenceBinding8, referenceBindingArr[i20])) {
                                    break;
                                }
                                i20++;
                            }
                        }
                        referenceBindingArr4 = referenceBindingArr;
                        i11 = i18;
                        i16++;
                    }
                }
                i16++;
            }
            if (problemReferenceBinding != null) {
                return problemReferenceBinding;
            }
        }
        if (referenceBinding4 != null) {
            return referenceBinding4;
        }
        if (referenceBinding5 != null) {
            return new ProblemReferenceBinding(new char[][]{cArr}, referenceBinding5, 2);
        }
        return null;
    }

    public MethodBinding findMethod(ReferenceBinding referenceBinding, char[] cArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite, boolean z10) {
        MethodBinding findMethod0 = findMethod0(referenceBinding, cArr, typeBindingArr, invocationSite, z10);
        if (findMethod0 != null && findMethod0.isValidBinding() && findMethod0.isVarargs()) {
            TypeBinding leafComponentType = findMethod0.parameters[r2.length - 1].leafComponentType();
            if ((leafComponentType instanceof ReferenceBinding) && !((ReferenceBinding) leafComponentType).canBeSeenBy(this)) {
                return new ProblemMethodBinding(findMethod0, findMethod0.selector, invocationSite.genericTypeArguments(), 16);
            }
        }
        return findMethod0;
    }

    public MethodBinding findMethod0(ReferenceBinding referenceBinding, char[] cArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite, boolean z10) {
        ReferenceBinding referenceBinding2;
        long j10;
        CompilationUnitScope compilationUnitScope;
        MethodBinding methodBinding;
        MethodBinding[] methodBindingArr;
        int i10;
        MethodBinding computeSubstituteMethod;
        int problemId;
        long j11;
        CompilationUnitScope compilationUnitScope2;
        boolean z11;
        ReferenceBinding referenceBinding3;
        ReferenceBinding referenceBinding4;
        ReferenceBinding referenceBinding5 = referenceBinding;
        InvocationSite invocationSite2 = invocationSite;
        boolean isInterface = referenceBinding.isInterface();
        ObjectVector objectVector = new ObjectVector(3);
        CompilationUnitScope compilationUnitScope3 = compilationUnitScope();
        compilationUnitScope3.recordTypeReferences(typeBindingArr);
        ArrayList arrayList = new ArrayList();
        if (isInterface) {
            compilationUnitScope3.recordTypeReference(referenceBinding5);
            MethodBinding[] methods = referenceBinding5.getMethods(cArr, typeBindingArr.length);
            if (methods.length > 0) {
                objectVector.addAll(methods);
            }
            findMethodInSuperInterfaces(referenceBinding, cArr, objectVector, arrayList, invocationSite);
            referenceBinding2 = getJavaLangObject();
        } else {
            referenceBinding2 = referenceBinding5;
        }
        long j12 = compilerOptions().complianceLevel;
        boolean z12 = j12 >= ClassFileConstants.JDK1_4;
        boolean z13 = j12 >= ClassFileConstants.JDK1_5;
        CompilationUnitScope compilationUnitScope4 = compilationUnitScope3;
        boolean z14 = compilerOptions().sourceLevel >= ClassFileConstants.JDK1_8;
        MethodVerifier methodVerifier = environment().methodVerifier();
        ReferenceBinding referenceBinding6 = referenceBinding2;
        while (referenceBinding6 != null) {
            long j13 = j12;
            CompilationUnitScope compilationUnitScope5 = compilationUnitScope4;
            compilationUnitScope5.recordTypeReference(referenceBinding6);
            ReferenceBinding referenceBinding7 = (ReferenceBinding) referenceBinding6.capture(this, invocationSite2 == null ? 0 : invocationSite.sourceStart(), invocationSite2 == null ? 0 : invocationSite.sourceEnd());
            MethodBinding[] methods2 = referenceBinding7.getMethods(cArr, typeBindingArr.length);
            int length = methods2.length;
            if (length > 0) {
                compilationUnitScope4 = compilationUnitScope5;
                if (!z12 || (!isInterface && objectVector.size <= 0)) {
                    z11 = z12;
                    referenceBinding3 = referenceBinding2;
                } else {
                    int i11 = length;
                    int i12 = 0;
                    while (i12 < length) {
                        boolean z15 = z12;
                        MethodBinding methodBinding2 = methods2[i12];
                        if (methodBinding2 != null) {
                            if (!isInterface || methodBinding2.isPublic()) {
                                referenceBinding4 = referenceBinding2;
                                int i13 = objectVector.size;
                                int i14 = 0;
                                while (true) {
                                    if (i14 >= i13) {
                                        break;
                                    }
                                    MethodBinding methodBinding3 = (MethodBinding) objectVector.elementAt(i14);
                                    int i15 = i13;
                                    MethodBinding original = methodBinding3.original();
                                    MethodBinding findOriginalInheritedMethod = original.findOriginalInheritedMethod(methodBinding2);
                                    if (findOriginalInheritedMethod == null || !methodVerifier.isParameterSubsignature(original, findOriginalInheritedMethod)) {
                                        i14++;
                                        i13 = i15;
                                    } else if (!z13 || !methodBinding3.isBridge() || methodBinding2.isBridge()) {
                                        i11--;
                                        methods2[i12] = null;
                                    }
                                }
                                i12++;
                                z12 = z15;
                                referenceBinding2 = referenceBinding4;
                            } else {
                                i11--;
                                methods2[i12] = null;
                            }
                        }
                        referenceBinding4 = referenceBinding2;
                        i12++;
                        z12 = z15;
                        referenceBinding2 = referenceBinding4;
                    }
                    z11 = z12;
                    referenceBinding3 = referenceBinding2;
                    length = i11;
                }
                if (length > 0) {
                    if (methods2.length == length) {
                        objectVector.addAll(methods2);
                    } else {
                        for (MethodBinding methodBinding4 : methods2) {
                            if (methodBinding4 != null) {
                                objectVector.add(methodBinding4);
                            }
                        }
                    }
                }
            } else {
                compilationUnitScope4 = compilationUnitScope5;
                z11 = z12;
                referenceBinding3 = referenceBinding2;
            }
            referenceBinding6 = referenceBinding7.superclass();
            referenceBinding5 = referenceBinding;
            invocationSite2 = invocationSite;
            z12 = z11;
            referenceBinding2 = referenceBinding3;
            j12 = j13;
        }
        int i16 = objectVector.size;
        boolean z16 = z14 || (z12 && !isInterface && (referenceBinding.isAbstract() || referenceBinding.isTypeVariable()));
        if (i16 > 0) {
            methodBinding = null;
            MethodBinding[] methodBindingArr2 = null;
            int i17 = 0;
            int i18 = 0;
            while (i17 < i16) {
                MethodBinding computeCompatibleMethod = computeCompatibleMethod((MethodBinding) objectVector.elementAt(i17), typeBindingArr, invocationSite2);
                if (computeCompatibleMethod != null) {
                    j11 = j12;
                    if (computeCompatibleMethod.isValidBinding() || computeCompatibleMethod.problemId() == 23) {
                        if (i16 == 1 && computeCompatibleMethod.canBeSeenBy(referenceBinding5, invocationSite2, this)) {
                            if (z16) {
                                return findDefaultAbstractMethod(referenceBinding, cArr, typeBindingArr, invocationSite, referenceBinding2, objectVector, new MethodBinding[]{computeCompatibleMethod});
                            }
                            compilationUnitScope4.recordTypeReferences(computeCompatibleMethod.thrownExceptions);
                            return computeCompatibleMethod;
                        }
                        compilationUnitScope2 = compilationUnitScope4;
                        if (i18 == 0) {
                            methodBindingArr2 = new MethodBinding[i16];
                        }
                        methodBindingArr2[i18] = computeCompatibleMethod;
                        i18++;
                        i17++;
                        compilationUnitScope4 = compilationUnitScope2;
                        j12 = j11;
                    } else if (methodBinding == null) {
                        methodBinding = computeCompatibleMethod;
                    }
                } else {
                    j11 = j12;
                }
                compilationUnitScope2 = compilationUnitScope4;
                i17++;
                compilationUnitScope4 = compilationUnitScope2;
                j12 = j11;
            }
            j10 = j12;
            i10 = i18;
            compilationUnitScope = compilationUnitScope4;
            methodBindingArr = methodBindingArr2;
        } else {
            j10 = j12;
            compilationUnitScope = compilationUnitScope4;
            methodBinding = null;
            methodBindingArr = null;
            i10 = 0;
        }
        int i19 = 2;
        if (i10 == 0) {
            if (methodBinding != null && ((problemId = methodBinding.problemId()) == 11 || problemId == 13)) {
                return methodBinding;
            }
            MethodBinding findDefaultAbstractMethod = findDefaultAbstractMethod(referenceBinding, cArr, typeBindingArr, invocationSite, referenceBinding2, objectVector, null);
            if (findDefaultAbstractMethod != null) {
                if (z14 && i16 > 0 && findDefaultAbstractMethod.isVarargs() && (findDefaultAbstractMethod instanceof ParameterizedGenericMethodBinding)) {
                    MethodBinding original2 = findDefaultAbstractMethod.original();
                    for (int i20 = 0; i20 < i16; i20++) {
                        MethodBinding methodBinding5 = (MethodBinding) objectVector.elementAt(i20);
                        if (!methodBinding5.isAbstract() && (computeSubstituteMethod = methodVerifier.computeSubstituteMethod(original2, methodBinding5)) != null && methodVerifier.isSubstituteParameterSubsignature(methodBinding5, computeSubstituteMethod)) {
                            return new ProblemMethodBinding(findDefaultAbstractMethod, cArr, typeBindingArr, 24);
                        }
                    }
                }
                return findDefaultAbstractMethod;
            }
            if (objectVector.size == 0) {
                return null;
            }
            if (methodBinding != null) {
                return methodBinding;
            }
            MethodBinding methodBinding6 = (MethodBinding) objectVector.elementAt(0);
            int length2 = typeBindingArr.length;
            int i21 = objectVector.size;
            MethodBinding methodBinding7 = methodBinding6;
            int i22 = -1;
            for (int i23 = 0; i23 < i21; i23++) {
                MethodBinding methodBinding8 = (MethodBinding) objectVector.elementAt(i23);
                TypeBinding[] typeBindingArr2 = methodBinding8.parameters;
                int length3 = typeBindingArr2.length;
                int i24 = 0;
                int i25 = 0;
                while (i24 < length2) {
                    TypeBinding typeBinding = typeBindingArr[i24];
                    int i26 = i24 == 0 ? 0 : i24 - 1;
                    while (true) {
                        if (i26 < length3 && i26 < i24 + 1) {
                            if (TypeBinding.equalsEquals(typeBindingArr2[i26], typeBinding)) {
                                i25++;
                                break;
                            }
                            i26++;
                        }
                    }
                    i24++;
                }
                if (i25 >= i22) {
                    if (i25 == i22) {
                        int i27 = length3 < length2 ? (length2 - length3) * 2 : length3 - length2;
                        int length4 = methodBinding7.parameters.length;
                        if (i27 >= (length4 < length2 ? (length2 - length4) * 2 : length4 - length2)) {
                        }
                    }
                    if (methodBinding7 == methodBinding8 || !MethodVerifier.doesMethodOverride(methodBinding7, methodBinding8, environment())) {
                        methodBinding7 = methodBinding8;
                        i22 = i25;
                    }
                }
            }
            return new ProblemMethodBinding(methodBinding7, methodBinding7.selector, typeBindingArr, 1);
        }
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        while (i30 < i10) {
            int i31 = i28;
            MethodBinding methodBinding9 = methodBindingArr[i30];
            if (methodBinding9.canBeSeenBy(referenceBinding5, invocationSite2, this)) {
                if (i29 != i30) {
                    methodBindingArr[i30] = null;
                    methodBindingArr[i29] = methodBinding9;
                }
                i29++;
            }
            i30++;
            i28 = i31;
        }
        if (i29 == 0) {
            int i32 = i28;
            MethodBinding findDefaultAbstractMethod2 = findDefaultAbstractMethod(referenceBinding, cArr, typeBindingArr, invocationSite, referenceBinding2, objectVector, null);
            if (findDefaultAbstractMethod2 != null) {
                return findDefaultAbstractMethod2;
            }
            MethodBinding methodBinding10 = methodBindingArr[i32];
            if (methodBinding10.isStatic() && methodBinding10.declaringClass.isInterface() && !methodBinding10.isPrivate()) {
                i19 = z14 ? 20 : 29;
            }
            return new ProblemMethodBinding(methodBinding10, methodBinding10.selector, methodBinding10.parameters, i19);
        }
        if (i29 == 1) {
            int i33 = i28;
            if (z16) {
                return findDefaultAbstractMethod(referenceBinding, cArr, typeBindingArr, invocationSite, referenceBinding2, objectVector, new MethodBinding[]{methodBindingArr[i33]});
            }
            MethodBinding methodBinding11 = methodBindingArr[i33];
            if (methodBinding11 != null) {
                compilationUnitScope.recordTypeReferences(methodBinding11.thrownExceptions);
            }
            return methodBinding11;
        }
        if (j10 <= ClassFileConstants.JDK1_3) {
            return !methodBindingArr[i28].declaringClass.isInterface() ? mostSpecificClassMethodBinding(methodBindingArr, i29, invocationSite2) : mostSpecificInterfaceMethodBinding(methodBindingArr, i29, invocationSite2);
        }
        int i34 = i28;
        if (compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
            for (int i35 = i34; i35 < i29; i35++) {
                MethodBinding methodBinding12 = methodBindingArr[i35];
                if (methodBinding12.isParameterizedGeneric()) {
                    methodBinding12 = methodBinding12.shallowOriginal();
                }
                if (methodBinding12.hasSubstitutedParameters()) {
                    for (int i36 = i35 + 1; i36 < i29; i36++) {
                        MethodBinding methodBinding13 = methodBindingArr[i36];
                        if (methodBinding13.hasSubstitutedParameters() && (methodBinding13 == methodBinding12 || (TypeBinding.equalsEquals(methodBinding12.declaringClass, methodBinding13.declaringClass) && methodBinding12.areParametersEqual(methodBinding13)))) {
                            MethodBinding methodBinding14 = methodBindingArr[i35];
                            return new ProblemMethodBinding(methodBinding14, methodBinding14.selector, methodBinding14.parameters, 3);
                        }
                    }
                }
            }
        }
        if (z10) {
            MethodBinding[] methodBindingArr3 = new MethodBinding[i29];
            int i37 = i34;
            for (int i38 = i37; i38 < i29; i38++) {
                if (methodBindingArr[i38].isStatic()) {
                    methodBindingArr3[i37] = methodBindingArr[i38];
                    i37++;
                }
            }
            if (i37 == 1) {
                return methodBindingArr3[i34];
            }
            if (i37 > 1) {
                return mostSpecificMethodBinding(methodBindingArr3, i37, typeBindingArr, invocationSite, referenceBinding);
            }
        }
        if (i29 != methodBindingArr.length) {
            MethodBinding[] methodBindingArr4 = new MethodBinding[i29];
            System.arraycopy(methodBindingArr, i34, methodBindingArr4, i34, i29);
            methodBindingArr = methodBindingArr4;
        }
        return z16 ? findDefaultAbstractMethod(referenceBinding, cArr, typeBindingArr, invocationSite, referenceBinding2, objectVector, methodBindingArr) : mostSpecificMethodBinding(methodBindingArr, i29, typeBindingArr, invocationSite, referenceBinding);
    }

    public MethodBinding findMethodForArray(ArrayBinding arrayBinding, char[] cArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        TypeBinding leafComponentType = arrayBinding.leafComponentType();
        if (leafComponentType instanceof ReferenceBinding) {
            ReferenceBinding referenceBinding = (ReferenceBinding) leafComponentType;
            if (!referenceBinding.canBeSeenBy(this)) {
                return new ProblemMethodBinding(cArr, Binding.NO_PARAMETERS, referenceBinding, 8);
            }
        }
        ReferenceBinding javaLangObject = getJavaLangObject();
        MethodBinding exactMethod = javaLangObject.getExactMethod(cArr, typeBindingArr, null);
        if (exactMethod != null) {
            if (typeBindingArr == Binding.NO_PARAMETERS) {
                char c10 = cArr[0];
                if (c10 != 'c') {
                    if (c10 == 'g' && CharOperation.equals(cArr, TypeConstants.GETCLASS) && exactMethod.returnType.isParameterizedType()) {
                        return environment().createGetClassMethod(arrayBinding, exactMethod, this);
                    }
                } else if (CharOperation.equals(cArr, TypeConstants.CLONE)) {
                    return arrayBinding.getCloneMethod(exactMethod);
                }
            }
            if (exactMethod.canBeSeenBy(arrayBinding, invocationSite, this)) {
                return exactMethod;
            }
        }
        MethodBinding findMethod = findMethod(javaLangObject, cArr, typeBindingArr, invocationSite, false);
        return findMethod == null ? new ProblemMethodBinding(cArr, typeBindingArr, 26) : findMethod;
    }

    public void findMethodInSuperInterfaces(ReferenceBinding referenceBinding, char[] cArr, ObjectVector objectVector, List<TypeBinding> list, InvocationSite invocationSite) {
        int i10;
        ReferenceBinding[] referenceBindingArr;
        Scope scope = this;
        ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
        if (superInterfaces == null || superInterfaces == Binding.NO_SUPERINTERFACES) {
            return;
        }
        int length = superInterfaces.length;
        int i11 = 0;
        while (i11 < length) {
            ReferenceBinding referenceBinding2 = superInterfaces[i11];
            if (list != null) {
                TypeBinding uncapture = referenceBinding2.uncapture(scope);
                Iterator<TypeBinding> it = list.iterator();
                while (it.hasNext()) {
                    if (uncapture.isEquivalentTo(it.next())) {
                        break;
                    }
                }
                list.add(uncapture);
            }
            compilationUnitScope().recordTypeReference(referenceBinding2);
            ReferenceBinding referenceBinding3 = (ReferenceBinding) referenceBinding2.capture(scope, invocationSite == null ? 0 : invocationSite.sourceStart(), invocationSite == null ? 0 : invocationSite.sourceEnd());
            MethodBinding[] methods = referenceBinding3.getMethods(cArr);
            if (methods.length > 0) {
                int i12 = objectVector.size;
                int length2 = methods.length;
                int i13 = 0;
                while (i13 < length2) {
                    MethodBinding methodBinding = methods[i13];
                    if (methodBinding.canBeSeenBy(referenceBinding, invocationSite, scope)) {
                        if (i12 > 0) {
                            for (int i14 = 0; i14 < i12; i14++) {
                                if (methodBinding == objectVector.elementAt(i14)) {
                                    break;
                                }
                            }
                        }
                        objectVector.add(methodBinding);
                    }
                    i13++;
                    scope = this;
                }
            }
            ReferenceBinding[] superInterfaces2 = referenceBinding3.superInterfaces();
            if (superInterfaces2 != null && superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                int length3 = superInterfaces2.length;
                int i15 = length + length3;
                if (i15 >= superInterfaces.length) {
                    referenceBindingArr = new ReferenceBinding[i15 + 5];
                    i10 = 0;
                    System.arraycopy(superInterfaces, 0, referenceBindingArr, 0, length);
                } else {
                    i10 = 0;
                    referenceBindingArr = superInterfaces;
                }
                int i16 = length;
                for (int i17 = i10; i17 < length3; i17++) {
                    ReferenceBinding referenceBinding4 = superInterfaces2[i17];
                    int i18 = i10;
                    while (true) {
                        if (i18 >= i16) {
                            referenceBindingArr[i16] = referenceBinding4;
                            i16++;
                            break;
                        } else if (TypeBinding.equalsEquals(referenceBinding4, referenceBindingArr[i18])) {
                            break;
                        } else {
                            i18++;
                        }
                    }
                }
                superInterfaces = referenceBindingArr;
                length = i16;
                i11++;
                scope = this;
            }
            i11++;
            scope = this;
        }
    }

    public ReferenceBinding findType(char[] cArr, PackageBinding packageBinding, PackageBinding packageBinding2) {
        compilationUnitScope().recordReference(packageBinding.compoundName, cArr);
        ReferenceBinding type = packageBinding.getType(cArr, module());
        if (type == null) {
            return null;
        }
        return (!type.isValidBinding() || packageBinding == packageBinding2 || type.canBeSeenBy(packageBinding2)) ? type : new ProblemReferenceBinding(new char[][]{cArr}, type, 2);
    }

    public LocalVariableBinding findVariable(char[] cArr) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:177:0x01ea, code lost:
    
        if (r9.problemId() != 2) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x019d, code lost:
    
        r15 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x01c7, code lost:
    
        if (r15 <= 0) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x01c9, code lost:
    
        r28.setDepth(r15);
        r28.setActualReceiverType(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x01cf, code lost:
    
        if (r13 != null) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x01d5, code lost:
    
        r6.missingClassFileLocation = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x01d7, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x01d3, code lost:
    
        r9 = r13;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x020f A[Catch: all -> 0x0050, AbortCompilation -> 0x0054, TryCatch #1 {AbortCompilation -> 0x0054, blocks: (B:3:0x0010, B:6:0x0025, B:26:0x003c, B:30:0x0046, B:35:0x005e, B:37:0x006b, B:39:0x0072, B:72:0x0076, B:112:0x007f, B:115:0x0295, B:117:0x0299, B:124:0x02ab, B:134:0x02da, B:139:0x02e4, B:148:0x02c3, B:74:0x0088, B:76:0x0090, B:78:0x0094, B:80:0x009a, B:82:0x00a2, B:89:0x00ac, B:94:0x00b5, B:97:0x00bb, B:102:0x00c2, B:41:0x00d4, B:43:0x00dc, B:45:0x00e0, B:47:0x00ef, B:49:0x00f7, B:51:0x00fd, B:54:0x0105, B:55:0x010a, B:14:0x0287, B:18:0x028f, B:156:0x0128, B:158:0x0133, B:160:0x0139, B:214:0x0144, B:216:0x014d, B:162:0x015c, B:164:0x0162, B:167:0x016a, B:168:0x017f, B:170:0x0187, B:174:0x01dd, B:176:0x01e6, B:179:0x0200, B:183:0x020f, B:186:0x0196, B:188:0x01a0, B:190:0x01a6, B:192:0x01b0, B:195:0x01b8, B:201:0x01c9, B:209:0x0175, B:223:0x021b, B:224:0x023c, B:229:0x0244, B:231:0x024a, B:235:0x0258, B:237:0x025d, B:239:0x0261, B:240:0x026d, B:242:0x0271), top: B:2:0x0010, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x028f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Binding getBinding(char[] cArr, int i10, InvocationSite invocationSite, boolean z10) {
        FieldBinding fieldBinding;
        Binding binding;
        ProblemFieldBinding problemFieldBinding;
        int i11;
        ReferenceBinding referenceBinding;
        int i12;
        ProblemFieldBinding problemFieldBinding2;
        int i13;
        ReferenceBinding referenceBinding2;
        int i14;
        FieldBinding findField;
        FieldBinding fieldBinding2;
        FieldBinding findField2;
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        LookupEnvironment lookupEnvironment = compilationUnitScope.environment;
        try {
            try {
                lookupEnvironment.missingClassFileLocation = invocationSite;
                int i15 = 1;
                if ((i10 & 3) != 0) {
                    Scope scope = this;
                    FieldBinding fieldBinding3 = null;
                    boolean z11 = false;
                    ProblemFieldBinding problemFieldBinding3 = null;
                    boolean z12 = false;
                    boolean z13 = false;
                    int i16 = 0;
                    boolean z14 = false;
                    int i17 = 0;
                    ReferenceBinding referenceBinding3 = null;
                    while (true) {
                        int i18 = scope.kind;
                        if (i18 == i15) {
                            problemFieldBinding = problemFieldBinding3;
                            i11 = i16;
                            referenceBinding = referenceBinding3;
                            i12 = i17;
                        } else if (i18 != 2) {
                            if (i18 == 3) {
                                int i19 = i17;
                                ReferenceBinding referenceBinding4 = referenceBinding3;
                                ClassScope classScope = (ClassScope) scope;
                                ReferenceBinding enclosingReceiverType = classScope.enclosingReceiverType();
                                if (z13 || (findField = classScope.findField(enclosingReceiverType, cArr, invocationSite, z10)) == null) {
                                    problemFieldBinding2 = problemFieldBinding3;
                                    i13 = i16;
                                    referenceBinding2 = referenceBinding4;
                                } else {
                                    problemFieldBinding2 = problemFieldBinding3;
                                    if (findField.problemId() == 3) {
                                        if (fieldBinding3 == null || fieldBinding3.problemId() == 2) {
                                            lookupEnvironment.missingClassFileLocation = null;
                                            return findField;
                                        }
                                        ProblemFieldBinding problemFieldBinding4 = new ProblemFieldBinding(fieldBinding3, fieldBinding3.declaringClass, cArr, 5);
                                        lookupEnvironment.missingClassFileLocation = null;
                                        return problemFieldBinding4;
                                    }
                                    if (findField.isValidBinding()) {
                                        if (!findField.isStatic()) {
                                            if (z12) {
                                                problemFieldBinding3 = new ProblemFieldBinding(findField, findField.declaringClass, cArr, 6);
                                            } else if (z11) {
                                                problemFieldBinding3 = new ProblemFieldBinding(findField, findField.declaringClass, cArr, 7);
                                            }
                                            if (!TypeBinding.equalsEquals(enclosingReceiverType, findField.declaringClass) || compilerOptions().complianceLevel >= ClassFileConstants.JDK1_4) {
                                                if (fieldBinding3 == null || fieldBinding3.problemId() == 2) {
                                                    break;
                                                }
                                                if (fieldBinding3.isValidBinding() && TypeBinding.notEquals(fieldBinding3.declaringClass, findField.declaringClass) && TypeBinding.notEquals(fieldBinding3.declaringClass, referenceBinding4)) {
                                                    ProblemFieldBinding problemFieldBinding5 = new ProblemFieldBinding(fieldBinding3, fieldBinding3.declaringClass, cArr, 5);
                                                    lookupEnvironment.missingClassFileLocation = null;
                                                    return problemFieldBinding5;
                                                }
                                            }
                                            i13 = i16;
                                        }
                                        problemFieldBinding3 = null;
                                        if (!TypeBinding.equalsEquals(enclosingReceiverType, findField.declaringClass)) {
                                        }
                                        if (fieldBinding3 == null) {
                                            break;
                                        }
                                        break;
                                    }
                                    i13 = i16;
                                    problemFieldBinding3 = null;
                                    if (fieldBinding3 != null) {
                                        referenceBinding2 = referenceBinding4;
                                        if (fieldBinding3.problemId() == 2) {
                                        }
                                    }
                                    referenceBinding3 = enclosingReceiverType;
                                    fieldBinding3 = findField;
                                    i14 = i13;
                                    int i20 = i13 + 1;
                                    z11 |= enclosingReceiverType.isStatic();
                                    MethodScope methodScope = scope.methodScope();
                                    z12 = methodScope != null ? false : methodScope.isConstructorCall;
                                    i17 = i14;
                                    z13 = false;
                                    z14 = true;
                                    i16 = i20;
                                }
                                problemFieldBinding3 = problemFieldBinding2;
                                referenceBinding3 = referenceBinding2;
                                i14 = i19;
                                int i202 = i13 + 1;
                                z11 |= enclosingReceiverType.isStatic();
                                MethodScope methodScope2 = scope.methodScope();
                                if (methodScope2 != null) {
                                }
                                i17 = i14;
                                z13 = false;
                                z14 = true;
                                i16 = i202;
                            } else if (i18 == 4) {
                                if (problemFieldBinding3 != null) {
                                    lookupEnvironment.missingClassFileLocation = null;
                                    return problemFieldBinding3;
                                }
                                if (fieldBinding3 == null) {
                                    fieldBinding2 = fieldBinding3;
                                    fieldBinding3 = null;
                                } else {
                                    if (fieldBinding3.isValidBinding()) {
                                        int i21 = i17;
                                        if (i21 > 0) {
                                            invocationSite.setDepth(i21);
                                            invocationSite.setActualReceiverType(referenceBinding3);
                                        }
                                        return fieldBinding3;
                                    }
                                    fieldBinding2 = null;
                                }
                                if (compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
                                    compilationUnitScope.faultInImports();
                                    ImportBinding[] importBindingArr = compilationUnitScope.imports;
                                    if (importBindingArr != null) {
                                        for (ImportBinding importBinding : importBindingArr) {
                                            if (importBinding.isStatic() && !importBinding.onDemand) {
                                                if (CharOperation.equals(importBinding.compoundName[r14.length - 1], cArr) && compilationUnitScope.resolveSingleImport(importBinding, 13) != null) {
                                                    Binding binding2 = importBinding.resolvedImport;
                                                    if (binding2 instanceof FieldBinding) {
                                                        FieldBinding fieldBinding4 = (FieldBinding) binding2;
                                                        ImportReference importReference = importBinding.reference;
                                                        if (importReference != null && z10) {
                                                            importReference.bits |= 2;
                                                        }
                                                        invocationSite.setActualReceiverType(fieldBinding4.declaringClass);
                                                        if (fieldBinding4.isValidBinding()) {
                                                            lookupEnvironment.missingClassFileLocation = null;
                                                            return fieldBinding4;
                                                        }
                                                        fieldBinding2 = fieldBinding4;
                                                        if (fieldBinding3 == null) {
                                                            fieldBinding3 = fieldBinding2;
                                                        }
                                                    } else {
                                                        continue;
                                                    }
                                                }
                                            }
                                        }
                                        fieldBinding = fieldBinding3;
                                        boolean z15 = false;
                                        for (ImportBinding importBinding2 : importBindingArr) {
                                            if (importBinding2.isStatic() && importBinding2.onDemand) {
                                                Binding binding3 = importBinding2.resolvedImport;
                                                if ((binding3 instanceof ReferenceBinding) && (findField2 = findField((ReferenceBinding) binding3, cArr, invocationSite, z10)) != null) {
                                                    if (findField2.isValidBinding()) {
                                                        if (findField2.isStatic() && fieldBinding2 != findField2) {
                                                            ImportReference importReference2 = importBinding2.reference;
                                                            if (importReference2 != null && z10) {
                                                                importReference2.bits |= 2;
                                                            }
                                                            if (z15) {
                                                                ProblemFieldBinding problemFieldBinding6 = new ProblemFieldBinding(fieldBinding2, fieldBinding2.declaringClass, cArr, 3);
                                                                lookupEnvironment.missingClassFileLocation = null;
                                                                return problemFieldBinding6;
                                                            }
                                                            fieldBinding2 = findField2;
                                                            z15 = true;
                                                        }
                                                    } else if (fieldBinding == null) {
                                                        fieldBinding = findField2;
                                                    }
                                                }
                                            }
                                        }
                                        if (fieldBinding2 != null) {
                                            invocationSite.setActualReceiverType(fieldBinding2.declaringClass);
                                            lookupEnvironment.missingClassFileLocation = null;
                                            return fieldBinding2;
                                        }
                                    }
                                }
                                fieldBinding = fieldBinding3;
                            }
                            if (!scope.isLambdaScope()) {
                                z14 = true;
                            }
                            scope = scope.parent;
                            i15 = 1;
                        } else {
                            problemFieldBinding = problemFieldBinding3;
                            int i22 = i16;
                            referenceBinding = referenceBinding3;
                            i12 = i17;
                            MethodScope methodScope3 = (MethodScope) scope;
                            z11 |= methodScope3.isStatic;
                            z12 |= methodScope3.isConstructorCall;
                            z13 = methodScope3.insideTypeAnnotation;
                            i11 = i22;
                        }
                        LocalVariableBinding findVariable = scope.findVariable(cArr);
                        if (findVariable != null) {
                            if (fieldBinding3 != null && fieldBinding3.isValidBinding()) {
                                ProblemFieldBinding problemFieldBinding7 = new ProblemFieldBinding(fieldBinding3, fieldBinding3.declaringClass, cArr, 5);
                                lookupEnvironment.missingClassFileLocation = null;
                                return problemFieldBinding7;
                            }
                            if (i11 > 0) {
                                invocationSite.setDepth(i11);
                            }
                            if (z14) {
                                if (invocationSite instanceof NameReference) {
                                    ((NameReference) invocationSite).bits |= 524288;
                                } else if (invocationSite instanceof AbstractVariableDeclaration) {
                                    ((AbstractVariableDeclaration) invocationSite).bits |= 2097152;
                                }
                            }
                            lookupEnvironment.missingClassFileLocation = null;
                            return findVariable;
                        }
                        i17 = i12;
                        problemFieldBinding3 = problemFieldBinding;
                        referenceBinding3 = referenceBinding;
                        i16 = i11;
                        if (!scope.isLambdaScope()) {
                        }
                        scope = scope.parent;
                        i15 = 1;
                    }
                } else {
                    fieldBinding = null;
                }
                if ((i10 & 4) != 0) {
                    TypeBinding baseType = getBaseType(cArr);
                    if (baseType != null) {
                        lookupEnvironment.missingClassFileLocation = null;
                        return baseType;
                    }
                    Binding typeOrPackage = getTypeOrPackage(cArr, (i10 & 16) == 0 ? 4 : 20, z10);
                    if (typeOrPackage.isValidBinding() || i10 == 4) {
                        lookupEnvironment.missingClassFileLocation = null;
                        return typeOrPackage;
                    }
                    binding = typeOrPackage;
                } else if ((i10 & 16) != 0) {
                    compilationUnitScope.recordSimpleReference(cArr);
                    binding = lookupEnvironment.getTopLevelPackage(cArr);
                    if (binding != null) {
                        lookupEnvironment.missingClassFileLocation = null;
                        return binding;
                    }
                } else {
                    binding = null;
                }
                if (fieldBinding != null) {
                    lookupEnvironment.missingClassFileLocation = null;
                    return fieldBinding;
                }
                if (binding != null && binding.problemId() != 1) {
                    lookupEnvironment.missingClassFileLocation = null;
                    return binding;
                }
                ProblemBinding problemBinding = new ProblemBinding(cArr, enclosingSourceType(), 1);
                lookupEnvironment.missingClassFileLocation = null;
                return problemBinding;
            } catch (AbortCompilation e10) {
                e10.updateContext(invocationSite, referenceCompilationUnit().compilationResult);
                throw e10;
            }
        } finally {
            lookupEnvironment.missingClassFileLocation = null;
        }
    }

    public MethodBinding getConstructor(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        MethodBinding constructor0 = getConstructor0(referenceBinding, typeBindingArr, invocationSite);
        if (constructor0 != null && constructor0.isValidBinding() && constructor0.isVarargs()) {
            TypeBinding leafComponentType = constructor0.parameters[r4.length - 1].leafComponentType();
            if ((leafComponentType instanceof ReferenceBinding) && !((ReferenceBinding) leafComponentType).canBeSeenBy(this)) {
                return new ProblemMethodBinding(constructor0, constructor0.selector, invocationSite.genericTypeArguments(), 16);
            }
        }
        return constructor0;
    }

    public MethodBinding getConstructor0(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        LookupEnvironment lookupEnvironment = compilationUnitScope.environment;
        try {
            try {
                lookupEnvironment.missingClassFileLocation = invocationSite;
                compilationUnitScope.recordTypeReference(referenceBinding);
                compilationUnitScope.recordTypeReferences(typeBindingArr);
                MethodBinding exactConstructor = referenceBinding.getExactConstructor(typeBindingArr);
                if (exactConstructor != null && exactConstructor.canBeSeenBy(invocationSite, this)) {
                    if (invocationSite.genericTypeArguments() != null) {
                        exactConstructor = computeCompatibleMethod(exactConstructor, typeBindingArr, invocationSite);
                    }
                    return exactConstructor;
                }
                char[] cArr = TypeConstants.INIT;
                MethodBinding[] methods = referenceBinding.getMethods(cArr, typeBindingArr.length);
                if (methods == Binding.NO_METHODS) {
                    return new ProblemMethodBinding(cArr, typeBindingArr, 1);
                }
                MethodBinding[] methodBindingArr = new MethodBinding[methods.length];
                MethodBinding methodBinding = null;
                int i10 = 0;
                for (MethodBinding methodBinding2 : methods) {
                    MethodBinding computeCompatibleMethod = computeCompatibleMethod(methodBinding2, typeBindingArr, invocationSite);
                    if (computeCompatibleMethod != null) {
                        if (computeCompatibleMethod.isValidBinding()) {
                            int i11 = i10 + 1;
                            methodBindingArr[i10] = computeCompatibleMethod;
                            i10 = i11;
                        } else if (methodBinding == null) {
                            methodBinding = computeCompatibleMethod;
                        }
                    }
                }
                if (i10 == 0) {
                    return methodBinding == null ? new ProblemMethodBinding(methods[0], TypeConstants.INIT, typeBindingArr, 1) : methodBinding;
                }
                MethodBinding[] methodBindingArr2 = new MethodBinding[i10];
                int i12 = 0;
                for (int i13 = 0; i13 < i10; i13++) {
                    MethodBinding methodBinding3 = methodBindingArr[i13];
                    if (methodBinding3.canBeSeenBy(invocationSite, this)) {
                        methodBindingArr2[i12] = methodBinding3;
                        i12++;
                    }
                }
                if (i12 == 1) {
                    return methodBindingArr2[0];
                }
                if (i12 != 0) {
                    return mostSpecificMethodBinding(methodBindingArr2, i12, typeBindingArr, invocationSite, referenceBinding);
                }
                MethodBinding methodBinding4 = methodBindingArr[0];
                return new ProblemMethodBinding(methodBinding4, TypeConstants.INIT, methodBinding4.parameters, 2);
            } catch (AbortCompilation e10) {
                e10.updateContext(invocationSite, referenceCompilationUnit().compilationResult);
                throw e10;
            }
        } finally {
            lookupEnvironment.missingClassFileLocation = null;
        }
    }

    public final PackageBinding getCurrentPackage() {
        Scope scope = this;
        while (true) {
            Scope scope2 = scope.parent;
            if (scope2 == null) {
                return ((CompilationUnitScope) scope).fPackage;
            }
            scope = scope2;
        }
    }

    public int getDeclarationModifiers() {
        SourceTypeBinding sourceTypeBinding;
        int i10 = this.kind;
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3 && (sourceTypeBinding = ((ClassScope) this).referenceType().binding) != null) {
                return sourceTypeBinding.modifiers;
            }
            return -1;
        }
        MethodScope methodScope = methodScope();
        if (!methodScope.isInsideInitializer()) {
            MethodBinding methodBinding = ((AbstractMethodDeclaration) methodScope.referenceContext).binding;
            if (methodBinding != null) {
                return methodBinding.modifiers;
            }
            return -1;
        }
        SourceTypeBinding sourceTypeBinding2 = ((BlockScope) this).referenceType().binding;
        FieldBinding fieldBinding = methodScope.initializedField;
        if (fieldBinding != null) {
            return fieldBinding.modifiers;
        }
        if (sourceTypeBinding2 != null) {
            return sourceTypeBinding2.modifiers;
        }
        return -1;
    }

    public MethodBinding getExactConstructor(TypeBinding typeBinding, InvocationSite invocationSite) {
        TypeVariableBinding[] typeVariables;
        if (typeBinding != null && typeBinding.isValidBinding() && typeBinding.canBeInstantiated() && !typeBinding.isBaseType()) {
            if (typeBinding.isArrayType()) {
                TypeBinding leafComponentType = typeBinding.leafComponentType();
                if (leafComponentType.canBeSeenBy(this) && leafComponentType.isReifiable()) {
                    return new MethodBinding(4097, TypeConstants.INIT, typeBinding, new TypeBinding[]{TypeBinding.INT}, Binding.NO_EXCEPTIONS, getJavaLangObject());
                }
                return null;
            }
            compilationUnitScope().recordTypeReference(typeBinding);
            MethodBinding[] methods = typeBinding.getMethods(TypeConstants.INIT);
            TypeBinding[] genericTypeArguments = invocationSite.genericTypeArguments();
            MethodBinding methodBinding = null;
            for (MethodBinding methodBinding2 : methods) {
                if (methodBinding2.canBeSeenBy(invocationSite, this)) {
                    if (methodBinding2.isVarargs()) {
                        return null;
                    }
                    if ((methodBinding2.typeVariables() == Binding.NO_TYPE_VARIABLES || genericTypeArguments != null) && methodBinding == null) {
                        methodBinding = methodBinding2;
                    }
                }
            }
            if (methodBinding == null || (typeVariables = methodBinding.typeVariables()) == Binding.NO_TYPE_VARIABLES) {
                return methodBinding;
            }
            if (typeVariables.length != genericTypeArguments.length) {
                return null;
            }
            return environment().createParameterizedGenericMethod(methodBinding, genericTypeArguments);
        }
        return null;
    }

    public FieldBinding getField(TypeBinding typeBinding, char[] cArr, InvocationSite invocationSite) {
        LookupEnvironment environment = environment();
        try {
            try {
                environment.missingClassFileLocation = invocationSite;
                FieldBinding findField = findField(typeBinding, cArr, invocationSite, true);
                if (findField != null) {
                    environment.missingClassFileLocation = null;
                    return findField;
                }
                ProblemFieldBinding problemFieldBinding = new ProblemFieldBinding(typeBinding instanceof ReferenceBinding ? (ReferenceBinding) typeBinding : null, cArr, 1);
                environment.missingClassFileLocation = null;
                return problemFieldBinding;
            } catch (AbortCompilation e10) {
                e10.updateContext(invocationSite, referenceCompilationUnit().compilationResult);
                throw e10;
            }
        } catch (Throwable th2) {
            environment.missingClassFileLocation = null;
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x01f3, code lost:
    
        if (r20 == null) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x01f9, code lost:
    
        if (r20.problemId() == 2) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x01fb, code lost:
    
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x01fc, code lost:
    
        r1 = r5.selector;
        r2 = r5.parameters;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0202, code lost:
    
        if (r17 == 0) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0204, code lost:
    
        r3 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x020a, code lost:
    
        return new org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding(r5, r1, r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0206, code lost:
    
        r3 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x024b, code lost:
    
        return r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x024c, code lost:
    
        if (r11 <= 0) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x024e, code lost:
    
        r27.setDepth(r11);
        r27.setActualReceiverType(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0256, code lost:
    
        if (r26 != org.eclipse.jdt.internal.compiler.lookup.Binding.NO_PARAMETERS) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x025e, code lost:
    
        if (org.eclipse.jdt.core.compiler.CharOperation.equals(r25, org.eclipse.jdt.internal.compiler.lookup.TypeConstants.GETCLASS) == false) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0266, code lost:
    
        if (r5.returnType.isParameterizedType() == false) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0270, code lost:
    
        return environment().createGetClassMethod(r12, r5, r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0271, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x02cb, code lost:
    
        return new org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding(r5, r25, r26, 5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0185, code lost:
    
        if (r4 == null) goto L97;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0120 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MethodBinding getImplicitMethod(char[] cArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        int i10;
        int i11;
        int i12;
        MethodBinding methodBinding;
        MethodBinding methodBinding2;
        int i13;
        MethodBinding methodBinding3;
        ObjectVector objectVector;
        int i14;
        MethodBinding methodBinding4;
        ImportBinding importBinding;
        MethodBinding methodBinding5;
        MethodBinding findMethod;
        CompilerOptions compilerOptions = compilerOptions();
        int i15 = 1;
        int i16 = 0;
        Object[] objArr = compilerOptions.complianceLevel >= ClassFileConstants.JDK1_4;
        Scope scope = this;
        int i17 = 0;
        int i18 = 0;
        boolean z10 = false;
        int i19 = 0;
        int i20 = 0;
        MethodBinding methodBinding6 = null;
        MethodBinding methodBinding7 = null;
        MethodScope methodScope = null;
        while (true) {
            int i21 = scope.kind;
            if (i21 == 2) {
                i10 = i16;
                int i22 = i15;
                i11 = i18;
                i12 = i22;
                MethodScope methodScope2 = (MethodScope) scope;
                z10 |= methodScope2.isStatic;
                i19 |= methodScope2.isConstructorCall ? 1 : 0;
                methodScope = methodScope2;
                i17 = methodScope2.insideTypeAnnotation ? 1 : 0;
                methodBinding6 = methodBinding6;
            } else if (i21 == 3) {
                MethodBinding methodBinding8 = methodBinding7;
                ClassScope classScope = (ClassScope) scope;
                ReferenceBinding enclosingReceiverType = classScope.enclosingReceiverType();
                if (i17 == 0) {
                    MethodBinding findExactMethod = classScope.findExactMethod(enclosingReceiverType, cArr, typeBindingArr, invocationSite);
                    if (findExactMethod == null) {
                        i13 = i18;
                        methodBinding = methodBinding6;
                        findExactMethod = classScope.findMethod(enclosingReceiverType, cArr, typeBindingArr, invocationSite, false);
                    } else {
                        i13 = i18;
                        methodBinding = methodBinding6;
                    }
                    methodBinding7 = findExactMethod;
                    methodBinding2 = methodBinding8;
                    if (methodBinding7 == null) {
                        i10 = 0;
                    } else if (methodBinding2 != null) {
                        i10 = 0;
                        i12 = 1;
                        if (methodBinding7.problemId() == 3 || (TypeBinding.notEquals(methodBinding2.declaringClass, methodBinding7.declaringClass) && (TypeBinding.equalsEquals(enclosingReceiverType, methodBinding7.declaringClass) || enclosingReceiverType.getMethods(cArr) != Binding.NO_METHODS))) {
                            break;
                        }
                    } else {
                        if (!methodBinding7.isValidBinding()) {
                            i10 = 0;
                            if (methodBinding7.problemId() != 2) {
                                i12 = 1;
                                if (methodBinding7.problemId() != 1) {
                                    return methodBinding7;
                                }
                            } else {
                                i12 = 1;
                            }
                            methodBinding6 = methodBinding == null ? methodBinding7 : methodBinding;
                            if (i20 == 0 && methodBinding7.problemId() == i12 && (methodBinding3 = ((ProblemMethodBinding) methodBinding7).closestMatch) != null && methodBinding3.canBeSeenBy(enclosingReceiverType, invocationSite, this)) {
                                i20 = i12;
                                methodBinding6 = methodBinding7;
                            }
                            methodBinding7 = methodBinding2;
                        } else if (methodBinding7.isStatic() || (i19 == 0 && !z10)) {
                            if (methodBinding7.isStatic() || methodScope == null) {
                                i10 = 0;
                            } else {
                                i10 = 0;
                                tagAsAccessingEnclosingInstanceStateOf(enclosingReceiverType, false);
                            }
                            if (objArr == true || TypeBinding.equalsEquals(enclosingReceiverType, methodBinding7.declaringClass) || enclosingReceiverType.getMethods(cArr) != Binding.NO_METHODS) {
                                break;
                            }
                            if (methodBinding == null || methodBinding.problemId() == 2) {
                                methodBinding6 = methodBinding != null ? null : methodBinding;
                                if (i13 > 0) {
                                    invocationSite.setDepth(i13);
                                    invocationSite.setActualReceiverType(enclosingReceiverType);
                                }
                                i12 = 1;
                            }
                        }
                        int i23 = i13 + 1;
                        z10 |= enclosingReceiverType.isStatic();
                        MethodScope methodScope3 = scope.methodScope();
                        i19 = methodScope3 != null ? i10 : methodScope3.isConstructorCall ? 1 : 0;
                        i11 = i23;
                        i17 = i10;
                    }
                    i12 = 1;
                } else {
                    methodBinding = methodBinding6;
                    methodBinding2 = methodBinding8;
                    i10 = 0;
                    int i24 = i15;
                    i13 = i18;
                    i12 = i24;
                }
                methodBinding7 = methodBinding2;
                methodBinding6 = methodBinding;
                int i232 = i13 + 1;
                z10 |= enclosingReceiverType.isStatic();
                MethodScope methodScope32 = scope.methodScope();
                if (methodScope32 != null) {
                }
                i11 = i232;
                i17 = i10;
            } else if (i21 != 4) {
                i10 = i16;
                int i25 = i15;
                i11 = i18;
                i12 = i25;
            } else {
                if (z10 && compilerOptions.sourceLevel >= ClassFileConstants.JDK1_5) {
                    if (methodBinding6 != null) {
                        ReferenceBinding referenceBinding = methodBinding6.declaringClass;
                        if (referenceBinding != null && referenceBinding.f102482id == i15) {
                            return methodBinding6;
                        }
                        if (methodBinding6.problemId() == i15 && i20 != 0) {
                            return methodBinding6;
                        }
                    }
                    CompilationUnitScope compilationUnitScope = (CompilationUnitScope) scope;
                    compilationUnitScope.faultInImports();
                    ImportBinding[] importBindingArr = compilationUnitScope.imports;
                    if (importBindingArr != null) {
                        int length = importBindingArr.length;
                        int i26 = i16;
                        int i27 = i26;
                        ObjectVector objectVector2 = null;
                        while (i26 < length) {
                            ImportBinding importBinding2 = importBindingArr[i26];
                            if (importBinding2.isStatic()) {
                                Binding binding = importBinding2.resolvedImport;
                                if (!importBinding2.onDemand) {
                                    importBinding = importBinding2;
                                    objectVector = objectVector2;
                                    i14 = i26;
                                    methodBinding5 = methodBinding6;
                                    methodBinding4 = methodBinding7;
                                    if (binding instanceof MethodBinding) {
                                        MethodBinding methodBinding9 = (MethodBinding) binding;
                                        if (CharOperation.equals(methodBinding9.selector, cArr)) {
                                            findMethod = findMethod(methodBinding9.declaringClass, cArr, typeBindingArr, invocationSite, true);
                                            methodBinding6 = methodBinding5;
                                            if (findMethod != null) {
                                            }
                                        }
                                        findMethod = null;
                                        methodBinding6 = methodBinding5;
                                        if (findMethod != null) {
                                        }
                                    } else {
                                        if ((binding instanceof FieldBinding) && CharOperation.equals(((FieldBinding) binding).name, cArr)) {
                                            char[][] cArr2 = importBinding.reference.tokens;
                                            TypeBinding type = getType(cArr2, cArr2.length - i15);
                                            if (type != null) {
                                                findMethod = findMethod((ReferenceBinding) type, cArr, typeBindingArr, invocationSite, true);
                                                methodBinding6 = methodBinding5;
                                                if (findMethod != null) {
                                                }
                                            }
                                        }
                                        findMethod = null;
                                        methodBinding6 = methodBinding5;
                                        if (findMethod != null) {
                                        }
                                    }
                                } else if (i27 == 0 && (binding instanceof ReferenceBinding)) {
                                    importBinding = importBinding2;
                                    objectVector = objectVector2;
                                    i14 = i26;
                                    methodBinding5 = methodBinding6;
                                    methodBinding4 = methodBinding7;
                                    findMethod = findMethod((ReferenceBinding) binding, cArr, typeBindingArr, invocationSite, true);
                                    methodBinding6 = methodBinding5;
                                    if (findMethod != null) {
                                        if (findMethod.isValidBinding()) {
                                        }
                                    }
                                } else {
                                    importBinding = importBinding2;
                                    objectVector = objectVector2;
                                    i14 = i26;
                                    methodBinding5 = methodBinding6;
                                    methodBinding4 = methodBinding7;
                                    findMethod = null;
                                    methodBinding6 = methodBinding5;
                                    if (findMethod != null && findMethod != methodBinding6) {
                                        if (findMethod.isValidBinding()) {
                                            if (methodBinding6 == null) {
                                                methodBinding6 = findMethod;
                                                objectVector2 = objectVector;
                                            }
                                        } else if (findMethod.isStatic()) {
                                            MethodBinding computeCompatibleMethod = computeCompatibleMethod(findMethod, typeBindingArr, invocationSite);
                                            if (computeCompatibleMethod != null) {
                                                if (computeCompatibleMethod.isValidBinding()) {
                                                    if (computeCompatibleMethod.canBeSeenBy(compilationUnitScope.fPackage)) {
                                                        if (i27 != 0 || importBinding.onDemand) {
                                                            objectVector2 = objectVector;
                                                        } else {
                                                            i27 = i15;
                                                            objectVector2 = null;
                                                        }
                                                        if (objectVector2 == null || !objectVector2.contains(computeCompatibleMethod)) {
                                                            ImportReference importReference = importBinding.reference;
                                                            if (importReference != null) {
                                                                importReference.bits |= 2;
                                                            }
                                                            if (objectVector2 == null) {
                                                                objectVector2 = new ObjectVector(3);
                                                            }
                                                            objectVector2.add(computeCompatibleMethod);
                                                        }
                                                    } else if (methodBinding6 == null) {
                                                        methodBinding6 = new ProblemMethodBinding(computeCompatibleMethod, cArr, computeCompatibleMethod.parameters, 2);
                                                    }
                                                }
                                                objectVector2 = objectVector;
                                            } else {
                                                if (methodBinding6 == null) {
                                                    computeCompatibleMethod = new ProblemMethodBinding(findMethod, cArr, typeBindingArr, i15);
                                                    methodBinding6 = computeCompatibleMethod;
                                                }
                                                objectVector2 = objectVector;
                                            }
                                        }
                                    }
                                }
                                i26 = i14 + 1;
                                methodBinding7 = methodBinding4;
                                i16 = 0;
                            } else {
                                objectVector = objectVector2;
                                i14 = i26;
                                methodBinding4 = methodBinding7;
                            }
                            objectVector2 = objectVector;
                            i26 = i14 + 1;
                            methodBinding7 = methodBinding4;
                            i16 = 0;
                        }
                        if (objectVector2 != null) {
                            int i28 = objectVector2.size;
                            if (i28 == i15) {
                                methodBinding7 = (MethodBinding) objectVector2.elementAt(i16);
                            } else {
                                MethodBinding[] methodBindingArr = new MethodBinding[i28];
                                objectVector2.copyInto(methodBindingArr);
                                methodBinding7 = mostSpecificMethodBinding(methodBindingArr, i28, typeBindingArr, invocationSite, null);
                                methodBinding6 = methodBinding6;
                            }
                        }
                        if (methodBinding7 != null) {
                            return methodBinding6 != null ? methodBinding6 : new ProblemMethodBinding(cArr, typeBindingArr, i15);
                        }
                        invocationSite.setActualReceiverType(methodBinding7.declaringClass);
                        return methodBinding7;
                    }
                }
                methodBinding7 = methodBinding7;
                if (methodBinding7 != null) {
                }
            }
            scope = scope.parent;
            i16 = i10;
            int i29 = i11;
            i15 = i12;
            i18 = i29;
        }
    }

    public final ReferenceBinding getJavaIoSerializable() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_IO_SERIALIZABLE;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangAnnotationAnnotation() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_ANNOTATION_ANNOTATION;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangAssertionError() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_ASSERTIONERROR;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangClass() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_CLASS;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangCloneable() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_CLONEABLE;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangEnum() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_ENUM;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangIllegalArgumentException() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_ILLEGALARGUMENTEXCEPTION;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangInvokeLambdaMetafactory() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_INVOKE_LAMBDAMETAFACTORY;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangInvokeMethodHandlesLookup() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_INVOKE_METHODHANDLES;
        compilationUnitScope.recordQualifiedReference(cArr);
        return findDirectMemberType("Lookup".toCharArray(), compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this));
    }

    public final ReferenceBinding getJavaLangInvokeSerializedLambda() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_INVOKE_SERIALIZEDLAMBDA;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangIterable() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_ITERABLE;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangObject() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_OBJECT;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangString() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_STRING;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaLangThrowable() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_LANG_THROWABLE;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getJavaUtilIterator() {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        char[][] cArr = TypeConstants.JAVA_UTIL_ITERATOR;
        compilationUnitScope.recordQualifiedReference(cArr);
        return compilationUnitScope.environment.getResolvedJavaBaseType(cArr, this);
    }

    public final ReferenceBinding getMemberType(char[] cArr, ReferenceBinding referenceBinding) {
        ReferenceBinding findMemberType = findMemberType(cArr, referenceBinding);
        return findMemberType != null ? findMemberType : new ProblemReferenceBinding(new char[][]{cArr}, null, 1);
    }

    public MethodBinding getMethod(TypeBinding typeBinding, char[] cArr, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        LookupEnvironment lookupEnvironment = compilationUnitScope.environment;
        try {
            try {
                lookupEnvironment.missingClassFileLocation = invocationSite;
                int kind = typeBinding.kind();
                if (kind == 68) {
                    compilationUnitScope.recordTypeReference(typeBinding);
                    return findMethodForArray((ArrayBinding) typeBinding, cArr, typeBindingArr, invocationSite);
                }
                if (kind == 132) {
                    return new ProblemMethodBinding(cArr, typeBindingArr, 1);
                }
                compilationUnitScope.recordTypeReference(typeBinding);
                ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
                if (!referenceBinding.canBeSeenBy(this)) {
                    return new ProblemMethodBinding(cArr, typeBindingArr, 8);
                }
                MethodBinding findExactMethod = findExactMethod(referenceBinding, cArr, typeBindingArr, invocationSite);
                if (findExactMethod != null && findExactMethod.isValidBinding()) {
                    return findExactMethod;
                }
                MethodBinding findMethod = findMethod(referenceBinding, cArr, typeBindingArr, invocationSite, false);
                return findMethod == null ? new ProblemMethodBinding(cArr, typeBindingArr, 1) : !findMethod.isValidBinding() ? findMethod : (typeBindingArr == Binding.NO_PARAMETERS && CharOperation.equals(cArr, TypeConstants.GETCLASS) && findMethod.returnType.isParameterizedType()) ? environment().createGetClassMethod(typeBinding, findMethod, this) : findMethod;
            } catch (AbortCompilation e10) {
                e10.updateContext(invocationSite, referenceCompilationUnit().compilationResult);
                throw e10;
            }
        } finally {
            lookupEnvironment.missingClassFileLocation = null;
        }
    }

    public final Binding getOnlyPackage(char[][] cArr) {
        compilationUnitScope().recordQualifiedReference(cArr);
        Binding typeOrPackage = getTypeOrPackage(cArr[0], 16, true);
        if (typeOrPackage == null || !typeOrPackage.isValidBinding()) {
            return new ProblemReferenceBinding(new char[][]{cArr[0]}, null, 1);
        }
        if (!(typeOrPackage instanceof PackageBinding)) {
            return null;
        }
        int length = cArr.length;
        PackageBinding packageBinding = (PackageBinding) typeOrPackage;
        int i10 = 1;
        while (i10 < length) {
            int i11 = i10 + 1;
            packageBinding = packageBinding.getPackage(cArr[i10], module());
            if (packageBinding == null) {
                return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), null, 1);
            }
            if (!packageBinding.isValidBinding()) {
                return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), null, packageBinding.problemId());
            }
            i10 = i11;
        }
        return packageBinding;
    }

    public final Binding getPackage(char[][] cArr) {
        compilationUnitScope().recordQualifiedReference(cArr);
        Binding typeOrPackage = getTypeOrPackage(cArr[0], 20, true);
        if (typeOrPackage == null) {
            return new ProblemReferenceBinding(new char[][]{cArr[0]}, environment().createMissingType(null, cArr), 1);
        }
        if (!typeOrPackage.isValidBinding()) {
            return typeOrPackage instanceof PackageBinding ? new ProblemReferenceBinding(new char[][]{cArr[0]}, null, 1) : problemType(cArr, -1, typeOrPackage);
        }
        if (!(typeOrPackage instanceof PackageBinding)) {
            return null;
        }
        int length = cArr.length;
        PackageBinding packageBinding = (PackageBinding) typeOrPackage;
        int i10 = 1;
        while (i10 < length) {
            int i11 = i10 + 1;
            Binding typeOrPackage2 = packageBinding.getTypeOrPackage(cArr[i10], module(), i11 < length);
            if (typeOrPackage2 == null) {
                return problemType(cArr, i11, null);
            }
            if (!typeOrPackage2.isValidBinding() && typeOrPackage2.problemId() != 3) {
                return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), typeOrPackage2 instanceof ReferenceBinding ? (ReferenceBinding) ((ReferenceBinding) typeOrPackage2).closestMatch() : null, typeOrPackage2.problemId());
            }
            if (!(typeOrPackage2 instanceof PackageBinding)) {
                return packageBinding;
            }
            packageBinding = (PackageBinding) typeOrPackage2;
            i10 = i11;
        }
        return new ProblemReferenceBinding(cArr, null, 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MethodBinding getStaticFactory(ParameterizedTypeBinding parameterizedTypeBinding, ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        MethodBinding[] methodBindingArr;
        TypeVariableBinding[] typeVariableBindingArr;
        MethodBinding[] methodBindingArr2;
        int i10;
        MethodBinding original;
        int i11;
        MethodBinding methodBinding;
        final Scope scope = this;
        ReferenceBinding referenceBinding2 = referenceBinding;
        TypeBinding[] typeBindingArr2 = typeBindingArr;
        InvocationSite invocationSite2 = invocationSite;
        TypeVariableBinding[] typeVariableBindingArr2 = Binding.NO_TYPE_VARIABLES;
        ReferenceBinding genericType = parameterizedTypeBinding.genericType();
        int i12 = 0;
        ReferenceBinding referenceBinding3 = genericType;
        int i13 = 0;
        while (referenceBinding3 != null) {
            TypeVariableBinding[] typeVariables = referenceBinding3.typeVariables();
            int length = typeVariables == null ? 0 : typeVariables.length;
            if (length > 0) {
                int i14 = i13 + length;
                TypeVariableBinding[] typeVariableBindingArr3 = new TypeVariableBinding[i14];
                System.arraycopy(typeVariableBindingArr2, 0, typeVariableBindingArr3, 0, i13);
                System.arraycopy(typeVariables, 0, typeVariableBindingArr3, i13, length);
                i13 = i14;
                typeVariableBindingArr2 = typeVariableBindingArr3;
            }
            if (referenceBinding3.isStatic()) {
                break;
            }
            referenceBinding3 = referenceBinding3.enclosingType();
            scope = this;
            typeBindingArr2 = typeBindingArr;
            invocationSite2 = invocationSite;
            i13 = i13;
            referenceBinding2 = referenceBinding;
        }
        TypeVariableBinding[] typeVariableBindingArr4 = typeVariableBindingArr2;
        int i15 = i13;
        boolean isInterface = parameterizedTypeBinding.isInterface();
        MethodBinding[] methods = (isInterface ? getJavaLangObject() : parameterizedTypeBinding).getMethods(TypeConstants.INIT, typeBindingArr2.length);
        MethodBinding[] methodBindingArr3 = new MethodBinding[methods.length];
        int length2 = methods.length;
        int i16 = 0;
        int i17 = 0;
        while (i17 < length2) {
            MethodBinding methodBinding2 = methods[i17];
            if (methodBinding2.canBeSeenBy(invocationSite2, scope)) {
                int length3 = methodBinding2.parameters.length;
                boolean isVarargs = methodBinding2.isVarargs();
                if (typeBindingArr2.length == length3 || (isVarargs && typeBindingArr2.length >= length3 - 1)) {
                    TypeVariableBinding[] typeVariables2 = methodBinding2.typeVariables();
                    int length4 = typeVariables2.length + i15;
                    LookupEnvironment environment = environment();
                    if (isInterface) {
                        methodBindingArr2 = methods;
                        original = new MethodBinding(methodBinding2.original(), genericType);
                    } else {
                        methodBindingArr2 = methods;
                        original = methodBinding2.original();
                    }
                    SyntheticFactoryMethodBinding syntheticFactoryMethodBinding = new SyntheticFactoryMethodBinding(original, environment, referenceBinding2);
                    syntheticFactoryMethodBinding.typeVariables = new TypeVariableBinding[length4];
                    final SimpleLookupTable simpleLookupTable = new SimpleLookupTable(length4);
                    typeVariableBindingArr = typeVariableBindingArr4;
                    i10 = length2;
                    String str = "";
                    Binding binding = null;
                    int i18 = 0;
                    while (i18 < i15) {
                        int i19 = i16;
                        ReferenceBinding referenceBinding4 = genericType;
                        int i20 = length4;
                        MethodBinding methodBinding3 = methodBinding2;
                        TypeVariableBinding typeVariableBinding = typeVariableBindingArr[i18];
                        Binding binding2 = typeVariableBinding.declaringElement;
                        Binding binding3 = binding;
                        if (binding2 != binding3) {
                            binding = binding2;
                            str = str + "'";
                        } else {
                            binding = binding3;
                        }
                        TypeBinding unannotated = typeVariableBinding.unannotated();
                        TypeVariableBinding[] typeVariableBindingArr5 = syntheticFactoryMethodBinding.typeVariables;
                        TypeVariableBinding typeVariableBinding2 = new TypeVariableBinding(CharOperation.concat(typeVariableBinding.sourceName, str.toCharArray()), syntheticFactoryMethodBinding, i18, environment);
                        typeVariableBindingArr5[i18] = typeVariableBinding2;
                        simpleLookupTable.put(unannotated, typeVariableBinding2);
                        i18++;
                        scope = this;
                        referenceBinding2 = referenceBinding;
                        length4 = i20;
                        i16 = i19;
                        genericType = referenceBinding4;
                        methodBinding2 = methodBinding3;
                    }
                    String str2 = str + "'";
                    int i21 = i15;
                    int i22 = 0;
                    while (i21 < length4) {
                        int i23 = i16;
                        ReferenceBinding referenceBinding5 = genericType;
                        TypeBinding unannotated2 = typeVariables2[i22].unannotated();
                        TypeVariableBinding[] typeVariableBindingArr6 = syntheticFactoryMethodBinding.typeVariables;
                        TypeVariableBinding typeVariableBinding3 = new TypeVariableBinding(CharOperation.concat(typeVariables2[i22].sourceName, str2.toCharArray()), syntheticFactoryMethodBinding, i21, environment);
                        typeVariableBindingArr6[i21] = typeVariableBinding3;
                        simpleLookupTable.put(unannotated2, typeVariableBinding3);
                        i21++;
                        i22++;
                        scope = this;
                        referenceBinding2 = referenceBinding;
                        length4 = length4;
                        i16 = i23;
                        genericType = referenceBinding5;
                        methodBinding2 = methodBinding2;
                    }
                    Substitution substitution = new Substitution() {
                        @Override
                        public LookupEnvironment environment() {
                            return scope.environment();
                        }

                        @Override
                        public boolean isRawSubstitution() {
                            return false;
                        }

                        @Override
                        public TypeBinding substitute(TypeVariableBinding typeVariableBinding4) {
                            TypeBinding typeBinding = (TypeBinding) simpleLookupTable.get(typeVariableBinding4.unannotated());
                            return typeBinding == null ? typeVariableBinding4 : typeVariableBinding4.hasTypeAnnotations() ? environment().createAnnotatedType(typeBinding, typeVariableBinding4.getTypeAnnotations()) : typeBinding;
                        }
                    };
                    int i24 = 0;
                    while (i24 < length4) {
                        TypeVariableBinding typeVariableBinding4 = i24 < i15 ? typeVariableBindingArr[i24] : typeVariables2[i24 - i15];
                        TypeVariableBinding typeVariableBinding5 = (TypeVariableBinding) simpleLookupTable.get(typeVariableBinding4.unannotated());
                        int i25 = i16;
                        TypeBinding substitute = substitute(substitution, typeVariableBinding4.superclass);
                        ReferenceBinding referenceBinding6 = genericType;
                        ReferenceBinding[] substitute2 = substitute(substitution, typeVariableBinding4.superInterfaces);
                        TypeBinding typeBinding = typeVariableBinding4.firstBound;
                        if (typeBinding != null) {
                            typeVariableBinding5.setFirstBound(TypeBinding.equalsEquals(typeBinding, typeVariableBinding4.superclass) ? substitute : substitute2[0]);
                        }
                        if (substitute.kind() == 68) {
                            i11 = length4;
                            methodBinding = methodBinding2;
                            typeVariableBinding5.setSuperClass(environment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_OBJECT, null));
                            typeVariableBinding5.setSuperInterfaces(substitute2);
                        } else if (substitute.isInterface()) {
                            typeVariableBinding5.setSuperClass(environment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_OBJECT, null));
                            int length5 = substitute2.length;
                            ReferenceBinding[] referenceBindingArr = new ReferenceBinding[length5 + 1];
                            i11 = length4;
                            methodBinding = methodBinding2;
                            System.arraycopy(substitute2, 0, referenceBindingArr, 1, length5);
                            referenceBindingArr[0] = (ReferenceBinding) substitute;
                            typeVariableBinding5.setSuperInterfaces(referenceBindingArr);
                        } else {
                            i11 = length4;
                            methodBinding = methodBinding2;
                            typeVariableBinding5.setSuperClass((ReferenceBinding) substitute);
                            typeVariableBinding5.setSuperInterfaces(substitute2);
                        }
                        i24++;
                        scope = this;
                        referenceBinding2 = referenceBinding;
                        length4 = i11;
                        i16 = i25;
                        genericType = referenceBinding6;
                        methodBinding2 = methodBinding;
                    }
                    syntheticFactoryMethodBinding.returnType = environment.createParameterizedType(genericType, substitute(substitution, (ReferenceBinding[]) genericType.typeVariables()), referenceBinding2);
                    syntheticFactoryMethodBinding.parameters = substitute(substitution, methodBinding2.parameters);
                    ReferenceBinding[] substitute3 = substitute(substitution, methodBinding2.thrownExceptions);
                    syntheticFactoryMethodBinding.thrownExceptions = substitute3;
                    if (substitute3 == null) {
                        syntheticFactoryMethodBinding.thrownExceptions = Binding.NO_EXCEPTIONS;
                    }
                    int i26 = i16 + 1;
                    methodBindingArr3[i16] = new ParameterizedMethodBinding((ParameterizedTypeBinding) environment.convertToParameterizedType(isInterface ? parameterizedTypeBinding : syntheticFactoryMethodBinding.declaringClass), syntheticFactoryMethodBinding);
                    i16 = i26;
                    i17++;
                    typeBindingArr2 = typeBindingArr;
                    invocationSite2 = invocationSite;
                    methods = methodBindingArr2;
                    length2 = i10;
                    typeVariableBindingArr4 = typeVariableBindingArr;
                    i12 = 0;
                }
            }
            typeVariableBindingArr = typeVariableBindingArr4;
            methodBindingArr2 = methods;
            i10 = length2;
            i17++;
            typeBindingArr2 = typeBindingArr;
            invocationSite2 = invocationSite;
            methods = methodBindingArr2;
            length2 = i10;
            typeVariableBindingArr4 = typeVariableBindingArr;
            i12 = 0;
        }
        if (i16 == 0) {
            return null;
        }
        if (i16 != methods.length) {
            MethodBinding[] methodBindingArr4 = new MethodBinding[i16];
            System.arraycopy(methodBindingArr3, i12, methodBindingArr4, i12, i16);
            methodBindingArr = methodBindingArr4;
        } else {
            methodBindingArr = methodBindingArr3;
        }
        MethodBinding[] methodBindingArr5 = new MethodBinding[i16];
        int i27 = i12;
        int i28 = i27;
        while (i27 < i16) {
            MethodBinding computeCompatibleMethod = scope.computeCompatibleMethod(methodBindingArr[i27], typeBindingArr2, invocationSite2);
            if (computeCompatibleMethod != null && computeCompatibleMethod.isValidBinding()) {
                methodBindingArr5[i28] = computeCompatibleMethod;
                i28++;
            }
            i27++;
        }
        if (i28 == 0) {
            return null;
        }
        return i28 == 1 ? methodBindingArr5[i12] : mostSpecificMethodBinding(methodBindingArr5, i28, typeBindingArr, invocationSite, parameterizedTypeBinding);
    }

    public final TypeBinding getType(char[] cArr) {
        TypeBinding baseType = getBaseType(cArr);
        return baseType != null ? baseType : (ReferenceBinding) getTypeOrPackage(cArr, 4, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:208:0x0282, code lost:
    
        return r10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [int] */
    /* JADX WARN: Type inference failed for: r8v13, types: [int] */
    /* JADX WARN: Type inference failed for: r9v17, types: [int] */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Binding getTypeOrPackage(char[] cArr, int i10, boolean z10) {
        ReferenceBinding referenceBinding;
        TypeVariableBinding typeVariableBinding;
        ReferenceBinding findMemberType;
        Scope scope;
        MissingTypeBinding createMissingType;
        PackageBinding topLevelPackage;
        ReferenceBinding findDirectMemberType;
        Binding resolveSingleImport;
        Binding binding;
        int i11 = i10 & 4;
        int i12 = 3;
        boolean z11 = false;
        boolean z12 = false;
        int i13 = 4;
        if (i11 == 0) {
            scope = this;
            while (true) {
                Scope scope2 = scope.parent;
                if (scope2 == null) {
                    break;
                }
                scope = scope2;
            }
            referenceBinding = null;
        } else {
            boolean z13 = compilerOptions().complianceLevel >= ClassFileConstants.JDK1_4;
            Scope scope3 = this;
            boolean z14 = false;
            boolean z15 = false;
            referenceBinding = null;
            while (true) {
                int i14 = scope3.kind;
                if (i14 != 1) {
                    if (i14 == 2) {
                        MethodScope methodScope = (MethodScope) scope3;
                        AbstractMethodDeclaration referenceMethod = methodScope.referenceMethod();
                        if (referenceMethod != null) {
                            MethodBinding methodBinding = referenceMethod.binding;
                            if (methodBinding != null) {
                                TypeVariableBinding typeVariable = methodBinding.getTypeVariable(cArr);
                                if (typeVariable != null) {
                                    return typeVariable;
                                }
                            } else {
                                TypeParameter[] typeParameters = referenceMethod.typeParameters();
                                int length = typeParameters == null ? 0 : typeParameters.length;
                                while (true) {
                                    length--;
                                    if (length < 0) {
                                        break;
                                    }
                                    if (CharOperation.equals(typeParameters[length].name, cArr) && (typeVariableBinding = typeParameters[length].binding) != null && typeVariableBinding.isValidBinding()) {
                                        return typeParameters[length].binding;
                                    }
                                }
                            }
                        }
                        z15 |= methodScope.isStatic;
                        z14 = methodScope.insideTypeAnnotation;
                    } else {
                        if (i14 == i12) {
                            SourceTypeBinding sourceTypeBinding = ((ClassScope) scope3).referenceContext.binding;
                            if (scope3 == this && (sourceTypeBinding.tagBits & TagBits.TypeVariablesAreConnected) == 0) {
                                TypeVariableBinding typeVariable2 = sourceTypeBinding.getTypeVariable(cArr);
                                if (typeVariable2 != null) {
                                    return typeVariable2;
                                }
                                if (CharOperation.equals(cArr, sourceTypeBinding.sourceName)) {
                                    return sourceTypeBinding;
                                }
                                z15 |= sourceTypeBinding.isStatic();
                                i12 = 3;
                            }
                            if (z14 || (findMemberType = findMemberType(cArr, sourceTypeBinding)) == null) {
                                i12 = 3;
                            } else {
                                i12 = 3;
                                if (findMemberType.problemId() == 3) {
                                    return (referenceBinding == null || referenceBinding.problemId() == 2) ? findMemberType : new ProblemReferenceBinding(new char[][]{cArr}, referenceBinding, 5);
                                }
                                if (findMemberType.isValidBinding() && (TypeBinding.equalsEquals(sourceTypeBinding, findMemberType.enclosingType()) || z13)) {
                                    if (z15 && !findMemberType.isStatic() && sourceTypeBinding.isGenericType()) {
                                        return new ProblemReferenceBinding(new char[][]{cArr}, findMemberType, 7);
                                    }
                                    if (referenceBinding == null || (z13 && referenceBinding.problemId() == 2)) {
                                        break;
                                    }
                                    if (referenceBinding.isValidBinding() && TypeBinding.notEquals(referenceBinding, findMemberType)) {
                                        return new ProblemReferenceBinding(new char[][]{cArr}, referenceBinding, 5);
                                    }
                                }
                                if (referenceBinding == null || (referenceBinding.problemId() == 2 && findMemberType.problemId() != 2)) {
                                    referenceBinding = findMemberType;
                                }
                            }
                            TypeVariableBinding typeVariable3 = sourceTypeBinding.getTypeVariable(cArr);
                            if (typeVariable3 != null) {
                                return z15 ? new ProblemReferenceBinding(new char[][]{cArr}, typeVariable3, 7) : typeVariable3;
                            }
                            z15 |= sourceTypeBinding.isStatic();
                            if (CharOperation.equals(sourceTypeBinding.sourceName, cArr)) {
                                return (referenceBinding == null || !TypeBinding.notEquals(referenceBinding, sourceTypeBinding) || referenceBinding.problemId() == 2) ? sourceTypeBinding : new ProblemReferenceBinding(new char[][]{cArr}, referenceBinding, 5);
                            }
                            z14 = false;
                        } else if (i14 == i13) {
                            if (referenceBinding != null && referenceBinding.problemId() != 2) {
                                return referenceBinding;
                            }
                            scope = scope3;
                            z12 = z11;
                        }
                        scope3 = scope3.parent;
                        z11 = false;
                        i13 = 4;
                    }
                }
                ReferenceBinding findLocalType = ((BlockScope) scope3).findLocalType(cArr);
                if (findLocalType != null) {
                    return (referenceBinding == null || !TypeBinding.notEquals(referenceBinding, findLocalType)) ? findLocalType : new ProblemReferenceBinding(new char[][]{cArr}, referenceBinding, 5);
                }
                scope3 = scope3.parent;
                z11 = false;
                i13 = 4;
            }
        }
        CompilationUnitScope compilationUnitScope = (CompilationUnitScope) scope;
        HashtableOfObject hashtableOfObject = compilationUnitScope.typeOrPackageCache;
        if (hashtableOfObject != null && (binding = (Binding) hashtableOfObject.get(cArr)) != null) {
            if (binding instanceof ImportBinding) {
                ImportBinding importBinding = (ImportBinding) binding;
                ImportReference importReference = importBinding.reference;
                if (importReference != null) {
                    importReference.bits |= 2;
                }
                if (binding instanceof ImportConflictBinding) {
                    binding = ((ImportConflictBinding) binding).conflictingTypeBinding;
                    hashtableOfObject.put(cArr, binding);
                } else {
                    binding = importBinding.resolvedImport;
                    hashtableOfObject.put(cArr, binding);
                }
            }
            if (i11 != 0) {
                if (referenceBinding != null && referenceBinding.problemId() != 2 && binding.problemId() != i12) {
                    return referenceBinding;
                }
                if (binding instanceof ReferenceBinding) {
                    return binding;
                }
            }
            if ((i10 & 16) != 0 && (binding instanceof PackageBinding)) {
                return binding;
            }
        }
        if (i11 != 0) {
            ImportBinding[] importBindingArr = compilationUnitScope.imports;
            if (importBindingArr != null && hashtableOfObject == null) {
                int length2 = importBindingArr.length;
                for (?? r82 = z12; r82 < length2; r82++) {
                    ImportBinding importBinding2 = importBindingArr[r82];
                    if (!importBinding2.onDemand) {
                        char[][] cArr2 = importBinding2.compoundName;
                        if (CharOperation.equals(cArr2[cArr2.length - 1], cArr) && (resolveSingleImport = compilationUnitScope.resolveSingleImport(importBinding2, i13)) != null && (resolveSingleImport instanceof TypeBinding)) {
                            ImportReference importReference2 = importBinding2.reference;
                            if (importReference2 != null) {
                                importReference2.bits |= 2;
                            }
                            return resolveSingleImport;
                        }
                    }
                }
            }
            PackageBinding packageBinding = compilationUnitScope.fPackage;
            compilationUnitScope.recordReference(packageBinding.compoundName, cArr);
            Binding typeOrPackage = packageBinding.getTypeOrPackage(cArr, module(), z12);
            if (typeOrPackage instanceof ReferenceBinding) {
                ReferenceBinding referenceBinding2 = (ReferenceBinding) typeOrPackage;
                if ((referenceBinding2.tagBits & 128) == 0) {
                    if (hashtableOfObject != null) {
                        hashtableOfObject.put(cArr, referenceBinding2);
                    }
                    return referenceBinding2;
                }
            }
            if (importBindingArr != null) {
                int length3 = importBindingArr.length;
                boolean z16 = z12;
                ReferenceBinding referenceBinding3 = null;
                for (?? r92 = z12; r92 < length3; r92++) {
                    ImportBinding importBinding3 = importBindingArr[r92];
                    if (importBinding3.onDemand) {
                        Binding binding2 = importBinding3.resolvedImport;
                        if (binding2 instanceof PackageBinding) {
                            findDirectMemberType = findType(cArr, (PackageBinding) binding2, packageBinding);
                        } else if (importBinding3.isStatic()) {
                            findDirectMemberType = compilationUnitScope().findMemberType(cArr, (ReferenceBinding) binding2);
                            if (findDirectMemberType != null && !findDirectMemberType.isStatic()) {
                                findDirectMemberType = null;
                            }
                        } else {
                            findDirectMemberType = compilationUnitScope().findDirectMemberType(cArr, (ReferenceBinding) binding2);
                        }
                        if (TypeBinding.notEquals(findDirectMemberType, referenceBinding3) && findDirectMemberType != null) {
                            if (findDirectMemberType.isValidBinding()) {
                                ImportReference importReference3 = importBinding3.reference;
                                if (importReference3 != null) {
                                    importReference3.bits |= 2;
                                }
                                if (z16) {
                                    ProblemReferenceBinding problemReferenceBinding = new ProblemReferenceBinding(new char[][]{cArr}, referenceBinding3, 3);
                                    if (hashtableOfObject != null) {
                                        hashtableOfObject.put(cArr, problemReferenceBinding);
                                    }
                                    return problemReferenceBinding;
                                }
                                z16 = true;
                                referenceBinding3 = findDirectMemberType;
                            } else if (referenceBinding == null) {
                                referenceBinding = findDirectMemberType;
                            }
                        }
                    }
                    z16 = z16;
                }
                if (referenceBinding3 != null) {
                    if (hashtableOfObject != null) {
                        hashtableOfObject.put(cArr, referenceBinding3);
                    }
                    return referenceBinding3;
                }
            }
        }
        compilationUnitScope.recordSimpleReference(cArr);
        int i15 = i10 & 16;
        if (i15 != 0 && (topLevelPackage = compilationUnitScope.environment.getTopLevelPackage(cArr)) != null && (topLevelPackage.tagBits & 128) == 0) {
            if (hashtableOfObject != null) {
                hashtableOfObject.put(cArr, topLevelPackage);
            }
            return topLevelPackage;
        }
        if (referenceBinding != null) {
            if ((referenceBinding.tagBits & 128) == 0) {
                return referenceBinding;
            }
            ProblemReferenceBinding problemReferenceBinding2 = new ProblemReferenceBinding(new char[][]{cArr}, referenceBinding, 1);
            if (hashtableOfObject != null && i15 != 0) {
                hashtableOfObject.put(cArr, problemReferenceBinding2);
            }
            return problemReferenceBinding2;
        }
        char[][] cArr3 = {cArr};
        if (i15 != 0) {
            if (z10) {
                createMissingType = environment().createMissingType(compilationUnitScope.fPackage, cArr3);
            }
            createMissingType = null;
        } else {
            PackageBinding topLevelPackage2 = compilationUnitScope.environment.getTopLevelPackage(cArr);
            if ((topLevelPackage2 == null || !topLevelPackage2.isValidBinding()) && z10) {
                createMissingType = environment().createMissingType(compilationUnitScope.fPackage, cArr3);
            }
            createMissingType = null;
        }
        ProblemReferenceBinding problemReferenceBinding3 = new ProblemReferenceBinding(cArr3, createMissingType, 1);
        if (hashtableOfObject == null || i15 == 0) {
            return problemReferenceBinding3;
        }
        hashtableOfObject.put(cArr, problemReferenceBinding3);
        return problemReferenceBinding3;
    }

    public boolean hasDefaultNullnessFor(int i10, int i11) {
        int localNonNullByDefaultValue = localNonNullByDefaultValue(i11);
        return localNonNullByDefaultValue != 0 ? (i10 & localNonNullByDefaultValue) != 0 : this.parent.hasDefaultNullnessFor(i10, i11);
    }

    public boolean hasErasedCandidatesCollisions(TypeBinding typeBinding, TypeBinding typeBinding2, Map map, ReferenceBinding referenceBinding, ASTNode aSTNode) {
        map.clear();
        TypeBinding[] minimalErasedCandidates = minimalErasedCandidates(new TypeBinding[]{typeBinding, typeBinding2}, map);
        if (minimalErasedCandidates != null) {
            for (TypeBinding typeBinding3 : minimalErasedCandidates) {
                if (typeBinding3 != null) {
                    Object obj = map.get(typeBinding3);
                    if (obj instanceof TypeBinding[]) {
                        TypeBinding[] typeBindingArr = (TypeBinding[]) obj;
                        problemReporter().superinterfacesCollide(typeBindingArr[0].erasure(), aSTNode, typeBindingArr[0], typeBindingArr[1]);
                        referenceBinding.tagBits |= 131072;
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public CaseStatement innermostSwitchCase() {
        Scope scope = this;
        while (!(scope instanceof BlockScope)) {
            scope = scope.parent;
            if (scope == null) {
                return null;
            }
        }
        return ((BlockScope) scope).enclosingCase;
    }

    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v5 */
    public boolean isAcceptableMethod(MethodBinding methodBinding, MethodBinding methodBinding2) {
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        TypeBinding[] typeBindingArr2 = methodBinding2.parameters;
        int length = typeBindingArr.length;
        int length2 = typeBindingArr2.length;
        long j10 = ClassFileConstants.JDK1_7;
        ?? r10 = 1;
        if (length != length2) {
            if (!methodBinding.isVarargs() || !methodBinding2.isVarargs() || (CompilerOptions.tolerateIllegalAmbiguousVarargsInvocation && compilerOptions().complianceLevel < ClassFileConstants.JDK1_7 && length > length2 && ((ArrayBinding) typeBindingArr2[length2 - 1]).elementsType().f102482id != 1)) {
                return false;
            }
            if (length > length2) {
                length = length2;
            }
            for (int i10 = length - 2; i10 >= 0; i10--) {
                if (TypeBinding.notEquals(typeBindingArr[i10], typeBindingArr2[i10]) && !typeBindingArr[i10].isCompatibleWith(typeBindingArr2[i10])) {
                    return false;
                }
            }
            return parameterCompatibilityLevel(methodBinding, typeBindingArr2, true) == -1 && parameterCompatibilityLevel(methodBinding2, typeBindingArr, true) == 2;
        }
        boolean z10 = environment().globalOptions.sourceLevel < ClassFileConstants.JDK1_5;
        int i11 = 0;
        while (i11 < length) {
            TypeBinding erasure = z10 ? typeBindingArr[i11].erasure() : typeBindingArr[i11];
            TypeBinding erasure2 = z10 ? typeBindingArr2[i11].erasure() : typeBindingArr2[i11];
            if (!TypeBinding.equalsEquals(erasure, erasure2) && !erasure.isCompatibleWith(erasure2)) {
                if (i11 == length - r10 && methodBinding.isVarargs() && methodBinding2.isVarargs()) {
                    TypeBinding elementsType = ((ArrayBinding) erasure).elementsType();
                    TypeBinding elementsType2 = ((ArrayBinding) erasure2).elementsType();
                    if (!CompilerOptions.tolerateIllegalAmbiguousVarargsInvocation || compilerOptions().complianceLevel >= j10) {
                        if (TypeBinding.equalsEquals(elementsType, elementsType2) || elementsType.isCompatibleWith(elementsType2)) {
                            return r10;
                        }
                    } else if (TypeBinding.equalsEquals(erasure, elementsType2) || erasure.isCompatibleWith(elementsType2)) {
                        return r10;
                    }
                }
                return false;
            }
            if (!methodBinding2.declaringClass.isRawType()) {
                TypeBinding leafComponentType = methodBinding2.original().parameters[i11].leafComponentType();
                if (z10) {
                    leafComponentType = leafComponentType.erasure();
                }
                int kind = leafComponentType.kind();
                if (kind != 260 && kind != 516) {
                    if (kind != 4100) {
                        if (kind != 8196) {
                            continue;
                        }
                    } else if (((TypeVariableBinding) leafComponentType).hasOnlyRawBounds()) {
                        continue;
                    }
                }
                TypeBinding leafComponentType2 = methodBinding.original().parameters[i11].leafComponentType();
                int kind2 = leafComponentType2.kind();
                if (kind2 != 4) {
                    if (kind2 != 1028) {
                        if (kind2 != 2052) {
                            if (kind2 == 4100 && ((TypeVariableBinding) leafComponentType2).upperBound().isRawType()) {
                            }
                        }
                    }
                    return false;
                }
                TypeBinding findSuperTypeOriginatingFrom = erasure.findSuperTypeOriginatingFrom(erasure2);
                if (findSuperTypeOriginatingFrom != null && findSuperTypeOriginatingFrom.leafComponentType().isRawType()) {
                    return false;
                }
            }
            i11++;
            j10 = ClassFileConstants.JDK1_7;
            r10 = 1;
        }
        return r10;
    }

    public boolean isBoxingCompatibleWith(TypeBinding typeBinding, TypeBinding typeBinding2) {
        LookupEnvironment environment = environment();
        if (environment.globalOptions.sourceLevel < ClassFileConstants.JDK1_5 || typeBinding.isBaseType() == typeBinding2.isBaseType()) {
            return false;
        }
        TypeBinding computeBoxingType = environment.computeBoxingType(typeBinding);
        return TypeBinding.equalsEquals(computeBoxingType, typeBinding2) || computeBoxingType.isCompatibleWith(typeBinding2, this);
    }

    public final boolean isDefinedInField(FieldBinding fieldBinding) {
        Scope scope = this;
        do {
            if ((scope instanceof MethodScope) && ((MethodScope) scope).initializedField == fieldBinding) {
                return true;
            }
            scope = scope.parent;
        } while (scope != null);
        return false;
    }

    public final boolean isDefinedInMethod(MethodBinding methodBinding) {
        MethodBinding original = methodBinding.original();
        Scope scope = this;
        do {
            if (scope instanceof MethodScope) {
                ReferenceContext referenceContext = ((MethodScope) scope).referenceContext;
                if ((referenceContext instanceof AbstractMethodDeclaration) && ((AbstractMethodDeclaration) referenceContext).binding == original) {
                    return true;
                }
            }
            scope = scope.parent;
        } while (scope != null);
        return false;
    }

    public final boolean isDefinedInSameUnit(ReferenceBinding referenceBinding) {
        while (true) {
            ReferenceBinding enclosingType = referenceBinding.enclosingType();
            if (enclosingType == null) {
                break;
            }
            referenceBinding = enclosingType;
        }
        Scope scope = this;
        while (true) {
            Scope scope2 = scope.parent;
            if (scope2 == null) {
                break;
            }
            scope = scope2;
        }
        SourceTypeBinding[] sourceTypeBindingArr = ((CompilationUnitScope) scope).topLevelTypes;
        int length = sourceTypeBindingArr.length;
        do {
            length--;
            if (length < 0) {
                return false;
            }
        } while (!TypeBinding.equalsEquals(sourceTypeBindingArr[length], referenceBinding.original()));
        return true;
    }

    public final boolean isDefinedInType(ReferenceBinding referenceBinding) {
        Scope scope = this;
        do {
            if ((scope instanceof ClassScope) && TypeBinding.equalsEquals(((ClassScope) scope).referenceContext.binding, referenceBinding)) {
                return true;
            }
            scope = scope.parent;
        } while (scope != null);
        return false;
    }

    public boolean isInsideCase(CaseStatement caseStatement) {
        Scope scope = this;
        do {
            if (scope.kind == 1 && ((BlockScope) scope).enclosingCase == caseStatement) {
                return true;
            }
            scope = scope.parent;
        } while (scope != null);
        return false;
    }

    public boolean isInsideDeprecatedCode() {
        TypeDeclaration[] typeDeclarationArr;
        SourceTypeBinding sourceTypeBinding;
        int i10 = this.kind;
        if (i10 == 1 || i10 == 2) {
            MethodScope methodScope = methodScope();
            if (methodScope.isInsideInitializer()) {
                FieldBinding fieldBinding = methodScope.initializedField;
                if (fieldBinding != null && fieldBinding.isViewedAsDeprecated()) {
                    return true;
                }
            } else {
                ReferenceContext referenceContext = methodScope.referenceContext();
                if (referenceContext instanceof AbstractMethodDeclaration) {
                    MethodBinding methodBinding = ((AbstractMethodDeclaration) referenceContext).binding;
                    if (methodBinding != null && methodBinding.isViewedAsDeprecated()) {
                        return true;
                    }
                } else if (referenceContext instanceof LambdaExpression) {
                    MethodBinding methodBinding2 = ((LambdaExpression) referenceContext).binding;
                    if (methodBinding2 != null && methodBinding2.isViewedAsDeprecated()) {
                        return true;
                    }
                } else if (referenceContext instanceof ModuleDeclaration) {
                    SourceModuleBinding sourceModuleBinding = ((ModuleDeclaration) referenceContext).binding;
                    return sourceModuleBinding != null && sourceModuleBinding.isDeprecated();
                }
            }
            SourceTypeBinding sourceTypeBinding2 = ((BlockScope) this).referenceType().binding;
            if (sourceTypeBinding2 != null) {
                sourceTypeBinding2.initializeDeprecatedAnnotationTagBits();
                if (sourceTypeBinding2.isViewedAsDeprecated()) {
                    return true;
                }
            }
        } else if (i10 == 3) {
            SourceTypeBinding sourceTypeBinding3 = ((ClassScope) this).referenceType().binding;
            if (sourceTypeBinding3 != null) {
                sourceTypeBinding3.initializeDeprecatedAnnotationTagBits();
                if (sourceTypeBinding3.isViewedAsDeprecated()) {
                    return true;
                }
            }
        } else if (i10 == 4 && (typeDeclarationArr = referenceCompilationUnit().types) != null && typeDeclarationArr.length > 0 && (sourceTypeBinding = typeDeclarationArr[0].binding) != null) {
            sourceTypeBinding.initializeDeprecatedAnnotationTagBits();
            if (sourceTypeBinding.isViewedAsDeprecated()) {
                return true;
            }
        }
        return false;
    }

    public boolean isLambdaScope() {
        return false;
    }

    public boolean isLambdaSubscope() {
        for (Scope scope = this; scope != null; scope = scope.parent) {
            int i10 = scope.kind;
            if (i10 != 1) {
                if (i10 != 2) {
                    return false;
                }
                return scope.isLambdaScope();
            }
        }
        return false;
    }

    public boolean isModuleScope() {
        return false;
    }

    public boolean isSubtypeOfRawType(TypeBinding typeBinding) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] referenceBindingArr2;
        TypeBinding leafComponentType = typeBinding.leafComponentType();
        if (leafComponentType.isBaseType()) {
            return false;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) leafComponentType;
        ReferenceBinding[] referenceBindingArr3 = null;
        int i10 = 0;
        while (!referenceBinding.isRawType()) {
            ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
            if (superInterfaces != null && superInterfaces != Binding.NO_SUPERINTERFACES) {
                if (referenceBindingArr3 == null) {
                    i10 = superInterfaces.length;
                    referenceBindingArr3 = superInterfaces;
                } else {
                    int length = i10 + superInterfaces.length;
                    if (length >= referenceBindingArr3.length) {
                        referenceBindingArr2 = new ReferenceBinding[length + 5];
                        System.arraycopy(referenceBindingArr3, 0, referenceBindingArr2, 0, i10);
                    } else {
                        referenceBindingArr2 = referenceBindingArr3;
                    }
                    int i11 = i10;
                    for (ReferenceBinding referenceBinding2 : superInterfaces) {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= i11) {
                                referenceBindingArr2[i11] = referenceBinding2;
                                i11++;
                                break;
                            }
                            if (TypeBinding.equalsEquals(referenceBinding2, referenceBindingArr2[i12])) {
                                break;
                            }
                            i12++;
                        }
                    }
                    referenceBindingArr3 = referenceBindingArr2;
                    i10 = i11;
                }
            }
            referenceBinding = referenceBinding.superclass();
            if (referenceBinding == null) {
                for (int i13 = 0; i13 < i10; i13++) {
                    ReferenceBinding referenceBinding3 = referenceBindingArr3[i13];
                    if (referenceBinding3.isRawType()) {
                        return true;
                    }
                    ReferenceBinding[] superInterfaces2 = referenceBinding3.superInterfaces();
                    if (superInterfaces2 != null && superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                        int length2 = i10 + superInterfaces2.length;
                        if (length2 >= referenceBindingArr3.length) {
                            referenceBindingArr = new ReferenceBinding[length2 + 5];
                            System.arraycopy(referenceBindingArr3, 0, referenceBindingArr, 0, i10);
                        } else {
                            referenceBindingArr = referenceBindingArr3;
                        }
                        int i14 = i10;
                        for (ReferenceBinding referenceBinding4 : superInterfaces2) {
                            int i15 = 0;
                            while (true) {
                                if (i15 >= i14) {
                                    referenceBindingArr[i14] = referenceBinding4;
                                    i14++;
                                    break;
                                }
                                if (TypeBinding.equalsEquals(referenceBinding4, referenceBindingArr[i15])) {
                                    break;
                                }
                                i15++;
                            }
                        }
                        referenceBindingArr3 = referenceBindingArr;
                        i10 = i14;
                    }
                }
                return false;
            }
        }
        return true;
    }

    public final Binding localCheckRedundantDefaultNullness(int i10, int i11) {
        NullDefaultRange nullDefaultRangeForPosition = nullDefaultRangeForPosition(i11);
        if (nullDefaultRangeForPosition != null) {
            return i10 == nullDefaultRangeForPosition.value ? nullDefaultRangeForPosition.target : NOT_REDUNDANT;
        }
        return null;
    }

    public final int localNonNullByDefaultValue(int i10) {
        NullDefaultRange nullDefaultRangeForPosition = nullDefaultRangeForPosition(i10);
        if (nullDefaultRangeForPosition != null) {
            return nullDefaultRangeForPosition.value;
        }
        return 0;
    }

    public TypeBinding lowerUpperBound(TypeBinding[] typeBindingArr) {
        if (typeBindingArr.length == 1) {
            TypeBinding typeBinding = typeBindingArr[0];
            return typeBinding == null ? TypeBinding.VOID : typeBinding;
        }
        return lowerUpperBound(typeBindingArr, new ArrayList(1));
    }

    public final MethodScope methodScope() {
        Scope scope = this;
        while (!(scope instanceof MethodScope)) {
            scope = scope.parent;
            if (scope == null) {
                return null;
            }
        }
        return (MethodScope) scope;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:42:0x01ed. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    public TypeBinding[] minimalErasedCandidates(TypeBinding[] typeBindingArr, Map map) {
        LocalTypeBinding localTypeBinding;
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        TypeBinding[] typeBindingArr2;
        int length = typeBindingArr.length;
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            TypeBinding[] typeBindingArr3 = null;
            if (i12 >= length) {
                if (i13 == 0) {
                    return Binding.NO_TYPES;
                }
                if (i13 == 1) {
                    return typeBindingArr;
                }
                TypeBinding typeBinding3 = typeBindingArr[i10];
                if (typeBinding3.isBaseType()) {
                    return null;
                }
                ArrayList arrayList = new ArrayList(5);
                typeBinding3.dimensions();
                int kind = typeBinding3.leafComponentType().kind();
                TypeBinding erasure = (kind == 68 || kind == 260 || kind == 1028) ? typeBinding3.erasure() : typeBinding3;
                if (TypeBinding.notEquals(erasure, typeBinding3)) {
                    map.put(erasure, typeBinding3);
                }
                arrayList.add(typeBinding3);
                int i14 = i11;
                int i15 = 1;
                while (i14 < i15) {
                    int i16 = i11;
                    TypeBinding typeBinding4 = (TypeBinding) arrayList.get(i14);
                    int dimensions = typeBinding4.dimensions();
                    if (dimensions > 0) {
                        TypeBinding leafComponentType = typeBinding4.leafComponentType();
                        switch (leafComponentType.f102482id) {
                            case 1:
                                if (dimensions > 1) {
                                    TypeBinding elementsType = ((ArrayBinding) typeBinding4).elementsType();
                                    if (arrayList.contains(elementsType)) {
                                        break;
                                    } else {
                                        arrayList.add(elementsType);
                                        i15++;
                                        break;
                                    }
                                }
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                                ReferenceBinding javaIoSerializable = getJavaIoSerializable();
                                if (!arrayList.contains(javaIoSerializable)) {
                                    arrayList.add(javaIoSerializable);
                                    i15++;
                                }
                                ReferenceBinding javaLangCloneable = getJavaLangCloneable();
                                if (!arrayList.contains(javaLangCloneable)) {
                                    arrayList.add(javaLangCloneable);
                                    i15++;
                                }
                                ReferenceBinding javaLangObject = getJavaLangObject();
                                if (arrayList.contains(javaLangObject)) {
                                    break;
                                } else {
                                    arrayList.add(javaLangObject);
                                    i15++;
                                    break;
                                }
                            case 6:
                            default:
                                typeBinding4 = leafComponentType;
                                break;
                        }
                        i14++;
                        i11 = i16;
                        typeBindingArr3 = null;
                    }
                    ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding4;
                    if (referenceBinding.isCapture() && (typeBinding2 = ((CaptureBinding) referenceBinding).firstBound) != null && typeBinding2.isArrayType()) {
                        ArrayBinding createArrayType = dimensions == 0 ? typeBinding2 : environment().createArrayType(typeBinding2, dimensions);
                        if (!arrayList.contains(createArrayType)) {
                            arrayList.add(createArrayType);
                            i15++;
                            TypeBinding erasure2 = (typeBinding2.isTypeVariable() || typeBinding2.isWildcard()) ? createArrayType : createArrayType.erasure();
                            if (TypeBinding.notEquals(erasure2, createArrayType)) {
                                map.put(erasure2, createArrayType);
                            }
                        }
                    } else {
                        TypeBinding[] superInterfaces = referenceBinding.superInterfaces();
                        if (superInterfaces != null) {
                            int length2 = superInterfaces.length;
                            for (int i17 = i16; i17 < length2; i17++) {
                                TypeBinding typeBinding5 = superInterfaces[i17];
                                ArrayBinding createArrayType2 = dimensions == 0 ? typeBinding5 : environment().createArrayType(typeBinding5, dimensions);
                                if (!arrayList.contains(createArrayType2)) {
                                    arrayList.add(createArrayType2);
                                    i15++;
                                    TypeBinding erasure3 = (typeBinding5.isTypeVariable() || typeBinding5.isWildcard()) ? createArrayType2 : createArrayType2.erasure();
                                    if (TypeBinding.notEquals(erasure3, createArrayType2)) {
                                        map.put(erasure3, createArrayType2);
                                    }
                                }
                            }
                        }
                        TypeBinding superclass = referenceBinding.superclass();
                        if (superclass != null) {
                            ArrayBinding createArrayType3 = dimensions == 0 ? superclass : environment().createArrayType(superclass, dimensions);
                            if (!arrayList.contains(createArrayType3)) {
                                arrayList.add(createArrayType3);
                                i15++;
                                TypeBinding erasure4 = (superclass.isTypeVariable() || superclass.isWildcard()) ? createArrayType3 : createArrayType3.erasure();
                                if (TypeBinding.notEquals(erasure4, createArrayType3)) {
                                    map.put(erasure4, createArrayType3);
                                }
                            }
                        }
                    }
                    i14++;
                    i11 = i16;
                    typeBindingArr3 = null;
                }
                int size = arrayList.size();
                TypeBinding[] typeBindingArr4 = new TypeBinding[size];
                Iterator it = arrayList.iterator();
                int i18 = i11;
                while (it.hasNext()) {
                    int i19 = i11;
                    TypeBinding typeBinding6 = (TypeBinding) it.next();
                    TypeBinding leafComponentType2 = typeBinding6.leafComponentType();
                    int i20 = i18 + 1;
                    if (!leafComponentType2.isTypeVariable() && !leafComponentType2.isWildcard()) {
                        typeBinding6 = typeBinding6.erasure();
                    }
                    typeBindingArr4[i18] = typeBinding6;
                    i18 = i20;
                    i11 = i19;
                    typeBindingArr3 = null;
                }
                int i21 = i10 + 1;
                int i22 = size;
                while (i21 < length) {
                    LocalTypeBinding localTypeBinding2 = typeBindingArr[i21];
                    if (localTypeBinding2 != 0) {
                        if (localTypeBinding2.isArrayType()) {
                            int i23 = i11;
                            while (i23 < size) {
                                LocalTypeBinding localTypeBinding3 = typeBindingArr4[i23];
                                if (localTypeBinding3 != 0 && !TypeBinding.equalsEquals(localTypeBinding3, localTypeBinding2)) {
                                    TypeBinding findSuperTypeOriginatingFrom = localTypeBinding2.findSuperTypeOriginatingFrom(localTypeBinding3);
                                    if (findSuperTypeOriginatingFrom == null) {
                                        typeBindingArr4[i23] = typeBindingArr3;
                                        i22--;
                                        if (i22 == 0) {
                                            return typeBindingArr3;
                                        }
                                    } else {
                                        Object obj = map.get(localTypeBinding3);
                                        if (obj == null) {
                                            map.put(localTypeBinding3, findSuperTypeOriginatingFrom);
                                        } else if (obj instanceof TypeBinding) {
                                            TypeBinding typeBinding7 = (TypeBinding) obj;
                                            if (TypeBinding.notEquals(findSuperTypeOriginatingFrom, typeBinding7)) {
                                                map.put(localTypeBinding3, new TypeBinding[]{typeBinding7, findSuperTypeOriginatingFrom});
                                            }
                                        } else {
                                            TypeBinding[] typeBindingArr5 = (TypeBinding[]) obj;
                                            int length3 = typeBindingArr5.length;
                                            int i24 = i11;
                                            while (true) {
                                                if (i24 >= length3) {
                                                    TypeBinding[] typeBindingArr6 = new TypeBinding[length3 + 1];
                                                    System.arraycopy(typeBindingArr5, i11, typeBindingArr6, i11, length3);
                                                    map.put(localTypeBinding3, typeBindingArr6);
                                                    typeBindingArr6[length3] = findSuperTypeOriginatingFrom;
                                                } else {
                                                    if (TypeBinding.equalsEquals(typeBindingArr5[i24], findSuperTypeOriginatingFrom)) {
                                                        break;
                                                    }
                                                    i24++;
                                                    i11 = 0;
                                                }
                                            }
                                        }
                                    }
                                }
                                i23++;
                                i11 = 0;
                                typeBindingArr3 = null;
                            }
                        } else {
                            int i25 = i22;
                            for (int i26 = 0; i26 < size; i26++) {
                                LocalTypeBinding localTypeBinding4 = typeBindingArr4[i26];
                                if (localTypeBinding4 != 0) {
                                    if (TypeBinding.equalsEquals(localTypeBinding4, localTypeBinding2) || (localTypeBinding4.f102482id == 1 && localTypeBinding2.isInterface())) {
                                        typeBinding = localTypeBinding4;
                                    } else {
                                        TypeBinding findSuperTypeOriginatingFrom2 = localTypeBinding4.isArrayType() ? null : localTypeBinding2.findSuperTypeOriginatingFrom(localTypeBinding4);
                                        if (findSuperTypeOriginatingFrom2 == null) {
                                            typeBindingArr4[i26] = 0;
                                            i25--;
                                            if (i25 == 0) {
                                                return null;
                                            }
                                        } else {
                                            typeBinding = findSuperTypeOriginatingFrom2;
                                        }
                                    }
                                    Object obj2 = map.get(localTypeBinding4);
                                    if (obj2 == null) {
                                        map.put(localTypeBinding4, typeBinding);
                                    } else if (obj2 instanceof TypeBinding) {
                                        TypeBinding typeBinding8 = (TypeBinding) obj2;
                                        if (TypeBinding.notEquals(typeBinding, typeBinding8)) {
                                            map.put(localTypeBinding4, new TypeBinding[]{typeBinding8, typeBinding});
                                        }
                                    } else {
                                        TypeBinding[] typeBindingArr7 = (TypeBinding[]) obj2;
                                        int length4 = typeBindingArr7.length;
                                        int i27 = 0;
                                        while (true) {
                                            if (i27 >= length4) {
                                                TypeBinding[] typeBindingArr8 = new TypeBinding[length4 + 1];
                                                System.arraycopy(typeBindingArr7, 0, typeBindingArr8, 0, length4);
                                                map.put(localTypeBinding4, typeBindingArr8);
                                                typeBindingArr8[length4] = typeBinding;
                                            } else {
                                                if (TypeBinding.equalsEquals(typeBindingArr7[i27], typeBinding)) {
                                                    break;
                                                }
                                                i27++;
                                            }
                                        }
                                    }
                                }
                            }
                            i22 = i25;
                        }
                    }
                    i21++;
                    i11 = 0;
                    typeBindingArr3 = null;
                }
                if (i22 > 1) {
                    for (int i28 = i11; i28 < size; i28++) {
                        LocalTypeBinding localTypeBinding5 = typeBindingArr4[i28];
                        if (localTypeBinding5 != 0) {
                            for (int i29 = i11; i29 < size; i29++) {
                                if (i28 != i29 && (localTypeBinding = typeBindingArr4[i29]) != 0) {
                                    if (localTypeBinding5 instanceof ReferenceBinding) {
                                        if ((localTypeBinding.f102482id != 1 || !localTypeBinding5.isInterface()) && localTypeBinding5.findSuperTypeOriginatingFrom(localTypeBinding) != null) {
                                            typeBindingArr4[i29] = typeBindingArr3;
                                        }
                                    } else if (localTypeBinding5.isArrayType() && ((!localTypeBinding.isArrayType() || localTypeBinding.leafComponentType().f102482id != 1 || localTypeBinding.dimensions() != localTypeBinding5.dimensions() || !localTypeBinding5.leafComponentType().isInterface()) && localTypeBinding5.findSuperTypeOriginatingFrom(localTypeBinding) != null)) {
                                        typeBindingArr4[i29] = typeBindingArr3;
                                    }
                                }
                            }
                        }
                    }
                }
                return typeBindingArr4;
            }
            int i30 = i11;
            TypeBinding typeBinding9 = typeBindingArr[i12];
            if (typeBinding9 == TypeBinding.NULL) {
                typeBindingArr2 = null;
                typeBindingArr[i12] = 0;
                typeBinding9 = null;
            } else {
                typeBindingArr2 = null;
            }
            if (typeBinding9 != null) {
                if (typeBinding9.isBaseType()) {
                    return typeBindingArr2;
                }
                if (i10 < 0) {
                    i10 = i12;
                }
                i13++;
            }
            i12++;
            i11 = i30;
        }
    }

    public ModuleBinding module() {
        return environment().module;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
    
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MethodBinding mostSpecificClassMethodBinding(MethodBinding[] methodBindingArr, int i10, InvocationSite invocationSite) {
        MethodBinding methodBinding = null;
        int i11 = 0;
        while (i11 < i10) {
            MethodBinding methodBinding2 = methodBindingArr[i11];
            if (methodBinding != null && TypeBinding.notEquals(methodBinding2.declaringClass, methodBinding.declaringClass)) {
                break;
            }
            if (!methodBinding2.isStatic()) {
                methodBinding = methodBinding2;
            }
            for (int i12 = 0; i12 < i10; i12++) {
                if (i11 != i12 && !methodBindingArr[i12].areParametersCompatibleWith(methodBinding2.parameters)) {
                    break;
                }
            }
            compilationUnitScope().recordTypeReferences(methodBinding2.thrownExceptions);
            return methodBinding2;
        }
        MethodBinding methodBinding3 = methodBindingArr[0];
        return new ProblemMethodBinding(methodBinding3, methodBinding3.selector, methodBinding3.parameters, 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MethodBinding mostSpecificInterfaceMethodBinding(MethodBinding[] methodBindingArr, int i10, InvocationSite invocationSite) {
        int i11 = 0;
        while (i11 < i10) {
            MethodBinding methodBinding = methodBindingArr[i11];
            for (int i12 = 0; i12 < i10; i12++) {
                if (i11 != i12 && !methodBindingArr[i12].areParametersCompatibleWith(methodBinding.parameters)) {
                    break;
                }
            }
            compilationUnitScope().recordTypeReferences(methodBinding.thrownExceptions);
            return methodBinding;
        }
        MethodBinding methodBinding2 = methodBindingArr[0];
        return new ProblemMethodBinding(methodBinding2, methodBinding2.selector, methodBinding2.parameters, 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:285:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x03f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MethodBinding mostSpecificMethodBinding(MethodBinding[] methodBindingArr, int i10, TypeBinding[] typeBindingArr, final InvocationSite invocationSite, ReferenceBinding referenceBinding) {
        int i11;
        MethodBinding[] methodBindingArr2;
        int i12;
        int[] iArr;
        MethodBinding[] methodBindingArr3;
        int i13;
        ReferenceBinding referenceBinding2;
        int i14;
        MethodBinding methodBinding;
        MethodBinding computeCompatibleMethod;
        int i15;
        MethodBinding methodBinding2;
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] referenceBindingArr2;
        MethodBinding methodBinding3;
        int[] iArr2;
        MethodBinding[] methodBindingArr4;
        int i16;
        MethodBinding[] methodBindingArr5 = methodBindingArr;
        ReferenceBinding referenceBinding3 = referenceBinding;
        int i17 = 1;
        int i18 = 0;
        boolean z10 = compilerOptions().sourceLevel >= ClassFileConstants.JDK1_8;
        if (z10 && invocationSite.checkingPotentialCompatibility()) {
            if (i10 != methodBindingArr5.length) {
                MethodBinding[] methodBindingArr6 = new MethodBinding[i10];
                System.arraycopy(methodBindingArr5, 0, methodBindingArr6, 0, i10);
                methodBindingArr5 = methodBindingArr6;
            }
            invocationSite.acceptPotentiallyCompatibleMethods(methodBindingArr5);
        }
        int[] iArr3 = new int[i10];
        int i19 = 0;
        int i20 = 0;
        while (true) {
            i11 = -1;
            if (i19 >= i10) {
                break;
            }
            ReferenceBinding referenceBinding4 = referenceBinding3;
            int parameterCompatibilityLevel = parameterCompatibilityLevel(methodBindingArr5[i19], typeBindingArr, invocationSite);
            iArr3[i19] = parameterCompatibilityLevel;
            if (parameterCompatibilityLevel != -1) {
                if (i19 != i20) {
                    methodBindingArr5[i20] = methodBindingArr5[i19];
                    iArr3[i20] = parameterCompatibilityLevel;
                }
                i20++;
            }
            i19++;
            referenceBinding3 = referenceBinding4;
            i17 = 1;
            i18 = 0;
        }
        if (i20 == 0) {
            return new ProblemMethodBinding(methodBindingArr5[i18].selector, typeBindingArr, i17);
        }
        if (i20 == i17) {
            MethodBinding methodBinding4 = methodBindingArr5[i18];
            if (methodBinding4 != null) {
                compilationUnitScope().recordTypeReferences(methodBinding4.thrownExceptions);
            }
            return methodBinding4;
        }
        if (i20 != i10) {
            MethodBinding[] methodBindingArr7 = new MethodBinding[i20];
            System.arraycopy(methodBindingArr5, i18, methodBindingArr7, i18, i20);
            int[] iArr4 = new int[i20];
            System.arraycopy(iArr3, i18, iArr4, i18, i20);
            iArr = iArr4;
            methodBindingArr2 = methodBindingArr7;
            i12 = i20;
        } else {
            methodBindingArr2 = methodBindingArr5;
            i12 = i10;
            iArr = iArr3;
        }
        MethodBinding[] methodBindingArr8 = new MethodBinding[i12];
        int i21 = 3;
        if (z10) {
            int i22 = i18;
            i14 = i22;
            while (i22 < i12) {
                MethodBinding genericMethod = methodBindingArr2[i22].genericMethod();
                TypeBinding[] typeBindingArr2 = genericMethod.parameters;
                int i23 = iArr[i22];
                int i24 = 0;
                while (i24 < i12) {
                    if (i22 != i24) {
                        int i25 = iArr[i24];
                        if (i23 <= i11 || i25 <= i11 || i23 == i25) {
                            MethodBinding genericMethod2 = methodBindingArr2[i24].genericMethod();
                            i16 = i14;
                            TypeBinding[] typeBindingArr3 = genericMethod2.parameters;
                            iArr2 = iArr;
                            boolean z11 = invocationSite instanceof Invocation;
                            if (z11 || (invocationSite instanceof ReferenceExpression)) {
                                methodBindingArr4 = methodBindingArr2;
                                if (genericMethod2.typeVariables() != Binding.NO_TYPE_VARIABLES) {
                                    if (new InferenceContext18(this, z11 ? ((Invocation) invocationSite).arguments() : ((ReferenceExpression) invocationSite).createPseudoExpressions(typeBindingArr), null, null).isMoreSpecificThan(genericMethod, genericMethod2, i23 == 2, i25 == 2)) {
                                        i24++;
                                        i14 = i16;
                                        iArr = iArr2;
                                        methodBindingArr2 = methodBindingArr4;
                                        i11 = -1;
                                    }
                                }
                            } else {
                                methodBindingArr4 = methodBindingArr2;
                            }
                            int i26 = 2;
                            int length = typeBindingArr.length;
                            int i27 = 0;
                            while (true) {
                                if (i27 < length) {
                                    TypeBinding typeBinding = typeBindingArr[i27];
                                    int i28 = i23;
                                    TypeBinding parameter = InferenceContext18.getParameter(typeBindingArr2, i27, i23 == 2);
                                    TypeBinding parameter2 = InferenceContext18.getParameter(typeBindingArr3, i27, i25 == 2);
                                    if (!TypeBinding.equalsEquals(parameter, parameter2) && !typeBinding.sIsMoreSpecific(parameter, parameter2, this)) {
                                        break;
                                    }
                                    i27++;
                                    i23 = i28;
                                    i26 = 2;
                                } else if (i23 == i26 && i25 == i26) {
                                    TypeBinding parameter3 = InferenceContext18.getParameter(typeBindingArr2, typeBindingArr.length, true);
                                    TypeBinding parameter4 = InferenceContext18.getParameter(typeBindingArr3, typeBindingArr.length, true);
                                    if (TypeBinding.notEquals(parameter3, parameter4) && parameter4.isSubtypeOf(parameter3, false)) {
                                    }
                                }
                            }
                        } else if (i23 >= i25) {
                            i16 = i14;
                            iArr2 = iArr;
                            methodBindingArr4 = methodBindingArr2;
                        }
                        i14 = i16;
                        break;
                    }
                    i16 = i14;
                    iArr2 = iArr;
                    methodBindingArr4 = methodBindingArr2;
                    i24++;
                    i14 = i16;
                    iArr = iArr2;
                    methodBindingArr2 = methodBindingArr4;
                    i11 = -1;
                }
                methodBindingArr8[i14] = methodBindingArr2[i22];
                i14++;
                iArr2 = iArr;
                methodBindingArr4 = methodBindingArr2;
                i22++;
                referenceBinding3 = referenceBinding;
                iArr = iArr2;
                methodBindingArr2 = methodBindingArr4;
                i17 = 1;
                i18 = 0;
                i21 = 3;
                i11 = -1;
            }
            if (i14 == 0) {
                MethodBinding methodBinding5 = methodBindingArr2[i18];
                return new ProblemMethodBinding(methodBinding5, methodBinding5.selector, methodBinding5.parameters, i21);
            }
            if (i14 == i17) {
                MethodBinding methodBinding6 = methodBindingArr8[i18];
                if (methodBinding6 != null) {
                    compilationUnitScope().recordTypeReferences(methodBinding6.thrownExceptions);
                }
                return methodBinding6;
            }
            referenceBinding2 = referenceBinding3;
            i13 = i17;
            methodBindingArr3 = methodBindingArr2;
        } else {
            int[] iArr5 = iArr;
            methodBindingArr3 = methodBindingArr2;
            InvocationSite invocationSite2 = new InvocationSite() {
                @Override
                public void acceptPotentiallyCompatibleMethods(MethodBinding[] methodBindingArr9) {
                }

                @Override
                public boolean checkingPotentialCompatibility() {
                    return false;
                }

                @Override
                public InferenceContext18 freshInferenceContext(Scope scope) {
                    return null;
                }

                @Override
                public TypeBinding[] genericTypeArguments() {
                    return null;
                }

                @Override
                public ExpressionContext getExpressionContext() {
                    return ExpressionContext.VANILLA_CONTEXT;
                }

                @Override
                public TypeBinding invocationTargetType() {
                    return invocationSite.invocationTargetType();
                }

                @Override
                public boolean isQualifiedSuper() {
                    return invocationSite.isQualifiedSuper();
                }

                @Override
                public boolean isSuperAccess() {
                    return invocationSite.isSuperAccess();
                }

                @Override
                public boolean isTypeAccess() {
                    return invocationSite.isTypeAccess();
                }

                @Override
                public boolean receiverIsImplicitThis() {
                    return invocationSite.receiverIsImplicitThis();
                }

                @Override
                public void setActualReceiverType(ReferenceBinding referenceBinding5) {
                }

                @Override
                public void setDepth(int i29) {
                }

                @Override
                public void setFieldIndex(int i29) {
                }

                @Override
                public int sourceEnd() {
                    return invocationSite.sourceStart();
                }

                @Override
                public int sourceStart() {
                    return invocationSite.sourceStart();
                }
            };
            int i29 = 2;
            int i30 = 0;
            int i31 = 0;
            while (i31 <= i29) {
                int i32 = i30;
                for (int i33 = 0; i33 < i12; i33++) {
                    if (iArr5[i33] == i31) {
                        MethodBinding methodBinding7 = methodBindingArr3[i33];
                        MethodBinding original = methodBinding7.original();
                        MethodBinding tiebreakMethod = methodBinding7.tiebreakMethod();
                        int i34 = 0;
                        while (true) {
                            if (i34 >= i12) {
                                methodBindingArr8[i33] = methodBinding7;
                                i32++;
                                break;
                            }
                            if (i33 != i34 && iArr5[i34] == i31) {
                                MethodBinding methodBinding8 = methodBindingArr3[i34];
                                if (original != methodBinding8.original()) {
                                    if (methodBinding8 instanceof ParameterizedGenericMethodBinding) {
                                        ParameterizedGenericMethodBinding parameterizedGenericMethodBinding = (ParameterizedGenericMethodBinding) methodBinding8;
                                        if (!parameterizedGenericMethodBinding.isRaw || parameterizedGenericMethodBinding.isStatic()) {
                                            methodBinding = parameterizedGenericMethodBinding.originalMethod;
                                            computeCompatibleMethod = computeCompatibleMethod(methodBinding, tiebreakMethod.parameters, invocationSite2, i31 != 2);
                                            if (computeCompatibleMethod == null) {
                                                break;
                                            }
                                            if (!computeCompatibleMethod.isValidBinding()) {
                                                break;
                                            }
                                            if (!isAcceptableMethod(tiebreakMethod, computeCompatibleMethod)) {
                                                break;
                                            }
                                            if (methodBinding7.isBridge() && !methodBinding8.isBridge() && tiebreakMethod.areParametersEqual(computeCompatibleMethod)) {
                                                break;
                                            }
                                        }
                                    }
                                    methodBinding = methodBinding8;
                                    computeCompatibleMethod = computeCompatibleMethod(methodBinding, tiebreakMethod.parameters, invocationSite2, i31 != 2);
                                    if (computeCompatibleMethod == null || !computeCompatibleMethod.isValidBinding() || !isAcceptableMethod(tiebreakMethod, computeCompatibleMethod)) {
                                        break;
                                        break;
                                        break;
                                        break;
                                    }
                                } else {
                                    iArr5[i34] = -1;
                                }
                            }
                            i34++;
                        }
                        i29 = i31;
                    }
                }
                i31++;
                i30 = i32;
            }
            i13 = 1;
            if (i30 == 1) {
                for (int i35 = 0; i35 < i12; i35++) {
                    if (methodBindingArr8[i35] != null) {
                        MethodBinding methodBinding9 = methodBindingArr3[i35];
                        if (methodBinding9 != null) {
                            compilationUnitScope().recordTypeReferences(methodBinding9.thrownExceptions);
                        }
                        return methodBinding9;
                    }
                }
            } else if (i30 == 0) {
                MethodBinding methodBinding10 = methodBindingArr3[0];
                return new ProblemMethodBinding(methodBinding10, methodBinding10.selector, methodBinding10.parameters, 3);
            }
            referenceBinding2 = referenceBinding;
            i14 = i12;
        }
        if (referenceBinding2 != null && !(referenceBinding2 instanceof CaptureBinding)) {
            referenceBinding2 = (ReferenceBinding) referenceBinding.erasure();
        }
        ReferenceBinding referenceBinding5 = referenceBinding2;
        int i36 = 0;
        loop4: while (i36 < i14) {
            MethodBinding methodBinding11 = methodBindingArr8[i36];
            if (methodBinding11 != null) {
                MethodBinding original2 = methodBinding11.original();
                int i37 = (!original2.declaringClass.isAbstract() || original2.thrownExceptions == Binding.NO_EXCEPTIONS) ? 0 : i13;
                int i38 = 0;
                ReferenceBinding[] referenceBindingArr3 = null;
                while (i38 < i14) {
                    MethodBinding methodBinding12 = methodBindingArr8[i38];
                    if (methodBinding12 != null && i36 != i38) {
                        MethodBinding original3 = methodBinding12.original();
                        if (TypeBinding.equalsEquals(original2.declaringClass, original3.declaringClass)) {
                            break loop4;
                        }
                        if (original2.isAbstract()) {
                            if (referenceBinding5 != null) {
                                TypeBinding findSuperTypeOriginatingFrom = referenceBinding5.findSuperTypeOriginatingFrom(original2.declaringClass.erasure());
                                if (!TypeBinding.equalsEquals(original2.declaringClass, findSuperTypeOriginatingFrom) && (findSuperTypeOriginatingFrom instanceof ReferenceBinding)) {
                                    MethodBinding[] methods = ((ReferenceBinding) findSuperTypeOriginatingFrom).getMethods(original2.selector, typeBindingArr.length);
                                    int length2 = methods.length;
                                    int i39 = 0;
                                    while (i39 < length2) {
                                        i15 = i14;
                                        if (methods[i39].original() == original2) {
                                            original2 = methods[i39];
                                            break;
                                        }
                                        i39++;
                                        i14 = i15;
                                    }
                                }
                                i15 = i14;
                                TypeBinding findSuperTypeOriginatingFrom2 = referenceBinding5.findSuperTypeOriginatingFrom(original3.declaringClass.erasure());
                                if (!TypeBinding.equalsEquals(original3.declaringClass, findSuperTypeOriginatingFrom2) && (findSuperTypeOriginatingFrom2 instanceof ReferenceBinding)) {
                                    MethodBinding[] methods2 = ((ReferenceBinding) findSuperTypeOriginatingFrom2).getMethods(original3.selector, typeBindingArr.length);
                                    int length3 = methods2.length;
                                    int i40 = 0;
                                    while (true) {
                                        if (i40 >= length3) {
                                            break;
                                        }
                                        if (methods2[i40].original() == original3) {
                                            original3 = methods2[i40];
                                            break;
                                        }
                                        i40++;
                                    }
                                }
                                TypeVariableBinding[] typeVariableBindingArr = original2.typeVariables;
                                TypeVariableBinding[] typeVariableBindingArr2 = Binding.NO_TYPE_VARIABLES;
                                if (typeVariableBindingArr != typeVariableBindingArr2) {
                                    original3 = original2.computeSubstitutedMethod(original3, environment());
                                }
                                if (original3 != null && original2.areParameterErasuresEqual(original3)) {
                                    if (TypeBinding.notEquals(original2.returnType, original3.returnType)) {
                                        if (methodBinding12.original().typeVariables != typeVariableBindingArr2) {
                                            if (original2.returnType.erasure().findSuperTypeOriginatingFrom(original3.returnType.erasure()) == null) {
                                                break;
                                            }
                                        } else if (!methodBinding11.returnType.isCompatibleWith(methodBinding12.returnType)) {
                                            break;
                                        }
                                        i38++;
                                        methodBinding11 = methodBinding2;
                                        i14 = i15;
                                    }
                                    if (i37 == 0 || !original3.declaringClass.isInterface() || (referenceBindingArr = methodBinding11.thrownExceptions) == (referenceBindingArr2 = methodBinding12.thrownExceptions)) {
                                        methodBinding2 = methodBinding11;
                                        original2 = original2;
                                    } else {
                                        ReferenceBinding[] referenceBindingArr4 = Binding.NO_EXCEPTIONS;
                                        if (referenceBindingArr2 == referenceBindingArr4) {
                                            methodBinding2 = methodBinding11;
                                            referenceBindingArr3 = referenceBindingArr4;
                                        } else {
                                            if (referenceBindingArr3 != null) {
                                                referenceBindingArr = referenceBindingArr3;
                                            }
                                            int length4 = referenceBindingArr.length;
                                            ReferenceBinding[] filteredExceptions = getFilteredExceptions(methodBinding12);
                                            int length5 = filteredExceptions.length;
                                            SimpleSet simpleSet = new SimpleSet(length4);
                                            boolean z12 = false;
                                            int i41 = 0;
                                            while (i41 < length4) {
                                                MethodBinding methodBinding13 = methodBinding11;
                                                ReferenceBinding referenceBinding6 = referenceBindingArr[i41];
                                                boolean z13 = z12;
                                                int i42 = 0;
                                                while (true) {
                                                    if (i42 >= length5) {
                                                        methodBinding3 = original2;
                                                        break;
                                                    }
                                                    methodBinding3 = original2;
                                                    ReferenceBinding referenceBinding7 = filteredExceptions[i42];
                                                    if (referenceBinding6.isCompatibleWith(referenceBinding7)) {
                                                        simpleSet.add(referenceBinding6);
                                                        break;
                                                    }
                                                    if (referenceBinding7.isCompatibleWith(referenceBinding6)) {
                                                        simpleSet.add(referenceBinding7);
                                                        z12 = true;
                                                        break;
                                                    }
                                                    i42++;
                                                    original2 = methodBinding3;
                                                    z13 = true;
                                                }
                                                z12 = z13;
                                                i41++;
                                                methodBinding11 = methodBinding13;
                                                original2 = methodBinding3;
                                            }
                                            if (z12) {
                                                int i43 = simpleSet.elementSize;
                                                referenceBindingArr3 = i43 == 0 ? Binding.NO_EXCEPTIONS : new ReferenceBinding[i43];
                                                simpleSet.asArray(referenceBindingArr3);
                                                methodBinding2 = methodBinding11;
                                            } else {
                                                methodBinding2 = methodBinding11;
                                                referenceBindingArr3 = referenceBindingArr;
                                            }
                                        }
                                    }
                                    i38++;
                                    methodBinding11 = methodBinding2;
                                    i14 = i15;
                                }
                                i36++;
                                i14 = i15;
                                i13 = 1;
                            }
                        } else if (!original3.isAbstract()) {
                            if (!original3.isDefaultMethod()) {
                                MethodBinding findOriginalInheritedMethod = original2.findOriginalInheritedMethod(original3);
                                if (findOriginalInheritedMethod != null) {
                                    if ((methodBinding11.hasSubstitutedParameters() || original2.typeVariables != Binding.NO_TYPE_VARIABLES) && !environment().methodVerifier().isParameterSubsignature(original2, findOriginalInheritedMethod)) {
                                    }
                                }
                            }
                        }
                    }
                    methodBinding2 = methodBinding11;
                    i15 = i14;
                    i38++;
                    methodBinding11 = methodBinding2;
                    i14 = i15;
                }
                return (referenceBindingArr3 == null || referenceBindingArr3 == methodBinding11.thrownExceptions) ? methodBinding11 : new MostSpecificExceptionMethodBinding(methodBinding11, referenceBindingArr3);
            }
            i15 = i14;
            i36++;
            i14 = i15;
            i13 = 1;
        }
        MethodBinding methodBinding14 = methodBindingArr3[0];
        return new ProblemMethodBinding(methodBinding14, methodBinding14.selector, methodBinding14.parameters, 3);
    }

    public final MethodScope namedMethodScope() {
        Scope scope = this;
        do {
            if ((scope instanceof MethodScope) && !scope.isLambdaScope()) {
                return (MethodScope) scope;
            }
            scope = scope.parent;
        } while (scope != null);
        return null;
    }

    public ReferenceContext originalReferenceContext() {
        Scope scope = this;
        do {
            int i10 = scope.kind;
            if (i10 == 2) {
                ReferenceContext referenceContext = ((MethodScope) scope).referenceContext;
                if (!(referenceContext instanceof LambdaExpression)) {
                    return referenceContext;
                }
                LambdaExpression lambdaExpression = (LambdaExpression) referenceContext;
                while (true) {
                    LambdaExpression lambdaExpression2 = lambdaExpression.original;
                    if (lambdaExpression == lambdaExpression2) {
                        return lambdaExpression;
                    }
                    lambdaExpression = lambdaExpression2;
                }
            } else {
                if (i10 == 3) {
                    return ((ClassScope) scope).referenceContext;
                }
                if (i10 == 4) {
                    return ((CompilationUnitScope) scope).referenceContext;
                }
                scope = scope.parent;
            }
        } while (scope != null);
        return null;
    }

    public final ClassScope outerMostClassScope() {
        ClassScope classScope = null;
        Scope scope = this;
        do {
            if (scope instanceof ClassScope) {
                classScope = (ClassScope) scope;
            }
            scope = scope.parent;
        } while (scope != null);
        return classScope;
    }

    public final MethodScope outerMostMethodScope() {
        MethodScope methodScope = null;
        Scope scope = this;
        do {
            if (scope instanceof MethodScope) {
                methodScope = (MethodScope) scope;
            }
            scope = scope.parent;
        } while (scope != null);
        return methodScope;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x009f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int parameterCompatibilityLevel(MethodBinding methodBinding, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        InferenceContext18 inferenceContext18;
        int i10;
        int length;
        int i11;
        if (methodBinding.problemId() == 23 && (methodBinding = ((ProblemMethodBinding) methodBinding).closestMatch) == null) {
            return -1;
        }
        if (compilerOptions().sourceLevel >= ClassFileConstants.JDK1_8 && (methodBinding instanceof ParameterizedGenericMethodBinding)) {
            boolean z10 = invocationSite instanceof Invocation;
            if (z10) {
                inferenceContext18 = ((Invocation) invocationSite).getInferenceContext((ParameterizedGenericMethodBinding) methodBinding);
                if (inferenceContext18 != null) {
                    i10 = inferenceContext18.inferenceKind;
                    if (z10 && inferenceContext18 != null && inferenceContext18.stepCompleted >= 2) {
                        length = typeBindingArr.length;
                        for (i11 = 0; i11 < length; i11++) {
                            TypeBinding typeBinding = typeBindingArr[i11];
                            if (typeBinding.isFunctionalType() && !typeBinding.isCompatibleWith(InferenceContext18.getParameter(methodBinding.parameters, i11, inferenceContext18.isVarArgs()), this)) {
                                if (typeBinding.isPolyType()) {
                                    if (!((PolyTypeBinding) typeBinding).expression.isPertinentToApplicability(InferenceContext18.getParameter(methodBinding.original().parameters, i11, inferenceContext18.isVarArgs()), methodBinding)) {
                                    }
                                }
                                return -1;
                            }
                        }
                    }
                    if (i10 != 1) {
                        return 0;
                    }
                    if (i10 == 2) {
                        return 1;
                    }
                    if (i10 == 3) {
                        return 2;
                    }
                }
                i10 = 0;
                if (z10) {
                    length = typeBindingArr.length;
                    while (i11 < length) {
                    }
                }
                if (i10 != 1) {
                }
            } else {
                if (invocationSite instanceof ReferenceExpression) {
                    inferenceContext18 = ((ReferenceExpression) invocationSite).getInferenceContext((ParameterizedGenericMethodBinding) methodBinding);
                    if (inferenceContext18 != null) {
                        i10 = inferenceContext18.inferenceKind;
                        if (z10) {
                        }
                        if (i10 != 1) {
                        }
                    }
                } else {
                    inferenceContext18 = null;
                }
                i10 = 0;
                if (z10) {
                }
                if (i10 != 1) {
                }
            }
        }
        return parameterCompatibilityLevel(methodBinding, typeBindingArr, false);
    }

    public abstract ProblemReporter problemReporter();

    public Binding problemType(char[][] cArr, int i10, Binding binding) {
        ReferenceBinding type;
        if (binding != null && binding.problemId() != 1) {
            return binding;
        }
        LookupEnvironment environment = environment();
        if (environment.useModuleSystem) {
            ModuleBinding module = module();
            ModuleBinding moduleBinding = environment.UnNamedModule;
            if (module != moduleBinding && (type = environment.root.getType(cArr, moduleBinding)) != null && type.isValidBinding()) {
                return new ProblemReferenceBinding(cArr, type, 30);
            }
        }
        return binding != null ? binding : new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i10), null, 1);
    }

    public boolean recordNonNullByDefault(Binding binding, int i10, Annotation annotation, int i11, int i12) {
        ReferenceContext referenceContext = referenceContext();
        if ((referenceContext instanceof LambdaExpression) && referenceContext != ((LambdaExpression) referenceContext).original) {
            return false;
        }
        if (this.nullDefaultRanges == null) {
            this.nullDefaultRanges = new ArrayList<>(3);
        }
        Iterator<NullDefaultRange> it = this.nullDefaultRanges.iterator();
        while (it.hasNext()) {
            NullDefaultRange next = it.next();
            if (next.start == i11 && next.end == i12) {
                if (next.contains(annotation)) {
                    return false;
                }
                next.merge(i10, annotation, binding);
                return true;
            }
        }
        this.nullDefaultRanges.add(new NullDefaultRange(i10, annotation, i11, i12, binding));
        return true;
    }

    public final CompilationUnitDeclaration referenceCompilationUnit() {
        Scope scope = this;
        while (true) {
            Scope scope2 = scope.parent;
            if (scope2 == null) {
                return ((CompilationUnitScope) scope).referenceContext;
            }
            scope = scope2;
        }
    }

    public ReferenceContext referenceContext() {
        Scope scope = this;
        do {
            int i10 = scope.kind;
            if (i10 == 2) {
                return ((MethodScope) scope).referenceContext;
            }
            if (i10 == 3) {
                return ((ClassScope) scope).referenceContext;
            }
            if (i10 == 4) {
                return ((CompilationUnitScope) scope).referenceContext;
            }
            scope = scope.parent;
        } while (scope != null);
        return null;
    }

    public void resolveTypeParameter(TypeParameter typeParameter) {
    }

    public int startIndex() {
        return 0;
    }

    public void tagAsAccessingEnclosingInstanceStateOf(ReferenceBinding referenceBinding, boolean z10) {
        TypeDeclaration typeDeclaration;
        SourceTypeBinding sourceTypeBinding;
        MethodScope methodScope = methodScope();
        if (methodScope != null && (methodScope.referenceContext instanceof TypeDeclaration) && !methodScope.enclosingReceiverType().isCompatibleWith(referenceBinding)) {
            methodScope = methodScope.enclosingMethodScope();
        }
        MethodBinding enclosingMethod = referenceBinding != null ? referenceBinding.enclosingMethod() : null;
        while (methodScope != null) {
            while (methodScope != null) {
                ReferenceContext referenceContext = methodScope.referenceContext;
                if (!(referenceContext instanceof LambdaExpression)) {
                    break;
                }
                LambdaExpression lambdaExpression = (LambdaExpression) referenceContext;
                if (!z10 && !lambdaExpression.scope.isStatic) {
                    lambdaExpression.shouldCaptureInstance = true;
                }
                methodScope = methodScope.enclosingMethodScope();
            }
            if (methodScope != null) {
                ReferenceContext referenceContext2 = methodScope.referenceContext;
                if (referenceContext2 instanceof MethodDeclaration) {
                    MethodDeclaration methodDeclaration = (MethodDeclaration) referenceContext2;
                    if (methodDeclaration.binding == enclosingMethod) {
                        return;
                    } else {
                        methodDeclaration.bits &= -257;
                    }
                }
                ClassScope enclosingClassScope = methodScope.enclosingClassScope();
                if (enclosingClassScope == null || (typeDeclaration = enclosingClassScope.referenceContext) == null || (sourceTypeBinding = typeDeclaration.binding) == null || referenceBinding == null || sourceTypeBinding.isCompatibleWith(referenceBinding.original())) {
                    return;
                } else {
                    methodScope = enclosingClassScope.enclosingMethodScope();
                }
            }
        }
    }

    public boolean validateNullAnnotation(long j10, TypeReference typeReference, Annotation[] annotationArr) {
        TypeBinding typeBinding;
        if (typeReference != null && (typeBinding = typeReference.resolvedType) != null) {
            boolean usesNullTypeAnnotations = environment().usesNullTypeAnnotations();
            if (usesNullTypeAnnotations) {
                typeBinding = typeBinding.leafComponentType();
                j10 = typeBinding.tagBits;
            }
            long j11 = j10 & TagBits.AnnotationNullMASK;
            if (j11 != 0 && typeBinding != null && typeBinding.isBaseType()) {
                if (typeReference.resolvedType.f102482id == 6 && usesNullTypeAnnotations) {
                    return false;
                }
                problemReporter().illegalAnnotationForBaseType(typeReference, annotationArr, j11);
                return false;
            }
        }
        return true;
    }

    public static TypeBinding substitute(Substitution substitution, TypeBinding typeBinding) {
        return defaultSubstitutor.substitute(substitution, typeBinding);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MethodBinding computeCompatibleMethod(MethodBinding methodBinding, TypeBinding[] typeBindingArr, InvocationSite invocationSite, boolean z10) {
        TypeBinding[] typeBindingArr2;
        MethodBinding methodBinding2 = methodBinding;
        TypeBinding[] genericTypeArguments = invocationSite.genericTypeArguments();
        TypeBinding[] typeBindingArr3 = methodBinding2.parameters;
        TypeVariableBinding[] typeVariableBindingArr = methodBinding2.typeVariables;
        if (typeBindingArr3 == typeBindingArr && (methodBinding2.returnType.tagBits & TagBits.HasTypeVariable) == 0 && genericTypeArguments == null && typeVariableBindingArr == Binding.NO_TYPE_VARIABLES) {
            return methodBinding2;
        }
        int length = typeBindingArr.length;
        int length2 = typeBindingArr3.length;
        boolean isVarargs = methodBinding.isVarargs();
        if (length != length2 && (!isVarargs || length < length2 - 1)) {
            return null;
        }
        CompilerOptions compilerOptions = compilerOptions();
        TypeVariableBinding[] typeVariableBindingArr2 = Binding.NO_TYPE_VARIABLES;
        if (typeVariableBindingArr != typeVariableBindingArr2) {
            long j10 = compilerOptions.sourceLevel;
            if (j10 >= ClassFileConstants.JDK1_5) {
                if (j10 < ClassFileConstants.JDK1_8 || genericTypeArguments != null) {
                    int i10 = 0;
                    typeBindingArr2 = null;
                    while (i10 < length) {
                        if (typeBindingArr[i10].isBaseType() != (i10 < length2 ? typeBindingArr3[i10] : typeBindingArr3[length2 - 1]).isBaseType()) {
                            if (typeBindingArr2 == null) {
                                typeBindingArr2 = new TypeBinding[length];
                                System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
                            }
                            typeBindingArr2[i10] = environment().computeBoxingType(typeBindingArr[i10]);
                        }
                        i10++;
                    }
                } else {
                    typeBindingArr2 = null;
                }
                if (typeBindingArr2 == null) {
                    typeBindingArr2 = typeBindingArr;
                }
                methodBinding2 = ParameterizedGenericMethodBinding.computeCompatibleMethod(methodBinding2, typeBindingArr2, this, invocationSite);
                if (methodBinding2 == null) {
                    return null;
                }
                if (!methodBinding2.isValidBinding()) {
                    return methodBinding2;
                }
                if (compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8 && (methodBinding2 instanceof ParameterizedGenericMethodBinding) && (invocationSite instanceof Invocation) && ((Invocation) invocationSite).getInferenceContext((ParameterizedGenericMethodBinding) methodBinding2) != null) {
                    return methodBinding2;
                }
                if (parameterCompatibilityLevel(methodBinding2, typeBindingArr2, (z10 || !CompilerOptions.tolerateIllegalAmbiguousVarargsInvocation || compilerOptions.complianceLevel >= ClassFileConstants.JDK1_7) ? z10 : false) <= -1) {
                    return (methodBinding2.tagBits & 4503599627370496L) != 0 ? environment().createPolymorphicMethod(methodBinding2, typeBindingArr2, this) : methodBinding2;
                }
                if (genericTypeArguments != null && typeVariableBindingArr != Binding.NO_TYPE_VARIABLES) {
                    return new ProblemMethodBinding(methodBinding2, methodBinding2.selector, typeBindingArr2, 12);
                }
                if (methodBinding2 instanceof PolyParameterizedGenericMethodBinding) {
                    return new ProblemMethodBinding(methodBinding2, methodBinding2.selector, methodBinding2.parameters, 27);
                }
                return null;
            }
        }
        if (genericTypeArguments != null && compilerOptions.complianceLevel < ClassFileConstants.JDK1_7) {
            if (methodBinding2 instanceof ParameterizedGenericMethodBinding) {
                if (!((ParameterizedGenericMethodBinding) methodBinding2).wasInferred) {
                    return new ProblemMethodBinding(methodBinding2, methodBinding2.selector, genericTypeArguments, 13);
                }
            } else if (!methodBinding.isOverriding() || !isOverriddenMethodGeneric(methodBinding)) {
                return new ProblemMethodBinding(methodBinding2, methodBinding2.selector, genericTypeArguments, 11);
            }
        } else if (typeVariableBindingArr == typeVariableBindingArr2 && (methodBinding2 instanceof ParameterizedGenericMethodBinding) && compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8 && (invocationSite instanceof Invocation) && ((Invocation) invocationSite).getInferenceContext((ParameterizedGenericMethodBinding) methodBinding2) != null) {
            return methodBinding2;
        }
        typeBindingArr2 = typeBindingArr;
        if (parameterCompatibilityLevel(methodBinding2, typeBindingArr2, (z10 || !CompilerOptions.tolerateIllegalAmbiguousVarargsInvocation || compilerOptions.complianceLevel >= ClassFileConstants.JDK1_7) ? z10 : false) <= -1) {
        }
    }

    public ArrayBinding createArrayType(TypeBinding typeBinding, int i10, AnnotationBinding[] annotationBindingArr) {
        if (typeBinding.isValidBinding()) {
            return environment().createArrayType(typeBinding, i10, annotationBindingArr);
        }
        return new ArrayBinding(typeBinding, i10, environment());
    }

    public FieldBinding findField(TypeBinding typeBinding, char[] cArr, InvocationSite invocationSite, boolean z10, boolean z11) {
        TypeBinding leafComponentType;
        ProblemFieldBinding problemFieldBinding;
        int i10;
        ReferenceBinding[] referenceBindingArr;
        boolean z12;
        ReferenceBinding[] referenceBindingArr2;
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        compilationUnitScope.recordTypeReference(typeBinding);
        int kind = typeBinding.kind();
        if (kind != 68) {
            if (kind == 132) {
                return null;
            }
            if (kind == 516 || kind == 4100 || kind == 8196) {
                TypeBinding erasure = typeBinding.erasure();
                if (erasure.isArrayType()) {
                    leafComponentType = erasure.leafComponentType();
                }
            }
            ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
            if (!referenceBinding.canBeSeenBy(this)) {
                return new ProblemFieldBinding(referenceBinding, cArr, 8);
            }
            referenceBinding.initializeForStaticImports();
            FieldBinding field = referenceBinding.getField(cArr, z10);
            boolean z13 = (this instanceof MethodScope) && ((MethodScope) this).insideTypeAnnotation;
            if (field != null) {
                return z11 ? field : (invocationSite == null || z13 ? !field.canBeSeenBy(getCurrentPackage()) : !field.canBeSeenBy(referenceBinding, invocationSite, this)) ? new ProblemFieldBinding(field, field.declaringClass, cArr, 2) : field;
            }
            boolean z14 = true;
            ReferenceBinding[] referenceBindingArr3 = null;
            int i11 = 0;
            FieldBinding fieldBinding = null;
            FieldBinding fieldBinding2 = null;
            while (z14) {
                ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
                if (superInterfaces == null || superInterfaces == Binding.NO_SUPERINTERFACES) {
                    z12 = z14;
                } else if (referenceBindingArr3 == null) {
                    i11 = superInterfaces.length;
                    z12 = z14;
                    referenceBindingArr3 = superInterfaces;
                } else {
                    int length = superInterfaces.length;
                    int i12 = i11 + length;
                    if (i12 >= referenceBindingArr3.length) {
                        referenceBindingArr2 = new ReferenceBinding[i12 + 5];
                        System.arraycopy(referenceBindingArr3, 0, referenceBindingArr2, 0, i11);
                    } else {
                        referenceBindingArr2 = referenceBindingArr3;
                    }
                    int i13 = i11;
                    int i14 = 0;
                    while (i14 < length) {
                        ReferenceBinding referenceBinding2 = superInterfaces[i14];
                        boolean z15 = z14;
                        int i15 = 0;
                        while (true) {
                            if (i15 >= i13) {
                                referenceBindingArr2[i13] = referenceBinding2;
                                i13++;
                                break;
                            }
                            int i16 = i13;
                            if (TypeBinding.equalsEquals(referenceBinding2, referenceBindingArr2[i15])) {
                                i13 = i16;
                                break;
                            }
                            i15++;
                            i13 = i16;
                        }
                        i14++;
                        z14 = z15;
                    }
                    z12 = z14;
                    i11 = i13;
                    referenceBindingArr3 = referenceBindingArr2;
                }
                referenceBinding = referenceBinding.superclass();
                if (referenceBinding == null) {
                    break;
                }
                z14 = false;
                compilationUnitScope.recordTypeReference(referenceBinding);
                referenceBinding.initializeForStaticImports();
                referenceBinding = (ReferenceBinding) referenceBinding.capture(this, invocationSite == null ? 0 : invocationSite.sourceStart(), invocationSite == null ? 0 : invocationSite.sourceEnd());
                FieldBinding field2 = referenceBinding.getField(cArr, z10);
                if (field2 == null) {
                    z14 = z12;
                } else {
                    if (z11) {
                        return field2;
                    }
                    if (field2.canBeSeenBy(typeBinding, invocationSite, this)) {
                        if (fieldBinding != null) {
                            return new ProblemFieldBinding(fieldBinding, fieldBinding.declaringClass, cArr, 3);
                        }
                        fieldBinding = field2;
                    } else if (fieldBinding2 == null) {
                        fieldBinding2 = field2;
                    }
                }
            }
            if (referenceBindingArr3 != null) {
                int i17 = 0;
                while (true) {
                    if (i17 >= i11) {
                        problemFieldBinding = null;
                        break;
                    }
                    ReferenceBinding referenceBinding3 = referenceBindingArr3[i17];
                    compilationUnitScope.recordTypeReference(referenceBinding3);
                    FieldBinding field3 = referenceBinding3.getField(cArr, true);
                    if (field3 == null) {
                        ReferenceBinding[] superInterfaces2 = referenceBinding3.superInterfaces();
                        if (superInterfaces2 != null && superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                            int length2 = superInterfaces2.length;
                            int i18 = i11 + length2;
                            if (i18 >= referenceBindingArr3.length) {
                                referenceBindingArr = new ReferenceBinding[i18 + 5];
                                i10 = 0;
                                System.arraycopy(referenceBindingArr3, 0, referenceBindingArr, 0, i11);
                            } else {
                                i10 = 0;
                                referenceBindingArr = referenceBindingArr3;
                            }
                            int i19 = i11;
                            for (int i20 = i10; i20 < length2; i20++) {
                                ReferenceBinding referenceBinding4 = superInterfaces2[i20];
                                int i21 = i10;
                                while (true) {
                                    if (i21 >= i19) {
                                        referenceBindingArr[i19] = referenceBinding4;
                                        i19++;
                                        break;
                                    }
                                    if (TypeBinding.equalsEquals(referenceBinding4, referenceBindingArr[i21])) {
                                        break;
                                    }
                                    i21++;
                                }
                            }
                            referenceBindingArr3 = referenceBindingArr;
                            i11 = i19;
                            i17++;
                        }
                    } else {
                        if (z11) {
                            return field3;
                        }
                        if (fieldBinding != null) {
                            problemFieldBinding = new ProblemFieldBinding(fieldBinding, fieldBinding.declaringClass, cArr, 3);
                            break;
                        }
                        fieldBinding = field3;
                    }
                    i17++;
                }
                if (problemFieldBinding != null) {
                    return problemFieldBinding;
                }
            }
            if (fieldBinding != null) {
                return fieldBinding;
            }
            if (fieldBinding2 != null) {
                return new ProblemFieldBinding(fieldBinding2, referenceBinding, cArr, 2);
            }
            return null;
        }
        leafComponentType = typeBinding.leafComponentType();
        if (leafComponentType instanceof ReferenceBinding) {
            ReferenceBinding referenceBinding5 = (ReferenceBinding) leafComponentType;
            if (!referenceBinding5.canBeSeenBy(this)) {
                return new ProblemFieldBinding(referenceBinding5, cArr, 8);
            }
        }
        if (!CharOperation.equals(cArr, TypeConstants.LENGTH)) {
            return null;
        }
        if ((leafComponentType.tagBits & 128) != 0) {
            return new ProblemFieldBinding(ArrayBinding.ArrayLength, null, cArr, 1);
        }
        return ArrayBinding.ArrayLength;
    }

    public static TypeBinding[] substitute(Substitution substitution, TypeBinding[] typeBindingArr) {
        return defaultSubstitutor.substitute(substitution, typeBindingArr);
    }

    public final TypeBinding getType(char[] cArr, PackageBinding packageBinding) {
        if (packageBinding == null) {
            return getType(cArr);
        }
        Binding typeOrPackage = packageBinding.getTypeOrPackage(cArr, module(), false);
        if (typeOrPackage == null) {
            return new ProblemReferenceBinding(CharOperation.arrayConcat(packageBinding.compoundName, cArr), null, 1);
        }
        if (!typeOrPackage.isValidBinding()) {
            boolean z10 = typeOrPackage instanceof ReferenceBinding;
            return new ProblemReferenceBinding(z10 ? ((ReferenceBinding) typeOrPackage).compoundName : CharOperation.arrayConcat(packageBinding.compoundName, cArr), z10 ? (ReferenceBinding) ((ReferenceBinding) typeOrPackage).closestMatch() : null, typeOrPackage.problemId());
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) typeOrPackage;
        return !referenceBinding.canBeSeenBy(this) ? new ProblemReferenceBinding(referenceBinding.compoundName, referenceBinding, 2) : referenceBinding;
    }

    private TypeBinding lowerUpperBound(TypeBinding[] typeBindingArr, ArrayList arrayList) {
        TypeBinding createIntersectionType18;
        int i10;
        int length = typeBindingArr.length;
        if (length == 1) {
            TypeBinding typeBinding = typeBindingArr[0];
            return typeBinding == null ? TypeBinding.VOID : typeBinding;
        }
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            TypeBinding[] typeBindingArr2 = (TypeBinding[]) arrayList.get(i11);
            if (typeBindingArr2.length >= length) {
                for (TypeBinding typeBinding2 : typeBindingArr) {
                    if (typeBinding2 != null) {
                        for (TypeBinding typeBinding3 : typeBindingArr2) {
                            i10 = (typeBinding3 == null || !(TypeBinding.equalsEquals(typeBinding3, typeBinding2) || typeBinding3.isEquivalentTo(typeBinding2))) ? i10 + 1 : 0;
                        }
                    }
                }
                return TypeBinding.INT;
            }
        }
        arrayList.add(typeBindingArr);
        HashMap hashMap = new HashMap(1);
        TypeBinding[] minimalErasedCandidates = minimalErasedCandidates(typeBindingArr, hashMap);
        if (minimalErasedCandidates == null) {
            return null;
        }
        if (minimalErasedCandidates.length == 0) {
            return TypeBinding.VOID;
        }
        int i12 = 0;
        TypeBinding typeBinding4 = null;
        int i13 = -1;
        for (TypeBinding typeBinding5 : minimalErasedCandidates) {
            if (typeBinding5 != null) {
                TypeBinding leastContainingInvocation = leastContainingInvocation(typeBinding5, hashMap.get(typeBinding5), arrayList);
                if (leastContainingInvocation == null) {
                    return null;
                }
                int dimensions = leastContainingInvocation.dimensions();
                if (i13 == -1) {
                    i13 = dimensions;
                } else if (dimensions != i13) {
                    return null;
                }
                if (typeBinding4 == null && !leastContainingInvocation.leafComponentType().isInterface()) {
                    typeBinding4 = leastContainingInvocation.leafComponentType();
                }
                minimalErasedCandidates[i12] = leastContainingInvocation;
                i12++;
            }
        }
        if (i12 == 0) {
            return TypeBinding.VOID;
        }
        if (i12 != 1) {
            if (i12 == 2) {
                if ((i13 == 0 ? minimalErasedCandidates[1] : minimalErasedCandidates[1].leafComponentType()).f102482id == 1) {
                    return minimalErasedCandidates[0];
                }
                if ((i13 == 0 ? minimalErasedCandidates[0] : minimalErasedCandidates[0].leafComponentType()).f102482id == 1) {
                    return minimalErasedCandidates[1];
                }
            }
            int i14 = i12 - 1;
            TypeBinding[] typeBindingArr3 = new TypeBinding[i14];
            int i15 = 0;
            for (int i16 = 0; i16 < i12; i16++) {
                TypeBinding leafComponentType = i13 == 0 ? minimalErasedCandidates[i16] : minimalErasedCandidates[i16].leafComponentType();
                if (leafComponentType.isInterface()) {
                    typeBindingArr3[i15] = leafComponentType;
                    i15++;
                }
            }
            if (environment().globalOptions.complianceLevel < ClassFileConstants.JDK1_8) {
                createIntersectionType18 = environment().createWildcard(null, 0, typeBinding4, typeBindingArr3, 1);
            } else {
                ReferenceBinding[] referenceBindingArr = new ReferenceBinding[i12];
                referenceBindingArr[0] = (ReferenceBinding) typeBinding4;
                System.arraycopy(typeBindingArr3, 0, referenceBindingArr, 1, i14);
                createIntersectionType18 = environment().createIntersectionType18(referenceBindingArr);
            }
            return i13 == 0 ? createIntersectionType18 : environment().createArrayType(createIntersectionType18, i13);
        }
        return minimalErasedCandidates[0];
    }

    public static class Substitutor {
        private static boolean isMemberTypeOfRaw(TypeBinding typeBinding, ReferenceBinding referenceBinding) {
            return referenceBinding != null && referenceBinding.isRawType() && (typeBinding instanceof ReferenceBinding) && !((ReferenceBinding) typeBinding).isStatic();
        }

        public ReferenceBinding[] substitute(Substitution substitution, ReferenceBinding[] referenceBindingArr) {
            if (referenceBindingArr == null) {
                return null;
            }
            int length = referenceBindingArr.length;
            ReferenceBinding[] referenceBindingArr2 = referenceBindingArr;
            for (int i10 = 0; i10 < length; i10++) {
                ReferenceBinding referenceBinding = referenceBindingArr[i10];
                TypeBinding substitute = substitute(substitution, referenceBinding);
                if (!(substitute instanceof ReferenceBinding)) {
                    return null;
                }
                if (substitute != referenceBinding) {
                    if (referenceBindingArr2 == referenceBindingArr) {
                        referenceBindingArr2 = new ReferenceBinding[length];
                        System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 0, i10);
                    }
                    referenceBindingArr2[i10] = (ReferenceBinding) substitute;
                } else if (referenceBindingArr2 != referenceBindingArr) {
                    referenceBindingArr2[i10] = referenceBinding;
                }
            }
            return referenceBindingArr2;
        }

        public TypeBinding substitute(Substitution substitution, TypeBinding typeBinding) {
            ReferenceBinding referenceBinding;
            ReferenceBinding referenceBinding2;
            TypeBinding[] typeBindingArr;
            TypeBinding typeBinding2;
            TypeBinding[] typeBindingArr2;
            TypeBinding[] typeBindingArr3 = null;
            if (typeBinding == null) {
                return null;
            }
            int kind = typeBinding.kind();
            if (kind != 4) {
                if (kind == 68) {
                    ArrayBinding arrayBinding = (ArrayBinding) typeBinding;
                    TypeBinding typeBinding3 = arrayBinding.leafComponentType;
                    TypeBinding substitute = substitute(substitution, typeBinding3);
                    if (substitute != typeBinding3) {
                        return arrayBinding.environment.createArrayType(substitute.leafComponentType(), substitute.dimensions() + typeBinding.dimensions(), typeBinding.getTypeAnnotations());
                    }
                } else if (kind != 260) {
                    if (kind != 516) {
                        if (kind == 2052) {
                            ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding.unannotated();
                            ReferenceBinding enclosingType = typeBinding.enclosingType();
                            if (enclosingType != null) {
                                enclosingType = (ReferenceBinding) (typeBinding.isStatic() ? substitution.environment().convertToRawType(enclosingType, true) : (ReferenceBinding) substitute(substitution, enclosingType));
                                if (isMemberTypeOfRaw(typeBinding, enclosingType)) {
                                    return substitution.environment().createRawType(referenceBinding3, enclosingType, typeBinding.getTypeAnnotations());
                                }
                            }
                            if (substitution.isRawSubstitution()) {
                                return substitution.environment().createRawType(referenceBinding3, enclosingType, typeBinding.getTypeAnnotations());
                            }
                            return substitution.environment().createParameterizedType(referenceBinding3, substitute(substitution, (TypeBinding[]) referenceBinding3.typeVariables()), enclosingType, typeBinding.getTypeAnnotations());
                        }
                        if (kind == 4100) {
                            return substitution.substitute((TypeVariableBinding) typeBinding);
                        }
                        if (kind != 8196) {
                            if (kind == 32772) {
                                ReferenceBinding[] substitute2 = substitute(substitution, ((IntersectionTypeBinding18) typeBinding).getIntersectingTypes());
                                ReferenceBinding[] referenceBindingArr = new ReferenceBinding[substitute2.length];
                                System.arraycopy(substitute2, 0, referenceBindingArr, 0, substitute2.length);
                                return substitution.environment().createIntersectionType18(referenceBindingArr);
                            }
                        }
                    }
                    WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
                    if (wildcardBinding.boundKind != 0) {
                        TypeBinding typeBinding4 = wildcardBinding.bound;
                        TypeBinding substitute3 = substitute(substitution, typeBinding4);
                        TypeBinding[] typeBindingArr4 = wildcardBinding.otherBounds;
                        TypeBinding[] substitute4 = substitute(substitution, typeBindingArr4);
                        if (substitute3 != typeBinding4 || typeBindingArr4 != substitute4) {
                            if (typeBindingArr4 != null) {
                                TypeBinding[] typeBindingArr5 = new TypeBinding[substitute4.length + 1];
                                typeBindingArr5[0] = substitute3;
                                System.arraycopy(substitute4, 0, typeBindingArr5, 1, substitute4.length);
                                TypeBinding[] greaterLowerBound = Scope.greaterLowerBound(typeBindingArr5, null, substitution.environment());
                                if (greaterLowerBound != null && greaterLowerBound != typeBindingArr5) {
                                    TypeBinding typeBinding5 = greaterLowerBound[0];
                                    if (greaterLowerBound.length != 1) {
                                        typeBindingArr3 = new TypeBinding[greaterLowerBound.length - 1];
                                        System.arraycopy(greaterLowerBound, 1, typeBindingArr3, 0, greaterLowerBound.length - 1);
                                    }
                                    typeBindingArr2 = typeBindingArr3;
                                    typeBinding2 = typeBinding5;
                                    return wildcardBinding.environment.createWildcard(wildcardBinding.genericType, wildcardBinding.rank, typeBinding2, typeBindingArr2, wildcardBinding.boundKind, wildcardBinding.getTypeAnnotations());
                                }
                            }
                            typeBinding2 = substitute3;
                            typeBindingArr2 = substitute4;
                            return wildcardBinding.environment.createWildcard(wildcardBinding.genericType, wildcardBinding.rank, typeBinding2, typeBindingArr2, wildcardBinding.boundKind, wildcardBinding.getTypeAnnotations());
                        }
                    }
                } else {
                    ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) typeBinding;
                    ReferenceBinding enclosingType2 = typeBinding.enclosingType();
                    if (enclosingType2 == null || !parameterizedTypeBinding.hasEnclosingInstanceContext()) {
                        referenceBinding2 = enclosingType2;
                    } else {
                        referenceBinding2 = (ReferenceBinding) substitute(substitution, enclosingType2);
                        if (isMemberTypeOfRaw(typeBinding, referenceBinding2)) {
                            return parameterizedTypeBinding.environment.createRawType(parameterizedTypeBinding.genericType(), referenceBinding2, typeBinding.getTypeAnnotations());
                        }
                    }
                    TypeBinding[] typeBindingArr6 = parameterizedTypeBinding.arguments;
                    if (typeBindingArr6 == null) {
                        typeBindingArr = typeBindingArr6;
                    } else {
                        if (substitution.isRawSubstitution()) {
                            return parameterizedTypeBinding.environment.createRawType(parameterizedTypeBinding.genericType(), referenceBinding2, typeBinding.getTypeAnnotations());
                        }
                        typeBindingArr = substitute(substitution, typeBindingArr6);
                    }
                    if (typeBindingArr != typeBindingArr6 || referenceBinding2 != enclosingType2) {
                        return parameterizedTypeBinding.environment.createParameterizedType(parameterizedTypeBinding.genericType(), typeBindingArr, referenceBinding2, typeBinding.getTypeAnnotations());
                    }
                }
            } else if (typeBinding.isMemberType()) {
                ReferenceBinding referenceBinding4 = (ReferenceBinding) typeBinding;
                ReferenceBinding enclosingType3 = typeBinding.enclosingType();
                if (enclosingType3 != null) {
                    referenceBinding = (ReferenceBinding) substitute(substitution, enclosingType3);
                    if (isMemberTypeOfRaw(typeBinding, referenceBinding)) {
                        return substitution.environment().createRawType(referenceBinding4, referenceBinding, typeBinding.getTypeAnnotations());
                    }
                } else {
                    referenceBinding = enclosingType3;
                }
                if (referenceBinding != enclosingType3 && referenceBinding4.hasEnclosingInstanceContext()) {
                    if (substitution.isRawSubstitution()) {
                        return substitution.environment().createRawType(referenceBinding4, referenceBinding, typeBinding.getTypeAnnotations());
                    }
                    return substitution.environment().createParameterizedType(referenceBinding4, null, referenceBinding, typeBinding.getTypeAnnotations());
                }
            }
            return typeBinding;
        }

        public TypeBinding[] substitute(Substitution substitution, TypeBinding[] typeBindingArr) {
            if (typeBindingArr == null) {
                return null;
            }
            int length = typeBindingArr.length;
            TypeBinding[] typeBindingArr2 = typeBindingArr;
            for (int i10 = 0; i10 < length; i10++) {
                TypeBinding typeBinding = typeBindingArr[i10];
                TypeBinding substitute = substitute(substitution, typeBinding);
                if (substitute != typeBinding) {
                    if (typeBindingArr2 == typeBindingArr) {
                        typeBindingArr2 = new TypeBinding[length];
                        System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, i10);
                    }
                    typeBindingArr2[i10] = substitute;
                } else if (typeBindingArr2 != typeBindingArr) {
                    typeBindingArr2[i10] = typeBinding;
                }
            }
            return typeBindingArr2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5 */
    public static TypeBinding[] greaterLowerBound(TypeBinding[] typeBindingArr, Scope scope, LookupEnvironment lookupEnvironment) {
        TypeBinding[] filterValidTypes;
        int length;
        LocalTypeBinding localTypeBinding;
        ParameterizedTypeBinding parameterizedTypeBinding;
        ParameterizedTypeBinding parameterizedTypeBinding2;
        TypeBinding[] typeBindingArr2 = null;
        if (typeBindingArr == null || (length = (filterValidTypes = filterValidTypes(typeBindingArr, new Function() {
            @Override
            public final Object apply(Object obj) {
                TypeBinding[] lambda$1;
                lambda$1 = Scope.lambda$1(((Integer) obj).intValue());
                return lambda$1;
            }
        })).length) == 0) {
            return null;
        }
        TypeBinding[] typeBindingArr3 = filterValidTypes;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            LocalTypeBinding localTypeBinding2 = typeBindingArr3[i10];
            if (localTypeBinding2 != 0) {
                int i12 = 0;
                typeBindingArr3 = typeBindingArr3;
                while (i12 < length) {
                    if (i10 != i12 && (localTypeBinding = typeBindingArr3[i12]) != 0) {
                        if (isMalformedPair(localTypeBinding2, localTypeBinding, scope)) {
                            return typeBindingArr2;
                        }
                        typeBindingArr3 = typeBindingArr3;
                        if (localTypeBinding2.isCompatibleWith(localTypeBinding, scope)) {
                            if (typeBindingArr3 == filterValidTypes) {
                                TypeBinding[] typeBindingArr4 = new TypeBinding[length];
                                System.arraycopy(typeBindingArr3, 0, typeBindingArr4, 0, length);
                                typeBindingArr3 = typeBindingArr4;
                            }
                            typeBindingArr3[i12] = typeBindingArr2;
                            i11++;
                        } else if (!localTypeBinding.isCompatibleWith(localTypeBinding2, scope) && localTypeBinding2.isParameterizedType() && localTypeBinding.isParameterizedType()) {
                            if (localTypeBinding2.original().isCompatibleWith(localTypeBinding.original(), scope)) {
                                parameterizedTypeBinding2 = (ParameterizedTypeBinding) localTypeBinding;
                                parameterizedTypeBinding = (ParameterizedTypeBinding) localTypeBinding2;
                            } else if (localTypeBinding.original().isCompatibleWith(localTypeBinding2.original(), scope)) {
                                parameterizedTypeBinding = (ParameterizedTypeBinding) localTypeBinding;
                                parameterizedTypeBinding2 = (ParameterizedTypeBinding) localTypeBinding2;
                            }
                            if (parameterizedTypeBinding2.arguments != null && parameterizedTypeBinding.isProperType(false) && parameterizedTypeBinding2.isProperType(false)) {
                                int length2 = parameterizedTypeBinding2.arguments.length;
                                TypeBinding[] typeBindingArr5 = new TypeBinding[length2];
                                int i13 = 0;
                                while (i13 < length2) {
                                    TypeBinding typeBinding = parameterizedTypeBinding2.arguments[i13];
                                    if (typeBinding.isTypeVariable()) {
                                        typeBinding = ((TypeVariableBinding) typeBinding).upperBound();
                                    }
                                    typeBindingArr5[i13] = typeBinding;
                                    i13++;
                                    typeBindingArr2 = null;
                                }
                                ReferenceBinding referenceBinding = (ReferenceBinding) parameterizedTypeBinding2.original();
                                if (!parameterizedTypeBinding.isCompatibleWith(lookupEnvironment.createParameterizedType(referenceBinding, typeBindingArr5, referenceBinding.enclosingType()), scope)) {
                                    return typeBindingArr2;
                                }
                                i12++;
                                typeBindingArr2 = null;
                                typeBindingArr3 = typeBindingArr3;
                            }
                        }
                    }
                    i12++;
                    typeBindingArr2 = null;
                    typeBindingArr3 = typeBindingArr3;
                }
            }
            i10++;
            typeBindingArr3 = typeBindingArr3;
        }
        if (i11 == 0) {
            return typeBindingArr3;
        }
        if (length == i11) {
            return typeBindingArr2;
        }
        TypeBinding[] typeBindingArr6 = new TypeBinding[length - i11];
        int i14 = 0;
        for (int i15 = 0; i15 < length; i15++) {
            Object[] objArr = typeBindingArr3[i15];
            if (objArr != 0) {
                typeBindingArr6[i14] = objArr;
                i14++;
            }
        }
        return typeBindingArr6;
    }

    public MethodBinding getExactMethod(TypeBinding typeBinding, char[] cArr, InvocationSite invocationSite) {
        TypeBinding typeBinding2;
        TypeVariableBinding[] typeVariableBindingArr;
        if (typeBinding != null && typeBinding.isValidBinding() && !typeBinding.isBaseType()) {
            if (!typeBinding.isArrayType()) {
                typeBinding2 = typeBinding;
            } else {
                if (!typeBinding.leafComponentType().canBeSeenBy(this)) {
                    return null;
                }
                typeBinding2 = getJavaLangObject();
            }
            try {
                MethodBinding exactMethod = getExactMethod(typeBinding, typeBinding2, cArr, invocationSite, null);
                if (exactMethod != null && exactMethod.canBeSeenBy(invocationSite, this)) {
                    TypeBinding[] genericTypeArguments = invocationSite.genericTypeArguments();
                    TypeVariableBinding[] typeVariables = exactMethod.typeVariables();
                    if (!exactMethod.isVarargs() && (typeVariables == (typeVariableBindingArr = Binding.NO_TYPE_VARIABLES) || (genericTypeArguments != null && genericTypeArguments.length == typeVariables.length))) {
                        if (typeBinding.isArrayType()) {
                            if (CharOperation.equals(cArr, TypeConstants.CLONE)) {
                                return ((ArrayBinding) typeBinding).getCloneMethod(exactMethod);
                            }
                            if (CharOperation.equals(cArr, TypeConstants.GETCLASS)) {
                                return environment().createGetClassMethod(typeBinding, exactMethod, this);
                            }
                        }
                        if (exactMethod.declaringClass.f102482id == 1 && CharOperation.equals(cArr, TypeConstants.GETCLASS) && exactMethod.returnType.isParameterizedType()) {
                            return environment().createGetClassMethod(typeBinding, exactMethod, this);
                        }
                        return typeVariables != typeVariableBindingArr ? environment().createParameterizedGenericMethod(exactMethod, genericTypeArguments) : exactMethod;
                    }
                }
            } catch (MethodClashException unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bb, code lost:
    
        if ((r3 instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bd, code lost:
    
        r11 = org.eclipse.jdt.core.compiler.CharOperation.subarray(r11, 0, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ce, code lost:
    
        return new org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding(r11, environment().createMissingType(null, r11), 1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final TypeBinding getType(char[][] cArr, int i10) {
        int i11;
        TypeBinding baseType;
        boolean z10 = true;
        if (i10 == 1 && (baseType = getBaseType(cArr[0])) != null) {
            return baseType;
        }
        CompilationUnitScope compilationUnitScope = compilationUnitScope();
        compilationUnitScope.recordQualifiedReference(cArr);
        Binding typeOrPackage = getTypeOrPackage(cArr[0], i10 == 1 ? 4 : 20, true);
        if (typeOrPackage == null) {
            char[][] cArr2 = {cArr[0]};
            return new ProblemReferenceBinding(cArr2, environment().createMissingType(compilationUnitScope().getCurrentPackage(), cArr2), 1);
        }
        if (!typeOrPackage.isValidBinding()) {
            if (typeOrPackage instanceof PackageBinding) {
                char[][] cArr3 = {cArr[0]};
                return new ProblemReferenceBinding(cArr3, environment().createMissingType(null, cArr3), 1);
            }
            return (ReferenceBinding) typeOrPackage;
        }
        if (typeOrPackage instanceof PackageBinding) {
            PackageBinding packageBinding = (PackageBinding) typeOrPackage;
            i11 = 1;
            while (true) {
                if (i11 >= i10) {
                    break;
                }
                int i12 = i11 + 1;
                Binding typeOrPackage2 = packageBinding.getTypeOrPackage(cArr[i11], module(), i12 < i10);
                if (typeOrPackage2 == null) {
                    char[][] subarray = CharOperation.subarray(cArr, 0, i12);
                    return new ProblemReferenceBinding(subarray, environment().createMissingType(packageBinding, subarray), 1);
                }
                if (!typeOrPackage2.isValidBinding()) {
                    return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i12), typeOrPackage2 instanceof ReferenceBinding ? (ReferenceBinding) ((ReferenceBinding) typeOrPackage2).closestMatch() : null, typeOrPackage2.problemId());
                }
                if (!(typeOrPackage2 instanceof PackageBinding)) {
                    i11 = i12;
                    typeOrPackage = typeOrPackage2;
                    break;
                }
                packageBinding = (PackageBinding) typeOrPackage2;
                i11 = i12;
                typeOrPackage = typeOrPackage2;
            }
        } else {
            i11 = 1;
            z10 = false;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) typeOrPackage;
        compilationUnitScope.recordTypeReference(referenceBinding);
        if (z10 && !referenceBinding.canBeSeenBy(this)) {
            return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), referenceBinding, 2);
        }
        ReferenceBinding referenceBinding2 = referenceBinding;
        while (i11 < i10) {
            int i13 = i11 + 1;
            referenceBinding2 = getMemberType(cArr[i11], referenceBinding2);
            if (!referenceBinding2.isValidBinding()) {
                if (referenceBinding2 instanceof ProblemReferenceBinding) {
                    return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i13), ((ProblemReferenceBinding) referenceBinding2).closestReferenceMatch(), referenceBinding2.problemId());
                }
                return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i13), (ReferenceBinding) referenceBinding.closestMatch(), referenceBinding2.problemId());
            }
            i11 = i13;
        }
        return referenceBinding2;
    }

    public int parameterCompatibilityLevel(MethodBinding methodBinding, TypeBinding[] typeBindingArr) {
        return parameterCompatibilityLevel(methodBinding, typeBindingArr, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int parameterCompatibilityLevel(MethodBinding methodBinding, TypeBinding[] typeBindingArr, boolean z10) {
        int i10;
        int i11;
        int i12;
        int i13;
        TypeBinding typeBinding;
        TypeBinding[] typeBindingArr2 = methodBinding.parameters;
        int length = typeBindingArr2.length;
        int length2 = typeBindingArr.length;
        CompilerOptions compilerOptions = compilerOptions();
        int i14 = 0;
        if (compilerOptions.sourceLevel < ClassFileConstants.JDK1_5) {
            if (length != length2) {
                return -1;
            }
            for (int i15 = 0; i15 < length2; i15++) {
                TypeBinding typeBinding2 = typeBindingArr2[i15];
                TypeBinding typeBinding3 = typeBindingArr[i15];
                if (TypeBinding.notEquals(typeBinding3, typeBinding2) && !typeBinding3.isCompatibleWith(typeBinding2.erasure(), this)) {
                    return -1;
                }
            }
            return 0;
        }
        boolean z11 = (z10 && CompilerOptions.tolerateIllegalAmbiguousVarargsInvocation && compilerOptions.complianceLevel < ClassFileConstants.JDK1_7) ? false : z10;
        LookupEnvironment environment = environment();
        if (methodBinding.isVarargs()) {
            i10 = length - 1;
            i11 = 2;
            if (length == length2) {
                TypeBinding typeBinding4 = typeBindingArr2[i10];
                TypeBinding typeBinding5 = typeBindingArr[i10];
                if (TypeBinding.notEquals(typeBinding4, typeBinding5)) {
                    int parameterCompatibilityLevel = parameterCompatibilityLevel(typeBinding5, typeBinding4, environment, z11, methodBinding);
                    if (parameterCompatibilityLevel == -1) {
                        if (parameterCompatibilityLevel(z11 ? ((ArrayBinding) typeBinding5).elementsType() : typeBinding5, ((ArrayBinding) typeBinding4).elementsType(), environment, z11, methodBinding) == -1) {
                            return -1;
                        }
                    } else {
                        i11 = parameterCompatibilityLevel;
                    }
                }
            } else if (length < length2) {
                TypeBinding elementsType = ((ArrayBinding) typeBindingArr2[i10]).elementsType();
                int i16 = i10;
                while (i16 < length2) {
                    TypeBinding elementsType2 = (z11 && i16 == length2 + (-1)) ? ((ArrayBinding) typeBindingArr[i16]).elementsType() : typeBindingArr[i16];
                    if (TypeBinding.notEquals(elementsType, elementsType2)) {
                        i13 = i16;
                        typeBinding = elementsType;
                        if (parameterCompatibilityLevel(elementsType2, elementsType, environment, z11, methodBinding) == -1) {
                            return -1;
                        }
                    } else {
                        i13 = i16;
                        typeBinding = elementsType;
                    }
                    i16 = i13 + 1;
                    elementsType = typeBinding;
                }
            } else if (i10 != length2) {
                return -1;
            }
            int i17 = i11;
            while (i14 < i10) {
                TypeBinding typeBinding6 = typeBindingArr2[i14];
                TypeBinding elementsType3 = (z11 && i14 == length2 + (-1)) ? ((ArrayBinding) typeBindingArr[i14]).elementsType() : typeBindingArr[i14];
                if (TypeBinding.notEquals(elementsType3, typeBinding6)) {
                    int i18 = i17;
                    int parameterCompatibilityLevel2 = parameterCompatibilityLevel(elementsType3, typeBinding6, environment, z11, methodBinding);
                    if (parameterCompatibilityLevel2 == -1) {
                        return -1;
                    }
                    i12 = i18;
                    if (parameterCompatibilityLevel2 > i12) {
                        i17 = parameterCompatibilityLevel2;
                        i14++;
                    }
                } else {
                    i12 = i17;
                }
                i17 = i12;
                i14++;
            }
            return i17;
        }
        if (length != length2) {
            return -1;
        }
        i10 = length2;
        i11 = 0;
        int i172 = i11;
        while (i14 < i10) {
        }
        return i172;
    }

    public int parameterCompatibilityLevel(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (TypeBinding.equalsEquals(typeBinding, typeBinding2)) {
            return 0;
        }
        if (typeBinding == null || typeBinding2 == null) {
            return -1;
        }
        if (typeBinding.isCompatibleWith(typeBinding2, this)) {
            return 0;
        }
        if (typeBinding.kind() == 65540 || typeBinding.isBaseType() != typeBinding2.isBaseType()) {
            TypeBinding computeBoxingType = environment().computeBoxingType(typeBinding);
            if (TypeBinding.equalsEquals(computeBoxingType, typeBinding2) || computeBoxingType.isCompatibleWith(typeBinding2, this)) {
                return 1;
            }
        }
        return -1;
    }

    private int parameterCompatibilityLevel(TypeBinding typeBinding, TypeBinding typeBinding2, LookupEnvironment lookupEnvironment, boolean z10, MethodBinding methodBinding) {
        if (typeBinding == null || typeBinding2 == null) {
            return -1;
        }
        if ((typeBinding instanceof PolyTypeBinding) && !((PolyTypeBinding) typeBinding).expression.isPertinentToApplicability(typeBinding2, methodBinding)) {
            if (typeBinding.isPotentiallyCompatibleWith(typeBinding2, this)) {
                return 0;
            }
        } else if (typeBinding.isCompatibleWith(typeBinding2, this)) {
            return 0;
        }
        if (z10 && (compilerOptions().complianceLevel >= ClassFileConstants.JDK1_7 || !CompilerOptions.tolerateIllegalAmbiguousVarargsInvocation)) {
            return -1;
        }
        if (typeBinding.kind() == 65540 || typeBinding.isBaseType() != typeBinding2.isBaseType()) {
            TypeBinding computeBoxingType = lookupEnvironment.computeBoxingType(typeBinding);
            if (TypeBinding.equalsEquals(computeBoxingType, typeBinding2) || computeBoxingType.isCompatibleWith(typeBinding2, this)) {
                return 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
    
        if ((r3 instanceof org.eclipse.jdt.internal.compiler.lookup.PackageBinding) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0073, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Binding getTypeOrPackage(char[][] cArr) {
        int i10;
        TypeBinding baseType;
        int length = cArr.length;
        boolean z10 = true;
        if (length == 1 && (baseType = getBaseType(cArr[0])) != null) {
            return baseType;
        }
        Binding typeOrPackage = getTypeOrPackage(cArr[0], 20, true);
        if (!typeOrPackage.isValidBinding()) {
            return typeOrPackage;
        }
        if (typeOrPackage instanceof PackageBinding) {
            PackageBinding packageBinding = (PackageBinding) typeOrPackage;
            i10 = 1;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                int i11 = i10 + 1;
                Binding typeOrPackage2 = packageBinding.getTypeOrPackage(cArr[i10], module(), i11 < length);
                if (typeOrPackage2 == null) {
                    return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), null, 1);
                }
                if (!typeOrPackage2.isValidBinding()) {
                    return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i11), typeOrPackage2 instanceof ReferenceBinding ? (ReferenceBinding) ((ReferenceBinding) typeOrPackage2).closestMatch() : null, typeOrPackage2.problemId());
                }
                if (!(typeOrPackage2 instanceof PackageBinding)) {
                    i10 = i11;
                    typeOrPackage = typeOrPackage2;
                    break;
                }
                i10 = i11;
                typeOrPackage = typeOrPackage2;
                packageBinding = (PackageBinding) typeOrPackage2;
            }
        } else {
            i10 = 1;
            z10 = false;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) typeOrPackage;
        ReferenceBinding referenceBinding2 = (ReferenceBinding) environment().convertToRawType(referenceBinding, false);
        if (z10 && !referenceBinding.canBeSeenBy(this)) {
            return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i10), referenceBinding, 2);
        }
        while (i10 < length) {
            int i12 = i10 + 1;
            referenceBinding = getMemberType(cArr[i10], referenceBinding);
            if (!referenceBinding.isValidBinding()) {
                return new ProblemReferenceBinding(CharOperation.subarray(cArr, 0, i12), (ReferenceBinding) referenceBinding.closestMatch(), referenceBinding.problemId());
            }
            if (referenceBinding.isGenericType()) {
                referenceBinding2 = environment().createRawType(referenceBinding, referenceBinding2);
            } else {
                referenceBinding2 = environment().maybeCreateParameterizedType(referenceBinding, referenceBinding2);
            }
            i10 = i12;
        }
        return referenceBinding2;
    }
}
