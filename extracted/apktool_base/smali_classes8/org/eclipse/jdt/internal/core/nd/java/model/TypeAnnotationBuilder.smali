.class public Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;


# instance fields
.field index:I

.field kind:I

.field length:I

.field parent:Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

.field target:I

.field targetParameter:I

.field targetParameter2:I


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->parent:Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->kind:I

    iput p3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->index:I

    iput p4, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->length:I

    iput p5, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->target:I

    iput p6, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->targetParameter:I

    iput p7, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->targetParameter2:I

    return-void
.end method

.method public static create()Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;
    .locals 9

    new-instance v8, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;IIIIII)V

    return-object v8
.end method

.method private getTypePath()[I
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->length:I

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->NO_TYPE_PATH:[I

    return-object v0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    iget v2, v1, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->length:I

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x2

    iget v3, v1, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->kind:I

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    iget v3, v1, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->index:I

    aput v3, v0, v2

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->parent:Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private toTarget(I)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;
    .locals 9

    .line 1
    new-instance v8, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->parent:Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->kind:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->index:I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->length:I

    iget v6, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->targetParameter:I

    iget v7, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->targetParameter2:I

    move-object v0, v8

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;IIIIII)V

    return-object v8
.end method

.method private toTarget(II)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;
    .locals 9

    .line 2
    new-instance v8, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->parent:Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->kind:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->index:I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->length:I

    iget v7, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->targetParameter2:I

    move-object v0, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;IIIIII)V

    return-object v8
.end method

.method private toTarget2(I)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;
    .locals 9

    new-instance v8, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->parent:Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->kind:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->index:I

    iget v4, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->length:I

    iget v5, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->target:I

    iget v6, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->targetParameter:I

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;IIIIII)V

    return-object v8
.end method

.method private walk(II)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;
    .locals 9

    new-instance v8, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->length:I

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->target:I

    iget v6, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->targetParameter:I

    iget v7, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->targetParameter2:I

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;-><init>(Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;IIIIII)V

    return-object v8
.end method


# virtual methods
.method public build(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->target:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->targetParameter:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->targetParameter2:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->getTypePath()[I

    move-result-object v4

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;-><init>(III[ILorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    return-object v6
.end method

.method public toField()Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->toTarget(I)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toMethodParameter(S)Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->toTarget(II)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toMethodReturn()Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->toTarget(I)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toNextArrayDimension()Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->walk(II)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toNextNestedType()Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->walk(II)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toReceiver()Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 1

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->toTarget(I)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toSupertype(S)Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->toTarget(II)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toThrows(I)Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 1

    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->toTarget(II)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toTypeArgument(I)Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->walk(II)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toTypeBound(S)Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->toTarget2(I)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toTypeParameter(ZI)Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->toTarget(II)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_0

    :cond_0
    const/16 p1, 0x12

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->toTarget(II)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toWildcardBound()Lorg/eclipse/jdt/internal/core/nd/java/model/ITypeAnnotationBuilder;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;->walk(II)Lorg/eclipse/jdt/internal/core/nd/java/model/TypeAnnotationBuilder;

    move-result-object v0

    return-object v0
.end method
