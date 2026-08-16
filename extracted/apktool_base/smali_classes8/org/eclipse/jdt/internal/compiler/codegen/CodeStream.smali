.class public Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ImplicitThis:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding; = null

.field public static final LABELS_INCREMENT:I = 0x5

.field public static final LOCALS_INCREMENT:I = 0xa

.field static final L_CANNOT_OPTIMIZE:I = 0x4

.field static final L_OPTIMIZABLE:I = 0x2

.field static final L_UNKNOWN:I

.field public static final RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

.field public static final RESTART_IN_WIDE_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;


# instance fields
.field public allLocalsCounter:I

.field public bCodeStream:[B

.field public classFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

.field public classFileOffset:I

.field public constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

.field public countLabels:I

.field public exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

.field public exceptionLabelsCounter:I

.field public generateAttributes:I

.field public labels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field public lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

.field public lastAbruptCompletion:I

.field public lastEntryPC:I

.field public lineNumberEnd:I

.field public lineNumberStart:I

.field public lineSeparatorPositions:[I

.field public locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field public maxFieldCount:I

.field public maxLocals:I

.field public methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

.field public pcToSourceMap:[I

.field public pcToSourceMapSize:I

.field public position:I

.field public preserveUnusedLocals:Z

.field public stackDepth:I

.field public stackMax:I

.field public startingClassFileOffset:I

.field protected targetLevel:J

.field public visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

.field visibleLocalsCount:I

.field public wideMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ImplicitThis:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v0, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_IN_WIDE_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-direct {v1, v2, v0, v0, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>([CIII)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->labels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    const/16 v0, 0xa

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/16 v1, 0x18

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineSeparatorPositions:[I

    :cond_0
    return-void
.end method

.method private fieldAccess(BI[C[C[C)V
    .locals 2

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 8
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 p2, p2, -0x3

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    goto :goto_0

    .line 9
    :cond_0
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_3

    .line 10
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    goto :goto_0

    :pswitch_2
    if-ne p2, v0, :cond_1

    .line 11
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    goto :goto_0

    .line 12
    :cond_1
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    goto :goto_0

    :pswitch_3
    if-ne p2, v0, :cond_2

    .line 13
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    goto :goto_0

    .line 14
    :cond_2
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    .line 15
    :cond_3
    :goto_0
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le p2, v1, :cond_4

    .line 16
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    .line 17
    :cond_4
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v0, v0

    if-lt p2, v0, :cond_5

    .line 18
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 19
    :cond_5
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 20
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte p1, p2, v0

    .line 21
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1, p3, p4, p5}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForField([C[C[C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    return-void

    :pswitch_data_0
    .packed-switch -0x4e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 6

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-ne v1, v2, :cond_3

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    .line 6
    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    const-wide/32 v4, 0x2e0000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 7
    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v3, 0x300000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    :cond_0
    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 10
    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static getConstantPoolDeclaringClass(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 8

    .line 11
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 12
    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->isArrayClone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    const-wide/32 v2, 0x300000

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p0

    .line 14
    iget-wide p0, p0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long p0, p0, v2

    if-lez p0, :cond_7

    .line 15
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v1

    if-nez v1, :cond_7

    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v1

    .line 18
    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    const-wide/32 v6, 0x2e0000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 19
    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result p3

    if-nez p3, :cond_2

    .line 20
    :cond_1
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 21
    :cond_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 22
    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isIntersectionType18()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 23
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    const/4 p1, 0x0

    .line 24
    :goto_0
    array-length p2, p0

    if-lt p1, p2, :cond_4

    goto :goto_1

    .line 25
    :cond_4
    aget-object p2, p0, p1

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 26
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 27
    :cond_6
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static insertionIndex([III)I
    .locals 3

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-le v0, p1, :cond_1

    aget p0, p0, v1

    if-ge p2, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    return v1

    :cond_1
    add-int v1, v0, p1

    div-int/lit8 v1, v1, 0x2

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    aget v2, p0, v1

    if-ge p2, v2, :cond_3

    add-int/lit8 p1, v1, -0x2

    goto :goto_0

    :cond_3
    if-le p2, v2, :cond_4

    add-int/lit8 v0, v1, 0x2

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method private invoke18(BII[CZ[C[C)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    const/16 v1, -0x47

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    iget p5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p5, p5, 0x4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt p5, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget p5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 p5, p5, 0x3

    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte p1, p5, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1, p4, p6, p7, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForMethod([C[C[CZ)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p5, p4, 0x1

    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p6, p2

    aput-byte p6, p1, p4

    add-int/lit8 p4, p4, 0x2

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v0, p1, p5

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte p1, v0, v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1, p4, p6, p7, p5}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForMethod([C[C[CZ)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    sub-int/2addr p3, p2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le p1, p2, :cond_3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_3
    return-void
.end method

.method private final resizeByteArray()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v0

    add-int v2, v1, v1

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    if-lt v3, v2, :cond_0

    add-int v2, v3, v1

    :cond_0
    new-array v2, v2, [B

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static final sort([III[I)V
    .locals 4

    if-le p2, p1, :cond_7

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    aget v0, p0, v0

    move v1, p1

    move v2, p2

    :cond_0
    :goto_0
    if-le v1, v2, :cond_2

    if-ge p1, v2, :cond_1

    invoke-static {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sort([III[I)V

    :cond_1
    if-ge v1, p2, :cond_7

    invoke-static {p0, v1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sort([III[I)V

    goto :goto_4

    :cond_2
    :goto_1
    if-ge v1, p2, :cond_4

    aget v3, p0, v1

    if-lt v3, v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-le v2, p1, :cond_6

    aget v3, p0, v2

    if-gt v3, v0, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-gt v1, v2, :cond_0

    invoke-static {p0, v1, v2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap([III[I)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method private static final swap([III[I)V
    .locals 2

    .line 1
    aget v0, p0, p1

    .line 2
    aget v1, p0, p2

    aput v1, p0, p1

    .line 3
    aput v0, p0, p2

    .line 4
    aget p0, p3, p2

    .line 5
    aget v0, p3, p1

    aput v0, p3, p2

    .line 6
    aput p0, p3, p1

    return-void
.end method

.method private final writeSignedShort(I)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 3
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 5
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method private final writeSignedShort(II)V
    .locals 3

    .line 6
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->startingClassFileOffset:I

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    .line 7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 9
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    int-to-byte p2, p2

    .line 10
    aput-byte p2, v1, p1

    return-void
.end method

.method private final writeUnsignedShort(I)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method


# virtual methods
.method public aaload()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    return-void
.end method

.method public aastore()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    return-void
.end method

.method public aconst_null()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v2, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    return-void
.end method

.method public addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    and-int/lit8 v0, v0, 0x1c

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocalsCount:I

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-eqz v2, :cond_2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    aget v2, v3, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    :cond_2
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addLabel(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->labels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x5

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->labels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->labels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    aput-object p1, v0, v1

    return-void
.end method

.method public addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 0

    return-void
.end method

.method public addVisibleLocalVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    and-int/lit8 v0, v0, 0x1c

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocalsCount:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocalsCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocalsCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method public aload(I)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v0, p1, :cond_1

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_1
    const/16 v0, 0xff

    const/16 v1, 0x19

    if-le p1, v0, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    return-void
.end method

.method public aload_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v2, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-nez v0, :cond_1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    return-void
.end method

.method public aload_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v2, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    return-void
.end method

.method public aload_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    return-void
.end method

.method public aload_3()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    return-void
.end method

.method public anewarray(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    return-void
.end method

.method public areturn()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, -0x50

    aput-byte v3, v1, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    return-void
.end method

.method public arrayAt(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aaload()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iaload()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->faload()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->daload()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->laload()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->saload()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->baload()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->caload()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public arrayAtPut(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aastore()V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iastore()V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fastore()V

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x2()V

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dastore()V

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2_x2()V

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastore()V

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sastore()V

    goto :goto_0

    :pswitch_6
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bastore()V

    goto :goto_0

    :pswitch_7
    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->castore()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public arraylength()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    return-void
.end method

.method public astore(I)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v0, p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    const/16 v0, 0xff

    const/16 v1, 0x3a

    if-le p1, v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    return-void
.end method

.method public astore_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-nez v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    return-void
.end method

.method public astore_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    return-void
.end method

.method public astore_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    return-void
.end method

.method public astore_3()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    return-void
.end method

.method public athrow()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, -0x41

    aput-byte v3, v1, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    return-void
.end method

.method public baload()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    return-void
.end method

.method public bastore()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    return-void
.end method

.method public bipush(B)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, 0x10

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte p1, v0, v2

    return-void
.end method

.method public caload()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    return-void
.end method

.method public castore()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    return-void
.end method

.method public checkcast(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 4
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangIntegerConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangFloatConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    .line 8
    :pswitch_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangDoubleConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    .line 9
    :pswitch_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangLongConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    .line 10
    :pswitch_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangBooleanConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    .line 11
    :pswitch_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangShortConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    .line 12
    :pswitch_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangByteConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    .line 13
    :pswitch_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangCharacterConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public checkcast(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    .locals 1

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 16
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p1, p1, 0x2

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length p3, p3

    if-lt p1, p3, :cond_0

    .line 17
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 18
    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 19
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v0, -0x40

    aput-byte v0, p1, p3

    .line 20
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    return-void
.end method

.method public checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 14
    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-void
.end method

.method public d2f()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    return-void
.end method

.method public d2i()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    return-void
.end method

.method public d2l()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    return-void
.end method

.method public dadd()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    return-void
.end method

.method public daload()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    return-void
.end method

.method public dastore()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    return-void
.end method

.method public dcmpg()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    return-void
.end method

.method public dcmpl()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    return-void
.end method

.method public dconst_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    return-void
.end method

.method public dconst_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    return-void
.end method

.method public ddiv()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    return-void
.end method

.method public decrStackSize(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    return-void
.end method

.method public dload(I)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_1
    const/16 v0, 0xff

    const/16 v1, 0x18

    if-le p1, v0, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    return-void
.end method

.method public dload_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v2, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-ge v0, v1, :cond_1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    return-void
.end method

.method public dload_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    return-void
.end method

.method public dload_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    return-void
.end method

.method public dload_3()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    return-void
.end method

.method public dmul()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    return-void
.end method

.method public dneg()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    return-void
.end method

.method public drem()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    return-void
.end method

.method public dreturn()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, -0x51

    aput-byte v3, v1, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    return-void
.end method

.method public dstore(I)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    const/16 v0, 0xff

    const/16 v1, 0x39

    if-le p1, v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    return-void
.end method

.method public dstore_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    return-void
.end method

.method public dstore_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    return-void
.end method

.method public dstore_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    return-void
.end method

.method public dstore_3()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    return-void
.end method

.method public dsub()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    return-void
.end method

.method public dup()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    return-void
.end method

.method public dup2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    return-void
.end method

.method public dup2_x1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    return-void
.end method

.method public dup2_x2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    return-void
.end method

.method public dup_x1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    return-void
.end method

.method public dup_x2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    return-void
.end method

.method public exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    and-int/lit8 v0, v0, 0x1c

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocalsCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 4
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eq v2, p1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-lez v2, :cond_3

    .line 6
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationEndPC(I)V

    .line 7
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public exitUserScope(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 4

    .line 8
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    and-int/lit8 v0, v0, 0x1c

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocalsCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 11
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->declaringScope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-ne v2, p1, :cond_4

    if-ne v1, p2, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-lez v2, :cond_3

    .line 13
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationEndPC(I)V

    .line 14
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public f2d()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    return-void
.end method

.method public f2i()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    return-void
.end method

.method public f2l()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    return-void
.end method

.method public fadd()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    return-void
.end method

.method public faload()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    return-void
.end method

.method public fastore()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    return-void
.end method

.method public fcmpg()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    return-void
.end method

.method public fcmpl()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    return-void
.end method

.method public fconst_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    return-void
.end method

.method public fconst_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    return-void
.end method

.method public fconst_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    return-void
.end method

.method public fdiv()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    return-void
.end method

.method public fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 8

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 2
    :cond_0
    iget-wide v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x800

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-static {v0, p3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 4
    :cond_1
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 5
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 6
    :goto_1
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v5

    iget-object v6, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v7

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BI[C[C[C)V

    return-void
.end method

.method public findDirectSuperTypeTowards(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Assumption violated: some super type must be conform to the declaring class of a super method"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object v0
.end method

.method public fload(I)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v1, p1, :cond_0

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    const/16 v0, 0xff

    const/16 v1, 0x17

    if-le p1, v0, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    return-void
.end method

.method public fload_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-nez v2, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v2, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    return-void
.end method

.method public fload_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v2, v1, :cond_0

    const/4 v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v2, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    return-void
.end method

.method public fload_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    const/4 v1, 0x3

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    return-void
.end method

.method public fload_3()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    return-void
.end method

.method public fmul()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    return-void
.end method

.method public fneg()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    return-void
.end method

.method public frem()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    return-void
.end method

.method public freturn()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, -0x52

    aput-byte v3, v1, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    return-void
.end method

.method public fstore(I)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v0, p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    const/16 v0, 0xff

    const/16 v1, 0x38

    if-le p1, v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    return-void
.end method

.method public fstore_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-nez v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    return-void
.end method

.method public fstore_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    return-void
.end method

.method public fstore_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    return-void
.end method

.method public fstore_3()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    return-void
.end method

.method public fsub()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    return-void
.end method

.method public generateBoxingConversion(I)V
    .locals 7

    const-wide/32 v0, 0x310000

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangIntegerConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOf:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->IntIntegerSignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newWrapperFor(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap()V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangIntegerConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->IntConstrSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :pswitch_2
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangFloatConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOf:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->floatFloatSignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newWrapperFor(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap()V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangFloatConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->FloatConstrSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :pswitch_3
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangDoubleConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOf:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->doubleDoubleSignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newWrapperFor(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangDoubleConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->DoubleConstrSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :pswitch_4
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangLongConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOf:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->longLongSignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newWrapperFor(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x2()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangLongConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->LongConstrSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :pswitch_5
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_4

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangBooleanConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOf:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->booleanBooleanSignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newWrapperFor(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap()V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangBooleanConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->BooleanConstrSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :pswitch_6
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_5

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangShortConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOf:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->shortShortSignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newWrapperFor(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap()V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangShortConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ShortConstrSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_7
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_6

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangByteConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOf:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->byteByteSignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newWrapperFor(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap()V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangByteConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ByteConstrSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_8
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangCharacterConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOf:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->charCharacterSignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newWrapperFor(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap()V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangCharacterConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->CharConstrSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public generateClassLiteralAccessForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-eq p1, v0, :cond_0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getTYPE(I)V

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/16 v2, -0x4e

    invoke-virtual {p0, v2, p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifnonnull(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_2
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    invoke-direct {v2, p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeStart()V

    if-ne p1, v3, :cond_3

    const-string p1, "java.lang.Object"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeClassForName()V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeEnd()V

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    const/16 p1, -0x4d

    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_4
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pushExceptionOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->place()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newNoClassDefFoundError()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeThrowableGetMessage()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeNoClassDefFoundErrorStringConstructor()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->athrow()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    :goto_1
    return-void
.end method

.method public final generateCodeAttributeForProblemMethod(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newJavaLangError()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaLangErrorConstructor()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->athrow()V

    return-void
.end method

.method public generateConstant(Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V
    .locals 3

    and-int/lit16 v0, p2, 0xff

    shr-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(F)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(D)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(J)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(Z)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(S)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(B)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(C)V

    :goto_0
    and-int/lit16 p1, p2, 0x200

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateBoxingConversion(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public generateEmulatedReadAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateEmulationForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap()V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaLangReflectFieldGetter(I)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_0
    return-void
.end method

.method public generateEmulatedWriteAccessForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
    .locals 0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaLangReflectFieldSetter(I)V

    return-void
.end method

.method public generateEmulationForConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 5

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeClassForName()V

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_CLASS:[[C

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    const/4 p1, 0x0

    :goto_0
    if-lt p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getTYPE(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getTYPE(I)V

    goto :goto_1

    :cond_2
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeClassForName()V

    :goto_1
    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newarray(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeArrayNewInstance()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectGetClass()V

    goto :goto_2

    :cond_3
    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeClassForName()V

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aastore()V

    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeClassGetDeclaredConstructor()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeAccessibleObjectSetAccessible()V

    return-void
.end method

.method public generateEmulationForField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeClassForName()V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeClassGetDeclaredField()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeAccessibleObjectSetAccessible()V

    return-void
.end method

.method public generateEmulationForMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 5

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeClassForName()V

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_CLASS:[[C

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    const/4 p1, 0x0

    :goto_0
    if-lt p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getTYPE(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->getTYPE(I)V

    goto :goto_1

    :cond_2
    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeClassForName()V

    :goto_1
    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newarray(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeArrayNewInstance()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectGetClass()V

    goto :goto_2

    :cond_3
    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeClassForName()V

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aastore()V

    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeClassGetDeclaredMethod()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeAccessibleObjectSetAccessible()V

    return-void
.end method

.method public generateImplicitConversion(I)V
    .locals 2

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0xf

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateUnboxingConversion(I)V

    :cond_0
    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0x23

    if-eq v0, v1, :cond_5

    const/16 v1, 0x24

    if-eq v0, v1, :cond_5

    const/16 v1, 0x31

    if-eq v0, v1, :cond_4

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    const/16 v1, 0x89

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_1

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->f2l()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->d2l()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2l()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->f2i()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2s()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->d2i()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2s()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->l2i()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2s()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2s()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->f2i()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2b()V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->d2i()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2b()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->l2i()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2b()V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->f2i()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->d2i()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->l2i()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->d2f()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->l2f()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2f()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->l2d()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->f2i()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2c()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->d2i()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2c()V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->l2i()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2c()V

    goto :goto_0

    :cond_1
    :pswitch_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2d()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->f2d()V

    goto :goto_0

    :cond_3
    :pswitch_b
    :sswitch_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2b()V

    goto :goto_0

    :cond_4
    :pswitch_c
    :sswitch_b
    shr-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(I)V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateUnboxingConversion(I)V

    goto :goto_0

    :cond_5
    :sswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->i2c()V

    :goto_0
    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_6

    shr-int/lit8 p1, v0, 0x4

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateBoxingConversion(I)V

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_b
        0x27 -> :sswitch_9
        0x28 -> :sswitch_8
        0x29 -> :sswitch_7
        0x2a -> :sswitch_c
        0x34 -> :sswitch_a
        0x51 -> :sswitch_b
        0x87 -> :sswitch_6
        0x91 -> :sswitch_b
        0x92 -> :sswitch_5
        0x93 -> :sswitch_5
        0x94 -> :sswitch_5
        0x97 -> :sswitch_4
        0x98 -> :sswitch_3
        0x9a -> :sswitch_5
        0xa1 -> :sswitch_b
        0xa7 -> :sswitch_2
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_c
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x71
        :pswitch_c
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x78
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x81
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public generateInlinedValue(B)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/16 v0, -0x80

    if-gt v0, p1, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bipush(B)V

    return-void

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_5()V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_4()V

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_3()V

    goto :goto_0

    .line 7
    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_2()V

    goto :goto_0

    .line 8
    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    goto :goto_0

    .line 9
    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    goto :goto_0

    .line 10
    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_m1()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public generateInlinedValue(C)V
    .locals 1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-gt v0, p1, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    int-to-byte p1, p1

    .line 11
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bipush(B)V

    return-void

    :cond_0
    const/16 v0, 0x80

    if-gt v0, p1, :cond_1

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sipush(I)V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(I)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_5()V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_4()V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_3()V

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_2()V

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    goto :goto_0

    .line 19
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    :goto_0
    return-void
.end method

.method public generateInlinedValue(D)V
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc2_w(D)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dconst_0()V

    :goto_0
    return-void

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_2

    .line 23
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dconst_1()V

    return-void

    .line 24
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc2_w(D)V

    return-void
.end method

.method public generateInlinedValue(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 25
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(F)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fconst_0()V

    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    .line 28
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fconst_1()V

    return-void

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fconst_2()V

    return-void

    .line 30
    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(F)V

    return-void
.end method

.method public generateInlinedValue(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/16 v0, -0x80

    if-gt v0, p1, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    int-to-byte p1, p1

    .line 31
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bipush(B)V

    return-void

    :cond_0
    const/16 v0, -0x8000

    if-gt v0, p1, :cond_1

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_1

    .line 32
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sipush(I)V

    return-void

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(I)V

    goto :goto_0

    .line 34
    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_5()V

    goto :goto_0

    .line 35
    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_4()V

    goto :goto_0

    .line 36
    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_3()V

    goto :goto_0

    .line 37
    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_2()V

    goto :goto_0

    .line 38
    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    goto :goto_0

    .line 39
    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    goto :goto_0

    .line 40
    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_m1()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public generateInlinedValue(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lconst_0()V

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lconst_1()V

    return-void

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc2_w(J)V

    return-void
.end method

.method public generateInlinedValue(S)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/16 v0, -0x80

    if-gt v0, p1, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    int-to-byte p1, p1

    .line 44
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bipush(B)V

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sipush(I)V

    goto :goto_0

    .line 46
    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_5()V

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_4()V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_3()V

    goto :goto_0

    .line 49
    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_2()V

    goto :goto_0

    .line 50
    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    goto :goto_0

    .line 51
    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    goto :goto_0

    .line 52
    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_m1()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public generateInlinedValue(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    :goto_0
    return-void
.end method

.method public generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    instance-of p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->needImplementation(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->noSuchEnclosingInstance(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInConstructorCall:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p3, p2, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->noSuchEnclosingInstance(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    return-void

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->NoEnclosingInstanceInStaticContext:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    if-ne p1, v1, :cond_3

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->noSuchEnclosingInstance(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Z)V

    return-void

    :cond_3
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->EmulationPathToImplicitThis:[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    return-void

    :cond_4
    aget-object p2, p1, v0

    instance-of p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/16 p4, -0x4c

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    invoke-virtual {p0, p4, p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1

    :cond_5
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :goto_1
    array-length p2, p1

    :goto_2
    if-lt v2, p2, :cond_6

    return-void

    :cond_6
    aget-object p3, p1, v2

    instance-of v1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v1, :cond_7

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p4, p3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_3

    :cond_7
    const/16 v1, -0x48

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, v1, p3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public generateReturnBytecode(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->return_()V

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    return-void

    :cond_1
    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 p1, p1, 0x4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->freturn()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dreturn()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lreturn()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ireturn()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public generateStringConcatenationAppend(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newStringContatenation()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap()V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringValueOf(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationStringConstructor()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {p2, p1, p0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedStringConcatenationCreation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    :goto_0
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->implicitConversion:I

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {p3, p1, p0, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateOptimizedStringConcatenation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;I)V

    iget p1, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationToString()V

    return-void
.end method

.method public generateSyntheticBodyForArrayClone(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 7

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Clone:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->CloneSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    return-void
.end method

.method public generateSyntheticBodyForArrayConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iload_0()V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    return-void
.end method

.method public generateSyntheticBodyForConstructorAccess(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 10

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v4, 0x29

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iload_2()V

    const/4 v3, 0x3

    :goto_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    move-object v4, v2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->syntheticEnclosingInstances()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v4

    move v8, v7

    :goto_2
    if-nez v4, :cond_2

    move v9, v7

    goto :goto_3

    :cond_2
    array-length v9, v4

    :goto_3
    if-lt v8, v9, :cond_3

    goto :goto_5

    :cond_3
    aget-object v9, v4, v8

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v9, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v9, v6, :cond_4

    if-eq v9, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x2

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    move v4, v7

    :goto_6
    if-lt v4, v1, :cond_a

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v0

    if-eqz v0, :cond_9

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v0

    move v1, v7

    :goto_7
    if-nez v0, :cond_6

    move v2, v7

    goto :goto_8

    :cond_6
    array-length v2, v0

    :goto_8
    if-lt v1, v2, :cond_7

    goto :goto_a

    :cond_7
    aget-object v2, v0, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v3, v3, 0x2

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    :goto_a
    const/16 v0, -0x49

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->return_()V

    return-void

    :cond_a
    aget-object v8, v0, v4

    invoke-virtual {p0, v8, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v8, v6, :cond_b

    if-eq v8, v5, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v3, v3, 0x2

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method

.method public generateSyntheticBodyForDeserializeLambda(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v1, v0

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    if-lt v2, v1, :cond_19

    move-object/from16 v3, p1

    iget-object v0, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangInvokeSerializedLambdaConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetImplMethodName:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetImplMethodNameSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->astore_1()V

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const-string v0, "hashcode"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangString()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-direct {v11, v0, v1, v9, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    const/4 v12, 0x1

    iput v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-virtual {v7, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_m1()V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->istore_2()V

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const-string v0, "id"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v13, v0, v1, v9, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    const/4 v0, 0x2

    iput v0, v13, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-virtual {v7, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_1()V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringHashCode()V

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v4, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    invoke-direct {v5, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v6

    new-array v14, v6, [Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    new-array v15, v6, [I

    new-array v0, v6, [I

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v1, v9

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_18

    new-array v1, v6, [I

    invoke-static {v15, v9, v1, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v6, v12

    invoke-static {v1, v9, v6, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sort([III[I)V

    invoke-virtual {v7, v5, v15, v0, v14}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lookupswitch(Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;[I[I[Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v9

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->place()V

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v0

    new-array v15, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    new-array v1, v0, [I

    new-array v6, v0, [I

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v14, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    invoke-direct {v5, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iload_2()V

    move v2, v9

    :goto_3
    if-lt v2, v0, :cond_15

    new-array v2, v0, [I

    invoke-static {v1, v9, v2, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v12

    invoke-static {v2, v9, v0, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->sort([III[I)V

    invoke-virtual {v7, v5, v1, v6, v15}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lookupswitch(Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;[I[I[Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v0, v9

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {v7, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->place()V

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangIllegalArgumentException()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->new_(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    const-string v0, "Invalid lambda deserialization"

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangIllegalArgumentExceptionConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->IllegalArgumentExceptionConstructorSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->athrow()V

    return-void

    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    add-int/lit8 v18, v0, 0x1

    aget-object v0, v15, v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->place()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    goto :goto_5

    :cond_1
    move-object v0, v14

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    move-object v3, v0

    move v2, v9

    :goto_6
    if-lt v2, v4, :cond_2

    move/from16 v0, v18

    goto :goto_4

    :cond_2
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->lambda:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v1, :cond_3

    goto :goto_7

    :cond_3
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->serializableMethodRef:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    :goto_7
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v16, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangInvokeSerializedLambdaConstantPoolName:[C

    sget-object v19, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetImplMethodKind:[C

    sget-object v20, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetImplMethodKindSignature:[C

    const/16 v21, -0x4a

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 p1, v0

    move-object/from16 v0, p0

    move-object/from16 p2, v1

    move/from16 v1, v21

    move v12, v2

    move/from16 v2, v22

    move-object v9, v3

    move/from16 v3, v23

    move/from16 v23, v4

    move-object/from16 v4, v16

    move-object/from16 v24, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    :goto_8
    move-object/from16 v6, p1

    goto :goto_9

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    goto :goto_8

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    goto :goto_8

    :cond_6
    move-object/from16 v6, p1

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_9

    :cond_7
    const/4 v0, 0x5

    :goto_9
    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bipush(B)V

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->if_icmpne(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetFunctionalInterfaceClass:[C

    sget-object v20, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetFunctionalInterfaceClassSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v16

    move-object/from16 v25, v11

    move-object v11, v6

    move-object/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->expectedType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/String;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->getSAMType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_a

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_a
    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectEquals()V

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetFunctionalInterfaceMethodName:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetFunctionalInterfaceMethodNameSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v16

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    new-instance v0, Ljava/lang/String;

    move-object/from16 v6, p2

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectEquals()V

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetFunctionalInterfaceMethodSignature:[C

    sget-object v20, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetFunctionalInterfaceMethodSignatureSignature:[C

    const/16 v1, -0x4a

    move-object/from16 v0, p0

    move-object/from16 v26, v13

    move-object v13, v6

    move-object/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, v13, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectEquals()V

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetImplClass:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetImplClassSignature:[C

    const/16 v1, -0x4a

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectEquals()V

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetImplMethodSignature:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetImplMethodSignatureSignature:[C

    const/16 v1, -0x4a

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectEquals()V

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    instance-of v0, v13, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object v0, v13

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    if-eqz v2, :cond_9

    iget-object v1, v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_9
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-object v5, v0

    move-object v11, v1

    goto :goto_b

    :cond_a
    move-object v0, v13

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->haveReceiver:Z

    if-eqz v2, :cond_b

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->receiverType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v11, v0

    move-object v5, v1

    goto :goto_b

    :cond_b
    move-object v5, v1

    move-object v11, v5

    :goto_b
    if-eqz v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->loadInt(I)V

    sget-object v20, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetCapturedArg:[C

    sget-object v22, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetCapturedArgSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v27, v4

    move-object/from16 v4, v16

    move-object/from16 v28, v5

    move-object/from16 v5, v20

    move-object/from16 p1, v14

    move-object v14, v6

    move-object/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    invoke-virtual {v7, v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-object/from16 v11, v28

    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    move-object/from16 p1, v14

    const/16 v27, 0x0

    move-object v14, v6

    move-object v11, v5

    move/from16 v0, v27

    :goto_c
    if-nez v11, :cond_d

    move/from16 v6, v27

    goto :goto_d

    :cond_d
    array-length v4, v11

    move v6, v4

    :goto_d
    move v5, v0

    move/from16 v4, v27

    :goto_e
    if-lt v4, v6, :cond_11

    const-string v0, ")"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v13, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v1, :cond_e

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    invoke-virtual {v0, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->getSAMType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_e
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_f
    iget v1, v13, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->bootstrapMethodNumber:I

    iget-object v0, v13, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->descriptor:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v2, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeDynamic(III[C[C)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    add-int/lit8 v4, v23, -0x1

    if-ge v12, v4, :cond_10

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    add-int/lit8 v4, v23, -0x2

    if-ge v12, v4, :cond_f

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    goto :goto_10

    :cond_f
    move-object/from16 v0, p1

    :goto_10
    move-object v3, v0

    goto :goto_11

    :cond_10
    move-object v3, v9

    :goto_11
    add-int/lit8 v2, v12, 0x1

    move-object/from16 v14, p1

    move-object/from16 v6, v19

    move/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v11, v25

    move-object/from16 v13, v26

    move/from16 v9, v27

    const/4 v12, 0x1

    goto/16 :goto_6

    :cond_11
    aget-object v0, v11, v4

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    invoke-virtual {v7, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->loadInt(I)V

    sget-object v16, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangInvokeSerializedLambdaConstantPoolName:[C

    sget-object v20, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetCapturedArg:[C

    sget-object v22, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetCapturedArgSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 p2, v3

    move/from16 v3, v28

    move/from16 v28, v4

    move-object/from16 v4, v16

    move/from16 v16, v5

    move-object/from16 v5, v20

    move/from16 v20, v6

    move-object/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->boxing(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateUnboxingConversion(I)V

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_12

    const/16 v2, 0x20

    if-ne v1, v2, :cond_14

    :cond_12
    add-int/lit8 v5, v16, 0x1

    :goto_12
    const/4 v1, 0x1

    goto :goto_13

    :cond_13
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_14
    move/from16 v5, v16

    goto :goto_12

    :goto_13
    add-int/2addr v5, v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->signature()[C

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v28, 0x1

    move/from16 v6, v20

    goto/16 :goto_e

    :cond_15
    move-object/from16 v24, v5

    move/from16 v27, v9

    move-object/from16 v25, v11

    move-object/from16 v26, v13

    move-object/from16 p1, v14

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    invoke-direct {v3, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    aput-object v3, v15, v2

    aput v2, v1, v2

    aput v2, v6, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_16
    move/from16 v27, v9

    move-object/from16 v25, v11

    move-object/from16 v26, v13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    aget-object v0, v14, v3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->place()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v1, v27

    :goto_14
    if-lt v1, v11, :cond_17

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    move-object/from16 v11, v25

    move-object/from16 v13, v26

    move/from16 v9, v27

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_17
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_1()V

    new-instance v12, Ljava/lang/String;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringEquals()V

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {v7, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->loadInt(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->istore_2()V

    invoke-virtual {v7, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_18
    move/from16 v27, v9

    move-object/from16 v25, v11

    move-object/from16 v26, v13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    invoke-direct {v3, v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    aput-object v3, v14, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v15, v1

    aput v1, v0, v1

    const/4 v9, 0x1

    add-int/2addr v1, v9

    move v12, v9

    move/from16 v9, v27

    goto/16 :goto_1

    :cond_19
    move-object/from16 v3, p1

    move/from16 v27, v9

    aget-object v4, v0, v2

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->lambda:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v5, :cond_1a

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isSerializable:Z

    if-nez v5, :cond_1b

    :cond_1a
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->serializableMethodRef:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v5, :cond_1d

    :cond_1b
    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_1c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, v27

    goto/16 :goto_0
.end method

.method public generateSyntheticBodyForEnumInitializationMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->startIndex:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->endIndex:I

    :goto_0
    if-lt v2, p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->return_()V

    return-void

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, v1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public generateSyntheticBodyForEnumValueOf(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateClassLiteralAccessForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaLangEnumvalueOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    return-void
.end method

.method public generateSyntheticBodyForEnumValues(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enumValuesSyntheticfield:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v1, 0x0

    const/16 v2, -0x4e

    invoke-virtual {p0, v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->astore_0()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arraylength()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->istore_1()V

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->astore_2()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iload_1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeSystemArraycopy()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_2()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    return-void
.end method

.method public generateSyntheticBodyForFactoryMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 8

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->new_(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v2, :cond_1

    :goto_1
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    if-lt v3, v1, :cond_0

    const/16 p1, -0x49

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aconst_null()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    aget-object v6, v1, v4

    invoke-virtual {p0, v6, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_2

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public generateSyntheticBodyForFieldReadAccess(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetReadField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, -0x4e

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    const/16 v1, -0x4c

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_1
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->freturn()V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dreturn()V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lreturn()V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ireturn()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public generateSyntheticBodyForFieldWriteAccess(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetWriteField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    const/16 v1, -0x4d

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    const/16 v1, -0x4b

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->return_()V

    return-void
.end method

.method public generateSyntheticBodyForMethodAccess(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 11

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v2, v1

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    const/4 v6, 0x1

    :goto_1
    const/4 v8, 0x7

    if-lt v7, v2, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, -0x48

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    if-ne v1, v8, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, -0x47

    invoke-virtual {p0, v1, v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_4
    const/16 v1, -0x4a

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_4

    :cond_5
    :goto_2
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    if-ne v1, v8, :cond_6

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->findDirectSuperTypeTowards(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    goto :goto_3

    :cond_6
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_3
    const/16 v2, -0x49

    invoke-virtual {p0, v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_4
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch v1, :pswitch_data_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    goto :goto_5

    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->freturn()V

    goto :goto_5

    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dreturn()V

    goto :goto_5

    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lreturn()V

    goto :goto_5

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->return_()V

    goto :goto_5

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ireturn()V

    :goto_5
    return-void

    :cond_8
    aget-object v9, v1, v7

    if-eqz v3, :cond_9

    aget-object v10, v3, v7

    invoke-virtual {p0, v10, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    invoke-static {v10, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v9, v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    :cond_a
    :goto_6
    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v9, v8, :cond_b

    if-eq v9, v5, :cond_b

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v6, v6, 0x2

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public generateSyntheticBodyForSwitchTable(Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;)V
    .locals 14

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetReadField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/16 v3, -0x4e

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ifnull(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pushOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetEnumType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeJavaLangEnumValues(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->arraylength()V

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newarray(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->astore_0()V

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    const-string v6, " tab"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v0, v7, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v7, v6

    :goto_0
    if-lt v8, v7, :cond_0

    goto :goto_1

    :cond_0
    aget-object v9, v6, v8

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->getAccessFlags()I

    move-result v10

    and-int/lit16 v10, v10, 0x4000

    if-eqz v10, :cond_1

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v10, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-direct {v11, p0, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeStart()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    invoke-virtual {p0, v3, v9, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v13

    invoke-virtual {p0, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeEnumOrdinal([C)V

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    add-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateInlinedValue(I)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iastore()V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeEnd()V

    invoke-virtual {p0, v10}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {p0, v12}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pushExceptionOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->place()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v6, 0x350000

    cmp-long p1, v0, v6

    if-ltz p1, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    const/16 p1, -0x4d

    invoke-virtual {p0, p1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    return-void
.end method

.method public generateSyntheticEnclosingInstanceValues(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryEnclosingInstanceSpecification(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-void

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->syntheticEnclosingInstanceTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v10

    iget-wide v10, v10, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v12, 0x2f0000

    cmp-long v12, v10, v12

    const-wide/32 v13, 0x300000

    if-gtz v12, :cond_4

    instance-of v12, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    goto/16 :goto_4

    :cond_4
    cmp-long v12, v10, v13

    if-nez v12, :cond_6

    instance-of v12, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-nez v12, :cond_5

    instance-of v12, v3, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v12, :cond_a

    move-object v12, v3

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->isSuperAccess()Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move v12, v5

    goto :goto_4

    :cond_6
    const-wide/32 v15, 0x330000

    cmp-long v12, v10, v15

    if-gez v12, :cond_8

    instance-of v12, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-nez v12, :cond_7

    instance-of v12, v3, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v12, :cond_a

    move-object v12, v3

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->isSuperAccess()Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_2

    :cond_8
    instance-of v12, v3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;

    if-eqz v12, :cond_9

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v12

    xor-int/2addr v12, v5

    goto :goto_4

    :cond_9
    instance-of v12, v3, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    if-eqz v12, :cond_a

    move-object v12, v3

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/ast/ExplicitConstructorCall;->isSuperAccess()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v15

    if-nez v15, :cond_a

    if-eqz v12, :cond_a

    iget-boolean v12, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    if-eqz v12, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    move v12, v6

    :goto_4
    cmp-long v10, v10, v13

    if-ltz v10, :cond_b

    move v10, v5

    goto :goto_5

    :cond_b
    move v10, v6

    :goto_5
    array-length v11, v8

    move v13, v6

    :goto_6
    if-lt v13, v11, :cond_c

    if-eqz v7, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->unnecessaryEnclosingInstanceSpecification(Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    goto :goto_8

    :cond_c
    aget-object v14, v8, v13

    if-eqz v7, :cond_e

    invoke-static {v14, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual {v2, v1, v0, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->generateCode(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Z)V

    if-eqz v10, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeObjectGetClass()V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pop()V

    :cond_d
    move v7, v6

    goto :goto_7

    :cond_e
    invoke-virtual {v1, v14, v6, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v0, v15, v3, v14, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_f
    :goto_8
    return-void
.end method

.method public generateSyntheticOuterArgumentValues(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->getEmulationPath(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    move-result-object v3

    invoke-virtual {p0, v3, p3, v2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public generateUnboxingConversion(I)V
    .locals 14

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangIntegerConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->INTVALUE_INTEGER_METHOD_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->INTVALUE_INTEGER_METHOD_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangFloatConstantPoolName:[C

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->FLOATVALUE_FLOAT_METHOD_NAME:[C

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->FLOATVALUE_FLOAT_METHOD_SIGNATURE:[C

    const/16 v8, -0x4a

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_3
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangDoubleConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->DOUBLEVALUE_DOUBLE_METHOD_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->DOUBLEVALUE_DOUBLE_METHOD_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_4
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangLongConstantPoolName:[C

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->LONGVALUE_LONG_METHOD_NAME:[C

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->LONGVALUE_LONG_METHOD_SIGNATURE:[C

    const/16 v8, -0x4a

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_5
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangBooleanConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->BOOLEANVALUE_BOOLEAN_METHOD_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->BOOLEANVALUE_BOOLEAN_METHOD_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_6
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangShortConstantPoolName:[C

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SHORTVALUE_SHORT_METHOD_NAME:[C

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SHORTVALUE_SHORT_METHOD_SIGNATURE:[C

    const/16 v8, -0x4a

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_7
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangByteConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->BYTEVALUE_BYTE_METHOD_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->BYTEVALUE_BYTE_METHOD_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_8
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangCharacterConstantPoolName:[C

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->CHARVALUE_CHARACTER_METHOD_NAME:[C

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->CHARVALUE_CHARACTER_METHOD_SIGNATURE:[C

    const/16 v8, -0x4a

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte p1, v1, v2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_w(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    return-void
.end method

.method public getBaseTypeValue(I)V
    .locals 14

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangIntegerConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->INTVALUE_INTEGER_METHOD_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->INTVALUE_INTEGER_METHOD_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangFloatConstantPoolName:[C

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->FLOATVALUE_FLOAT_METHOD_NAME:[C

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->FLOATVALUE_FLOAT_METHOD_SIGNATURE:[C

    const/16 v8, -0x4a

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_3
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangDoubleConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->DOUBLEVALUE_DOUBLE_METHOD_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->DOUBLEVALUE_DOUBLE_METHOD_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_4
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangLongConstantPoolName:[C

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->LONGVALUE_LONG_METHOD_NAME:[C

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->LONGVALUE_LONG_METHOD_SIGNATURE:[C

    const/16 v8, -0x4a

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_5
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangBooleanConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->BOOLEANVALUE_BOOLEAN_METHOD_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->BOOLEANVALUE_BOOLEAN_METHOD_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_6
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangShortConstantPoolName:[C

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SHORTVALUE_SHORT_METHOD_NAME:[C

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SHORTVALUE_SHORT_METHOD_SIGNATURE:[C

    const/16 v8, -0x4a

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_7
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangByteConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->BYTEVALUE_BYTE_METHOD_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->BYTEVALUE_BYTE_METHOD_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    goto :goto_0

    :pswitch_8
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangCharacterConstantPoolName:[C

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->CHARVALUE_CHARACTER_METHOD_NAME:[C

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->CHARVALUE_CHARACTER_METHOD_SIGNATURE:[C

    const/16 v8, -0x4a

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getContents()[B
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    return v0
.end method

.method public getTYPE(I)V
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangIntegerConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->TYPE:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassSignature:[C

    const/16 v2, -0x4e

    const/4 v3, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BI[C[C[C)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v10, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangFloatConstantPoolName:[C

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->TYPE:[C

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassSignature:[C

    const/16 v8, -0x4e

    const/4 v9, 0x1

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BI[C[C[C)V

    goto :goto_0

    :pswitch_2
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangDoubleConstantPoolName:[C

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->TYPE:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassSignature:[C

    const/16 v1, -0x4e

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BI[C[C[C)V

    goto :goto_0

    :pswitch_3
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangLongConstantPoolName:[C

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->TYPE:[C

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassSignature:[C

    const/16 v7, -0x4e

    const/4 v8, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BI[C[C[C)V

    goto :goto_0

    :pswitch_4
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangVoidConstantPoolName:[C

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->TYPE:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassSignature:[C

    const/16 v1, -0x4e

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BI[C[C[C)V

    goto :goto_0

    :pswitch_5
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangBooleanConstantPoolName:[C

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->TYPE:[C

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassSignature:[C

    const/16 v7, -0x4e

    const/4 v8, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BI[C[C[C)V

    goto :goto_0

    :pswitch_6
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangShortConstantPoolName:[C

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->TYPE:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassSignature:[C

    const/16 v1, -0x4e

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BI[C[C[C)V

    goto :goto_0

    :pswitch_7
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangByteConstantPoolName:[C

    sget-object v10, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->TYPE:[C

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassSignature:[C

    const/16 v7, -0x4e

    const/4 v8, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BI[C[C[C)V

    goto :goto_0

    :pswitch_8
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangCharacterConstantPoolName:[C

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->TYPE:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassSignature:[C

    const/16 v1, -0x4e

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BI[C[C[C)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 5

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_w(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->inlineForwardReferencesFromLabelsTargeting(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-ne v0, v1, :cond_4

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    goto :goto_1

    :cond_2
    aget v4, v0, v3

    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    return-void
.end method

.method public goto_w(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branchWide()V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    return-void
.end method

.method public i2b()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    return-void
.end method

.method public i2c()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    return-void
.end method

.method public i2d()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    return-void
.end method

.method public i2f()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    return-void
.end method

.method public i2l()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    return-void
.end method

.method public i2s()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    return-void
.end method

.method public iadd()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    return-void
.end method

.method public iaload()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    return-void
.end method

.method public iand()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    return-void
.end method

.method public iastore()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    return-void
.end method

.method public iconst_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    return-void
.end method

.method public iconst_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    return-void
.end method

.method public iconst_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    return-void
.end method

.method public iconst_3()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    return-void
.end method

.method public iconst_4()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    return-void
.end method

.method public iconst_5()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    return-void
.end method

.method public iconst_m1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    return-void
.end method

.method public idiv()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    return-void
.end method

.method public if_acmpeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x5a

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public if_acmpne(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x5b

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public if_icmpeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x60

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public if_icmpge(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x5f

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public if_icmpgt(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x5c

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public if_icmple(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x5d

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public if_icmplt(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x5e

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public if_icmpne(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x61

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public ifeq(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x66

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public ifge(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x65

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public ifgt(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x62

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public ifle(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x63

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public iflt(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public ifne(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x67

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public ifnonnull(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x3a

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public ifnull(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x39

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateWideRevertedConditionalBranch(BLorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    :goto_0
    return-void
.end method

.method public final iinc(II)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    const/16 v0, 0xff

    const/16 v1, -0x7c

    if-gt p1, v0, :cond_2

    const/16 v0, -0x80

    if-lt p2, v0, :cond_2

    const/16 v0, 0x7f

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v1, v2, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedShort(I)V

    :goto_1
    return-void
.end method

.method public iload(I)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v1, p1, :cond_0

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    const/16 v0, 0xff

    const/16 v1, 0x15

    if-le p1, v0, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    return-void
.end method

.method public iload_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gtz v2, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v2, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    return-void
.end method

.method public iload_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v2, v1, :cond_0

    const/4 v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v2, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    return-void
.end method

.method public iload_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    const/4 v1, 0x3

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    return-void
.end method

.method public iload_3()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    return-void
.end method

.method public imul()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    return-void
.end method

.method public ineg()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    return-void
.end method

.method public init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->startingClassFileOffset:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastEntryPC:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocalsCount:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->allLocalsCounter:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    return-void
.end method

.method public initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getEnclosingInstancesSlotSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getOuterLocalVariablesSlotSize()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_2
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_5

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_3

    goto :goto_2

    :cond_3
    aget-object v2, p1, v0

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public inlineForwardReferencesFromLabelsTargeting(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;I)Z
    .locals 6

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v1

    :goto_0
    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->labels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    aget-object v4, v4, v0

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    if-eq v5, p2, :cond_3

    :goto_1
    and-int/lit8 p1, v3, 0x6

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    if-ne v4, p1, :cond_5

    :cond_4
    or-int/lit8 v3, v3, 0x4

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->isStandardLabel()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->delegate:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->becomeDelegateFor(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    or-int/lit8 v3, v3, 0x2

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public instance_of(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 4
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 5
    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v1, -0x3f

    aput-byte v1, p1, v0

    .line 7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    return-void
.end method

.method public instance_of(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->instance_of(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public invoke(BII[C[C[C)V
    .locals 9

    const/16 v0, -0x47

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    .line 1
    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke18(BII[CZ[C[C)V

    return-void
.end method

.method public invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-void
.end method

.method public invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 12

    move-object v8, p0

    move-object v0, p2

    if-nez p3, :cond_0

    .line 3
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_0
    move-object v1, p3

    .line 4
    :goto_0
    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v4, 0x800

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-static {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_1
    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    move v7, v4

    goto :goto_4

    .line 6
    :pswitch_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 7
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8
    move-object v6, v1

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 9
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getEnclosingInstancesSlotSize()I

    move-result v7

    add-int/2addr v7, v5

    .line 10
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 11
    array-length v9, v6

    move v10, v4

    :goto_1
    if-lt v10, v9, :cond_2

    goto :goto_3

    .line 12
    :cond_2
    aget-object v11, v6, v10

    iget v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    if-eq v11, v3, :cond_3

    if-eq v11, v2, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x2

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    move v7, v5

    .line 13
    :cond_5
    :goto_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v7, v7, 0x2

    goto :goto_4

    :cond_6
    :pswitch_2
    move v7, v5

    .line 14
    :cond_7
    :goto_4
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v6, v6

    sub-int/2addr v6, v5

    :goto_5
    if-gez v6, :cond_a

    .line 15
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v9, 0x6

    if-eq v6, v9, :cond_9

    if-eq v6, v3, :cond_8

    if-eq v6, v2, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    const/4 v2, 0x2

    move v3, v2

    goto :goto_6

    :cond_9
    move v3, v4

    .line 16
    :goto_6
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v4

    .line 17
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v5

    .line 18
    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 19
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature(Lorg/eclipse/jdt/internal/compiler/ClassFile;)[C

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move v2, v7

    move-object v7, v9

    .line 20
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke18(BII[CZ[C[C)V

    return-void

    .line 21
    :cond_a
    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v9, v9, v6

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v9, v3, :cond_b

    if-eq v9, v2, :cond_b

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v7, v7, 0x2

    :goto_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :pswitch_data_0
    .packed-switch -0x4a
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public invokeAccessibleObjectSetAccessible()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVALANGREFLECTACCESSIBLEOBJECT_CONSTANTPOOLNAME:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SETACCESSIBLE_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SETACCESSIBLE_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeArrayNewInstance()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVALANGREFLECTARRAY_CONSTANTPOOLNAME:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->NewInstance:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->NewInstanceSignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeAutoCloseableClose(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x47

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/16 v0, -0x4a

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Close:[C

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->CloseSignature:[C

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeClassForName()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ForName:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ForNameSignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeClassGetDeclaredConstructor()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GETDECLAREDCONSTRUCTOR_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GETDECLAREDCONSTRUCTOR_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeClassGetDeclaredField()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GETDECLAREDFIELD_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GETDECLAREDFIELD_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeClassGetDeclaredMethod()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GETDECLAREDMETHOD_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GETDECLAREDMETHOD_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeDynamic(III[C[C)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeDynamic(III[C[CZLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-void
.end method

.method public invokeDynamic(III[C[CZLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 0

    .line 2
    iget p6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p6, p6, 0x4

    iget-object p7, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length p7, p7

    if-lt p6, p7, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 4
    :cond_0
    iget-object p6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p6, p1, p4, p5}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForInvokeDynamic(I[C[C)I

    move-result p1

    .line 5
    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 p4, p4, 0x3

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 6
    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget p5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p6, p5, 0x1

    iput p6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 p6, -0x46

    aput-byte p6, p4, p5

    .line 7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    .line 8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p5, p4, 0x1

    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/4 p6, 0x0

    aput-byte p6, p1, p4

    add-int/lit8 p4, p4, 0x2

    .line 9
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte p6, p1, p5

    .line 10
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    sub-int/2addr p3, p2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    .line 11
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le p1, p2, :cond_1

    .line 12
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    return-void
.end method

.method public invokeEnumOrdinal([C)V
    .locals 7

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Ordinal:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->OrdinalSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeIterableIterator(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 8

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x800

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, -0x47

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_1
    const/16 v0, -0x4a

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ITERATOR_NAME:[C

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ITERATOR_SIGNATURE:[C

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeJavaLangAssertionErrorConstructor(I)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->FloatConstrSignature:[C

    :goto_0
    move-object v8, p1

    move v4, v1

    goto :goto_2

    :pswitch_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->DoubleConstrSignature:[C

    :goto_1
    move-object v8, p1

    move v4, v0

    goto :goto_2

    :pswitch_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->LongConstrSignature:[C

    goto :goto_1

    :pswitch_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->BooleanConstrSignature:[C

    goto :goto_0

    :pswitch_5
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->IntConstrSignature:[C

    goto :goto_0

    :pswitch_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->CharConstrSignature:[C

    goto :goto_0

    :pswitch_7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ObjectConstrSignature:[C

    goto :goto_0

    :goto_2
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangAssertionErrorConstantPoolName:[C

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    const/16 v3, -0x49

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public invokeJavaLangAssertionErrorDefaultConstructor()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangAssertionErrorConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->DefaultConstructorSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeJavaLangClassDesiredAssertionStatus()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->DesiredAssertionStatus:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->DesiredAssertionStatusSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeJavaLangEnumValues(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V
    .locals 8

    const-string v0, "()"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->constantPoolName()[C

    move-result-object p2

    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUES:[C

    const/16 v2, -0x48

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeJavaLangEnumvalueOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangEnumConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOf:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOfStringClassSignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeJavaLangErrorConstructor()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangErrorConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringConstructorSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeJavaLangIncompatibleClassChangeErrorDefaultConstructor()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangIncompatibleClassChangeErrorConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->DefaultConstructorSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeJavaLangReflectConstructorNewInstance()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangReflectConstructorConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->NewInstance:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangReflectConstructorNewInstanceSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeJavaLangReflectFieldGetter(I)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_OBJECT_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_OBJECT_METHOD_SIGNATURE:[C

    :goto_0
    move-object v7, p1

    move-object v8, v0

    move v5, v1

    goto :goto_2

    :pswitch_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_INT_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_INT_METHOD_SIGNATURE:[C

    goto :goto_0

    :pswitch_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_FLOAT_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_FLOAT_METHOD_SIGNATURE:[C

    goto :goto_0

    :pswitch_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_DOUBLE_METHOD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_DOUBLE_METHOD_SIGNATURE:[C

    :goto_1
    move-object v7, p1

    move v5, v0

    move-object v8, v1

    goto :goto_2

    :pswitch_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_LONG_METHOD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_LONG_METHOD_SIGNATURE:[C

    goto :goto_1

    :pswitch_5
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_BOOLEAN_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_BOOLEAN_METHOD_SIGNATURE:[C

    goto :goto_0

    :pswitch_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_SHORT_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_SHORT_METHOD_SIGNATURE:[C

    goto :goto_0

    :pswitch_7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_BYTE_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_BYTE_METHOD_SIGNATURE:[C

    goto :goto_0

    :pswitch_8
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_CHAR_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GET_CHAR_METHOD_SIGNATURE:[C

    goto :goto_0

    :goto_2
    const/4 v4, 0x2

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVALANGREFLECTFIELD_CONSTANTPOOLNAME:[C

    const/16 v3, -0x4a

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invokeJavaLangReflectFieldSetter(I)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_OBJECT_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_OBJECT_METHOD_SIGNATURE:[C

    :goto_0
    move-object v7, p1

    move-object v8, v0

    move v4, v1

    goto :goto_2

    :pswitch_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_INT_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_INT_METHOD_SIGNATURE:[C

    goto :goto_0

    :pswitch_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_FLOAT_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_FLOAT_METHOD_SIGNATURE:[C

    goto :goto_0

    :pswitch_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_DOUBLE_METHOD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_DOUBLE_METHOD_SIGNATURE:[C

    :goto_1
    move-object v7, p1

    move v4, v0

    move-object v8, v1

    goto :goto_2

    :pswitch_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_LONG_METHOD_NAME:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_LONG_METHOD_SIGNATURE:[C

    goto :goto_1

    :pswitch_5
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_BOOLEAN_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_BOOLEAN_METHOD_SIGNATURE:[C

    goto :goto_0

    :pswitch_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_SHORT_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_SHORT_METHOD_SIGNATURE:[C

    goto :goto_0

    :pswitch_7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_BYTE_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_BYTE_METHOD_SIGNATURE:[C

    goto :goto_0

    :pswitch_8
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_CHAR_METHOD_NAME:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->SET_CHAR_METHOD_SIGNATURE:[C

    goto :goto_0

    :goto_2
    const/4 v5, 0x0

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVALANGREFLECTFIELD_CONSTANTPOOLNAME:[C

    const/16 v3, -0x4a

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invokeJavaLangReflectMethodInvoke()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVALANGREFLECTMETHOD_CONSTANTPOOLNAME:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->INVOKE_METHOD_METHOD_NAME:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->INVOKE_METHOD_METHOD_SIGNATURE:[C

    const/16 v1, -0x4a

    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeJavaUtilIteratorHasNext()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaUtilIteratorConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->HasNext:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->HasNextSignature:[C

    const/16 v1, -0x47

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeJavaUtilIteratorNext()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaUtilIteratorConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Next:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->NextSignature:[C

    const/16 v1, -0x47

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeNoClassDefFoundErrorStringConstructor()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangNoClassDefFoundErrorConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringConstructorSignature:[C

    const/16 v1, -0x49

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeObjectEquals()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangObjectConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Equals:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->EqualsSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeObjectGetClass()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangObjectConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetClass:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetClassSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeStringConcatenationAppendForType(I)V
    .locals 8

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Append:[C

    const/4 v0, 0x3

    const/4 v1, 0x2

    const-wide/32 v2, 0x310000

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long p1, v6, v2

    if-ltz p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBuilderAppendObjectSignature:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBufferAppendObjectSignature:[C

    :goto_0
    move-object v4, p1

    move-object v6, v0

    move v2, v1

    goto/16 :goto_2

    :pswitch_1
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long p1, v6, v2

    if-ltz p1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBuilderAppendStringSignature:[C

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBufferAppendStringSignature:[C

    goto :goto_0

    :pswitch_2
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long p1, v6, v2

    if-ltz p1, :cond_2

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBuilderAppendFloatSignature:[C

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBufferAppendFloatSignature:[C

    goto :goto_0

    :pswitch_3
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long p1, v6, v2

    if-ltz p1, :cond_3

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBuilderAppendDoubleSignature:[C

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBufferAppendDoubleSignature:[C

    :goto_1
    move-object v4, p1

    move v2, v0

    move-object v6, v1

    goto :goto_2

    :pswitch_4
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long p1, v6, v2

    if-ltz p1, :cond_4

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBuilderAppendLongSignature:[C

    goto :goto_1

    :cond_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBufferAppendLongSignature:[C

    goto :goto_1

    :pswitch_5
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long p1, v6, v2

    if-ltz p1, :cond_5

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBuilderAppendBooleanSignature:[C

    goto :goto_0

    :cond_5
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBufferAppendBooleanSignature:[C

    goto :goto_0

    :pswitch_6
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long p1, v6, v2

    if-ltz p1, :cond_6

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBuilderAppendIntSignature:[C

    goto :goto_0

    :cond_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBufferAppendIntSignature:[C

    goto :goto_0

    :pswitch_7
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    cmp-long p1, v6, v2

    if-ltz p1, :cond_7

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBuilderAppendCharSignature:[C

    goto :goto_0

    :cond_7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringBufferAppendCharSignature:[C

    goto :goto_0

    :goto_2
    const/16 v1, -0x4a

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public invokeStringConcatenationDefaultConstructor()V
    .locals 8

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    goto :goto_0

    :goto_1
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->DefaultConstructorSignature:[C

    const/16 v2, -0x49

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeStringConcatenationStringConstructor()V
    .locals 8

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    goto :goto_0

    :goto_1
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Init:[C

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->StringConstructorSignature:[C

    const/16 v2, -0x49

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeStringConcatenationToString()V
    .locals 8

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    goto :goto_0

    :goto_1
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ToString:[C

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ToStringSignature:[C

    const/16 v2, -0x4a

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeStringEquals()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Equals:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->EqualsSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeStringHashCode()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->HashCode:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->HashCodeSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeStringIntern()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->Intern:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->InternSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeStringValueOf(I)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOfFloatSignature:[C

    :goto_0
    move-object v8, p1

    move v4, v1

    goto :goto_2

    :pswitch_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOfDoubleSignature:[C

    :goto_1
    move-object v8, p1

    move v4, v0

    goto :goto_2

    :pswitch_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOfLongSignature:[C

    goto :goto_1

    :pswitch_4
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOfBooleanSignature:[C

    goto :goto_0

    :pswitch_5
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOfIntSignature:[C

    goto :goto_0

    :pswitch_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOfCharSignature:[C

    goto :goto_0

    :pswitch_7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOfObjectSignature:[C

    goto :goto_0

    :goto_2
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringConstantPoolName:[C

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ValueOf:[C

    const/16 v3, -0x48

    const/4 v5, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public invokeSystemArraycopy()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangSystemConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ArrayCopy:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->ArrayCopySignature:[C

    const/16 v1, -0x48

    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeThrowableAddSuppressed()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangThrowableConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->AddSuppressed:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->AddSuppressedSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public invokeThrowableGetMessage()V
    .locals 7

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangThrowableConstantPoolName:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetMessage:[C

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->GetMessageSignature:[C

    const/16 v1, -0x4a

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BII[C[C[C)V

    return-void
.end method

.method public ior()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    return-void
.end method

.method public irem()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    return-void
.end method

.method public ireturn()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, -0x54

    aput-byte v3, v1, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    return-void
.end method

.method public isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
    .locals 9

    iget-wide v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    const/4 v4, 0x0

    if-ne p2, v0, :cond_1

    return v4

    :cond_1
    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxFieldCount:I

    add-int/2addr p3, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    const-wide/16 v5, 0x1

    const/16 v0, 0x40

    if-ge p3, v0, :cond_3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->definiteInits:[J

    aget-wide v7, p1, p2

    shl-long p1, v5, p3

    and-long/2addr p1, v7

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v4

    :cond_3
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->extraDefiniteInits:[[J

    aget-object p1, p1, p2

    if-nez p1, :cond_4

    return v4

    :cond_4
    div-int/lit8 p2, p3, 0x40

    sub-int/2addr p2, v1

    array-length v7, p1

    if-lt p2, v7, :cond_5

    return v4

    :cond_5
    aget-wide v7, p1, p2

    rem-int/2addr p3, v0

    shl-long p1, v5, p3

    and-long/2addr p1, v7

    cmp-long p1, p1, v2

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v4
.end method

.method public ishl()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    return-void
.end method

.method public ishr()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    return-void
.end method

.method public istore(I)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v0, p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    const/16 v0, 0xff

    const/16 v1, 0x36

    if-le p1, v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    return-void
.end method

.method public istore_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-nez v0, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    return-void
.end method

.method public istore_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    return-void
.end method

.method public istore_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    return-void
.end method

.method public istore_3()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    return-void
.end method

.method public isub()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    return-void
.end method

.method public iushr()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    return-void
.end method

.method public ixor()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    return-void
.end method

.method public final jsr(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->jsr_w(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branch()V

    return-void
.end method

.method public final jsr_w(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->branchWide()V

    return-void
.end method

.method public l2d()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    return-void
.end method

.method public l2f()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    return-void
.end method

.method public l2i()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    return-void
.end method

.method public ladd()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    return-void
.end method

.method public laload()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    return-void
.end method

.method public land()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    return-void
.end method

.method public lastore()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    return-void
.end method

.method public lcmp()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    return-void
.end method

.method public lconst_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    return-void
.end method

.method public lconst_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    return-void
.end method

.method public ldc(F)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(F)I

    move-result p1

    .line 3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    .line 4
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    .line 5
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    .line 6
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 8
    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    .line 10
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 12
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 13
    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 14
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, 0x12

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 15
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    :goto_0
    return-void
.end method

.method public ldc(I)V
    .locals 4

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 17
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(I)I

    move-result p1

    .line 18
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    .line 19
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    .line 20
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    .line 21
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 22
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 23
    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 24
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    .line 25
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    .line 26
    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 27
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 28
    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 29
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, 0x12

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 30
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    :goto_0
    return-void
.end method

.method public ldc(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 31
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 32
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 33
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 34
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForLdc([C)I

    move-result v4

    if-lez v4, :cond_0

    .line 35
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldcForIndex(I)V

    goto/16 :goto_4

    .line 36
    :cond_0
    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v4, v2, 0x64

    const v5, 0xffff

    .line 38
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v4, v4, [B

    move v6, v1

    move v7, v6

    :goto_0
    const/16 v8, 0x7ff

    const/16 v9, 0x7f

    const v10, 0xfffc

    const/4 v11, 0x1

    if-ge v6, v10, :cond_5

    if-lt v7, v2, :cond_1

    goto :goto_2

    .line 39
    :cond_1
    aget-char v10, v3, v7

    add-int/lit8 v12, v6, 0x3

    .line 40
    array-length v13, v4

    if-le v12, v13, :cond_2

    add-int/lit8 v13, v13, 0x64

    .line 41
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    new-array v12, v12, [B

    invoke-static {v4, v1, v12, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v12

    :cond_2
    if-lt v10, v11, :cond_3

    if-gt v10, v9, :cond_3

    add-int/lit8 v8, v6, 0x1

    int-to-byte v9, v10

    .line 42
    aput-byte v9, v4, v6

    move v6, v8

    goto :goto_1

    :cond_3
    if-le v10, v8, :cond_4

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v10, 0xc

    and-int/lit8 v9, v9, 0xf

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    .line 43
    aput-byte v9, v4, v6

    add-int/lit8 v9, v6, 0x2

    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    .line 44
    aput-byte v11, v4, v8

    add-int/lit8 v6, v6, 0x3

    and-int/lit8 v8, v10, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 45
    aput-byte v8, v4, v9

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v10, 0x6

    and-int/lit8 v9, v9, 0x1f

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 46
    aput-byte v9, v4, v6

    add-int/lit8 v6, v6, 0x2

    and-int/lit8 v9, v10, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 47
    aput-byte v9, v4, v8

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 48
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newStringContatenation()V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    .line 50
    new-array v12, v7, [C

    .line 51
    invoke-static {v3, v1, v12, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    new-array v13, v6, [B

    invoke-static {v4, v1, v13, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v4, v12, v13}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C[B)I

    move-result v4

    .line 54
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldcForIndex(I)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationStringConstructor()V

    :goto_3
    if-lt v7, v2, :cond_6

    .line 56
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationToString()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringIntern()V

    :goto_4
    return-void

    :cond_6
    sub-int v4, v2, v7

    add-int/lit8 v4, v4, 0x64

    .line 58
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v4, v4, [B

    move v12, v1

    move v6, v7

    :goto_5
    if-ge v12, v10, :cond_b

    if-lt v6, v2, :cond_7

    goto :goto_7

    .line 59
    :cond_7
    aget-char v13, v3, v6

    add-int/lit8 v14, v12, 0x3

    .line 60
    array-length v15, v4

    if-le v14, v15, :cond_8

    add-int/lit8 v15, v15, 0x64

    .line 61
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    new-array v14, v14, [B

    invoke-static {v4, v1, v14, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v14

    :cond_8
    if-lt v13, v11, :cond_9

    if-gt v13, v9, :cond_9

    add-int/lit8 v14, v12, 0x1

    int-to-byte v13, v13

    .line 62
    aput-byte v13, v4, v12

    move v12, v14

    goto :goto_6

    :cond_9
    if-le v13, v8, :cond_a

    add-int/lit8 v14, v12, 0x1

    shr-int/lit8 v15, v13, 0xc

    and-int/lit8 v15, v15, 0xf

    or-int/lit16 v15, v15, 0xe0

    int-to-byte v15, v15

    .line 63
    aput-byte v15, v4, v12

    add-int/lit8 v15, v12, 0x2

    shr-int/lit8 v16, v13, 0x6

    and-int/lit8 v5, v16, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 64
    aput-byte v5, v4, v14

    add-int/lit8 v12, v12, 0x3

    and-int/lit8 v5, v13, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 65
    aput-byte v5, v4, v15

    goto :goto_6

    :cond_a
    add-int/lit8 v5, v12, 0x1

    shr-int/lit8 v14, v13, 0x6

    and-int/lit8 v14, v14, 0x1f

    or-int/lit16 v14, v14, 0xc0

    int-to-byte v14, v14

    .line 66
    aput-byte v14, v4, v12

    add-int/lit8 v12, v12, 0x2

    and-int/lit8 v13, v13, 0x3f

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    .line 67
    aput-byte v13, v4, v5

    :goto_6
    add-int/lit8 v6, v6, 0x1

    const v5, 0xffff

    goto :goto_5

    :cond_b
    :goto_7
    sub-int v5, v6, v7

    .line 68
    new-array v13, v5, [C

    .line 69
    invoke-static {v3, v7, v13, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    new-array v5, v12, [B

    invoke-static {v4, v1, v5, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v4, v13, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex([C[B)I

    move-result v4

    .line 72
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldcForIndex(I)V

    const/16 v4, 0xb

    .line 73
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeStringConcatenationAppendForType(I)V

    move v7, v6

    const v5, 0xffff

    goto/16 :goto_3
.end method

.method public ldc(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 4

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 75
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    .line 76
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    .line 77
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    .line 78
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    .line 79
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 80
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 81
    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 82
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    .line 83
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    .line 84
    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 85
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 86
    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 87
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, 0x12

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 88
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    :goto_0
    return-void
.end method

.method public ldc2_w(D)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(D)I

    move-result p1

    .line 3
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    .line 4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le p2, v0, :cond_0

    .line 5
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    .line 6
    :cond_0
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v0, v0

    if-lt p2, v0, :cond_1

    .line 7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 8
    :cond_1
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v1, 0x14

    aput-byte v1, p2, v0

    .line 10
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    return-void
.end method

.method public ldc2_w(J)V
    .locals 2

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 12
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndex(J)I

    move-result p1

    .line 13
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    .line 14
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le p2, v0, :cond_0

    .line 15
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    .line 16
    :cond_0
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v0, v0

    if-lt p2, v0, :cond_1

    .line 17
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 18
    :cond_1
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 19
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v1, 0x14

    aput-byte v1, p2, v0

    .line 20
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    return-void
.end method

.method public ldcForIndex(I)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, 0x12

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    :goto_0
    return-void
.end method

.method public ldiv()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    return-void
.end method

.method public lload(I)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v2, p1, 0x1

    if-gt v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    const/16 v0, 0xff

    const/16 v1, 0x16

    if-le p1, v0, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    return-void
.end method

.method public lload_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-ge v2, v1, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    return-void
.end method

.method public lload_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    return-void
.end method

.method public lload_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    return-void
.end method

.method public lload_3()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    return-void
.end method

.method public lmul()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    return-void
.end method

.method public lneg()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    return-void
.end method

.method public final load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-void
.end method

.method public final load(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 3
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload(I)V

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_3()V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_2()V

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_1()V

    goto/16 :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->aload_0()V

    goto/16 :goto_0

    :pswitch_1
    if-eqz p2, :cond_7

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_5

    if-eq p2, v0, :cond_4

    .line 9
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fload(I)V

    goto/16 :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fload_3()V

    goto/16 :goto_0

    .line 11
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fload_2()V

    goto/16 :goto_0

    .line 12
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fload_1()V

    goto/16 :goto_0

    .line 13
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fload_0()V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_b

    if-eq p2, v2, :cond_a

    if-eq p2, v1, :cond_9

    if-eq p2, v0, :cond_8

    .line 14
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dload(I)V

    goto :goto_0

    .line 15
    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dload_3()V

    goto :goto_0

    .line 16
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dload_2()V

    goto :goto_0

    .line 17
    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dload_1()V

    goto :goto_0

    .line 18
    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dload_0()V

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_f

    if-eq p2, v2, :cond_e

    if-eq p2, v1, :cond_d

    if-eq p2, v0, :cond_c

    .line 19
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lload(I)V

    goto :goto_0

    .line 20
    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lload_3()V

    goto :goto_0

    .line 21
    :cond_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lload_2()V

    goto :goto_0

    .line 22
    :cond_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lload_1()V

    goto :goto_0

    .line 23
    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lload_0()V

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_13

    if-eq p2, v2, :cond_12

    if-eq p2, v1, :cond_11

    if-eq p2, v0, :cond_10

    .line 24
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iload(I)V

    goto :goto_0

    .line 25
    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iload_3()V

    goto :goto_0

    .line 26
    :cond_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iload_2()V

    goto :goto_0

    .line 27
    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iload_1()V

    goto :goto_0

    .line 28
    :cond_13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iload_0()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public loadInt(I)V
    .locals 1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_1()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_2()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_3()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_4()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iconst_5()V

    goto :goto_0

    :cond_5
    const/16 v0, 0x80

    if-ge p1, v0, :cond_6

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bipush(B)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldc(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public lookupswitch(Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;[I[I[Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    array-length v1, p2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->placeInstruction()V

    move v3, v0

    :goto_0
    if-lt v3, v1, :cond_4

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v4, v4

    if-lt v3, v4, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v5, -0x55

    aput-byte v5, v3, v4

    and-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v2, v2, 0x3

    :goto_1
    if-gtz v2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->branch()V

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedWord(I)V

    :goto_2
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget p1, p3, v0

    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedWord(I)V

    aget p1, p3, v0

    aget-object p1, p4, p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->branch()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v4, v4

    if-lt v3, v4, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_3
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v0, v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    aget-object v4, p4, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->placeInstruction()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public lor()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    return-void
.end method

.method public lrem()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    return-void
.end method

.method public lreturn()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, -0x53

    aput-byte v3, v1, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    return-void
.end method

.method public lshl()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    return-void
.end method

.method public lshr()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    return-void
.end method

.method public lstore(I)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    const/16 v0, 0xff

    const/16 v1, 0x37

    if-le p1, v0, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    return-void
.end method

.method public lstore_0()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    return-void
.end method

.method public lstore_1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    return-void
.end method

.method public lstore_2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    return-void
.end method

.method public lstore_3()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    return-void
.end method

.method public lsub()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    return-void
.end method

.method public lushr()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    return-void
.end method

.method public lxor()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    return-void
.end method

.method public monitorenter()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    return-void
.end method

.method public monitorexit()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    return-void
.end method

.method public multianewarray(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;)V
    .locals 1

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    rsub-int/lit8 p4, p3, 0x1

    add-int/2addr p1, p4

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p1, p1, 0x3

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length p4, p4

    if-lt p1, p4, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v0, -0x3b

    aput-byte v0, p1, p4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method

.method public newArray(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V
    .locals 0

    .line 2
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 3
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch p2, :pswitch_data_0

    .line 4
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->anewarray(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xa

    .line 5
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newarray(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x6

    .line 6
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newarray(I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x7

    .line 7
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newarray(I)V

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xb

    .line 8
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newarray(I)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x4

    .line 9
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newarray(I)V

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x9

    .line 10
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newarray(I)V

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x8

    .line 11
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newarray(I)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x5

    .line 12
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newarray(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public newArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    return-void
.end method

.method public newJavaLangAssertionError()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangAssertionErrorConstantPoolName:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    return-void
.end method

.method public newJavaLangError()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangErrorConstantPoolName:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    return-void
.end method

.method public newJavaLangIncompatibleClassChangeError()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangIncompatibleClassChangeErrorConstantPoolName:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    return-void
.end method

.method public newNoClassDefFoundError()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangNoClassDefFoundErrorConstantPoolName:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    return-void
.end method

.method public newStringContatenation()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBuilderConstantPoolName:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangStringBufferConstantPoolName:[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    :goto_0
    return-void
.end method

.method public newWrapperFor(I)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangIntegerConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangFloatConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangDoubleConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangLongConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangVoidConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangBooleanConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangShortConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangByteConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangCharacterConstantPoolName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public new_(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    .line 4
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le p1, v0, :cond_0

    .line 5
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    .line 6
    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 7
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 8
    :cond_1
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v1, -0x45

    aput-byte v1, p1, v0

    .line 10
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    return-void
.end method

.method public new_(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->new_(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public newarray(I)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, -0x44

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public nop()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v0, v1, v2

    return-void
.end method

.method public optimizeBranch(ILorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->labels:[Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    aget-object v2, v2, v1

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    if-ne p1, v3, :cond_4

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    instance-of v4, v2, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->instructionPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences()[I

    move-result-object v4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount()I

    move-result v5

    move v2, v0

    :goto_1
    if-lt v2, v5, :cond_1

    goto :goto_3

    :cond_1
    aget v6, v4, v2

    invoke-virtual {p0, v6, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedWord(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences()[I

    move-result-object v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount()I

    move-result v2

    move v4, v0

    :goto_2
    if-lt v4, v2, :cond_3

    goto :goto_3

    :cond_3
    aget v5, v3, v4

    invoke-virtual {p0, p2, v5}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public pop()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    return-void
.end method

.method public pop2()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    return-void
.end method

.method public pushExceptionOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    const/4 p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    return-void
.end method

.method public pushOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    return-void
.end method

.method public record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    and-int/lit8 v0, v0, 0x1c

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->allLocalsCounter:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    add-int/lit8 v2, v0, 0xa

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->allLocalsCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->allLocalsCounter:I

    aput-object p1, v0, v1

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    iput v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    return-void
.end method

.method public recordExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    .line 1
    return-void
.end method

.method public recordExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V
    .locals 0

    .line 2
    return-void
.end method

.method public recordPositionsFrom(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->recordPositionsFrom(IIZ)V

    return-void
.end method

.method public recordPositionsFrom(IIZ)V
    .locals 9

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    if-eqz p2, :cond_18

    .line 3
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_18

    :cond_0
    if-le p1, v0, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    add-int/lit8 v2, v0, 0x4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    array-length v4, v3

    const/4 v5, 0x0

    if-le v2, v4, :cond_2

    shl-int/lit8 v2, v0, 0x1

    .line 5
    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    invoke-static {v3, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    const/4 v2, 0x1

    if-lez v0, :cond_16

    .line 7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    sub-int/2addr v0, v2

    aget v0, v3, v0

    .line 8
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberStart:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberEnd:I

    const/4 v6, -0x1

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineSeparatorPositions:[I

    .line 10
    array-length v8, v7

    if-ne v0, v2, :cond_6

    .line 11
    aget v5, v7, v5

    if-ge p2, v5, :cond_4

    move v5, v2

    goto :goto_0

    :cond_4
    if-eq v8, v2, :cond_5

    .line 12
    aget v5, v7, v2

    if-ge p2, v5, :cond_9

    :cond_5
    move v5, v1

    goto :goto_0

    :cond_6
    if-ge v0, v8, :cond_8

    add-int/lit8 v5, v0, -0x2

    .line 13
    aget v5, v7, v5

    if-ge v5, p2, :cond_9

    add-int/lit8 v5, v0, -0x1

    .line 14
    aget v5, v7, v5

    if-ge p2, v5, :cond_7

    move v5, v0

    goto :goto_0

    .line 15
    :cond_7
    aget v5, v7, v0

    if-ge p2, v5, :cond_9

    add-int/lit8 v5, v0, 0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v5, v8, -0x1

    .line 16
    aget v5, v7, v5

    if-ge v5, p2, :cond_9

    add-int/lit8 v5, v8, 0x1

    goto :goto_0

    :cond_9
    move v5, v6

    :goto_0
    if-ne v5, v6, :cond_a

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v4, v2

    .line 17
    invoke-static {p2, v7, v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v3

    goto :goto_1

    :cond_a
    move v3, v5

    :goto_1
    if-eq v0, v3, :cond_12

    .line 18
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastEntryPC:I

    if-gt p1, p2, :cond_11

    .line 19
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    invoke-static {p2, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->insertionIndex([III)I

    move-result p2

    if-eq p2, v6, :cond_d

    if-le p2, v2, :cond_b

    .line 20
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    add-int/lit8 v0, p2, -0x1

    aget p3, p3, v0

    if-eq p3, v3, :cond_15

    .line 21
    :cond_b
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    if-ge p2, p3, :cond_c

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    add-int/lit8 v2, p2, 0x1

    aget v2, v0, v2

    if-ne v2, v3, :cond_c

    .line 22
    aput p1, v0, p2

    goto/16 :goto_3

    .line 23
    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    add-int/lit8 v2, p2, 0x2

    sub-int/2addr p3, p2

    invoke-static {v0, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    add-int/lit8 v0, p2, 0x1

    aput p1, p3, p2

    .line 25
    aput v3, p3, v0

    .line 26
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    goto/16 :goto_3

    .line 27
    :cond_d
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastEntryPC:I

    if-eq p2, v0, :cond_10

    if-eq v0, p1, :cond_f

    .line 28
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    add-int/lit8 p3, p2, -0x2

    aget p3, p1, p3

    if-ne v0, p3, :cond_e

    goto :goto_2

    :cond_e
    add-int/lit8 p3, p2, 0x1

    .line 29
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    aput v0, p1, p2

    add-int/2addr p2, v1

    .line 30
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    aput v3, p1, p3

    goto :goto_3

    .line 31
    :cond_f
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    sub-int/2addr p2, v2

    aput v3, p1, p2

    goto :goto_3

    .line 32
    :cond_10
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    if-ge v0, v3, :cond_15

    if-eqz p3, :cond_15

    sub-int/2addr p2, v2

    .line 33
    aput v3, p1, p2

    goto :goto_3

    .line 34
    :cond_11
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    aput p1, p2, p3

    add-int/2addr p3, v1

    .line 35
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    aput v3, p2, v0

    goto :goto_3

    .line 36
    :cond_12
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    add-int/lit8 v0, p3, -0x2

    aget v0, p2, v0

    if-ge p1, v0, :cond_15

    .line 37
    invoke-static {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->insertionIndex([III)I

    move-result p2

    if-eq p2, v6, :cond_15

    if-le p2, v2, :cond_13

    .line 38
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    add-int/lit8 v0, p2, -0x1

    aget p3, p3, v0

    if-eq p3, v3, :cond_15

    .line 39
    :cond_13
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    add-int/lit8 v0, p2, 0x1

    aget v2, p3, v0

    if-eq v2, v3, :cond_14

    add-int/lit8 v2, p2, 0x2

    .line 40
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    sub-int/2addr v4, p2

    invoke-static {p3, p2, p3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    aput p1, p3, p2

    .line 42
    aput v3, p3, v0

    .line 43
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    goto :goto_3

    .line 44
    :cond_14
    aput p1, p3, p2

    .line 45
    :cond_15
    :goto_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastEntryPC:I

    goto :goto_5

    .line 46
    :cond_16
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberStart:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberEnd:I

    if-ne p3, v0, :cond_17

    goto :goto_4

    .line 47
    :cond_17
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineSeparatorPositions:[I

    add-int/lit8 p3, p3, -0x1

    sub-int/2addr v0, v2

    invoke-static {p2, v3, p3, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result p3

    .line 48
    :goto_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    aput p1, p2, v0

    add-int/2addr v0, v1

    .line 49
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    aput p3, p2, v2

    .line 50
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastEntryPC:I

    :cond_18
    :goto_5
    return-void
.end method

.method public registerExceptionHandler(Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v2, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabels:[Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->exceptionLabelsCounter:I

    aput-object p1, v0, v1

    return-void
.end method

.method public removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    and-int/lit8 v0, v0, 0x1c

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocalsCount:I

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-lez v2, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationEndPC(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeUnusedPcToSourceMapEntries()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    if-eqz v0, :cond_1

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMap:[I

    add-int/lit8 v2, v0, -0x2

    aget v1, v1, v2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-gt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pcToSourceMapSize:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public removeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationEndPC(I)V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocalsCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_3

    const/4 p1, 0x0

    aput-object p1, v1, v0

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public reset(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 2

    .line 29
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->targetLevel:J

    .line 30
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    .line 31
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 32
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineSeparatorPositions:[I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineSeparatorPositions:[I

    :goto_0
    return-void
.end method

.method public reset(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineSeparatorPositions:[I

    if-eqz p2, :cond_6

    .line 5
    array-length v0, p2

    add-int/lit8 v1, v0, -0x1

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isClinit()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyStart:I

    const/4 v4, 0x0

    invoke-static {v2, p2, v4, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v2

    .line 9
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberStart:I

    if-le v2, v1, :cond_1

    .line 10
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberEnd:I

    goto :goto_3

    .line 11
    :cond_1
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->bodyEnd:I

    sub-int/2addr v2, v3

    invoke-static {v4, p2, v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result p2

    if-lt p2, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    .line 12
    :goto_1
    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberEnd:I

    goto :goto_3

    .line 13
    :cond_4
    :goto_2
    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberStart:I

    if-nez v0, :cond_5

    move v0, v3

    .line 14
    :cond_5
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberEnd:I

    .line 15
    :cond_6
    :goto_3
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p2

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->preserveAllLocalVariables:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->preserveUnusedLocals:Z

    .line 16
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    return-void
.end method

.method public reset(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 5

    .line 17
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    .line 18
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lambdaExpression:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->methodDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    .line 20
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineSeparatorPositions:[I

    if-eqz p2, :cond_3

    .line 21
    array-length v0, p2

    add-int/lit8 v1, v0, -0x1

    .line 22
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body()Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v2

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/4 v3, 0x0

    invoke-static {v2, p2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v2

    .line 23
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberStart:I

    if-le v2, v1, :cond_0

    .line 24
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberEnd:I

    goto :goto_2

    .line 25
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->body()Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    move-result-object v3

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-static {v3, p2, v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result p2

    if-lt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v0

    .line 26
    :goto_1
    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lineNumberEnd:I

    .line 27
    :cond_3
    :goto_2
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p2

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->preserveAllLocalVariables:Z

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->preserveUnusedLocals:Z

    .line 28
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    return-void
.end method

.method public resetForCodeGenUnusedLocals()V
    .locals 0

    return-void
.end method

.method public resetForProblemClinit(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    return-void
.end method

.method public resetInWideMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    return-void
.end method

.method public final ret(I)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    const/16 v0, 0xff

    const/16 v1, -0x57

    if-le p1, v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x3c

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeUnsignedShort(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v2, v2

    if-lt v0, v2, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    :goto_0
    return-void
.end method

.method public return_()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v3, -0x4f

    aput-byte v3, v1, v2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lastAbruptCompletion:I

    return-void
.end method

.method public saload()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    return-void
.end method

.method public sastore()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    return-void
.end method

.method public sendOperator(II)V
    .locals 4

    const/16 v0, 0x13

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0x9

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    if-eq p1, v3, :cond_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->frem()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fmul()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fadd()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fsub()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fdiv()V

    goto/16 :goto_0

    :pswitch_6
    if-eq p1, v3, :cond_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->drem()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dmul()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dadd()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dsub()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ddiv()V

    goto/16 :goto_0

    :pswitch_b
    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lshr()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lrem()V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lmul()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ladd()V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lsub()V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lshl()V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ldiv()V

    goto :goto_0

    :pswitch_13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lxor()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lushr()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lor()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->land()V

    goto :goto_0

    :pswitch_14
    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    goto :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ishr()V

    goto :goto_0

    :pswitch_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->irem()V

    goto :goto_0

    :pswitch_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->imul()V

    goto :goto_0

    :pswitch_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iadd()V

    goto :goto_0

    :pswitch_19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->isub()V

    goto :goto_0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ishl()V

    goto :goto_0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->idiv()V

    goto :goto_0

    :pswitch_1c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ixor()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iushr()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ior()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->iand()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_0
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xd
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xd
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method public sipush(I)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedShort(I)V

    return-void
.end method

.method public store(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;Z)V
    .locals 4

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resolvedPosition:I

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    :cond_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->astore(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->astore_3()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->astore_2()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->astore_1()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->astore_0()V

    goto/16 :goto_0

    :pswitch_1
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    :cond_5
    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fstore(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fstore_3()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fstore_2()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fstore_1()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fstore_0()V

    goto/16 :goto_0

    :pswitch_2
    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2()V

    :cond_a
    if-eqz v0, :cond_e

    if-eq v0, v3, :cond_d

    if-eq v0, v2, :cond_c

    if-eq v0, v1, :cond_b

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dstore(I)V

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dstore_3()V

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dstore_2()V

    goto :goto_0

    :cond_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dstore_1()V

    goto :goto_0

    :cond_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dstore_0()V

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_f

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup2()V

    :cond_f
    if-eqz v0, :cond_13

    if-eq v0, v3, :cond_12

    if-eq v0, v2, :cond_11

    if-eq v0, v1, :cond_10

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lstore(I)V

    goto :goto_0

    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lstore_3()V

    goto :goto_0

    :cond_11
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lstore_2()V

    goto :goto_0

    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lstore_1()V

    goto :goto_0

    :cond_13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lstore_0()V

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_14

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup()V

    :cond_14
    if-eqz v0, :cond_18

    if-eq v0, v3, :cond_17

    if-eq v0, v2, :cond_16

    if-eq v0, v1, :cond_15

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->istore(I)V

    goto :goto_0

    :cond_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->istore_3()V

    goto :goto_0

    :cond_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->istore_2()V

    goto :goto_0

    :cond_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->istore_1()V

    goto :goto_0

    :cond_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->istore_0()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public swap()V
    .locals 3

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    .line 8
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 9
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 10
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 11
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    return-void
.end method

.method public tableswitch(Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;II[I[I[I[Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->countLabels:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    array-length v1, p7

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->placeInstruction()V

    move v3, v0

    :goto_0
    if-lt v3, v1, :cond_5

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v3, v3

    if-lt v1, v3, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/16 v4, -0x56

    aput-byte v4, v1, v3

    and-int/lit8 v1, v2, 0x3

    rsub-int/lit8 v1, v1, 0x3

    :goto_1
    if-gtz v1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->branch()V

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedWord(I)V

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedWord(I)V

    move v0, p2

    move v1, v0

    :goto_2
    sub-int v2, v0, p2

    aget v2, p5, v2

    aget v3, p4, v2

    if-ne v3, v1, :cond_1

    aget v2, p6, v2

    aget-object v2, p7, v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->branch()V

    add-int/lit8 v0, v0, 0x1

    if-ne v1, p3, :cond_2

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->branch()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v3, v3

    if-lt v2, v3, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    :cond_4
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    aput-byte v0, v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    aget-object v4, p7, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CaseLabel;->placeInstruction()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public throwAnyException(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->load(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->athrow()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "( position:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",\nstackDepth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",\nmaxStack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",\nmaxLocals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxLocals:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 4

    .line 1
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x7fff

    if-le v1, v2, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_IN_WIDE_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedShort(I)V

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences()[I

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_2

    return-void

    .line 7
    :cond_2
    aget v3, v0, v2

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public writePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;I)V
    .locals 3

    .line 8
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x7fff

    if-le v1, v2, :cond_1

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->RESTART_IN_WIDE_MODE:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->wideMode:Z

    if-eqz v1, :cond_3

    .line 12
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->tagBits:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedWord(II)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedShort(II)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedShort(II)V

    :goto_1
    return-void
.end method

.method public final writeSignedWord(I)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 3
    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/high16 v3, -0x1000000

    and-int/2addr v3, p1

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    .line 5
    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const/high16 v4, 0xff0000

    and-int/2addr v4, p1

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    .line 6
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    const v4, 0xff00

    and-int/2addr v4, p1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    .line 7
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->classFileOffset:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public writeSignedWord(II)V
    .locals 4

    .line 8
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->startingClassFileOffset:I

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x3

    .line 9
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 10
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resizeByteArray()V

    .line 11
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->bCodeStream:[B

    add-int/lit8 v1, v0, 0x1

    const/high16 v2, -0x1000000

    and-int/2addr v2, p2

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v2, v0, 0x2

    const/high16 v3, 0xff0000

    and-int/2addr v3, p2

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    .line 12
    aput-byte v3, p1, v1

    add-int/lit8 v0, v0, 0x3

    const v1, 0xff00

    and-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 13
    aput-byte v1, p1, v2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 14
    aput-byte p2, p1, v0

    return-void
.end method

.method public writeWidePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 5

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedWord(I)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferences()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->forwardReferenceCount()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p1, :cond_0

    return-void

    :cond_0
    aget v3, v1, v2

    sub-int v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedWord(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
