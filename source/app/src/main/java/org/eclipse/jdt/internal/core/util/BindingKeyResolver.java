package org.eclipse.jdt.internal.core.util;

import java.util.ArrayList;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding18;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolymorphicMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.core.JavaElement;

public class BindingKeyResolver extends BindingKeyParser {
    AnnotationBinding annotationBinding;
    Compiler compiler;
    Binding compilerBinding;
    char[][] compoundName;
    int dimension;
    LookupEnvironment environment;
    ReferenceBinding genericType;
    MethodBinding methodBinding;
    char[] moduleName;
    CompilationUnitDeclaration outerMostParsedUnit;
    CompilationUnitDeclaration parsedUnit;
    HashtableOfObject resolvedUnits;
    BlockScope scope;
    char[] secondarySimpleName;
    TypeBinding typeBinding;
    TypeDeclaration typeDeclaration;
    ArrayList types;
    int wildcardRank;

    public final class SyntheticLocalVariableBinding extends LocalVariableBinding {
        private final MethodBinding enclosingMethod;
        private char[] key;
        private int paramPosition;

        public SyntheticLocalVariableBinding(char[] cArr, TypeBinding typeBinding, MethodBinding methodBinding, int i10) {
            super(cArr, typeBinding, 0, true);
            this.enclosingMethod = methodBinding;
            this.paramPosition = i10;
        }

        @Override
        public char[] computeUniqueKey() {
            if (this.key == null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.enclosingMethod.computeUniqueKey());
                sb2.append(JavaElement.JEM_IMPORTDECLARATION);
                sb2.append(this.name);
                sb2.append("#0#");
                sb2.append(this.paramPosition);
                int length = sb2.length();
                char[] cArr = new char[length];
                this.key = cArr;
                sb2.getChars(0, length, cArr, 0);
            }
            return this.key;
        }

        public boolean equals(Object obj) {
            if (obj instanceof SyntheticLocalVariableBinding) {
                return CharOperation.equals(computeUniqueKey(), ((SyntheticLocalVariableBinding) obj).computeUniqueKey());
            }
            return false;
        }

        @Override
        public MethodBinding getEnclosingMethod() {
            return this.enclosingMethod;
        }

