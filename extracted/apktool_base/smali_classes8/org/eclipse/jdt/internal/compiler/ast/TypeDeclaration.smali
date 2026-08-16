.class public Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/problem/ProblemSeverities;
.implements Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;


# static fields
.field public static final ANNOTATION_TYPE_DECL:I = 0x4

.field public static final CLASS_DECL:I = 0x1

.field public static final ENUM_DECL:I = 0x3

.field public static final INTERFACE_DECL:I = 0x2


# instance fields
.field public allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

.field public annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

.field public bodyEnd:I

.field public bodyStart:I

.field public compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

.field public declarationSourceEnd:I

.field public declarationSourceStart:I

.field public enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field public enumConstantsCounter:I

.field public enumValuesSyntheticfield:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field public fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

.field public functionalExpressionsCount:I

.field public ignoreFurtherInvestigation:Z

.field public initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

.field public javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

.field public maxFieldCount:I

.field public memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field public methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

.field public missingAbstractMethods:[Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

.field public modifiers:I

.field public modifiersSourceStart:I

.field public name:[C

.field public scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

.field public staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

.field public superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field public superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

.field public typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->functionalExpressionsCount:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    return-void
.end method

.method private addJUnitMethodSourceValues(Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[C)V
    .locals 6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->memberValuePairs()[Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    invoke-virtual {p1, p3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    return-void

    :cond_0
    aget-object v3, p2, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p2, v3, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->value:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of p3, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz p3, :cond_2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    array-length v0, p3

    :goto_1
    if-lt v1, v0, :cond_1

    goto :goto_2

    :cond_1
    aget-object p2, p3, v1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->getValueAsChars(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)[C

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->getValueAsChars(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)[C

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->add([C)Ljava/lang/Object;

    :goto_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private findNestHost()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingTopMostClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getJUnitMethodSourceValues()Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;
    .locals 12

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    return-object v0

    :cond_0
    aget-object v5, v1, v4

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v6, :cond_3

    array-length v7, v6

    move v8, v3

    :goto_1
    if-lt v8, v7, :cond_1

    goto :goto_2

    :cond_1
    aget-object v9, v6, v8

    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v10, :cond_2

    iget v10, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v11, 0x5d

    if-ne v10, v11, :cond_2

    iget-object v10, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-direct {p0, v0, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->addJUnitMethodSourceValues(Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;Lorg/eclipse/jdt/internal/compiler/ast/Annotation;[C)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getValueAsChars(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)[C
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;->source:[C

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/StringConstant;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    return-object p1
.end method

.method private internalAnalyseCode(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isUsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isOrEnclosedByPrivateType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasSyntaxError:Z

    if-nez v0, :cond_0

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedPrivateType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    :cond_0
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    const/high16 v8, 0x8000000

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasSyntaxError:Z

    if-nez v0, :cond_3

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    array-length v0, v0

    move v1, v9

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v2, v2, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/2addr v3, v8

    if-nez v3, :cond_2

    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unusedTypeParameter(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    instance-of v0, v7, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_2

    :cond_4
    move-object v10, v7

    :goto_2
    new-instance v11, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;

    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-object v0, v11

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;

    const/4 v1, 0x0

    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-object v0, v12

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;-><init>(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalFieldLessCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalFieldLessCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    array-length v2, v2

    move v4, v9

    :goto_3
    if-lt v4, v2, :cond_5

    goto :goto_5

    :cond_5
    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v13

    const v14, 0x7fffffff

    if-eqz v13, :cond_7

    iget v13, v1, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v13, v3

    if-eqz v13, :cond_6

    iget v13, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v13, v14

    iput v13, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_6
    sget-object v13, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->ANY_EXCEPTION:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v13, v12, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v13, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5, v13, v12, v1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne v1, v13, :cond_9

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->initializerMustCompleteNormally(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initial(I)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v1

    goto :goto_4

    :cond_7
    iget v13, v0, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v13, v3

    if-eqz v13, :cond_8

    iget v13, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v13, v14

    iput v13, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_8
    sget-object v13, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->ANY_EXCEPTION:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v13, v11, Lorg/eclipse/jdt/internal/compiler/flow/ExceptionHandlingFlowContext;->handledExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v13, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5, v13, v11, v0}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->DEAD_END:Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    if-ne v0, v13, :cond_9

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->initializerMustCompleteNormally(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initial(I)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_d

    array-length v2, v2

    move v4, v9

    :goto_6
    if-lt v4, v2, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v7, :cond_c

    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v5, v5, v4

    iget-object v13, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->setReachMode(I)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v14

    invoke-virtual {v5, v13, v7, v14}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_7

    :cond_c
    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v5, v5, v4

    iget-object v13, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v5, v13}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    :goto_8
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-wide v4, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v13, 0x350000

    cmp-long v2, v4, v13

    if-ltz v2, :cond_10

    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v2, :cond_e

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    iget v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v4, :cond_f

    move v5, v9

    goto :goto_9

    :cond_f
    array-length v5, v4

    :goto_9
    add-int/lit8 v7, v5, 0x1

    new-array v7, v7, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aput-object v2, v7, v9

    if-eqz v4, :cond_10

    invoke-static {v4, v9, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    iget-object v2, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v2, :cond_16

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalFieldLessCopy()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->discardNonFieldInitializations()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->getJUnitMethodSourceValues()Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;

    move-result-object v3

    iget-object v4, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    array-length v4, v4

    :goto_a
    if-lt v9, v4, :cond_11

    goto :goto_c

    :cond_11
    iget-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v5, v5, v9

    iget-boolean v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz v7, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isInitializationMethod()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isStatic()Z

    move-result v7

    if-eqz v7, :cond_13

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->unconditionalInits()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v13

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->discardNonFieldInitializations()Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object v13

    invoke-virtual {v13, v2}, Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;->addInitializationsFrom(Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v13

    invoke-virtual {v5, v7, v12, v13}, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    goto :goto_b

    :cond_13
    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->reachMode()I

    move-result v14

    invoke-virtual {v5, v7, v11, v13, v14}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/flow/InitializationFlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;I)V

    goto :goto_b

    :cond_14
    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-nez v7, :cond_15

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSetOfCharArray;->includes([C)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v7, :cond_15

    iget v13, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/2addr v13, v8

    iput v13, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_15
    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->copy()Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;

    move-result-object v13

    invoke-virtual {v5, v7, v10, v13}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_16
    :goto_c
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticFieldForEnumValues()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iput-object v0, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enumValuesSyntheticfield:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :cond_17
    return-void
.end method

.method public static final kind(I)I
    .locals 1

    and-int/lit16 p0, p0, 0x6200

    const/16 v0, 0x200

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2200

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public abort(ILorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1
.end method

.method public final addClinit()V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->needClassInitMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    goto :goto_0

    :cond_0
    array-length v3, v0

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :goto_0
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Clinit;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    aput-object v2, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    :cond_1
    return-void
.end method

.method public addMissingAbstractMethodFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v2

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iput-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getAccessFlags()I

    move-result v5

    and-int/lit16 v5, v5, -0x401

    iput v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    if-lez v3, :cond_1

    new-array v5, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iput-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move v6, v3

    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v13, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "arg"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v9, 0x0

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    aput-object v13, v5, v6

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->missingAbstractMethods:[Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    const/4 v6, 0x1

    if-nez v5, :cond_2

    filled-new-array {v4}, [Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object v5

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->missingAbstractMethods:[Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    goto :goto_2

    :cond_2
    array-length v7, v5

    add-int/2addr v7, v6

    new-array v7, v7, [Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    array-length v8, v5

    const/4 v9, 0x0

    invoke-static {v5, v9, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v4, v7, v9

    iput-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->missingAbstractMethods:[Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    :goto_2
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    or-int/lit16 v11, v7, 0x1000

    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_3

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_3
    move-object v14, v2

    iget-object v15, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-object v10, v5

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v16}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iput-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-direct {v1, v2, v4, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    iput-object v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bindArguments()V

    return-object v4
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget v1, p3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 3
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->computeConstantPoolName(Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->setConstantPoolName([C)V

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->updateMaxFieldCount()V

    .line 8
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->internalAnalyseCode(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortType; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    :goto_0
    return-object p3
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 1

    .line 10
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz p1, :cond_0

    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->updateMaxFieldCount()V

    .line 12
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initial(I)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->internalAnalyseCode(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortType; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    :goto_0
    return-void
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 3

    .line 14
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 15
    :try_start_0
    iget v1, p3, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 16
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 17
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->computeConstantPoolName(Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->setConstantPoolName([C)V

    .line 19
    :cond_1
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V

    .line 20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->updateMaxFieldCount()V

    .line 21
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->internalAnalyseCode(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortType; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 22
    :catch_0
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    :goto_0
    return-void
.end method

.method public analyseCode(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 1

    .line 23
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz p1, :cond_0

    return-void

    .line 24
    :cond_0
    :try_start_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->initial(I)Lorg/eclipse/jdt/internal/compiler/flow/UnconditionalFlowInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->internalAnalyseCode(Lorg/eclipse/jdt/internal/compiler/flow/FlowContext;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortType; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    :goto_0
    return-void
.end method

.method public checkConstructors(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    array-length v0, v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->isImplicitSuper()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->convertToMethodDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aput-object v2, v3, v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationTypeDeclarationCannotHaveConstructor(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->interfaceCannotHaveConstructors(Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return v1
.end method

.method public compilationResult()Lorg/eclipse/jdt/internal/compiler/CompilationResult;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    return-object v0
.end method

.method public createDefaultConstructor(ZZ)Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    and-int/lit8 v3, v3, 0x7

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;->implicitSuperConstructorCall()Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    move-result-object p1

    iput-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez p1, :cond_1

    new-array p1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aput-object v2, p1, v0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    goto :goto_0

    :cond_1
    array-length p2, p1

    add-int/2addr p2, v1

    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    array-length v3, p1

    invoke-static {p1, v0, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v2, p2, v0

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    :cond_2
    :goto_0
    return-object v2
.end method

.method public createDefaultConstructorWithBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v2

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    const/4 v5, 0x1

    new-array v6, v5, [C

    const/16 v7, 0x78

    const/4 v8, 0x0

    aput-char v7, v6, v8

    iput-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    and-int/lit8 v6, v6, 0x7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v7

    if-eqz v7, :cond_0

    or-int/lit16 v6, v6, 0x80

    :cond_0
    iput v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    iget v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const-string v6, "$anonymous"

    if-lez v3, :cond_2

    new-array v7, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iput-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    move v9, v3

    :goto_0
    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v16, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v10, v16

    invoke-direct/range {v10 .. v15}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    aput-object v16, v7, v9

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/SuperReference;->implicitSuperConstructorCall()Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    move-result-object v7

    iput-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-lez v3, :cond_4

    new-array v9, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move v7, v3

    :goto_2
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_3

    goto :goto_3

    :cond_3
    new-instance v10, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-direct {v10, v11, v12, v13}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    aput-object v10, v9, v7

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v6, :cond_5

    new-array v6, v5, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aput-object v4, v6, v8

    iput-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    goto :goto_4

    :cond_5
    array-length v7, v6

    add-int/2addr v7, v5

    new-array v7, v7, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    array-length v9, v6

    invoke-static {v6, v8, v7, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v4, v7, v8

    iput-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    :goto_4
    if-eqz p2, :cond_6

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v6, v7, v5, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    goto :goto_5

    :cond_6
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_5
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v10, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    if-nez v3, :cond_7

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_7
    invoke-direct {v9, v10, v2, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iput-object v9, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-wide v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iget-wide v12, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v14, 0x80

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    iput-wide v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iget v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v6, 0x4000000

    or-int/2addr v2, v6

    iput v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    if-lez v3, :cond_8

    array-length v2, v1

    new-array v3, v2, [Ljava/lang/Boolean;

    iput-object v3, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    invoke-static {v1, v8, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-direct {v1, v2, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    iput-object v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bindArguments()V

    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->constructorCall:Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v3, v2, 0x1

    new-array v6, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v1, v8, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aput-object v1, v6, v8

    if-le v3, v5, :cond_9

    invoke-static {v6, v8, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    :cond_9
    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v1
.end method

.method public declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;
    .locals 4

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v0, :cond_2

    .line 8
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v2, v2, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_2

    .line 2
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v2, v2, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/MemberTypeBinding;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 4

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_2

    .line 5
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v2, v2, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declarationOfType([[C)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    const/4 v3, 0x0

    aget-object v4, p1, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_1

    return-object p0

    :cond_1
    sub-int/2addr v0, v2

    new-array v4, v0, [[C

    invoke-static {p1, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    array-length v0, p1

    if-lt v3, v0, :cond_2

    return-object v1

    :cond_2
    aget-object p1, p1, v3

    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOfType([[C)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_0

    return-void

    :cond_0
    or-int/lit16 v0, v0, 0x2000

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 3
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    .line 6
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->createProblemType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    return-void

    .line 7
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->getNewInstance(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)Lorg/eclipse/jdt/internal/compiler/ClassFile;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->initialize(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ClassFile;Z)V

    .line 9
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 13
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 14
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    .line 15
    array-length v1, p1

    move v3, v2

    :goto_1
    if-lt v3, v1, :cond_a

    .line 16
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addFieldInfos()V

    .line 17
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz p1, :cond_6

    .line 18
    array-length p1, p1

    move v1, v2

    :goto_2
    if-lt v1, p1, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v3, v3, v1

    .line 20
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 21
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 22
    :cond_6
    :goto_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->setForMethodInfos()V

    .line 23
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz p1, :cond_8

    .line 24
    array-length p1, p1

    :goto_4
    if-lt v2, p1, :cond_7

    goto :goto_5

    .line 25
    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 26
    :cond_8
    :goto_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addSpecialMethods()V

    .line 27
    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    if-nez p1, :cond_9

    .line 28
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addAttributes()V

    .line 29
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    .line 30
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v1

    .line 31
    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->record([CLorg/eclipse/jdt/internal/compiler/ClassFile;)V

    goto :goto_6

    .line 32
    :cond_9
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/AbortType;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    .line 33
    :cond_a
    aget-object v4, p1, v3

    .line 34
    iget-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x800

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_b

    .line 35
    invoke-static {v0, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortType; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 36
    :catch_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-nez p1, :cond_c

    return-void

    .line 37
    :cond_c
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    .line 38
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->createProblemType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    :goto_6
    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 8

    .line 39
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1

    return-void

    .line 40
    :cond_1
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 41
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v1, :cond_5

    .line 42
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->syntheticEnclosingInstances()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_0

    .line 43
    :cond_2
    array-length v3, v1

    :goto_0
    move v4, v2

    :goto_1
    if-lt v2, v3, :cond_3

    goto :goto_2

    .line 44
    :cond_3
    aget-object v5, v1, v2

    add-int/lit8 v4, v4, 0x1

    .line 45
    iput v4, v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    const/16 v6, 0xff

    if-le v4, v6, :cond_4

    .line 46
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->noMoreAvailableSpaceForArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 47
    :cond_5
    :goto_2
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    .line 48
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 7

    .line 49
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_4

    .line 51
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->syntheticEnclosingInstances()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    .line 52
    :cond_1
    array-length v2, v0

    :goto_0
    move v3, v1

    :goto_1
    if-lt v1, v2, :cond_2

    goto :goto_2

    .line 53
    :cond_2
    aget-object v4, v0, v1

    add-int/lit8 v3, v3, 0x1

    .line 54
    iput v3, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    const/16 v5, 0xff

    if-le v3, v5, :cond_3

    .line 55
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->noMoreAvailableSpaceForArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_4
    :goto_2
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    return-void
.end method

.method public generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 0

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    return-void
.end method

.method public getCompilationUnitDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    return v0
.end method

.method public isPackageInfo()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    return v0
.end method

.method public isSecondary()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 5

    .line 1
    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    .line 4
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->addSyntheticArgumentAndField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    .line 6
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 8
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getSyntheticField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    if-nez v3, :cond_2

    .line 11
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->addSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    .line 13
    :cond_3
    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v2, :cond_4

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    iget-wide v1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v3, 0x310000

    cmp-long p1, v1, v3

    if-ltz p1, :cond_4

    .line 14
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    .line 17
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->getSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->addSyntheticArgumentAndField(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    :cond_4
    return-void
.end method

.method public manageEnclosingInstanceAccessIfNecessary(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;)V
    .locals 0

    .line 19
    iget p1, p2, Lorg/eclipse/jdt/internal/compiler/flow/FlowInfo;->tagBits:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 20
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    .line 21
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->addSyntheticArgumentAndField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    :cond_0
    return-void
.end method

.method public final needClassInitMethod()Z
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_3

    array-length v0, v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v2, v2, v0

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    return v1

    :cond_3
    :goto_0
    return v3

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_6

    return v1

    :cond_6
    return v3
.end method

.method public parseMethods(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 6

    iget-boolean v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->ignoreMethodBodies:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/high16 v1, 0x80000

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->parseMethods(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v4, v1

    or-int/2addr v4, v5

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v0, :cond_4

    array-length v0, v0

    move v3, v2

    :goto_2
    if-lt v3, v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->parseStatements(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v4, v1

    or-int/2addr v4, v5

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_7

    array-length v0, v0

    :goto_4
    if-lt v2, v0, :cond_5

    goto :goto_6

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    goto :goto_5

    :cond_6
    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    invoke-virtual {v4, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->parseStatements(Lorg/eclipse/jdt/internal/compiler/parser/Parser;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v3, v1

    or-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    :goto_6
    return-void
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->printHeader(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->printBody(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public printBody(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 5

    const-string v0, " {"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    array-length v4, v3

    if-lt v0, v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v3, v3, v0

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    array-length v4, v3

    if-lt v0, v4, :cond_3

    goto :goto_3

    :cond_3
    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v3, v3, v0

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v0, :cond_8

    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    array-length v3, v0

    if-lt v1, v3, :cond_6

    goto :goto_5

    :cond_6
    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v0, v0, v1

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3, p2}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public printHeader(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 7

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printModifiers(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "@interface "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string p1, "enum "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string p1, "interface "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string p1, "class "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    const-string v4, ", "

    const/4 v5, 0x0

    if-eqz p1, :cond_7

    const-string p1, "<"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v5

    :goto_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    array-length v6, v6

    if-lt p1, v6, :cond_5

    const-string p1, ">"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    if-lez p1, :cond_6

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v6, v6, p1

    invoke-virtual {v6, v5, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const-string v6, " extends "

    if-eqz p1, :cond_8

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {p1, v5, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p1, :cond_d

    array-length p1, p1

    if-lez p1, :cond_d

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result p1

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_a

    if-eq p1, v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_a
    const-string p1, " implements "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    move p1, v5

    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v0, v0

    if-lt p1, v0, :cond_b

    goto :goto_5

    :cond_b
    if-lez p1, :cond_c

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    return-object p2
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public record(Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;)I
    .locals 1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->functionalExpressionsCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->functionalExpressionsCount:I

    return p1
.end method

.method public resolve()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VAR:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v5, 0x360000

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 5
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varIsReservedTypeNameInFuture(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->varIsReservedTypeName(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getAnnotationTagBits()J

    move-result-wide v3

    const-wide v5, 0x400000000000L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 8
    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 9
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v5

    iget-wide v5, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v9, 0x310000

    cmp-long v5, v5, v9

    if-ltz v5, :cond_3

    .line 10
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingDeprecatedAnnotationForType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    :cond_3
    const-wide/high16 v5, 0x800000000000000L

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_4

    .line 11
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 12
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->notAFunctionalInterface(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 13
    :cond_4
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 14
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyStart:I

    sub-int/2addr v4, v2

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->undocumentedEmptyBlock(II)V

    .line 15
    :cond_5
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    const v4, 0x20000008

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getSeverity(I)I

    move-result v3

    const/16 v4, 0x100

    const/4 v5, 0x0

    if-eq v3, v4, :cond_6

    .line 16
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x38

    .line 17
    invoke-virtual {v1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-nez v3, :cond_6

    const/16 v3, 0x25

    .line 18
    invoke-virtual {v1, v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    move v3, v5

    :goto_1
    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eqz v3, :cond_c

    .line 19
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v3

    .line 20
    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WRITEREPLACE:[C

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v8, v9, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 21
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 22
    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v9, v2, :cond_7

    .line 23
    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v9, v8

    if-ne v9, v2, :cond_7

    .line 24
    aget-object v8, v8, v5

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v9, 0x39

    if-ne v8, v9, :cond_7

    move v8, v5

    goto :goto_2

    :cond_7
    move v8, v2

    :goto_2
    if-eqz v8, :cond_b

    .line 25
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_OBJECTOUTPUTSTREAM:[[C

    invoke-virtual {v8, v9, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    .line 26
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v9

    const/16 v10, 0x3a

    if-eqz v9, :cond_8

    .line 27
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WRITEOBJECT:[C

    filled-new-array {v8}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-virtual {v1, v9, v8, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 28
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 29
    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    if-ne v9, v6, :cond_8

    .line 30
    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v9, v11, :cond_8

    .line 31
    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v9, v8

    if-ne v9, v2, :cond_8

    .line 32
    aget-object v8, v8, v5

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v8, v10, :cond_8

    move v8, v2

    goto :goto_3

    :cond_8
    move v8, v5

    .line 33
    :goto_3
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_OBJECTINPUTSTREAM:[[C

    invoke-virtual {v9, v11, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    .line 34
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 35
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->READOBJECT:[C

    filled-new-array {v9}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    invoke-virtual {v1, v11, v9, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 36
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 37
    iget v9, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    if-ne v9, v6, :cond_9

    .line 38
    iget-object v9, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v9, v11, :cond_9

    .line 39
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v9, v3

    if-ne v9, v2, :cond_9

    .line 40
    aget-object v3, v3, v5

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, v10, :cond_9

    move v3, v2

    goto :goto_4

    :cond_9
    move v3, v5

    :goto_4
    if-eqz v8, :cond_a

    if-eqz v3, :cond_a

    move v3, v5

    goto :goto_5

    :cond_a
    move v3, v2

    goto :goto_5

    :cond_b
    move v3, v8

    :cond_c
    :goto_5
    const/16 v8, 0x15

    .line 41
    invoke-virtual {v1, v8, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    if-eqz v8, :cond_11

    move-object v8, v1

    .line 42
    :cond_d
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 43
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->genericTypeCannotExtendThrowable(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_6

    .line 44
    :cond_e
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_6

    .line 45
    :cond_f
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 46
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    .line 47
    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v9

    iget-boolean v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-eqz v9, :cond_10

    goto :goto_6

    .line 48
    :cond_10
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    if-nez v8, :cond_d

    .line 49
    :cond_11
    :goto_6
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v8, :cond_13

    .line 50
    array-length v8, v8

    move v9, v5

    :goto_7
    if-lt v9, v8, :cond_12

    goto :goto_8

    .line 51
    :cond_12
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v10, v10, v9

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v10, v11}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 52
    :cond_13
    :goto_8
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    const/4 v9, 0x0

    if-eqz v8, :cond_1f

    .line 53
    array-length v8, v8

    const/4 v10, -0x1

    move v11, v5

    move v12, v11

    move v13, v12

    :goto_9
    if-lt v11, v8, :cond_14

    goto/16 :goto_f

    .line 54
    :cond_14
    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v14, v14, v11

    .line 55
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v15

    if-eq v15, v2, :cond_19

    if-eq v15, v6, :cond_18

    if-eq v15, v7, :cond_15

    goto :goto_c

    .line 56
    :cond_15
    iget-object v13, v14, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v13, v13, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-nez v13, :cond_17

    if-nez v9, :cond_16

    .line 57
    new-array v9, v8, [Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 58
    :cond_16
    aput-object v14, v9, v11

    :cond_17
    move v13, v2

    goto :goto_a

    .line 59
    :cond_18
    move-object v15, v14

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    add-int/lit8 v5, v10, 0x1

    iput v5, v15, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->lastVisibleFieldID:I

    goto :goto_c

    .line 60
    :cond_19
    :goto_a
    iget-object v5, v14, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v5, :cond_1c

    .line 61
    iget-object v5, v14, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v5, :cond_1b

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v14

    if-eqz v14, :cond_1a

    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    goto :goto_b

    :cond_1a
    iget-object v14, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    :goto_b
    invoke-virtual {v5, v14}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 62
    :cond_1b
    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    goto :goto_e

    :cond_1c
    if-eqz v3, :cond_1d

    .line 63
    iget v10, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/16 v15, 0x18

    and-int/2addr v10, v15

    if-ne v10, v15, :cond_1d

    .line 64
    sget-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SERIALVERSIONUID:[C

    iget-object v15, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v10, v15}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 65
    sget-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v10, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v3, 0x0

    :cond_1d
    add-int/lit8 v12, v12, 0x1

    .line 66
    iget-object v5, v14, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v10, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    .line 67
    :goto_c
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    goto :goto_d

    :cond_1e
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    :goto_d
    invoke-virtual {v14, v5}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    :goto_e
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_9

    :cond_1f
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 68
    :goto_f
    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    if-ge v5, v12, :cond_20

    .line 69
    iput v12, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    :cond_20
    const/4 v5, 0x4

    if-eqz v3, :cond_24

    .line 70
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVAX_RMI_CORBA_STUB:[[C

    invoke-virtual {v6, v8, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 72
    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_10
    if-nez v8, :cond_21

    goto :goto_11

    .line 73
    :cond_21
    invoke-static {v8, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_22

    const/4 v3, 0x0

    goto :goto_11

    .line 74
    :cond_22
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    goto :goto_10

    :cond_23
    :goto_11
    if-eqz v3, :cond_24

    .line 75
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingSerialVersion(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 76
    :cond_24
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v3

    if-eq v3, v7, :cond_27

    if-eq v3, v5, :cond_25

    goto/16 :goto_16

    .line 77
    :cond_25
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_26

    .line 78
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationTypeDeclarationCannotHaveSuperclass(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 79
    :cond_26
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v3, :cond_2f

    .line 80
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->annotationTypeDeclarationCannotHaveSuperinterfaces(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_16

    .line 81
    :cond_27
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v3

    if-eqz v3, :cond_2f

    if-nez v13, :cond_2a

    .line 82
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    array-length v3, v3

    const/4 v5, 0x0

    :goto_12
    if-lt v5, v3, :cond_28

    goto :goto_16

    .line 83
    :cond_28
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v6, v6, v5

    .line 84
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isAbstract()Z

    move-result v7

    if-eqz v7, :cond_29

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v7, :cond_29

    .line 85
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->enumAbstractMethodMustBeImplemented(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_2a
    if-eqz v9, :cond_2f

    .line 86
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    array-length v3, v3

    const/4 v5, 0x0

    :goto_13
    if-lt v5, v3, :cond_2b

    goto :goto_16

    .line 87
    :cond_2b
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v6, v6, v5

    .line 88
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isAbstract()Z

    move-result v7

    if-eqz v7, :cond_2e

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v7, :cond_2e

    .line 89
    array-length v7, v9

    const/4 v8, 0x0

    :goto_14
    if-lt v8, v7, :cond_2c

    goto :goto_15

    .line 90
    :cond_2c
    aget-object v10, v9, v8

    if-eqz v10, :cond_2d

    .line 91
    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v10

    aget-object v11, v9, v8

    invoke-virtual {v10, v6, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->enumConstantMustImplementAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    :cond_2d
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_2e
    :goto_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 92
    :cond_2f
    :goto_16
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->missingAbstractMethods:[Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-nez v3, :cond_30

    const/4 v3, 0x0

    goto :goto_17

    :cond_30
    array-length v3, v3

    .line 93
    :goto_17
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-nez v5, :cond_31

    const/4 v5, 0x0

    goto :goto_18

    :cond_31
    array-length v5, v5

    :goto_18
    add-int/2addr v5, v3

    const v3, 0xffff

    if-le v5, v3, :cond_32

    .line 94
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->tooManyMethods(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 95
    :cond_32
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v3, :cond_34

    .line 96
    array-length v3, v3

    const/4 v5, 0x0

    :goto_19
    if-lt v5, v3, :cond_33

    goto :goto_1a

    .line 97
    :cond_33
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v6, v6, v5

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 98
    :cond_34
    :goto_1a
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v3, :cond_35

    .line 99
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_37

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    if-eq v4, v5, :cond_37

    .line 100
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    goto :goto_1b

    .line 101
    :cond_35
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v3

    if-nez v3, :cond_37

    .line 102
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit8 v1, v1, 0x7

    .line 103
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    const v5, -0x5ffffe1a

    .line 104
    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->computeSeverity(I)I

    move-result v5

    if-eq v5, v4, :cond_37

    .line 105
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v4, :cond_36

    .line 106
    invoke-static {v4, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->computeOuterMostVisibility(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)I

    move-result v1

    .line 107
    :cond_36
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/lit8 v4, v4, -0x8

    or-int/2addr v1, v4

    .line 108
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v3, v4, v6, v5, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissing(IIII)V

    .line 109
    :cond_37
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->updateNestInfo()V

    .line 110
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_39

    .line 111
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1c
    if-lt v4, v3, :cond_38

    goto :goto_1d

    :cond_38
    aget-object v5, v1, v4

    .line 112
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->resolveJavadoc(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 113
    :cond_39
    :goto_1d
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v1, :cond_3b

    .line 114
    array-length v3, v1

    const/4 v5, 0x0

    :goto_1e
    if-lt v5, v3, :cond_3a

    goto :goto_1f

    :cond_3a
    aget-object v4, v1, v5

    .line 115
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->resolveJavadoc()V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortType; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_3b
    :goto_1f
    return-void

    .line 116
    :catch_0
    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    .line 117
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_9

    .line 118
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 119
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_8

    .line 120
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eq v0, v1, :cond_8

    .line 121
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 122
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 123
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeHiding(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V

    .line 125
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    :goto_0
    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 126
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    .line 127
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 129
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_3

    .line 130
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeCollidesWithEnclosingType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto/16 :goto_1

    .line 132
    :cond_1
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_2

    .line 133
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isDefinedInType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeCollidesWithEnclosingType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    .line 136
    :cond_3
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    goto :goto_0

    .line 137
    :cond_4
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    if-eqz v1, :cond_5

    .line 138
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 139
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateNestedType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 140
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaSubscope()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingLambdaScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v2

    if-ne v1, v2, :cond_6

    .line 142
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateNestedType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_1

    .line 143
    :cond_6
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isDefinedInType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 144
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeCollidesWithEnclosingType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    goto :goto_1

    .line 145
    :cond_7
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isDefinedInSameUnit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 146
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->typeHiding(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 147
    :cond_8
    :goto_1
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 148
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_a

    .line 149
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;)V

    .line 150
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->resolve()V

    .line 151
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->updateMaxFieldCount()V

    :cond_a
    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->resolve()V

    .line 155
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->updateMaxFieldCount()V

    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->resolve()V

    .line 157
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->updateMaxFieldCount()V

    return-void
.end method

.method public tagAsHavingErrors()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->ignoreFurtherInvestigation:Z

    return-void
.end method

.method public tagAsHavingIgnoredMandatoryErrors(I)V
    .locals 0

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 5

    .line 27
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 28
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 31
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_3

    .line 34
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 35
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_5

    .line 36
    array-length v0, v0

    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_4

    goto :goto_3

    .line 37
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 38
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v0, :cond_7

    .line 39
    array-length v0, v0

    move v2, v1

    :goto_4
    if-lt v2, v0, :cond_6

    goto :goto_5

    .line 40
    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 41
    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_9

    .line 42
    array-length v0, v0

    move v2, v1

    :goto_6
    if-lt v2, v0, :cond_8

    goto :goto_7

    .line 43
    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 44
    :cond_9
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_d

    .line 45
    array-length v0, v0

    move v2, v1

    :goto_8
    if-lt v2, v0, :cond_a

    goto :goto_9

    .line 46
    :cond_a
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v3, v3, v2

    .line 47
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isFinal()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 48
    :cond_b
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 49
    :cond_d
    :goto_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v0, :cond_f

    .line 50
    array-length v0, v0

    :goto_a
    if-lt v1, v0, :cond_e

    goto :goto_b

    .line 51
    :cond_e
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 52
    :cond_f
    :goto_b
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortType; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 5

    .line 53
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 54
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 57
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    .line 58
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_3

    .line 60
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 61
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_5

    .line 62
    array-length v0, v0

    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_4

    goto :goto_3

    .line 63
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 64
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v0, :cond_7

    .line 65
    array-length v0, v0

    move v2, v1

    :goto_4
    if-lt v2, v0, :cond_6

    goto :goto_5

    .line 66
    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 67
    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_9

    .line 68
    array-length v0, v0

    move v2, v1

    :goto_6
    if-lt v2, v0, :cond_8

    goto :goto_7

    .line 69
    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 70
    :cond_9
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_c

    .line 71
    array-length v0, v0

    move v2, v1

    :goto_8
    if-lt v2, v0, :cond_a

    goto :goto_a

    .line 72
    :cond_a
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 73
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    goto :goto_9

    .line 74
    :cond_b
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 75
    :cond_c
    :goto_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v0, :cond_e

    .line 76
    array-length v0, v0

    :goto_b
    if-lt v1, v0, :cond_d

    goto :goto_c

    .line 77
    :cond_d
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 78
    :cond_e
    :goto_c
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortType; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->javadoc:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_3

    .line 8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_5

    .line 10
    array-length v0, v0

    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 12
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    if-eqz v0, :cond_7

    .line 13
    array-length v0, v0

    move v2, v1

    :goto_4
    if-lt v2, v0, :cond_6

    goto :goto_5

    .line 14
    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 15
    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_9

    .line 16
    array-length v0, v0

    move v2, v1

    :goto_6
    if-lt v2, v0, :cond_8

    goto :goto_7

    .line 17
    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 18
    :cond_9
    :goto_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v0, :cond_c

    .line 19
    array-length v0, v0

    move v2, v1

    :goto_8
    if-lt v2, v0, :cond_a

    goto :goto_a

    .line 20
    :cond_a
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 21
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    goto :goto_9

    .line 22
    :cond_b
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 23
    :cond_c
    :goto_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v0, :cond_e

    .line 24
    array-length v0, v0

    :goto_b
    if-lt v1, v0, :cond_d

    goto :goto_c

    .line 25
    :cond_d
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 26
    :cond_e
    :goto_c
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortType; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updateMaxFieldCount()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    if-le v1, v2, :cond_1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    :goto_0
    return-void
.end method

.method public updateNestInfo()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->findNestHost()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setNestHost(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addNestMember(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    :cond_1
    return-void
.end method
