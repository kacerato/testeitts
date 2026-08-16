.class final Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeAnnotationWrapper"
.end annotation


# instance fields
.field private annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypePath()[I

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypePath()[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result v1

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getBoundIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getBoundIndex()I

    move-result v1

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getMethodFormalParameterIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getMethodFormalParameterIndex()I

    move-result v1

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getSupertypeIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getSupertypeIndex()I

    move-result v1

    if-eq v0, v1, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getThrowsTypeIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getThrowsTypeIndex()I

    move-result v1

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypeParameterIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypeParameterIndex()I

    move-result v1

    if-eq v0, v1, :cond_7

    return v2

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getAnnotation()Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getAnnotation()Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypePath()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTypeParameterIndex()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