        public int hashCode() {
            return CharOperation.hashCode(computeUniqueKey());
        }
    }

    private BindingKeyResolver(BindingKeyParser bindingKeyParser, Compiler compiler, LookupEnvironment lookupEnvironment, CompilationUnitDeclaration compilationUnitDeclaration, HashtableOfObject hashtableOfObject) {
        super(bindingKeyParser);
        this.types = new ArrayList();
        this.compiler = compiler;
        this.environment = lookupEnvironment;
        this.outerMostParsedUnit = compilationUnitDeclaration;
        this.resolvedUnits = hashtableOfObject;
    }

    private TypeBinding getArrayBinding(int i10, TypeBinding typeBinding) {
        if (typeBinding == null) {
            return null;
        }
        return i10 == 0 ? typeBinding : this.environment.createArrayType(typeBinding, i10);
    }

    private TypeBinding getBaseTypeBinding(char[] cArr) {
        char c10 = cArr[0];
        if (c10 == 'F') {
            return TypeBinding.FLOAT;
        }
        if (c10 == 'N') {
            return TypeBinding.NULL;
        }
        if (c10 == 'S') {
            return TypeBinding.SHORT;
        }
        if (c10 == 'V') {
            return TypeBinding.VOID;
        }
        if (c10 == 'Z') {
            return TypeBinding.BOOLEAN;
        }
        if (c10 == 'I') {
            return TypeBinding.INT;
        }
        if (c10 == 'J') {
            return TypeBinding.LONG;
        }
        switch (c10) {
            case 'B':
                return TypeBinding.BYTE;
            case 'C':
                return TypeBinding.CHAR;
            case 'D':
                return TypeBinding.DOUBLE;
            default:
                return null;
        }
    }

    private TypeBinding getBinaryBinding() {
        char[][] cArr = this.compoundName;
        if (cArr.length == 0) {
            return null;
        }
        return this.environment.getType(cArr);
    }

    private TypeBinding getType(char[] cArr) {
        int length = cArr.length;
        int i10 = 0;
        if (length != 1) {
            int i11 = 0;
            while (cArr[i10] == '[') {
                i10++;
                i11++;
            }
            ReferenceBinding type = this.environment.getType(CharOperation.splitOn('/', cArr, i10 + 1, length - 1));
            return i11 != 0 ? this.environment.createArrayType(type, i11) : type;
        }
        char c10 = cArr[0];
        if (c10 == 'F') {
            return TypeBinding.FLOAT;
        }
        if (c10 == 'S') {
            return TypeBinding.SHORT;
        }
        if (c10 == 'V') {
            return TypeBinding.VOID;
        }
        if (c10 == 'Z') {
            return TypeBinding.BOOLEAN;
        }
        if (c10 == 'I') {
            return TypeBinding.INT;
        }
        if (c10 == 'J') {
            return TypeBinding.LONG;
        }
        switch (c10) {
            case 'B':
                return TypeBinding.BYTE;
            case 'C':
                return TypeBinding.CHAR;
            case 'D':
                return TypeBinding.DOUBLE;
            default:
                return null;
        }
    }

    private TypeBinding getTypeBinding(char[] cArr) {
        TypeDeclaration[] typeDeclarationArr;
        TypeBinding typeBinding = this.typeBinding;
        if (typeBinding instanceof ReferenceBinding) {
            return ((ReferenceBinding) typeBinding).getMemberType(cArr);
        }
        TypeDeclaration typeDeclaration = this.typeDeclaration;
        if (typeDeclaration == null) {
            CompilationUnitDeclaration compilationUnitDeclaration = this.parsedUnit;
            typeDeclarationArr = compilationUnitDeclaration == null ? null : compilationUnitDeclaration.types;
        } else {
            typeDeclarationArr = typeDeclaration.memberTypes;
        }
        if (typeDeclarationArr == null) {
            return null;
        }
        for (TypeDeclaration typeDeclaration2 : typeDeclarationArr) {
            if (CharOperation.equals(cArr, typeDeclaration2.name)) {
                this.typeDeclaration = typeDeclaration2;
                return typeDeclaration2.binding;
            }
        }
        return null;
    }

    private TypeBinding[] getTypeBindingArguments() {
        int size = this.types.size();
        TypeBinding[] typeBindingArr = new TypeBinding[size];
        for (int i10 = 0; i10 < size; i10++) {
            TypeBinding typeBinding = (TypeBinding) ((BindingKeyResolver) this.types.get(i10)).compilerBinding;
            if (typeBinding == null) {
                this.types = new ArrayList();
                return null;
            }
            typeBindingArr[i10] = typeBinding;
        }
        this.types = new ArrayList();
        return typeBindingArr;
    }

    public char[][] compoundName() {
        return this.compoundName;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void consumeAnnotation() {
        AnnotationBinding[] annotations;
        int size = this.types.size();
        if (size == 0) {
            return;
        }
        Binding binding = ((BindingKeyResolver) this.types.get(size - 1)).compilerBinding;
        Binding binding2 = this.compilerBinding;
        if (binding2 == null) {
            TypeBinding typeBinding = this.typeBinding;
            if (typeBinding instanceof ReferenceBinding) {
                annotations = ((ReferenceBinding) typeBinding).getAnnotations();
                for (AnnotationBinding annotationBinding : annotations) {
                    if (annotationBinding.getAnnotationType() == binding) {
                        this.annotationBinding = annotationBinding;
                        return;
                    }
                }
            }
        }
        if (binding2 instanceof MethodBinding) {
            annotations = ((MethodBinding) binding2).getAnnotations();
        } else if (!(binding2 instanceof VariableBinding)) {
            return;
        } else {
            annotations = ((VariableBinding) binding2).getAnnotations();
        }
        while (r3 < r2) {
        }
    }

    public void consumeAnyCapture(int i10, int i11) {
        CompilationUnitDeclaration compilationUnitDeclaration = this.outerMostParsedUnit;
        if (compilationUnitDeclaration == null) {
            compilationUnitDeclaration = this.parsedUnit;
        }
        if (compilationUnitDeclaration == null) {
            return;
        }
        C1CaptureFinder c1CaptureFinder = new C1CaptureFinder(i11, this.types.size() > 0 ? ((BindingKeyResolver) this.types.get(0)).compilerBinding : null, i10);
        compilationUnitDeclaration.traverse(c1CaptureFinder, compilationUnitDeclaration.scope);
        this.typeBinding = c1CaptureFinder.capture;
    }

    @Override
    public void consumeArrayDimension(char[] cArr) {
        this.dimension = cArr.length;
    }

    @Override
    public void consumeBaseType(char[] cArr) {
        this.compoundName = new char[][]{getKey().toCharArray()};
        TypeBinding baseTypeBinding = getBaseTypeBinding(cArr);
        if (baseTypeBinding != null) {
            this.typeBinding = baseTypeBinding;
        }
    }

    @Override
    public void consumeCapture(int i10) {
        consumeAnyCapture(-1, i10);
    }

    @Override
    public void consumeCapture18ID(int i10, int i11) {
        consumeAnyCapture(i10, i11);
    }

    @Override
    public void consumeException() {
        this.types = new ArrayList();
    }

    @Override
    public void consumeField(char[] cArr) {
        TypeBinding typeBinding = this.typeBinding;
        if (typeBinding == null) {
            return;
        }
        for (FieldBinding fieldBinding : ((ReferenceBinding) typeBinding).availableFields()) {
            if (CharOperation.equals(cArr, fieldBinding.name)) {
                this.typeBinding = null;
                this.compilerBinding = fieldBinding;
                return;
            }
        }
    }

    @Override
    public void consumeFullyQualifiedName(char[] cArr) {
        this.compoundName = CharOperation.splitOn('/', cArr);
    }

    @Override
    public void consumeKey() {
        TypeBinding typeBinding = this.typeBinding;
        if (typeBinding != null) {
            TypeBinding arrayBinding = getArrayBinding(this.dimension, typeBinding);
            this.typeBinding = arrayBinding;
            this.compilerBinding = arrayBinding;
        }
    }

    @Override
    public void consumeLocalType(char[] cArr) {
        CompilationUnitDeclaration compilationUnitDeclaration = this.parsedUnit;
        if (compilationUnitDeclaration == null) {
            this.typeBinding = null;
            return;
        }
        LocalTypeBinding[] localTypeBindingArr = compilationUnitDeclaration.localTypes;
        for (int i10 = 0; i10 < this.parsedUnit.localTypeCount; i10++) {
            if (CharOperation.equals(cArr, localTypeBindingArr[i10].computeUniqueKey(false))) {
                this.typeBinding = localTypeBindingArr[i10];
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void consumeLocalVar(char[] cArr, int i10, int i11) {
        int i12;
        int i13 = 0;
        if (this.scope == null) {
            MethodBinding methodBinding = this.methodBinding;
            if (methodBinding == null) {
                return;
            }
            AbstractMethodDeclaration sourceMethod = methodBinding.sourceMethod();
            if (sourceMethod != null) {
                this.scope = sourceMethod.scope;
            } else {
                char[][] cArr2 = this.methodBinding.parameterNames;
                if (cArr2.length != 0) {
                    i11 = 0;
                    while (i11 < cArr2.length) {
                        if (!CharOperation.equals(cArr2[i11], cArr)) {
                            i11++;
                        }
                    }
                    i12 = -1;
                    if (i12 != -1) {
                        MethodBinding methodBinding2 = this.methodBinding;
                        this.compilerBinding = new SyntheticLocalVariableBinding(cArr, methodBinding2.parameters[i12], methodBinding2, i12);
                        this.methodBinding = null;
                        return;
                    }
                }
                i12 = i11;
                if (i12 != -1) {
                }
            }
        }
        if (this.scope == null) {
            return;
        }
        while (true) {
            BlockScope blockScope = this.scope;
            if (i13 >= blockScope.localIndex) {
                return;
            }
            LocalVariableBinding localVariableBinding = blockScope.locals[i13];
            if (CharOperation.equals(localVariableBinding.name, cArr)) {
                int i14 = i10 - 1;
                if (i10 == 0) {
                    this.methodBinding = null;
                    this.compilerBinding = localVariableBinding;
                    return;
                }
                i10 = i14;
            }
            i13++;
        }
    }

    @Override
    public void consumeMemberType(char[] cArr) {
        this.typeBinding = getTypeBinding(cArr);
    }

    @Override
    public void consumeMethod(char[] cArr, char[] cArr2) {
        TypeBinding typeBinding = this.typeBinding;
        if (typeBinding == null) {
            return;
        }
        for (MethodBinding methodBinding : ((ReferenceBinding) typeBinding).availableMethods()) {
            if (CharOperation.equals(cArr, methodBinding.selector) || (cArr.length == 0 && methodBinding.isConstructor())) {
                char[] genericSignature = methodBinding.genericSignature();
                if (genericSignature == null) {
                    genericSignature = methodBinding.signature();
                }
                if (CharOperation.equals(cArr2, genericSignature)) {
                    this.typeBinding = null;
                    this.methodBinding = methodBinding;
                    this.compilerBinding = methodBinding;
                    return;
                } else if ((methodBinding.tagBits & 4503599627370496L) != 0) {
                    this.typeBinding = null;
                    char[][] parameterTypes = Signature.getParameterTypes(cArr2);
                    int length = parameterTypes.length;
                    TypeBinding[] typeBindingArr = new TypeBinding[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        typeBindingArr[i10] = getType(parameterTypes[i10]);
                    }
                    PolymorphicMethodBinding createPolymorphicMethod = this.environment.createPolymorphicMethod(methodBinding, typeBindingArr, this.scope);
                    this.methodBinding = createPolymorphicMethod;
                    MethodBinding updatePolymorphicMethodReturnType = this.environment.updatePolymorphicMethodReturnType(createPolymorphicMethod, getType(Signature.getReturnType(cArr2)));
                    this.methodBinding = updatePolymorphicMethodReturnType;
                    this.compilerBinding = updatePolymorphicMethodReturnType;
                    return;
                }
            }
        }
    }

    @Override
    public void consumeModule(char[] cArr) {
        this.moduleName = cArr;
        this.compilerBinding = this.environment.getModule(cArr);
    }

    @Override
    public void consumePackage(char[] cArr) {
        this.compoundName = CharOperation.splitOn('/', cArr);
        char[][] cArr2 = this.compoundName;
        LookupEnvironment lookupEnvironment = this.environment;
        this.compilerBinding = new PackageBinding(cArr2, null, lookupEnvironment, lookupEnvironment.module);
    }

    @Override
    public void consumeParameterizedGenericMethod() {
        if (this.methodBinding == null) {
            return;
        }
        TypeBinding[] typeBindingArguments = getTypeBindingArguments();
        if (typeBindingArguments == null) {
            this.methodBinding = null;
            this.compilerBinding = null;
        } else {
            if (typeBindingArguments.length != this.methodBinding.typeVariables().length) {
                this.methodBinding = this.environment.createParameterizedGenericMethod(this.methodBinding, (RawTypeBinding) null);
            } else {
                this.methodBinding = this.environment.createParameterizedGenericMethod(this.methodBinding, typeBindingArguments);
            }
            this.compilerBinding = this.methodBinding;
        }
    }

    @Override
    public void consumeParameterizedType(char[] cArr, boolean z10) {
        if (this.typeBinding == null) {
            return;
        }
        TypeBinding[] typeBindingArguments = getTypeBindingArguments();
        if (typeBindingArguments == null) {
            this.typeBinding = null;
            this.genericType = null;
            return;
        }
        if (cArr == null) {
            ReferenceBinding referenceBinding = (ReferenceBinding) this.typeBinding;
            this.genericType = referenceBinding;
            ReferenceBinding enclosingType = referenceBinding.enclosingType();
            if (enclosingType != null) {
                enclosingType = (ReferenceBinding) this.environment.convertToRawType(enclosingType, false);
            }
            this.typeBinding = this.environment.createParameterizedType(this.genericType, typeBindingArguments, enclosingType);
            return;
        }
        ReferenceBinding referenceBinding2 = this.genericType;
        if (referenceBinding2 == null) {
            this.genericType = ((ReferenceBinding) this.typeBinding).getMemberType(cArr);
        } else {
            this.genericType = referenceBinding2.getMemberType(cArr);
        }
        if (z10) {
            this.typeBinding = this.environment.createRawType(this.genericType, (ReferenceBinding) this.typeBinding);
        } else {
            this.typeBinding = this.environment.createParameterizedType(this.genericType, typeBindingArguments, (ReferenceBinding) this.typeBinding);
        }
    }

    @Override
    public void consumeParser(BindingKeyParser bindingKeyParser) {
        this.types.add(bindingKeyParser);
    }

    @Override
    public void consumeRawType() {
        TypeBinding typeBinding = this.typeBinding;
        if (typeBinding == null) {
            return;
        }
        this.typeBinding = this.environment.convertToRawType(typeBinding, false);
    }

    @Override
    public void consumeScope(int i10) {
        if (this.scope == null) {
            MethodBinding methodBinding = this.methodBinding;
            if (methodBinding == null) {
                return;
            } else {
                this.scope = methodBinding.sourceMethod().scope;
            }
        }
        BlockScope blockScope = this.scope;
        if (i10 >= blockScope.subscopeCount) {
            return;
        }
        this.scope = (BlockScope) blockScope.subscopes[i10];
    }

    @Override
    public void consumeSecondaryType(char[] cArr) {
        this.secondarySimpleName = cArr;
    }

    @Override
    public void consumeTopLevelType() {
        CompilationUnitDeclaration compilationUnitDeclaration = getCompilationUnitDeclaration();
        this.parsedUnit = compilationUnitDeclaration;
        if (compilationUnitDeclaration != null && this.compiler != null) {
            HashtableOfObject hashtableOfObject = this.resolvedUnits;
            char[] fileName = compilationUnitDeclaration.getFileName();
            if (!hashtableOfObject.containsKey(fileName)) {
                Compiler compiler = this.compiler;
                compiler.process(this.parsedUnit, compiler.totalUnits + 1);
                this.resolvedUnits.put(fileName, fileName);
            }
        }
        if (this.parsedUnit == null) {
            this.typeBinding = getBinaryBinding();
            return;
        }
        char[] cArr = this.secondarySimpleName;
        if (cArr == null) {
            cArr = this.compoundName[r0.length - 1];
        }
        this.typeBinding = getTypeBinding(cArr);
    }

    @Override
    public void consumeTypeVariable(char[] cArr, char[] cArr2) {
        TypeVariableBinding[] typeVariables;
        if (cArr.length > 0) {
            if (this.typeBinding == null) {
                return;
            }
            int parseInt = Integer.parseInt(new String(cArr));
            MethodBinding[] availableMethods = ((ReferenceBinding) this.typeBinding).availableMethods();
            if (availableMethods != null && parseInt < availableMethods.length) {
                this.methodBinding = availableMethods[parseInt];
            }
        }
        MethodBinding methodBinding = this.methodBinding;
        if (methodBinding != null) {
            typeVariables = methodBinding.typeVariables();
        } else {
            TypeBinding typeBinding = this.typeBinding;
            if (typeBinding == null) {
                return;
            } else {
                typeVariables = typeBinding.typeVariables();
            }
        }
        for (TypeVariableBinding typeVariableBinding : typeVariables) {
            if (CharOperation.equals(cArr2, typeVariableBinding.sourceName())) {
                this.typeBinding = typeVariableBinding;
                return;
            }
        }
    }

    @Override
    public void consumeTypeWithCapture() {
        this.typeBinding = (TypeBinding) ((BindingKeyResolver) this.types.get(0)).compilerBinding;
    }

    @Override
    public void consumeWildCard(int i10) {
        if (i10 == 0) {
            this.typeBinding = this.environment.createWildcard((ReferenceBinding) this.typeBinding, this.wildcardRank, null, null, i10);
            return;
        }
        if (i10 == 1 || i10 == 2) {
            Binding binding = ((BindingKeyResolver) this.types.get(0)).compilerBinding;
            if (binding instanceof TypeBinding) {
                this.typeBinding = this.environment.createWildcard((ReferenceBinding) this.typeBinding, this.wildcardRank, (TypeBinding) binding, null, i10);
            } else {
                this.typeBinding = null;
            }
        }
    }

    @Override
    public void consumeWildcardRank(int i10) {
        this.wildcardRank = i10;
    }

    public AnnotationBinding getAnnotationBinding() {
        return this.annotationBinding;
    }

    public CompilationUnitDeclaration getCompilationUnitDeclaration() {
        LookupEnvironment lookupEnvironment;
        char[][] cArr = this.compoundName;
        if (cArr.length == 0 || (lookupEnvironment = this.environment) == null) {
            return null;
        }
        ReferenceBinding type = lookupEnvironment.getType(cArr);
        if (!(type instanceof SourceTypeBinding)) {
            if (this.secondarySimpleName == null) {
                return null;
            }
            int length = cArr.length;
            char[][] cArr2 = new char[length];
            int i10 = length - 1;
            System.arraycopy(cArr, 0, cArr2, 0, i10);
            cArr2[i10] = this.secondarySimpleName;
            type = this.environment.getType(cArr2);
            if (!(type instanceof SourceTypeBinding)) {
                return null;
            }
        }
        ClassScope classScope = ((SourceTypeBinding) type).scope;
        if (classScope == null) {
            return null;
        }
        return classScope.compilationUnitScope().referenceContext;
    }

    public Binding getCompilerBinding() {
        try {
            parse();
            return this.compilerBinding;
        } catch (RuntimeException e10) {
            Util.log(e10, "Could not create binding from binding key: " + getKey());
            return null;
        }
    }

    @Override
    public void malformedKey() {
        this.compoundName = CharOperation.NO_CHAR_CHAR;
    }

    public char[] moduleName() {
        return this.moduleName;
    }

    @Override
    public BindingKeyParser newParser() {
        Compiler compiler = this.compiler;
        LookupEnvironment lookupEnvironment = this.environment;
        CompilationUnitDeclaration compilationUnitDeclaration = this.outerMostParsedUnit;
        if (compilationUnitDeclaration == null) {
            compilationUnitDeclaration = this.parsedUnit;
        }
        return new BindingKeyResolver(this, compiler, lookupEnvironment, compilationUnitDeclaration, this.resolvedUnits);
    }

    public String toString() {
        return getKey();
    }

    public class C1CaptureFinder extends ASTVisitor {
        CaptureBinding capture;
        private final int val$capture18id;
        private final int val$position;
        private final Binding val$wildcardBinding;

        public C1CaptureFinder(int i10, Binding binding, int i11) {
            this.val$position = i10;
            this.val$wildcardBinding = binding;
            this.val$capture18id = i11;
        }

        public boolean checkType(TypeBinding typeBinding) {
            if (typeBinding == null) {
                return false;
            }
            int kind = typeBinding.kind();
            if (kind == 68) {
                return checkType(((ArrayBinding) typeBinding).leafComponentType);
            }
            if (kind == 260) {
                TypeBinding[] typeBindingArr = ((ParameterizedTypeBinding) typeBinding).arguments;
                if (typeBindingArr == null) {
                    return false;
                }
                for (TypeBinding typeBinding2 : typeBindingArr) {
                    if (checkType(typeBinding2)) {
                        return true;
                    }
                }
            } else {
                if (kind == 516) {
                    return checkType(((WildcardBinding) typeBinding).bound);
                }
                if (kind != 4100) {
                    if (kind == 8196) {
                        WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
                        if (checkType(wildcardBinding.bound)) {
                            return true;
                        }
                        TypeBinding[] typeBindingArr2 = wildcardBinding.otherBounds;
                        for (TypeBinding typeBinding3 : typeBindingArr2) {
                            if (checkType(typeBinding3)) {
                                return true;
                            }
                        }
                    }
                } else if (typeBinding.isCapture()) {
                    CaptureBinding captureBinding = (CaptureBinding) typeBinding;
                    if (captureBinding.end == this.val$position && captureBinding.wildcard == this.val$wildcardBinding) {
                        if ((captureBinding instanceof CaptureBinding18) && ((CaptureBinding18) captureBinding).captureID != this.val$capture18id) {
                            return false;
                        }
                        this.capture = captureBinding;
                        return true;
                    }
                }
            }
            return false;
        }

        @Override
        public boolean visit(SingleNameReference singleNameReference, BlockScope blockScope) {
            if (checkType(singleNameReference.resolvedType)) {
                return false;
            }
            return super.visit(singleNameReference, blockScope);
        }

        @Override
        public boolean visit(QualifiedNameReference qualifiedNameReference, BlockScope blockScope) {
            if (checkType(qualifiedNameReference.resolvedType)) {
                return false;
            }
            return super.visit(qualifiedNameReference, blockScope);
        }

        @Override
        public boolean visit(MessageSend messageSend, BlockScope blockScope) {
            if (checkType(messageSend.resolvedType)) {
                return false;
            }
            return super.visit(messageSend, blockScope);
        }

        @Override
        public boolean visit(FieldReference fieldReference, BlockScope blockScope) {
            if (checkType(fieldReference.resolvedType)) {
                return false;
            }
            return super.visit(fieldReference, blockScope);
        }

        @Override
        public boolean visit(ConditionalExpression conditionalExpression, BlockScope blockScope) {
            if (checkType(conditionalExpression.resolvedType)) {
                return false;
            }
            return super.visit(conditionalExpression, blockScope);
        }

        @Override
        public boolean visit(CastExpression castExpression, BlockScope blockScope) {
            if (checkType(castExpression.resolvedType)) {
                return false;
            }
            return super.visit(castExpression, blockScope);
        }

        @Override
        public boolean visit(Assignment assignment, BlockScope blockScope) {
            if (checkType(assignment.resolvedType)) {
                return false;
            }
            return super.visit(assignment, blockScope);
        }

        @Override
        public boolean visit(ArrayReference arrayReference, BlockScope blockScope) {
            if (checkType(arrayReference.resolvedType)) {
                return false;
            }
            return super.visit(arrayReference, blockScope);
        }
    }

    public BindingKeyResolver(String str, Compiler compiler, LookupEnvironment lookupEnvironment) {
        super(str);
        this.types = new ArrayList();
        this.compiler = compiler;
        this.environment = lookupEnvironment;
        this.resolvedUnits = new HashtableOfObject();
    }
}
