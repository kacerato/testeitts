.class public Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;
.super Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;
.source "SourceFile"


# instance fields
.field public allTypeAnnotationContexts:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->generateAttributes:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->allTypeAnnotationContexts:Ljava/util/List;

    return-void
.end method

.method private addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->allTypeAnnotationContexts:Ljava/util/List;

    invoke-virtual {p1, p3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAllAnnotationContexts(IILjava/util/List;)V

    return-void
.end method

.method private addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;III)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->allTypeAnnotationContexts:Ljava/util/List;

    invoke-virtual {p1, p4, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getAllAnnotationContexts(IIILjava/util/List;)V

    return-void
.end method

.method private addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IILorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->allTypeAnnotationContexts:Ljava/util/List;

    invoke-virtual {p4, p3, p2, p1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;->getAllAnnotationContexts(IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public checkcast(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    .locals 3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getTypeReferences()[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-gez p2, :cond_0

    goto :goto_2

    :cond_0
    aget-object v0, p1, p2

    if-eqz v0, :cond_3

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    const/16 v2, 0x47

    if-nez v1, :cond_1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-direct {p0, v0, v1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;III)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, p3, p2, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;III)V

    :cond_2
    :goto_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-super {p0, v0, v1, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->checkcast(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    :goto_2
    return-void
.end method

.method public init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->init(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->allTypeAnnotationContexts:Ljava/util/List;

    return-void
.end method

.method public instance_of(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const/16 v1, 0x43

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;II)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->instance_of(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 6

    if-eqz p4, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    array-length v1, p4

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    goto :goto_2

    :cond_1
    aget-object v3, p4, v2

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-direct {p0, v3, v4, v2, v0}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;III)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-void
.end method

.method public invokeDynamic(III[C[CZLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 6

    const/high16 v0, 0x100000

    const/4 v1, 0x0

    if-eqz p7, :cond_1

    iget v2, p7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    if-eqz p6, :cond_0

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const/16 v3, 0x45

    invoke-direct {p0, p7, v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;III)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const/16 v3, 0x46

    invoke-direct {p0, p7, v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;III)V

    :cond_1
    :goto_0
    if-eqz p8, :cond_5

    if-eqz p6, :cond_2

    const/16 v2, 0x4a

    goto :goto_1

    :cond_2
    const/16 v2, 0x4b

    :goto_1
    array-length v3, p8

    :goto_2
    if-lt v1, v3, :cond_3

    goto :goto_3

    :cond_3
    aget-object v4, p8, v1

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_4

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    invoke-direct {p0, v4, v5, v1, v2}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;III)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-super/range {p0 .. p8}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invokeDynamic(III[C[CZLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    return-void
.end method

.method public multianewarray(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const/16 v1, 0x44

    invoke-direct {p0, p1, v0, v1, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IILorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->multianewarray(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;)V

    return-void
.end method

.method public newArray(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const/16 v1, 0x44

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IILorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->newArray(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/ast/ArrayAllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;)V

    return-void
.end method

.method public new_(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->position:I

    const/16 v1, 0x44

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->addAnnotationContext(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;II)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->new_(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-void
.end method

.method public reset(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;->reset(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;->allTypeAnnotationContexts:Ljava/util/List;

    return-void
.end method
