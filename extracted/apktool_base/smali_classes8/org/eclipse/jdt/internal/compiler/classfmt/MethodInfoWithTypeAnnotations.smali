.class Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithTypeAnnotations;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;
.source "SourceFile"


# instance fields
.field private typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithTypeAnnotations;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    return-void
.end method


# virtual methods
.method public getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithTypeAnnotations;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithTypeAnnotations;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;->initialize()V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithTypeAnnotations;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->initialize()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithTypeAnnotations;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;->reset()V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithTypeAnnotations;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
