.class public Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;
.super Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;,
        Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$FramePosition;,
        Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;,
        Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;
    }
.end annotation


# instance fields
.field public exceptionMarkers:Ljava/util/Set;

.field private framePositions:Ljava/util/HashMap;

.field public stackDepthMarkers:Ljava/util/ArrayList;

.field public stackMarkers:Ljava/util/ArrayList;

.field public stateIndexes:[I

.field public stateIndexesCounter:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    return-void
.end method

.method private addStackDepthMarker(IILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;

    invoke-direct {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;-><init>(IILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;

    invoke-direct {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;-><init>(IILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;->pc:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eq v1, v2, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;

    invoke-direct {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;-><init>(IILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;

    invoke-direct {v2, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;-><init>(IILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private addStackMarker(II)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackMarkers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackMarkers:Ljava/util/ArrayList;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackMarkers:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->pc:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackMarkers:Ljava/util/ArrayList;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocalsCount:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
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
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addExceptionMarker(ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->exceptionMarkers:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->exceptionMarkers:Ljava/util/Set;

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->exceptionMarkers:Ljava/util/Set;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangThrowableConstantPoolName:[C

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;-><init>(I[C)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->exceptionMarkers:Ljava/util/Set;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;-><init>(I[C)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->exceptionMarkers:Ljava/util/Set;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangClassNotFoundExceptionConstantPoolName:[C

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;-><init>(I[C)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->exceptionMarkers:Ljava/util/Set;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangNoSuchFieldErrorConstantPoolName:[C

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;-><init>(I[C)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addFramePosition(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->framePositions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$FramePosition;

    if-eqz v0, :cond_0

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$FramePosition;->counter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$FramePosition;->counter:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->framePositions:Ljava/util/HashMap;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$FramePosition;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$FramePosition;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public addVariable(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V
    .locals 1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationPCs:[I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->record(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationStartPC(I)V

    return-void
.end method

.method public areturn()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->areturn()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method

.method public athrow()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->athrow()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method

.method public decrStackSize(I)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->decrStackSize(I)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addStackDepthMarker(IILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public dreturn()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dreturn()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method

.method public freturn()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->freturn()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
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
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->pushExceptionOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->place()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newNoClassDefFoundError()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->dup_x1()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->swap()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeThrowableGetMessage()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeNoClassDefFoundErrorStringConstructor()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->athrow()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;->place()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addStackMarker(II)V

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    :goto_1
    return-void
.end method

.method public generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateOuterAccess([Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/problem/AbortMethod;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    throw p1
.end method

.method public getExceptionMarkers()[Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->exceptionMarkers:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$ExceptionMarker;

    aput-object v4, v1, v2

    move v2, v3

    goto :goto_0
.end method

.method public getFramePositions()[I
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->framePositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [I

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    return-object v1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    goto :goto_0
.end method

.method public getStackDepthMarkers()[Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getStackMarkers()[Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackMarkers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method

.method public goto_w(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->goto_w(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method

.method public hasFramePositions()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->framePositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexesCounter:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->framePositions:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->exceptionMarkers:Ljava/util/Set;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackMarkers:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method public initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->initializeMaxLocals(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->framePositions:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->framePositions:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :goto_0
    return-void
.end method

.method public ireturn()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->ireturn()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method

.method public lreturn()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->lreturn()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method

.method public optimizeBranch(ILorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->optimizeBranch(ILorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->removeFramePosition(I)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->removeStackMapMarkers(I)V

    return-void
.end method

.method public popStateIndex()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexesCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexesCounter:I

    return-void
.end method

.method public pushExceptionOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pushExceptionOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addExceptionMarker(ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public pushOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->pushOnStack(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addStackDepthMarker(IILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public pushStateIndex(I)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexes:[I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexes:[I

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexes:[I

    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexesCounter:I

    if-ne v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexes:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexes:[I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexesCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexesCounter:I

    aput p1, v0, v1

    return-void
.end method

.method public recordExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addStackDepthMarker(IILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public recordExpressionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)V
    .locals 1

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-direct {p0, v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addStackDepthMarker(IILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-eqz p3, :cond_1

    .line 3
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    .line 4
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->stackDepth:I

    :cond_1
    :goto_0
    return-void
.end method

.method public removeFramePosition(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->framePositions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$FramePosition;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$FramePosition;->counter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$FramePosition;->counter:I

    if-gtz v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->framePositions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeNotDefinitelyAssignedVariables(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;I)V
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocalsCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->visibleLocals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v3, v3, v2

    if-eqz v3, :cond_4

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->initializationCount:I

    if-lez v4, :cond_4

    invoke-virtual {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexes:[I

    if-eqz v4, :cond_3

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexesCounter:I

    move v5, v1

    :goto_1
    if-lt v5, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexes:[I

    aget v6, v6, v5

    invoke-virtual {p0, p1, v6, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->isDefinitelyAssigned(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->recordInitializationEndPC(I)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeStackMapMarkers(I)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackDepthMarker;->pc:I

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public reset(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->reset(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stateIndexesCounter:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->framePositions:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->exceptionMarkers:Ljava/util/Set;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackDepthMarkers:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->stackMarkers:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method public resetForCodeGenUnusedLocals()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->resetSecretLocals()V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resetForCodeGenUnusedLocals()V

    return-void
.end method

.method public resetInWideMode()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->resetSecretLocals()V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->resetInWideMode()V

    return-void
.end method

.method public resetSecretLocals()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->locals:[Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->isSecret()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;->resetInitializations()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public return_()V
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->return_()V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method

.method public writePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    .line 2
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method

.method public writePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;I)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;I)V

    .line 4
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method

.method public writeSignedWord(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeSignedWord(II)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method

.method public writeWidePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->writeWidePosition(Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/codegen/Label;->position:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->addFramePosition(I)V

    return-void
.end method
