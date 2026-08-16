.class public final Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;
.source "SourceFile"


# instance fields
.field private typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    return-void
.end method


# virtual methods
.method public getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;->initialize()V

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->initialize()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithAnnotation;->reset()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-class v1, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "type annotations:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfoWithTypeAnnotation;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    array-length v4, v3

    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->toStringContent(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
