.class public Lorg/eclipse/jdt/internal/compiler/ast/Argument;
.super Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;
.source "SourceFile"


# static fields
.field private static final SET:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "set"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->SET:[C

    return-void
.end method

.method public constructor <init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p2, v0

    long-to-int v0, v0

    long-to-int p2, p2

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;-><init>([CII)V

    .line 2
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    .line 3
    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    .line 4
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p4, :cond_0

    .line 5
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget p2, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p3, 0x100000

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 6
    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const p2, 0x40000004    # 2.000001f

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method

.method public constructor <init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;IZ)V
    .locals 2

    const/16 p6, 0x20

    ushr-long v0, p2, p6

    long-to-int p6, v0

    long-to-int p2, p2

    .line 7
    invoke-direct {p0, p1, p6, p2}, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;-><init>([CII)V

    .line 8
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    .line 9
    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    .line 10
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz p4, :cond_0

    .line 11
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    iget p2, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p3, 0x100000

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 12
    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const p2, 0x40000006    # 2.0000014f

    or-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method


# virtual methods
.method public bind(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->createBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBinding([CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->hiddenVariableDepth:I

    if-nez v1, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaSubscope()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->lambdaRedeclaresArgument(Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->redefineArgument(Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    goto :goto_2

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideConstructor()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->SET:[C

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    invoke-static {v4, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableHiding(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->useFlag:I

    return-object p2
.end method

.method public createBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    invoke-direct {v0, p0, p2, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    goto :goto_0

    :cond_0
    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p2, :cond_1

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide v2, 0x200000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p2

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x340000

    cmp-long p2, v0, v2

    if-ltz p2, :cond_2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isTypeUseCompatible(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->validateNullAnnotation(JLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaration:Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p1
.end method

.method public getKind()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    :cond_0
    return v1
.end method

.method public hasElidedType()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->containsNullAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isArgument()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRecoveredFromLoneIdentifier()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVarArgs()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printModifiers(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/16 v0, 0x20

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez p1, :cond_1

    const-string p1, "<no type> "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public printStatement(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x3b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public resolveForCatch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    move v3, v1

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v3

    const/16 v4, 0x104

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1004

    if-eq v3, v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidTypeVariableAsException(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    :goto_1
    move v3, v1

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBoundParameterizedType()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidParameterizedExceptionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_1

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    const/16 v4, 0x15

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v3, v4, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotThrowType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :cond_4
    :goto_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    const/4 v5, 0x3

    invoke-virtual {p1, v4, v5, p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBinding([CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-eqz v5, :cond_6

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz v5, :cond_5

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->hiddenVariableDepth:I

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->redefineArgument(Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    invoke-virtual {v5, p0, v4, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->localVariableHiding(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)V

    :cond_6
    :goto_5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    or-int/lit8 v5, v5, 0x10

    invoke-direct {v4, p0, v0, v5, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v7, 0x1000

    or-long/2addr v5, v7

    iput-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    goto :goto_6

    :cond_7
    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    invoke-direct {v4, p0, v0, v5, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CatchParameterBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    :goto_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-static {p1, v2, v4, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isTypeUseCompatible(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->ANY:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->containsNullAnnotation([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationUnsupportedLocation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_9
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->addLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->setConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    if-eqz v3, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    return-object v0
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_1

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    .line 7
    :cond_2
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 3

    .line 8
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->visit(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v0, :cond_1

    .line 10
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 14
    :cond_2
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/Argument;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    return-void
.end method
