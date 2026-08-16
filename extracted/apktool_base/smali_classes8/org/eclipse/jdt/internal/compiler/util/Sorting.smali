.class public Lorg/eclipse/jdt/internal/compiler/util/Sorting;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abstractFirst([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 6

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    if-lez p1, :cond_0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    new-array v1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move v2, v0

    move v3, v2

    :goto_0
    if-lt v2, p1, :cond_3

    :goto_1
    if-lt v0, p1, :cond_1

    return-object v1

    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v3, 0x1

    aget-object v4, p0, v0

    aput-object v4, v1, v3

    move v3, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget-object v4, p0, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget-object v5, p0, v2

    aput-object v5, v1, v3

    move v3, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object p0
.end method

.method public static concreteFirst([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 6

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    if-lez p1, :cond_0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-array v1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move v2, v0

    move v3, v2

    :goto_0
    if-lt v2, p1, :cond_3

    :goto_1
    if-lt v0, p1, :cond_1

    return-object v1

    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v3, 0x1

    aget-object v4, p0, v0

    aput-object v4, v1, v3

    move v3, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget-object v4, p0, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget-object v5, p0, v2

    aput-object v5, v1, v3

    move v3, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object p0
.end method

.method private static sort([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)I
    .locals 3

    aget-object v0, p0, p1

    if-nez v0, :cond_0

    return p3

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-static {v0, p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/Sorting;->sortSuper(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)I

    move-result p3

    aget-object v0, p0, p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, p3, 0x1

    aget-object v1, p0, p1

    aput-object v1, p2, p3

    const/4 p2, 0x0

    aput-object p2, p0, p1

    return v0

    :cond_1
    aget-object v2, v0, v1

    invoke-static {v2, p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/Sorting;->sortSuper(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)I

    move-result p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static sortInferenceVariables([Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;)V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/Sorting$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/Sorting$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method private static sortSuper(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p1, v0

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    array-length p0, p1

    if-ge v0, p0, :cond_2

    invoke-static {p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/Sorting;->sort([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)I

    move-result p3

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return p3
.end method

.method public static sortTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p0, v3

    :goto_0
    if-lt v3, v0, :cond_0

    return-object v2

    :cond_0
    invoke-static {v1, v3, v2, p0}, Lorg/eclipse/jdt/internal/compiler/util/Sorting;->sort([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)I

    move-result p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
