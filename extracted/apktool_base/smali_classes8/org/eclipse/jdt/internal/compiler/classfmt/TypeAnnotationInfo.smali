.class public Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;


# instance fields
.field private annotation:Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

.field private info:I

.field private info2:I

.field readOffset:I

.field private targetType:I

.field private typePath:[I


# direct methods
.method public constructor <init>([B[II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;-><init>([B[II)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->targetType:I

    .line 3
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    return-void
.end method

.method public constructor <init>([B[IIZZ)V
    .locals 8

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;-><init>([B[II)V

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    .line 6
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result p3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->targetType:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    if-eq p3, v1, :cond_0

    packed-switch p3, :pswitch_data_0

    .line 7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Target type not handled "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->targetType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    .line 9
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/lit8 p3, p3, 0x3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    goto :goto_0

    .line 10
    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result p3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    .line 11
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/2addr p3, v0

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    goto :goto_0

    .line 12
    :pswitch_2
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/2addr p3, v1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    goto :goto_0

    .line 13
    :pswitch_3
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result p3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    .line 14
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result p3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info2:I

    .line 15
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/lit8 p3, p3, 0x3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    goto :goto_0

    .line 16
    :pswitch_4
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    .line 17
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/lit8 p3, p3, 0x3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result p3

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    .line 19
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/2addr p3, v0

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    .line 20
    :goto_0
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result p3

    .line 21
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    if-nez p3, :cond_1

    .line 22
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->NO_TYPE_PATH:[I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->typePath:[I

    goto :goto_2

    :cond_1
    mul-int/lit8 v1, p3, 0x2

    .line 23
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->typePath:[I

    move v1, p2

    :goto_1
    if-lt p2, p3, :cond_2

    .line 24
    :goto_2
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->structOffset:I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int v5, p3, v0

    move-object v2, p2

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;-><init>([B[IIZZ)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->annotation:Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    .line 25
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    return-void

    .line 26
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->typePath:[I

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result v4

    aput v4, v2, v1

    .line 27
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->typePath:[I

    add-int/2addr v1, v0

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->targetType:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->targetType:I

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info2:I

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info2:I

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->typePath:[I

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->typePath:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->annotation:Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->annotation:Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotation()Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->annotation:Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    return-object v0
.end method

.method public getBoundIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info2:I

    return v0
.end method

.method public getMethodFormalParameterIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    return v0
.end method

.method public getSupertypeIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    return v0
.end method

.method public getTargetType()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->targetType:I

    return v0
.end method

.method public getThrowsTypeIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    return v0
.end method

.method public getTypeParameterIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    return v0
.end method

.method public getTypePath()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->typePath:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->targetType:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->info2:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->typePath:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->typePath:[I

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->annotation:Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->initialize()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->annotation:Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/BinaryTypeFormatter;->annotationToString(Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
