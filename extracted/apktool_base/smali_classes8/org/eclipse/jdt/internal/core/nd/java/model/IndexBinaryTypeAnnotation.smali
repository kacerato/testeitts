.class public Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;


# instance fields
.field private annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

.field private info:I

.field private info2:I

.field private targetType:I

.field private typePath:[I


# direct methods
.method public constructor <init>(III[ILorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->targetType:I

    iput p2, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->info:I

    iput p3, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->info2:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->typePath:[I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    return-void
.end method


# virtual methods
.method public getAnnotation()Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->annotation:Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    return-object v0
.end method

.method public getBoundIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->info2:I

    return v0
.end method

.method public getMethodFormalParameterIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->info:I

    return v0
.end method

.method public getSupertypeIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->info:I

    return v0
.end method

.method public getTargetType()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->targetType:I

    return v0
.end method

.method public getThrowsTypeIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->info:I

    return v0
.end method

.method public getTypeParameterIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->info:I

    return v0
.end method

.method public getTypePath()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/model/IndexBinaryTypeAnnotation;->typePath:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/BinaryTypeFormatter;->annotationToString(Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
