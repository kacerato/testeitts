.class public Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfoWithAnnotations;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfo;
.source "SourceFile"


# instance fields
.field private annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;Ljava/lang/Object;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfo;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;Ljava/lang/Object;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    return-void
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->initialize()V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->initialize()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfoWithAnnotations;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
