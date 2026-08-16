.class Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;
.source "SourceFile"


# instance fields
.field private parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    return-void
.end method


# virtual methods
.method public getAnnotatedParametersCount()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Mismatching number of parameter annotations, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getGenericSignature()[C

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getMethodDescriptor()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public initialize()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;->initialize()V

    return-void

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    array-length v4, v3

    :goto_2
    move v5, v1

    :goto_3
    if-lt v5, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->initialize()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public reset()V
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;->reset()V

    return-void

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithParameterAnnotations;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    array-length v4, v3

    :goto_2
    move v5, v1

    :goto_3
    if-lt v5, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method
