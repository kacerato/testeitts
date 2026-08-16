package org.eclipse.jdt.internal.compiler.ast;

import android.util.Half;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.impl.StringConstant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.NestedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.problem.AbortType;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class TypeDeclaration extends Statement implements ProblemSeverities, ReferenceContext {
    public static final int ANNOTATION_TYPE_DECL = 4;
    public static final int CLASS_DECL = 1;
    public static final int ENUM_DECL = 3;
    public static final int INTERFACE_DECL = 2;
    public QualifiedAllocationExpression allocation;
    public Annotation[] annotations;
    public SourceTypeBinding binding;
    public int bodyEnd;
    public int bodyStart;
    public CompilationResult compilationResult;
    public int declarationSourceEnd;
    public int declarationSourceStart;
    public TypeDeclaration enclosingType;
    public int enumConstantsCounter;
    public FieldBinding enumValuesSyntheticfield;
    public FieldDeclaration[] fields;
    public MethodScope initializerScope;
    public Javadoc javadoc;
    public int maxFieldCount;
    public TypeDeclaration[] memberTypes;
    public AbstractMethodDeclaration[] methods;
    public MethodDeclaration[] missingAbstractMethods;
    public int modifiersSourceStart;
    public char[] name;
    public ClassScope scope;
    public MethodScope staticInitializerScope;
    public TypeReference[] superInterfaces;
    public TypeReference superclass;
    public TypeParameter[] typeParameters;
    public int modifiers = 0;
    public int functionalExpressionsCount = 0;
    public boolean ignoreFurtherInvestigation = false;

    public TypeDeclaration(CompilationResult compilationResult) {
        this.compilationResult = compilationResult;
    }

    private void addJUnitMethodSourceValues(SimpleSetOfCharArray simpleSetOfCharArray, Annotation annotation, char[] cArr) {
        for (MemberValuePair memberValuePair : annotation.memberValuePairs()) {
            if (CharOperation.equals(memberValuePair.name, TypeConstants.VALUE)) {
                Expression expression = memberValuePair.value;
                if (!(expression instanceof ArrayInitializer)) {
                    simpleSetOfCharArray.add(getValueAsChars(expression));
                    return;
                }
                for (Expression expression2 : ((ArrayInitializer) expression).expressions) {
                    simpleSetOfCharArray.add(getValueAsChars(expression2));
                }
                return;
            }
        }
        simpleSetOfCharArray.add(cArr);
    }

    private SourceTypeBinding findNestHost() {
        ClassScope enclosingTopMostClassScope = this.scope.enclosingTopMostClassScope();
        if (enclosingTopMostClassScope != null) {
            return enclosingTopMostClassScope.referenceContext.binding;
        }
        return null;
    }

    private SimpleSetOfCharArray getJUnitMethodSourceValues() {
        SimpleSetOfCharArray simpleSetOfCharArray = new SimpleSetOfCharArray();
        for (AbstractMethodDeclaration abstractMethodDeclaration : this.methods) {
            Annotation[] annotationArr = abstractMethodDeclaration.annotations;
            if (annotationArr != null) {
                for (Annotation annotation : annotationArr) {
                    TypeBinding typeBinding = annotation.resolvedType;
                    if (typeBinding != null && typeBinding.f102482id == 93) {
                        addJUnitMethodSourceValues(simpleSetOfCharArray, annotation, abstractMethodDeclaration.selector);
                    }
                }
            }
        }
        return simpleSetOfCharArray;
    }

    private char[] getValueAsChars(Expression expression) {
        if (expression instanceof StringLiteral) {
            return ((StringLiteral) expression).source;
        }
        Constant constant = expression.constant;
        return constant instanceof StringConstant ? ((StringConstant) constant).stringValue().toCharArray() : CharOperation.NO_CHAR;
    }

    private void internalAnalyseCode(FlowContext flowContext, FlowInfo flowInfo) {
        MethodBinding methodBinding;
        AbstractMethodDeclaration[] abstractMethodDeclarationArr;
        if (!this.binding.isUsed() && this.binding.isOrEnclosedByPrivateType() && !this.scope.referenceCompilationUnit().compilationResult.hasSyntaxError) {
            this.scope.problemReporter().unusedPrivateType(this);
        }
        if (this.typeParameters != null && !this.scope.referenceCompilationUnit().compilationResult.hasSyntaxError) {
            int length = this.typeParameters.length;
            for (int i10 = 0; i10 < length; i10++) {
                TypeParameter typeParameter = this.typeParameters[i10];
                if ((typeParameter.binding.modifiers & 134217728) == 0) {
                    this.scope.problemReporter().unusedTypeParameter(typeParameter);
                }
            }
        }
        FlowContext flowContext2 = flowContext instanceof InitializationFlowContext ? null : flowContext;
        InitializationFlowContext initializationFlowContext = new InitializationFlowContext(flowContext2, this, flowInfo, flowContext, this.initializerScope);
        InitializationFlowContext initializationFlowContext2 = new InitializationFlowContext(null, this, flowInfo, flowContext, this.staticInitializerScope);
        FlowInfo unconditionalFieldLessCopy = flowInfo.unconditionalFieldLessCopy();
        FlowInfo unconditionalFieldLessCopy2 = flowInfo.unconditionalFieldLessCopy();
        FieldDeclaration[] fieldDeclarationArr = this.fields;
        if (fieldDeclarationArr != null) {
            int length2 = fieldDeclarationArr.length;
            for (int i11 = 0; i11 < length2; i11++) {
                FieldDeclaration fieldDeclaration = this.fields[i11];
                if (fieldDeclaration.isStatic()) {
                    if ((unconditionalFieldLessCopy2.tagBits & 1) != 0) {
                        fieldDeclaration.bits &= Integer.MAX_VALUE;
                    }
                    initializationFlowContext2.handledExceptions = Binding.ANY_EXCEPTION;
                    unconditionalFieldLessCopy2 = fieldDeclaration.analyseCode(this.staticInitializerScope, (FlowContext) initializationFlowContext2, unconditionalFieldLessCopy2);
                    if (unconditionalFieldLessCopy2 == FlowInfo.DEAD_END) {
                        this.staticInitializerScope.problemReporter().initializerMustCompleteNormally(fieldDeclaration);
                        unconditionalFieldLessCopy2 = FlowInfo.initial(this.maxFieldCount).setReachMode(1);
                    }
                } else {
                    if ((unconditionalFieldLessCopy.tagBits & 1) != 0) {
                        fieldDeclaration.bits &= Integer.MAX_VALUE;
                    }
                    initializationFlowContext.handledExceptions = Binding.ANY_EXCEPTION;
                    unconditionalFieldLessCopy = fieldDeclaration.analyseCode(this.initializerScope, (FlowContext) initializationFlowContext, unconditionalFieldLessCopy);
                    if (unconditionalFieldLessCopy == FlowInfo.DEAD_END) {
                        this.initializerScope.problemReporter().initializerMustCompleteNormally(fieldDeclaration);
                        unconditionalFieldLessCopy = FlowInfo.initial(this.maxFieldCount).setReachMode(1);
                    }
                }
            }
        }
        TypeDeclaration[] typeDeclarationArr = this.memberTypes;
        if (typeDeclarationArr != null) {
            int length3 = typeDeclarationArr.length;
            for (int i12 = 0; i12 < length3; i12++) {
                if (flowContext != null) {
                    this.memberTypes[i12].analyseCode(this.scope, flowContext, unconditionalFieldLessCopy.copy().setReachMode(flowInfo.reachMode()));
                } else {
                    this.memberTypes[i12].analyseCode(this.scope);
                }
            }
        }
        if (this.scope.compilerOptions().complianceLevel >= ClassFileConstants.JDK9 && ((abstractMethodDeclarationArr = this.methods) == null || !abstractMethodDeclarationArr[0].isClinit())) {
            Clinit clinit = new Clinit(this.compilationResult);
            int i13 = this.sourceStart;
            clinit.sourceStart = i13;
            clinit.declarationSourceStart = i13;
            int i14 = this.sourceEnd;
            clinit.sourceEnd = i14;
            clinit.declarationSourceEnd = i14;
            clinit.bodyEnd = this.sourceEnd;
            AbstractMethodDeclaration[] abstractMethodDeclarationArr2 = this.methods;
            int length4 = abstractMethodDeclarationArr2 == null ? 0 : abstractMethodDeclarationArr2.length;
            AbstractMethodDeclaration[] abstractMethodDeclarationArr3 = new AbstractMethodDeclaration[length4 + 1];
            abstractMethodDeclarationArr3[0] = clinit;
            if (abstractMethodDeclarationArr2 != null) {
                System.arraycopy(abstractMethodDeclarationArr2, 0, abstractMethodDeclarationArr3, 1, length4);
            }
        }
        if (this.methods != null) {
            UnconditionalFlowInfo unconditionalFieldLessCopy3 = flowInfo.unconditionalFieldLessCopy();
            FlowInfo addInitializationsFrom = unconditionalFieldLessCopy.unconditionalInits().discardNonFieldInitializations().addInitializationsFrom(unconditionalFieldLessCopy3);
            SimpleSetOfCharArray jUnitMethodSourceValues = getJUnitMethodSourceValues();
            int length5 = this.methods.length;
            for (int i15 = 0; i15 < length5; i15++) {
                AbstractMethodDeclaration abstractMethodDeclaration = this.methods[i15];
                if (!abstractMethodDeclaration.ignoreFurtherInvestigation) {
                    if (!abstractMethodDeclaration.isInitializationMethod()) {
                        if (abstractMethodDeclaration.arguments == null && jUnitMethodSourceValues.includes(abstractMethodDeclaration.selector) && (methodBinding = abstractMethodDeclaration.binding) != null) {
                            methodBinding.modifiers |= 134217728;
                        }
                        ((MethodDeclaration) abstractMethodDeclaration).analyseCode(this.scope, flowContext2, flowInfo.copy());
                    } else if (abstractMethodDeclaration.isStatic()) {
                        ((Clinit) abstractMethodDeclaration).analyseCode(this.scope, initializationFlowContext2, unconditionalFieldLessCopy2.unconditionalInits().discardNonFieldInitializations().addInitializationsFrom(unconditionalFieldLessCopy3));
                    } else {
                        ((ConstructorDeclaration) abstractMethodDeclaration).analyseCode(this.scope, initializationFlowContext, addInitializationsFrom.copy(), flowInfo.reachMode());
                    }
                }
            }
        }
        if (!this.binding.isEnum() || this.binding.isAnonymousType()) {
            return;
        }
        this.enumValuesSyntheticfield = this.binding.addSyntheticFieldForEnumValues();
    }

    public static final int kind(int i10) {
        int i11 = i10 & 25088;
        if (i11 == 512) {
            return 2;
        }
        if (i11 != 8704) {
            return i11 != 16384 ? 1 : 3;
        }
        return 4;
    }

    @Override
    public void abort(int i10, CategorizedProblem categorizedProblem) {
        if (i10 == 2) {
            throw new AbortCompilation(this.compilationResult, categorizedProblem);
        }
        if (i10 == 4) {
            throw new AbortCompilationUnit(this.compilationResult, categorizedProblem);
        }
        if (i10 == 16) {
            throw new AbortMethod(this.compilationResult, categorizedProblem);
        }
        throw new AbortType(this.compilationResult, categorizedProblem);
    }

    public final void addClinit() {
        AbstractMethodDeclaration[] abstractMethodDeclarationArr;
        if (needClassInitMethod()) {
            AbstractMethodDeclaration[] abstractMethodDeclarationArr2 = this.methods;
            if (abstractMethodDeclarationArr2 == null) {
                abstractMethodDeclarationArr = new AbstractMethodDeclaration[1];
            } else {
                int length = abstractMethodDeclarationArr2.length;
                AbstractMethodDeclaration[] abstractMethodDeclarationArr3 = new AbstractMethodDeclaration[length + 1];
                System.arraycopy(abstractMethodDeclarationArr2, 0, abstractMethodDeclarationArr3, 1, length);
                abstractMethodDeclarationArr = abstractMethodDeclarationArr3;
            }
            Clinit clinit = new Clinit(this.compilationResult);
            abstractMethodDeclarationArr[0] = clinit;
            int i10 = this.sourceStart;
            clinit.sourceStart = i10;
            clinit.declarationSourceStart = i10;
            int i11 = this.sourceEnd;
            clinit.sourceEnd = i11;
            clinit.declarationSourceEnd = i11;
            clinit.bodyEnd = this.sourceEnd;
            this.methods = abstractMethodDeclarationArr;
        }
    }

    public MethodDeclaration addMissingAbstractMethodFor(MethodBinding methodBinding) {
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length = typeBindingArr.length;
        MethodDeclaration methodDeclaration = new MethodDeclaration(this.compilationResult);
        methodDeclaration.selector = methodBinding.selector;
        methodDeclaration.sourceStart = this.sourceStart;
        methodDeclaration.sourceEnd = this.sourceEnd;
        methodDeclaration.modifiers = methodBinding.getAccessFlags() & Half.LOWEST_VALUE;
        if (length > 0) {
            Argument[] argumentArr = new Argument[length];
            methodDeclaration.arguments = argumentArr;
            int i10 = length;
            while (true) {
                i10--;
                if (i10 < 0) {
                    break;
                }
                argumentArr[i10] = new Argument(("arg" + i10).toCharArray(), 0L, null, 0);
            }
        }
        MethodDeclaration[] methodDeclarationArr = this.missingAbstractMethods;
        if (methodDeclarationArr == null) {
            this.missingAbstractMethods = new MethodDeclaration[]{methodDeclaration};
        } else {
            MethodDeclaration[] methodDeclarationArr2 = new MethodDeclaration[methodDeclarationArr.length + 1];
            System.arraycopy(methodDeclarationArr, 0, methodDeclarationArr2, 1, methodDeclarationArr.length);
            methodDeclarationArr2[0] = methodDeclaration;
            this.missingAbstractMethods = methodDeclarationArr2;
        }
        int i11 = methodDeclaration.modifiers | 4096;
        char[] cArr = methodBinding.selector;
        TypeBinding typeBinding = methodBinding.returnType;
        if (length == 0) {
            typeBindingArr = Binding.NO_PARAMETERS;
        }
        methodDeclaration.binding = new MethodBinding(i11, cArr, typeBinding, typeBindingArr, methodBinding.thrownExceptions, this.binding);
        methodDeclaration.scope = new MethodScope(this.scope, methodDeclaration, true);
        methodDeclaration.bindArguments();
        return methodDeclaration;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        if (this.ignoreFurtherInvestigation) {
            return flowInfo;
        }
        try {
            if ((flowInfo.tagBits & 1) == 0) {
                this.bits |= Integer.MIN_VALUE;
                LocalTypeBinding localTypeBinding = (LocalTypeBinding) this.binding;
                localTypeBinding.setConstantPoolName(blockScope.compilationUnitScope().computeConstantPoolName(localTypeBinding));
            }
            manageEnclosingInstanceAccessIfNecessary(blockScope, flowInfo);
            updateMaxFieldCount();
            internalAnalyseCode(flowContext, flowInfo);
        } catch (AbortType unused) {
            this.ignoreFurtherInvestigation = true;
        }
        return flowInfo;
    }

    public boolean checkConstructors(Parser parser) {
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.methods;
        boolean z10 = false;
        if (abstractMethodDeclarationArr != null) {
            int length = abstractMethodDeclarationArr.length;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                AbstractMethodDeclaration abstractMethodDeclaration = this.methods[length];
                if (abstractMethodDeclaration.isConstructor()) {
                    if (CharOperation.equals(abstractMethodDeclaration.selector, this.name)) {
                        int kind = kind(this.modifiers);
                        if (kind == 2) {
                            parser.problemReporter().interfaceCannotHaveConstructors((ConstructorDeclaration) abstractMethodDeclaration);
                        } else if (kind == 4) {
                            parser.problemReporter().annotationTypeDeclarationCannotHaveConstructor((ConstructorDeclaration) abstractMethodDeclaration);
                        }
                        z10 = true;
                    } else {
                        ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration) abstractMethodDeclaration;
                        ExplicitConstructorCall explicitConstructorCall = constructorDeclaration.constructorCall;
                        if (explicitConstructorCall == null || explicitConstructorCall.isImplicitSuper()) {
                            this.methods[length] = parser.convertToMethodDeclaration(constructorDeclaration, this.compilationResult);
                        }
                    }
                }
            }
        }
        return z10;
    }

    @Override
    public CompilationResult compilationResult() {
        return this.compilationResult;
    }

    public ConstructorDeclaration createDefaultConstructor(boolean z10, boolean z11) {
        ConstructorDeclaration constructorDeclaration = new ConstructorDeclaration(this.compilationResult);
        constructorDeclaration.bits |= 128;
        constructorDeclaration.selector = this.name;
        constructorDeclaration.modifiers = this.modifiers & 7;
        int i10 = this.sourceStart;
        constructorDeclaration.sourceStart = i10;
        constructorDeclaration.declarationSourceStart = i10;
        int i11 = this.sourceEnd;
        constructorDeclaration.bodyEnd = i11;
        constructorDeclaration.sourceEnd = i11;
        constructorDeclaration.declarationSourceEnd = i11;
        if (z10) {
            ExplicitConstructorCall implicitSuperConstructorCall = SuperReference.implicitSuperConstructorCall();
            constructorDeclaration.constructorCall = implicitSuperConstructorCall;
            implicitSuperConstructorCall.sourceStart = this.sourceStart;
            implicitSuperConstructorCall.sourceEnd = this.sourceEnd;
        }
        if (z11) {
            AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.methods;
            if (abstractMethodDeclarationArr == null) {
                this.methods = new AbstractMethodDeclaration[]{constructorDeclaration};
            } else {
                AbstractMethodDeclaration[] abstractMethodDeclarationArr2 = new AbstractMethodDeclaration[abstractMethodDeclarationArr.length + 1];
                System.arraycopy(abstractMethodDeclarationArr, 0, abstractMethodDeclarationArr2, 1, abstractMethodDeclarationArr.length);
                abstractMethodDeclarationArr2[0] = constructorDeclaration;
                this.methods = abstractMethodDeclarationArr2;
            }
        }
        return constructorDeclaration;
    }

    public MethodBinding createDefaultConstructorWithBinding(MethodBinding methodBinding, boolean z10) {
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length = typeBindingArr.length;
        ConstructorDeclaration constructorDeclaration = new ConstructorDeclaration(this.compilationResult);
        constructorDeclaration.selector = new char[]{'x'};
        constructorDeclaration.sourceStart = this.sourceStart;
        constructorDeclaration.sourceEnd = this.sourceEnd;
        int i10 = this.modifiers & 7;
        if (methodBinding.isVarargs()) {
            i10 |= 128;
        }
        constructorDeclaration.modifiers = i10;
        constructorDeclaration.bits |= 128;
        if (length > 0) {
            Argument[] argumentArr = new Argument[length];
            constructorDeclaration.arguments = argumentArr;
            int i11 = length;
            while (true) {
                i11--;
                if (i11 < 0) {
                    break;
                }
                argumentArr[i11] = new Argument(("$anonymous" + i11).toCharArray(), 0L, null, 0);
            }
        }
        ExplicitConstructorCall implicitSuperConstructorCall = SuperReference.implicitSuperConstructorCall();
        constructorDeclaration.constructorCall = implicitSuperConstructorCall;
        implicitSuperConstructorCall.sourceStart = this.sourceStart;
        implicitSuperConstructorCall.sourceEnd = this.sourceEnd;
        if (length > 0) {
            Expression[] expressionArr = new Expression[length];
            implicitSuperConstructorCall.arguments = expressionArr;
            int i12 = length;
            while (true) {
                i12--;
                if (i12 < 0) {
                    break;
                }
                expressionArr[i12] = new SingleNameReference(("$anonymous" + i12).toCharArray(), 0L);
            }
        }
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.methods;
        if (abstractMethodDeclarationArr == null) {
            this.methods = new AbstractMethodDeclaration[]{constructorDeclaration};
        } else {
            AbstractMethodDeclaration[] abstractMethodDeclarationArr2 = new AbstractMethodDeclaration[abstractMethodDeclarationArr.length + 1];
            System.arraycopy(abstractMethodDeclarationArr, 0, abstractMethodDeclarationArr2, 1, abstractMethodDeclarationArr.length);
            abstractMethodDeclarationArr2[0] = constructorDeclaration;
            this.methods = abstractMethodDeclarationArr2;
        }
        ReferenceBinding[] convertToRawTypes = z10 ? this.scope.environment().convertToRawTypes(methodBinding.thrownExceptions, true, true) : methodBinding.thrownExceptions;
        SourceTypeBinding sourceTypeBinding = this.binding;
        int i13 = constructorDeclaration.modifiers;
        if (length == 0) {
            typeBindingArr = Binding.NO_PARAMETERS;
        }
        MethodBinding methodBinding2 = new MethodBinding(i13, typeBindingArr, convertToRawTypes, sourceTypeBinding);
        constructorDeclaration.binding = methodBinding2;
        methodBinding2.tagBits |= methodBinding.tagBits & 128;
        methodBinding2.modifiers |= 67108864;
        Boolean[] boolArr = methodBinding.parameterNonNullness;
        if (boolArr != null && length > 0) {
            int length2 = boolArr.length;
            Boolean[] boolArr2 = new Boolean[length2];
            methodBinding2.parameterNonNullness = boolArr2;
            System.arraycopy(boolArr, 0, boolArr2, 0, length2);
        }
        constructorDeclaration.scope = new MethodScope(this.scope, constructorDeclaration, true);
        constructorDeclaration.bindArguments();
        constructorDeclaration.constructorCall.resolve(constructorDeclaration.scope);
        MethodBinding[] methods = sourceTypeBinding.methods();
        int length3 = methods.length;
        int i14 = length3 + 1;
        MethodBinding[] methodBindingArr = new MethodBinding[i14];
        System.arraycopy(methods, 0, methodBindingArr, 1, length3);
        methodBindingArr[0] = constructorDeclaration.binding;
        if (i14 > 1) {
            ReferenceBinding.sortMethods(methodBindingArr, 0, i14);
        }
        sourceTypeBinding.setMethods(methodBindingArr);
        return constructorDeclaration.binding;
    }

    public FieldDeclaration declarationOf(FieldBinding fieldBinding) {
        FieldDeclaration[] fieldDeclarationArr;
        if (fieldBinding == null || (fieldDeclarationArr = this.fields) == null) {
            return null;
        }
        int length = fieldDeclarationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            FieldDeclaration fieldDeclaration = this.fields[i10];
            if (fieldDeclaration.binding == fieldBinding) {
                return fieldDeclaration;
            }
        }
        return null;
    }

    public TypeDeclaration declarationOfType(char[][] cArr) {
        int length = cArr.length;
        if (length >= 1) {
            int i10 = 0;
            if (CharOperation.equals(cArr[0], this.name)) {
                if (length == 1) {
                    return this;
                }
                int i11 = length - 1;
                char[][] cArr2 = new char[i11];
                System.arraycopy(cArr, 1, cArr2, 0, i11);
                while (true) {
                    TypeDeclaration[] typeDeclarationArr = this.memberTypes;
                    if (i10 >= typeDeclarationArr.length) {
                        return null;
                    }
                    TypeDeclaration declarationOfType = typeDeclarationArr[i10].declarationOfType(cArr2);
                    if (declarationOfType != null) {
                        return declarationOfType;
                    }
                    i10++;
                }
            }
        }
        return null;
    }

    public void generateCode(ClassFile classFile) {
        int i10 = this.bits;
        if ((i10 & 8192) != 0) {
            return;
        }
        this.bits = i10 | 8192;
        if (this.ignoreFurtherInvestigation) {
            if (this.binding == null) {
                return;
            }
            ClassFile.createProblemType(this, this.scope.referenceCompilationUnit().compilationResult);
            return;
        }
        try {
            ClassFile newInstance = ClassFile.getNewInstance(this.binding);
            newInstance.initialize(this.binding, classFile, false);
            if (this.binding.isMemberType()) {
                newInstance.recordInnerClasses(this.binding);
            } else if (this.binding.isLocalType()) {
                classFile.recordInnerClasses(this.binding);
                newInstance.recordInnerClasses(this.binding);
            }
            for (TypeVariableBinding typeVariableBinding : this.binding.typeVariables()) {
                if ((typeVariableBinding.tagBits & 2048) != 0) {
                    Util.recordNestedType(newInstance, typeVariableBinding);
                }
            }
            newInstance.addFieldInfos();
            TypeDeclaration[] typeDeclarationArr = this.memberTypes;
            if (typeDeclarationArr != null) {
                int length = typeDeclarationArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    TypeDeclaration typeDeclaration = this.memberTypes[i11];
                    newInstance.recordInnerClasses(typeDeclaration.binding);
                    typeDeclaration.generateCode(this.scope, newInstance);
                }
            }
            newInstance.setForMethodInfos();
            AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.methods;
            if (abstractMethodDeclarationArr != null) {
                int length2 = abstractMethodDeclarationArr.length;
                for (int i12 = 0; i12 < length2; i12++) {
                    this.methods[i12].generateCode(this.scope, newInstance);
                }
            }
            newInstance.addSpecialMethods();
            if (!this.ignoreFurtherInvestigation) {
                newInstance.addAttributes();
                this.scope.referenceCompilationUnit().compilationResult.record(this.binding.constantPoolName(), newInstance);
                return;
            }
            throw new AbortType(this.scope.referenceCompilationUnit().compilationResult, null);
        } catch (AbortType unused) {
            if (this.binding == null) {
                return;
            }
            ClassFile.createProblemType(this, this.scope.referenceCompilationUnit().compilationResult);
        }
    }

    @Override
    public CompilationUnitDeclaration getCompilationUnitDeclaration() {
        ClassScope classScope = this.scope;
        if (classScope != null) {
            return classScope.compilationUnitScope().referenceContext;
        }
        return null;
    }

    @Override
    public boolean hasErrors() {
        return this.ignoreFurtherInvestigation;
    }

    public boolean isPackageInfo() {
        return CharOperation.equals(this.name, TypeConstants.PACKAGE_INFO_NAME);
    }

    public boolean isSecondary() {
        return (this.bits & 4096) != 0;
    }

    public void manageEnclosingInstanceAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) != 0) {
            return;
        }
        NestedTypeBinding nestedTypeBinding = (NestedTypeBinding) this.binding;
        MethodScope methodScope = blockScope.methodScope();
        if (!methodScope.isStatic && !methodScope.isConstructorCall) {
            nestedTypeBinding.addSyntheticArgumentAndField(nestedTypeBinding.enclosingType());
        }
        if (nestedTypeBinding.isAnonymousType()) {
            ReferenceBinding referenceBinding = (ReferenceBinding) nestedTypeBinding.superclass.erasure();
            if (referenceBinding.enclosingType() != null && !referenceBinding.isStatic() && (!referenceBinding.isLocalType() || ((NestedTypeBinding) referenceBinding).getSyntheticField(referenceBinding.enclosingType(), true) != null || referenceBinding.isMemberType())) {
                nestedTypeBinding.addSyntheticArgument(referenceBinding.enclosingType());
            }
            if (methodScope.isStatic || !methodScope.isConstructorCall || blockScope.compilerOptions().complianceLevel < ClassFileConstants.JDK1_5) {
                return;
            }
            ReferenceBinding enclosingType = nestedTypeBinding.enclosingType();
            if (enclosingType.isNestedType()) {
                NestedTypeBinding nestedTypeBinding2 = (NestedTypeBinding) enclosingType;
                SyntheticArgumentBinding syntheticArgument = nestedTypeBinding2.getSyntheticArgument(nestedTypeBinding2.enclosingType(), true, false);
                if (syntheticArgument != null) {
                    nestedTypeBinding.addSyntheticArgumentAndField(syntheticArgument);
                }
            }
        }
    }

    public final boolean needClassInitMethod() {
        if ((this.bits & 1) != 0) {
            return true;
        }
        int kind = kind(this.modifiers);
        if (kind != 2) {
            if (kind == 3) {
                return true;
            }
            if (kind != 4) {
                FieldDeclaration[] fieldDeclarationArr = this.fields;
                if (fieldDeclarationArr != null) {
                    int length = fieldDeclarationArr.length;
                    do {
                        length--;
                        if (length < 0) {
                        }
                    } while ((this.fields[length].modifiers & 8) == 0);
                    return true;
                }
                return false;
            }
        }
        return this.fields != null;
    }

    public void parseMethods(Parser parser, CompilationUnitDeclaration compilationUnitDeclaration) {
        if (compilationUnitDeclaration.ignoreMethodBodies) {
            return;
        }
        TypeDeclaration[] typeDeclarationArr = this.memberTypes;
        if (typeDeclarationArr != null) {
            int length = typeDeclarationArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                TypeDeclaration typeDeclaration = this.memberTypes[i10];
                typeDeclaration.parseMethods(parser, compilationUnitDeclaration);
                this.bits = (typeDeclaration.bits & 524288) | this.bits;
            }
        }
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.methods;
        if (abstractMethodDeclarationArr != null) {
            int length2 = abstractMethodDeclarationArr.length;
            for (int i11 = 0; i11 < length2; i11++) {
                AbstractMethodDeclaration abstractMethodDeclaration = this.methods[i11];
                abstractMethodDeclaration.parseStatements(parser, compilationUnitDeclaration);
                this.bits = (abstractMethodDeclaration.bits & 524288) | this.bits;
            }
        }
        FieldDeclaration[] fieldDeclarationArr = this.fields;
        if (fieldDeclarationArr != null) {
            int length3 = fieldDeclarationArr.length;
            for (int i12 = 0; i12 < length3; i12++) {
                FieldDeclaration fieldDeclaration = this.fields[i12];
                if (fieldDeclaration.getKind() == 2) {
                    ((Initializer) fieldDeclaration).parseStatements(parser, this, compilationUnitDeclaration);
                    this.bits = (fieldDeclaration.bits & 524288) | this.bits;
                }
            }
        }
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        Javadoc javadoc = this.javadoc;
        if (javadoc != null) {
            javadoc.print(i10, stringBuffer);
        }
        if ((this.bits & 512) == 0) {
            ASTNode.printIndent(i10, stringBuffer);
            printHeader(0, stringBuffer);
        }
        return printBody(i10, stringBuffer);
    }

    public StringBuffer printBody(int i10, StringBuffer stringBuffer) {
        stringBuffer.append(" {");
        int i11 = 0;
        if (this.memberTypes != null) {
            int i12 = 0;
            while (true) {
                TypeDeclaration[] typeDeclarationArr = this.memberTypes;
                if (i12 >= typeDeclarationArr.length) {
                    break;
                }
                if (typeDeclarationArr[i12] != null) {
                    stringBuffer.append('\n');
                    this.memberTypes[i12].print(i10 + 1, stringBuffer);
                }
                i12++;
            }
        }
        if (this.fields != null) {
            int i13 = 0;
            while (true) {
                FieldDeclaration[] fieldDeclarationArr = this.fields;
                if (i13 >= fieldDeclarationArr.length) {
                    break;
                }
                if (fieldDeclarationArr[i13] != null) {
                    stringBuffer.append('\n');
                    this.fields[i13].print(i10 + 1, stringBuffer);
                }
                i13++;
            }
        }
        if (this.methods != null) {
            while (true) {
                AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.methods;
                if (i11 >= abstractMethodDeclarationArr.length) {
                    break;
                }
                if (abstractMethodDeclarationArr[i11] != null) {
                    stringBuffer.append('\n');
                    this.methods[i11].print(i10 + 1, stringBuffer);
                }
                i11++;
            }
        }
        stringBuffer.append('\n');
        StringBuffer printIndent = ASTNode.printIndent(i10, stringBuffer);
        printIndent.append(JavaElement.JEM_ANNOTATION);
        return printIndent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0088, code lost:
    
        if (r8 != 4) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public StringBuffer printHeader(int i10, StringBuffer stringBuffer) {
        int i11;
        ASTNode.printModifiers(this.modifiers, stringBuffer);
        Annotation[] annotationArr = this.annotations;
        if (annotationArr != null) {
            ASTNode.printAnnotations(annotationArr, stringBuffer);
            stringBuffer.append(C15883c.f126249O);
        }
        int kind = kind(this.modifiers);
        if (kind == 1) {
            stringBuffer.append(ExternalAnnotationProvider.CLASS_PREFIX);
        } else if (kind == 2) {
            stringBuffer.append("interface ");
        } else if (kind == 3) {
            stringBuffer.append("enum ");
        } else if (kind == 4) {
            stringBuffer.append("@interface ");
        }
        stringBuffer.append(this.name);
        if (this.typeParameters != null) {
            stringBuffer.append("<");
            for (int i12 = 0; i12 < this.typeParameters.length; i12++) {
                if (i12 > 0) {
                    stringBuffer.append(", ");
                }
                this.typeParameters[i12].print(0, stringBuffer);
            }
            stringBuffer.append(">");
        }
        if (this.superclass != null) {
            stringBuffer.append(" extends ");
            this.superclass.print(0, stringBuffer);
        }
        TypeReference[] typeReferenceArr = this.superInterfaces;
        if (typeReferenceArr != null && typeReferenceArr.length > 0) {
            int kind2 = kind(this.modifiers);
            if (kind2 != 1) {
                if (kind2 != 2) {
                    if (kind2 != 3) {
                    }
                }
                stringBuffer.append(" extends ");
                for (i11 = 0; i11 < this.superInterfaces.length; i11++) {
                    if (i11 > 0) {
                        stringBuffer.append(", ");
                    }
                    this.superInterfaces[i11].print(0, stringBuffer);
                }
            }
            stringBuffer.append(" implements ");
            while (i11 < this.superInterfaces.length) {
            }
        }
        return stringBuffer;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        return print(i10, stringBuffer);
    }

    public int record(FunctionalExpression functionalExpression) {
        int i10 = this.functionalExpressionsCount;
        this.functionalExpressionsCount = i10 + 1;
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x0233 A[Catch: AbortType -> 0x0395, TryCatch #0 {AbortType -> 0x0395, blocks: (B:7:0x000a, B:9:0x0014, B:11:0x0023, B:12:0x002d, B:13:0x0036, B:15:0x0046, B:17:0x004d, B:19:0x005c, B:20:0x0065, B:22:0x006c, B:24:0x0076, B:25:0x007f, B:27:0x0085, B:28:0x0093, B:30:0x00a5, B:32:0x00ab, B:34:0x00b3, B:39:0x00c2, B:41:0x00d2, B:43:0x00d8, B:45:0x00de, B:47:0x00e3, B:51:0x00f0, B:53:0x0100, B:55:0x010c, B:57:0x0112, B:59:0x0116, B:61:0x011c, B:63:0x0121, B:66:0x012a, B:68:0x0138, B:70:0x0144, B:72:0x014a, B:74:0x014e, B:76:0x0154, B:78:0x0159, B:89:0x016b, B:92:0x0174, B:109:0x017a, B:94:0x0184, B:96:0x018b, B:98:0x0191, B:102:0x01a2, B:110:0x01a8, B:112:0x01ac, B:114:0x01b1, B:117:0x01bd, B:119:0x01c2, B:162:0x0241, B:164:0x0245, B:167:0x024a, B:169:0x0258, B:171:0x025f, B:173:0x0267, B:179:0x026e, B:180:0x0277, B:184:0x02fa, B:187:0x0301, B:190:0x0308, B:192:0x030e, B:193:0x0317, B:195:0x031b, B:197:0x0320, B:200:0x032c, B:202:0x0330, B:204:0x0334, B:206:0x033a, B:207:0x036d, B:209:0x0374, B:211:0x0379, B:214:0x0383, B:216:0x0387, B:218:0x038c, B:225:0x033e, B:227:0x0344, B:229:0x0357, B:231:0x035b, B:232:0x035f, B:233:0x0307, B:234:0x0300, B:235:0x0283, B:237:0x0287, B:238:0x0290, B:240:0x0294, B:241:0x029e, B:244:0x02a8, B:246:0x02af, B:248:0x02b9, B:250:0x02bd, B:252:0x02c6, B:258:0x02cb, B:260:0x02d2, B:262:0x02dc, B:264:0x02e0, B:266:0x02e5, B:268:0x02e9, B:270:0x02f4, B:275:0x02f7, B:121:0x01cb, B:126:0x022d, B:128:0x0233, B:129:0x0238, B:131:0x023b, B:132:0x0236, B:133:0x01da, B:136:0x01e2, B:137:0x01e4, B:139:0x01e8, B:140:0x01f0, B:142:0x01f4, B:144:0x01f8, B:146:0x01fe, B:147:0x0203, B:148:0x0201, B:149:0x0206, B:152:0x020b, B:154:0x0212, B:156:0x021c, B:159:0x0227), top: B:6:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0236 A[Catch: AbortType -> 0x0395, TryCatch #0 {AbortType -> 0x0395, blocks: (B:7:0x000a, B:9:0x0014, B:11:0x0023, B:12:0x002d, B:13:0x0036, B:15:0x0046, B:17:0x004d, B:19:0x005c, B:20:0x0065, B:22:0x006c, B:24:0x0076, B:25:0x007f, B:27:0x0085, B:28:0x0093, B:30:0x00a5, B:32:0x00ab, B:34:0x00b3, B:39:0x00c2, B:41:0x00d2, B:43:0x00d8, B:45:0x00de, B:47:0x00e3, B:51:0x00f0, B:53:0x0100, B:55:0x010c, B:57:0x0112, B:59:0x0116, B:61:0x011c, B:63:0x0121, B:66:0x012a, B:68:0x0138, B:70:0x0144, B:72:0x014a, B:74:0x014e, B:76:0x0154, B:78:0x0159, B:89:0x016b, B:92:0x0174, B:109:0x017a, B:94:0x0184, B:96:0x018b, B:98:0x0191, B:102:0x01a2, B:110:0x01a8, B:112:0x01ac, B:114:0x01b1, B:117:0x01bd, B:119:0x01c2, B:162:0x0241, B:164:0x0245, B:167:0x024a, B:169:0x0258, B:171:0x025f, B:173:0x0267, B:179:0x026e, B:180:0x0277, B:184:0x02fa, B:187:0x0301, B:190:0x0308, B:192:0x030e, B:193:0x0317, B:195:0x031b, B:197:0x0320, B:200:0x032c, B:202:0x0330, B:204:0x0334, B:206:0x033a, B:207:0x036d, B:209:0x0374, B:211:0x0379, B:214:0x0383, B:216:0x0387, B:218:0x038c, B:225:0x033e, B:227:0x0344, B:229:0x0357, B:231:0x035b, B:232:0x035f, B:233:0x0307, B:234:0x0300, B:235:0x0283, B:237:0x0287, B:238:0x0290, B:240:0x0294, B:241:0x029e, B:244:0x02a8, B:246:0x02af, B:248:0x02b9, B:250:0x02bd, B:252:0x02c6, B:258:0x02cb, B:260:0x02d2, B:262:0x02dc, B:264:0x02e0, B:266:0x02e5, B:268:0x02e9, B:270:0x02f4, B:275:0x02f7, B:121:0x01cb, B:126:0x022d, B:128:0x0233, B:129:0x0238, B:131:0x023b, B:132:0x0236, B:133:0x01da, B:136:0x01e2, B:137:0x01e4, B:139:0x01e8, B:140:0x01f0, B:142:0x01f4, B:144:0x01f8, B:146:0x01fe, B:147:0x0203, B:148:0x0201, B:149:0x0206, B:152:0x020b, B:154:0x0212, B:156:0x021c, B:159:0x0227), top: B:6:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f0 A[Catch: AbortType -> 0x0395, TryCatch #0 {AbortType -> 0x0395, blocks: (B:7:0x000a, B:9:0x0014, B:11:0x0023, B:12:0x002d, B:13:0x0036, B:15:0x0046, B:17:0x004d, B:19:0x005c, B:20:0x0065, B:22:0x006c, B:24:0x0076, B:25:0x007f, B:27:0x0085, B:28:0x0093, B:30:0x00a5, B:32:0x00ab, B:34:0x00b3, B:39:0x00c2, B:41:0x00d2, B:43:0x00d8, B:45:0x00de, B:47:0x00e3, B:51:0x00f0, B:53:0x0100, B:55:0x010c, B:57:0x0112, B:59:0x0116, B:61:0x011c, B:63:0x0121, B:66:0x012a, B:68:0x0138, B:70:0x0144, B:72:0x014a, B:74:0x014e, B:76:0x0154, B:78:0x0159, B:89:0x016b, B:92:0x0174, B:109:0x017a, B:94:0x0184, B:96:0x018b, B:98:0x0191, B:102:0x01a2, B:110:0x01a8, B:112:0x01ac, B:114:0x01b1, B:117:0x01bd, B:119:0x01c2, B:162:0x0241, B:164:0x0245, B:167:0x024a, B:169:0x0258, B:171:0x025f, B:173:0x0267, B:179:0x026e, B:180:0x0277, B:184:0x02fa, B:187:0x0301, B:190:0x0308, B:192:0x030e, B:193:0x0317, B:195:0x031b, B:197:0x0320, B:200:0x032c, B:202:0x0330, B:204:0x0334, B:206:0x033a, B:207:0x036d, B:209:0x0374, B:211:0x0379, B:214:0x0383, B:216:0x0387, B:218:0x038c, B:225:0x033e, B:227:0x0344, B:229:0x0357, B:231:0x035b, B:232:0x035f, B:233:0x0307, B:234:0x0300, B:235:0x0283, B:237:0x0287, B:238:0x0290, B:240:0x0294, B:241:0x029e, B:244:0x02a8, B:246:0x02af, B:248:0x02b9, B:250:0x02bd, B:252:0x02c6, B:258:0x02cb, B:260:0x02d2, B:262:0x02dc, B:264:0x02e0, B:266:0x02e5, B:268:0x02e9, B:270:0x02f4, B:275:0x02f7, B:121:0x01cb, B:126:0x022d, B:128:0x0233, B:129:0x0238, B:131:0x023b, B:132:0x0236, B:133:0x01da, B:136:0x01e2, B:137:0x01e4, B:139:0x01e8, B:140:0x01f0, B:142:0x01f4, B:144:0x01f8, B:146:0x01fe, B:147:0x0203, B:148:0x0201, B:149:0x0206, B:152:0x020b, B:154:0x0212, B:156:0x021c, B:159:0x0227), top: B:6:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0164 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x016a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void resolve() {
        int i10;
        boolean z10;
        boolean z11;
        boolean z12;
        TypeBinding type;
        boolean z13;
        MethodBinding exactMethod;
        ReferenceBinding[] referenceBindingArr;
        MethodBinding exactMethod2;
        SourceTypeBinding sourceTypeBinding = this.binding;
        if (sourceTypeBinding == null) {
            this.ignoreFurtherInvestigation = true;
            return;
        }
        try {
            if (CharOperation.equals(this.name, TypeConstants.VAR)) {
                if (this.scope.compilerOptions().sourceLevel < ClassFileConstants.JDK10) {
                    this.scope.problemReporter().varIsReservedTypeNameInFuture(this);
                } else {
                    this.scope.problemReporter().varIsReservedTypeName(this);
                }
            }
            long annotationTagBits = sourceTypeBinding.getAnnotationTagBits();
            if ((70368744177664L & annotationTagBits) == 0 && (sourceTypeBinding.modifiers & 1048576) != 0 && this.scope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
                this.scope.problemReporter().missingDeprecatedAnnotationForType(this);
            }
            if ((annotationTagBits & 576460752303423488L) != 0 && !this.binding.isFunctionalInterface(this.scope)) {
                this.scope.problemReporter().notAFunctionalInterface(this);
            }
            if ((this.bits & 8) != 0) {
                this.scope.problemReporter().undocumentedEmptyBlock(this.bodyStart - 1, this.bodyEnd);
            }
            boolean z14 = this.scope.compilerOptions().getSeverity(CompilerOptions.MissingSerialVersion) != 256 && sourceTypeBinding.isClass() && sourceTypeBinding.findSuperTypeOriginatingFrom(56, false) == null && sourceTypeBinding.findSuperTypeOriginatingFrom(37, false) != null;
            if (z14) {
                CompilationUnitScope compilationUnitScope = this.scope.compilationUnitScope();
                MethodBinding exactMethod3 = sourceTypeBinding.getExactMethod(TypeConstants.WRITEREPLACE, Binding.NO_TYPES, compilationUnitScope);
                if (exactMethod3 != null && exactMethod3.isValidBinding() && exactMethod3.returnType.f102482id == 1) {
                    ReferenceBinding[] referenceBindingArr2 = exactMethod3.thrownExceptions;
                    if (referenceBindingArr2.length == 1 && referenceBindingArr2[0].f102482id == 57) {
                        z11 = false;
                        if (z11) {
                            z14 = z11;
                        } else {
                            TypeBinding type2 = this.scope.getType(TypeConstants.JAVA_IO_OBJECTOUTPUTSTREAM, 3);
                            if (type2.isValidBinding() && (exactMethod2 = sourceTypeBinding.getExactMethod(TypeConstants.WRITEOBJECT, new TypeBinding[]{type2}, compilationUnitScope)) != null && exactMethod2.isValidBinding() && exactMethod2.modifiers == 2 && exactMethod2.returnType == TypeBinding.VOID) {
                                ReferenceBinding[] referenceBindingArr3 = exactMethod2.thrownExceptions;
                                if (referenceBindingArr3.length == 1 && referenceBindingArr3[0].f102482id == 58) {
                                    z12 = true;
                                    type = this.scope.getType(TypeConstants.JAVA_IO_OBJECTINPUTSTREAM, 3);
                                    if (type.isValidBinding() && (exactMethod = sourceTypeBinding.getExactMethod(TypeConstants.READOBJECT, new TypeBinding[]{type}, compilationUnitScope)) != null && exactMethod.isValidBinding() && exactMethod.modifiers == 2 && exactMethod.returnType == TypeBinding.VOID) {
                                        referenceBindingArr = exactMethod.thrownExceptions;
                                        if (referenceBindingArr.length == 1 && referenceBindingArr[0].f102482id == 58) {
                                            z13 = true;
                                            z14 = z12 || !z13;
                                        }
                                    }
                                    z13 = false;
                                    if (z12) {
                                    }
                                }
                            }
                            z12 = false;
                            type = this.scope.getType(TypeConstants.JAVA_IO_OBJECTINPUTSTREAM, 3);
                            if (type.isValidBinding()) {
                                referenceBindingArr = exactMethod.thrownExceptions;
                                if (referenceBindingArr.length == 1) {
                                    z13 = true;
                                    if (z12) {
                                    }
                                }
                            }
                            z13 = false;
                            if (z12) {
                            }
                        }
                    }
                }
                z11 = true;
                if (z11) {
                }
            }
            if (sourceTypeBinding.findSuperTypeOriginatingFrom(21, true) != null) {
                ReferenceBinding referenceBinding = sourceTypeBinding;
                while (true) {
                    if (referenceBinding.isGenericType()) {
                        this.scope.problemReporter().genericTypeCannotExtendThrowable(this);
                        break;
                    } else if (referenceBinding.isStatic() || ((referenceBinding.isLocalType() && ((NestedTypeBinding) referenceBinding.erasure()).scope.methodScope().isStatic) || (referenceBinding = referenceBinding.enclosingType()) == null)) {
                        break;
                    }
                }
            }
            TypeDeclaration[] typeDeclarationArr = this.memberTypes;
            if (typeDeclarationArr != null) {
                int length = typeDeclarationArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    this.memberTypes[i11].resolve(this.scope);
                }
            }
            FieldDeclaration[] fieldDeclarationArr = this.fields;
            FieldDeclaration[] fieldDeclarationArr2 = null;
            if (fieldDeclarationArr != null) {
                int length2 = fieldDeclarationArr.length;
                int i12 = -1;
                i10 = 0;
                z10 = false;
                for (int i13 = 0; i13 < length2; i13++) {
                    FieldDeclaration fieldDeclaration = this.fields[i13];
                    int kind = fieldDeclaration.getKind();
                    if (kind != 1) {
                        if (kind == 2) {
                            ((Initializer) fieldDeclaration).lastVisibleFieldID = i12 + 1;
                        } else if (kind == 3) {
                            if (!(fieldDeclaration.initialization instanceof QualifiedAllocationExpression)) {
                                if (fieldDeclarationArr2 == null) {
                                    fieldDeclarationArr2 = new FieldDeclaration[length2];
                                }
                                fieldDeclarationArr2[i13] = fieldDeclaration;
                            }
                            z10 = true;
                        }
                        fieldDeclaration.resolve(!fieldDeclaration.isStatic() ? this.staticInitializerScope : this.initializerScope);
                    }
                    FieldBinding fieldBinding = fieldDeclaration.binding;
                    if (fieldBinding == null) {
                        Expression expression = fieldDeclaration.initialization;
                        if (expression != null) {
                            expression.resolve(fieldDeclaration.isStatic() ? this.staticInitializerScope : this.initializerScope);
                        }
                        this.ignoreFurtherInvestigation = true;
                    } else {
                        if (z14 && (fieldBinding.modifiers & 24) == 24 && CharOperation.equals(TypeConstants.SERIALVERSIONUID, fieldBinding.name) && TypeBinding.equalsEquals(TypeBinding.LONG, fieldBinding.type)) {
                            z14 = false;
                        }
                        i10++;
                        i12 = fieldDeclaration.binding.f102483id;
                        fieldDeclaration.resolve(!fieldDeclaration.isStatic() ? this.staticInitializerScope : this.initializerScope);
                    }
                }
            } else {
                i10 = 0;
                z10 = false;
            }
            if (this.maxFieldCount < i10) {
                this.maxFieldCount = i10;
            }
            if (z14) {
                TypeBinding type3 = this.scope.getType(TypeConstants.JAVAX_RMI_CORBA_STUB, 4);
                if (type3.isValidBinding()) {
                    ReferenceBinding referenceBinding2 = this.binding.superclass;
                    while (true) {
                        if (referenceBinding2 == null) {
                            break;
                        }
                        if (TypeBinding.equalsEquals(referenceBinding2, type3)) {
                            z14 = false;
                            break;
                        }
                        referenceBinding2 = referenceBinding2.superclass();
                    }
                }
                if (z14) {
                    this.scope.problemReporter().missingSerialVersion(this);
                }
            }
            int kind2 = kind(this.modifiers);
            if (kind2 != 3) {
                if (kind2 == 4) {
                    if (this.superclass != null) {
                        this.scope.problemReporter().annotationTypeDeclarationCannotHaveSuperclass(this);
                    }
                    if (this.superInterfaces != null) {
                        this.scope.problemReporter().annotationTypeDeclarationCannotHaveSuperinterfaces(this);
                    }
                }
            } else if (this.binding.isAbstract()) {
                if (!z10) {
                    int length3 = this.methods.length;
                    for (int i14 = 0; i14 < length3; i14++) {
                        AbstractMethodDeclaration abstractMethodDeclaration = this.methods[i14];
                        if (abstractMethodDeclaration.isAbstract() && abstractMethodDeclaration.binding != null) {
                            this.scope.problemReporter().enumAbstractMethodMustBeImplemented(abstractMethodDeclaration);
                        }
                    }
                } else if (fieldDeclarationArr2 != null) {
                    int length4 = this.methods.length;
                    for (int i15 = 0; i15 < length4; i15++) {
                        AbstractMethodDeclaration abstractMethodDeclaration2 = this.methods[i15];
                        if (abstractMethodDeclaration2.isAbstract() && abstractMethodDeclaration2.binding != null) {
                            int length5 = fieldDeclarationArr2.length;
                            for (int i16 = 0; i16 < length5; i16++) {
                                if (fieldDeclarationArr2[i16] != null) {
                                    this.scope.problemReporter().enumConstantMustImplementAbstractMethod(abstractMethodDeclaration2, fieldDeclarationArr2[i16]);
                                }
                            }
                        }
                    }
                }
            }
            MethodDeclaration[] methodDeclarationArr = this.missingAbstractMethods;
            int length6 = methodDeclarationArr == null ? 0 : methodDeclarationArr.length;
            AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.methods;
            if ((abstractMethodDeclarationArr == null ? 0 : abstractMethodDeclarationArr.length) + length6 > 65535) {
                this.scope.problemReporter().tooManyMethods(this);
            }
            AbstractMethodDeclaration[] abstractMethodDeclarationArr2 = this.methods;
            if (abstractMethodDeclarationArr2 != null) {
                int length7 = abstractMethodDeclarationArr2.length;
                for (int i17 = 0; i17 < length7; i17++) {
                    this.methods[i17].resolve(this.scope);
                }
            }
            Javadoc javadoc = this.javadoc;
            if (javadoc != null) {
                ClassScope classScope = this.scope;
                if (classScope != null && this.name != TypeConstants.PACKAGE_INFO_NAME) {
                    javadoc.resolve(classScope);
                }
            } else if (!sourceTypeBinding.isLocalType()) {
                int i18 = sourceTypeBinding.modifiers & 7;
                ProblemReporter problemReporter = this.scope.problemReporter();
                int computeSeverity = problemReporter.computeSeverity(IProblem.JavadocMissing);
                if (computeSeverity != 256) {
                    TypeDeclaration typeDeclaration = this.enclosingType;
                    if (typeDeclaration != null) {
                        i18 = Util.computeOuterMostVisibility(typeDeclaration, i18);
                    }
                    problemReporter.javadocMissing(this.sourceStart, this.sourceEnd, computeSeverity, i18 | (this.binding.modifiers & (-8)));
                }
            }
            updateNestInfo();
            FieldDeclaration[] fieldDeclarationArr3 = this.fields;
            if (fieldDeclarationArr3 != null) {
                for (FieldDeclaration fieldDeclaration2 : fieldDeclarationArr3) {
                    fieldDeclaration2.resolveJavadoc(this.initializerScope);
                }
            }
            AbstractMethodDeclaration[] abstractMethodDeclarationArr3 = this.methods;
            if (abstractMethodDeclarationArr3 != null) {
                for (AbstractMethodDeclaration abstractMethodDeclaration3 : abstractMethodDeclarationArr3) {
                    abstractMethodDeclaration3.resolveJavadoc();
                }
            }
        } catch (AbortType unused) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    @Override
    public void tagAsHavingErrors() {
        this.ignoreFurtherInvestigation = true;
    }

    @Override
    public void tagAsHavingIgnoredMandatoryErrors(int i10) {
    }

    public void traverse(ASTVisitor aSTVisitor, CompilationUnitScope compilationUnitScope) {
        try {
            if (aSTVisitor.visit(this, compilationUnitScope)) {
                Javadoc javadoc = this.javadoc;
                if (javadoc != null) {
                    javadoc.traverse(aSTVisitor, this.scope);
                }
                Annotation[] annotationArr = this.annotations;
                if (annotationArr != null) {
                    int length = annotationArr.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        this.annotations[i10].traverse(aSTVisitor, this.staticInitializerScope);
                    }
                }
                TypeReference typeReference = this.superclass;
                if (typeReference != null) {
                    typeReference.traverse(aSTVisitor, this.scope);
                }
                TypeReference[] typeReferenceArr = this.superInterfaces;
                if (typeReferenceArr != null) {
                    int length2 = typeReferenceArr.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        this.superInterfaces[i11].traverse(aSTVisitor, this.scope);
                    }
                }
                TypeParameter[] typeParameterArr = this.typeParameters;
                if (typeParameterArr != null) {
                    int length3 = typeParameterArr.length;
                    for (int i12 = 0; i12 < length3; i12++) {
                        this.typeParameters[i12].traverse(aSTVisitor, this.scope);
                    }
                }
                TypeDeclaration[] typeDeclarationArr = this.memberTypes;
                if (typeDeclarationArr != null) {
                    int length4 = typeDeclarationArr.length;
                    for (int i13 = 0; i13 < length4; i13++) {
                        this.memberTypes[i13].traverse(aSTVisitor, this.scope);
                    }
                }
                FieldDeclaration[] fieldDeclarationArr = this.fields;
                if (fieldDeclarationArr != null) {
                    int length5 = fieldDeclarationArr.length;
                    for (int i14 = 0; i14 < length5; i14++) {
                        FieldDeclaration fieldDeclaration = this.fields[i14];
                        if (fieldDeclaration.isStatic()) {
                            fieldDeclaration.traverse(aSTVisitor, this.staticInitializerScope);
                        } else {
                            fieldDeclaration.traverse(aSTVisitor, this.initializerScope);
                        }
                    }
                }
                AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.methods;
                if (abstractMethodDeclarationArr != null) {
                    int length6 = abstractMethodDeclarationArr.length;
                    for (int i15 = 0; i15 < length6; i15++) {
                        this.methods[i15].traverse(aSTVisitor, this.scope);
                    }
                }
            }
            aSTVisitor.endVisit(this, compilationUnitScope);
        } catch (AbortType unused) {
        }
    }

    public void updateMaxFieldCount() {
        if (this.binding == null) {
            return;
        }
        TypeDeclaration referenceType = this.scope.outerMostClassScope().referenceType();
        int i10 = this.maxFieldCount;
        int i11 = referenceType.maxFieldCount;
        if (i10 > i11) {
            referenceType.maxFieldCount = i10;
        } else {
            this.maxFieldCount = i11;
        }
    }

    public void updateNestInfo() {
        SourceTypeBinding findNestHost;
        if (this.binding == null || (findNestHost = findNestHost()) == null || this.binding.equals(findNestHost)) {
            return;
        }
        this.binding.setNestHost(findNestHost);
        findNestHost.addNestMember(this.binding);
    }

    public TypeDeclaration declarationOf(MemberTypeBinding memberTypeBinding) {
        TypeDeclaration[] typeDeclarationArr;
        if (memberTypeBinding == null || (typeDeclarationArr = this.memberTypes) == null) {
            return null;
        }
        int length = typeDeclarationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            TypeDeclaration typeDeclaration = this.memberTypes[i10];
            if (TypeBinding.equalsEquals(typeDeclaration.binding, memberTypeBinding)) {
                return typeDeclaration;
            }
        }
        return null;
    }

    public AbstractMethodDeclaration declarationOf(MethodBinding methodBinding) {
        AbstractMethodDeclaration[] abstractMethodDeclarationArr;
        if (methodBinding == null || (abstractMethodDeclarationArr = this.methods) == null) {
            return null;
        }
        int length = abstractMethodDeclarationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            AbstractMethodDeclaration abstractMethodDeclaration = this.methods[i10];
            if (abstractMethodDeclaration.binding == methodBinding) {
                return abstractMethodDeclaration;
            }
        }
        return null;
    }

    public void analyseCode(ClassScope classScope) {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            updateMaxFieldCount();
            internalAnalyseCode(null, FlowInfo.initial(this.maxFieldCount));
        } catch (AbortType unused) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    public void analyseCode(ClassScope classScope, FlowContext flowContext, FlowInfo flowInfo) {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            if ((flowInfo.tagBits & 1) == 0) {
                this.bits |= Integer.MIN_VALUE;
                LocalTypeBinding localTypeBinding = (LocalTypeBinding) this.binding;
                localTypeBinding.setConstantPoolName(classScope.compilationUnitScope().computeConstantPoolName(localTypeBinding));
            }
            manageEnclosingInstanceAccessIfNecessary(classScope, flowInfo);
            updateMaxFieldCount();
            internalAnalyseCode(flowContext, flowInfo);
        } catch (AbortType unused) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    public void manageEnclosingInstanceAccessIfNecessary(ClassScope classScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) == 0) {
            SourceTypeBinding sourceTypeBinding = this.binding;
            ((NestedTypeBinding) sourceTypeBinding).addSyntheticArgumentAndField(sourceTypeBinding.enclosingType());
        }
    }

    public void analyseCode(CompilationUnitScope compilationUnitScope) {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            internalAnalyseCode(null, FlowInfo.initial(this.maxFieldCount));
        } catch (AbortType unused) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        try {
            if (aSTVisitor.visit(this, blockScope)) {
                Javadoc javadoc = this.javadoc;
                if (javadoc != null) {
                    javadoc.traverse(aSTVisitor, this.scope);
                }
                Annotation[] annotationArr = this.annotations;
                if (annotationArr != null) {
                    int length = annotationArr.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        this.annotations[i10].traverse(aSTVisitor, this.staticInitializerScope);
                    }
                }
                TypeReference typeReference = this.superclass;
                if (typeReference != null) {
                    typeReference.traverse(aSTVisitor, this.scope);
                }
                TypeReference[] typeReferenceArr = this.superInterfaces;
                if (typeReferenceArr != null) {
                    int length2 = typeReferenceArr.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        this.superInterfaces[i11].traverse(aSTVisitor, this.scope);
                    }
                }
                TypeParameter[] typeParameterArr = this.typeParameters;
                if (typeParameterArr != null) {
                    int length3 = typeParameterArr.length;
                    for (int i12 = 0; i12 < length3; i12++) {
                        this.typeParameters[i12].traverse(aSTVisitor, this.scope);
                    }
                }
                TypeDeclaration[] typeDeclarationArr = this.memberTypes;
                if (typeDeclarationArr != null) {
                    int length4 = typeDeclarationArr.length;
                    for (int i13 = 0; i13 < length4; i13++) {
                        this.memberTypes[i13].traverse(aSTVisitor, this.scope);
                    }
                }
                FieldDeclaration[] fieldDeclarationArr = this.fields;
                if (fieldDeclarationArr != null) {
                    int length5 = fieldDeclarationArr.length;
                    for (int i14 = 0; i14 < length5; i14++) {
                        FieldDeclaration fieldDeclaration = this.fields[i14];
                        if (!fieldDeclaration.isStatic() || fieldDeclaration.isFinal()) {
                            fieldDeclaration.traverse(aSTVisitor, this.initializerScope);
                        }
                    }
                }
                AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.methods;
                if (abstractMethodDeclarationArr != null) {
                    int length6 = abstractMethodDeclarationArr.length;
                    for (int i15 = 0; i15 < length6; i15++) {
                        this.methods[i15].traverse(aSTVisitor, this.scope);
                    }
                }
            }
            aSTVisitor.endVisit(this, blockScope);
        } catch (AbortType unused) {
        }
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        int i10 = this.bits;
        if ((Integer.MIN_VALUE & i10) != 0 && (i10 & 8192) == 0) {
            int i11 = codeStream.position;
            SourceTypeBinding sourceTypeBinding = this.binding;
            if (sourceTypeBinding != null) {
                SyntheticArgumentBinding[] syntheticEnclosingInstances = ((NestedTypeBinding) sourceTypeBinding).syntheticEnclosingInstances();
                int length = syntheticEnclosingInstances == null ? 0 : syntheticEnclosingInstances.length;
                int i12 = 0;
                for (int i13 = 0; i13 < length; i13++) {
                    SyntheticArgumentBinding syntheticArgumentBinding = syntheticEnclosingInstances[i13];
                    i12++;
                    syntheticArgumentBinding.resolvedPosition = i12;
                    if (i12 > 255) {
                        blockScope.problemReporter().noMoreAvailableSpaceForArgument(syntheticArgumentBinding, blockScope.referenceType());
                    }
                }
            }
            generateCode(codeStream.classFile);
            codeStream.recordPositionsFrom(i11, this.sourceStart);
        }
    }

    public void generateCode(ClassScope classScope, ClassFile classFile) {
        if ((this.bits & 8192) != 0) {
            return;
        }
        SourceTypeBinding sourceTypeBinding = this.binding;
        if (sourceTypeBinding != null) {
            SyntheticArgumentBinding[] syntheticEnclosingInstances = ((NestedTypeBinding) sourceTypeBinding).syntheticEnclosingInstances();
            int length = syntheticEnclosingInstances == null ? 0 : syntheticEnclosingInstances.length;
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                SyntheticArgumentBinding syntheticArgumentBinding = syntheticEnclosingInstances[i11];
                i10++;
                syntheticArgumentBinding.resolvedPosition = i10;
                if (i10 > 255) {
                    classScope.problemReporter().noMoreAvailableSpaceForArgument(syntheticArgumentBinding, classScope.referenceType());
                }
            }
        }
        generateCode(classFile);
    }

    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        try {
            if (aSTVisitor.visit(this, classScope)) {
                Javadoc javadoc = this.javadoc;
                if (javadoc != null) {
                    javadoc.traverse(aSTVisitor, this.scope);
                }
                Annotation[] annotationArr = this.annotations;
                if (annotationArr != null) {
                    int length = annotationArr.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        this.annotations[i10].traverse(aSTVisitor, this.staticInitializerScope);
                    }
                }
                TypeReference typeReference = this.superclass;
                if (typeReference != null) {
                    typeReference.traverse(aSTVisitor, this.scope);
                }
                TypeReference[] typeReferenceArr = this.superInterfaces;
                if (typeReferenceArr != null) {
                    int length2 = typeReferenceArr.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        this.superInterfaces[i11].traverse(aSTVisitor, this.scope);
                    }
                }
                TypeParameter[] typeParameterArr = this.typeParameters;
                if (typeParameterArr != null) {
                    int length3 = typeParameterArr.length;
                    for (int i12 = 0; i12 < length3; i12++) {
                        this.typeParameters[i12].traverse(aSTVisitor, this.scope);
                    }
                }
                TypeDeclaration[] typeDeclarationArr = this.memberTypes;
                if (typeDeclarationArr != null) {
                    int length4 = typeDeclarationArr.length;
                    for (int i13 = 0; i13 < length4; i13++) {
                        this.memberTypes[i13].traverse(aSTVisitor, this.scope);
                    }
                }
                FieldDeclaration[] fieldDeclarationArr = this.fields;
                if (fieldDeclarationArr != null) {
                    int length5 = fieldDeclarationArr.length;
                    for (int i14 = 0; i14 < length5; i14++) {
                        FieldDeclaration fieldDeclaration = this.fields[i14];
                        if (fieldDeclaration.isStatic()) {
                            fieldDeclaration.traverse(aSTVisitor, this.staticInitializerScope);
                        } else {
                            fieldDeclaration.traverse(aSTVisitor, this.initializerScope);
                        }
                    }
                }
                AbstractMethodDeclaration[] abstractMethodDeclarationArr = this.methods;
                if (abstractMethodDeclarationArr != null) {
                    int length6 = abstractMethodDeclarationArr.length;
                    for (int i15 = 0; i15 < length6; i15++) {
                        this.methods[i15].traverse(aSTVisitor, this.scope);
                    }
                }
            }
            aSTVisitor.endVisit(this, classScope);
        } catch (AbortType unused) {
        }
    }

    public void generateCode(CompilationUnitScope compilationUnitScope) {
        generateCode((ClassFile) null);
    }

    @Override
    public void resolve(BlockScope blockScope) {
        if ((this.bits & 512) == 0) {
            TypeBinding type = blockScope.getType(this.name);
            if ((type instanceof ReferenceBinding) && type != this.binding && type.isValidBinding()) {
                ReferenceBinding referenceBinding = (ReferenceBinding) type;
                if (referenceBinding instanceof TypeVariableBinding) {
                    TypeVariableBinding typeVariableBinding = (TypeVariableBinding) referenceBinding;
                    blockScope.problemReporter().typeHiding(this, typeVariableBinding);
                    Scope scope = blockScope.parent;
                    while (true) {
                        if (scope == null) {
                            break;
                        }
                        TypeBinding type2 = scope.getType(this.name);
                        if ((type2 instanceof TypeVariableBinding) && type2.isValidBinding()) {
                            Binding binding = typeVariableBinding.declaringElement;
                            if ((binding instanceof ReferenceBinding) && CharOperation.equals(((ReferenceBinding) binding).sourceName(), this.name)) {
                                blockScope.problemReporter().typeCollidesWithEnclosingType(this);
                                break;
                            }
                            scope = scope.parent;
                        } else if ((type2 instanceof ReferenceBinding) && type2.isValidBinding() && scope.isDefinedInType((ReferenceBinding) type2)) {
                            blockScope.problemReporter().typeCollidesWithEnclosingType(this);
                            break;
                        } else if (type2 == null) {
                            break;
                        } else {
                            scope = scope.parent;
                        }
                    }
                } else {
                    boolean z10 = referenceBinding instanceof LocalTypeBinding;
                    if (z10 && ((LocalTypeBinding) referenceBinding).scope.methodScope() == blockScope.methodScope()) {
                        blockScope.problemReporter().duplicateNestedType(this);
                    } else if (z10 && blockScope.isLambdaSubscope() && blockScope.enclosingLambdaScope().enclosingMethodScope() == ((LocalTypeBinding) referenceBinding).scope.methodScope()) {
                        blockScope.problemReporter().duplicateNestedType(this);
                    } else if (blockScope.isDefinedInType(referenceBinding)) {
                        blockScope.problemReporter().typeCollidesWithEnclosingType(this);
                    } else if (blockScope.isDefinedInSameUnit(referenceBinding)) {
                        blockScope.problemReporter().typeHiding(this, referenceBinding);
                    }
                }
            }
            blockScope.addLocalType(this);
        }
        if (this.binding != null) {
            blockScope.referenceCompilationUnit().record((LocalTypeBinding) this.binding);
            resolve();
            updateMaxFieldCount();
        }
    }

    public void resolve(ClassScope classScope) {
        SourceTypeBinding sourceTypeBinding = this.binding;
        if (sourceTypeBinding != null && (sourceTypeBinding instanceof LocalTypeBinding)) {
            classScope.referenceCompilationUnit().record((LocalTypeBinding) this.binding);
        }
        resolve();
        updateMaxFieldCount();
    }

    public void resolve(CompilationUnitScope compilationUnitScope) {
        resolve();
        updateMaxFieldCount();
    }
}
