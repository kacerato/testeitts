.class public abstract Lorg/eclipse/jdt/internal/compiler/lookup/Scope;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/Scope$MethodClashException;,
        Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;,
        Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;
    }
.end annotation


# static fields
.field public static final AUTOBOX_COMPATIBLE:I = 0x1

.field public static final BLOCK_SCOPE:I = 0x1

.field public static final CLASS_SCOPE:I = 0x3

.field public static final COMPATIBLE:I = 0x0

.field public static final COMPILATION_UNIT_SCOPE:I = 0x4

.field public static final EQUAL_OR_MORE_SPECIFIC:I = -0x1

.field public static final METHOD_SCOPE:I = 0x2

.field public static final MORE_GENERIC:I = 0x1

.field public static final NOT_COMPATIBLE:I = -0x1

.field public static NOT_REDUNDANT:Lorg/eclipse/jdt/internal/compiler/lookup/Binding; = null

.field public static final NOT_RELATED:I = 0x0

.field public static final VARARGS_COMPATIBLE:I = 0x2

.field private static defaultSubstitutor:Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;


# instance fields
.field public kind:I

.field private nullDefaultRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;",
            ">;"
        }
    .end annotation
.end field

.field public parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->NOT_REDUNDANT:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->defaultSubstitutor:Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;

    return-void
.end method

.method public constructor <init>(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    return-void
.end method

.method public static synthetic a(I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lambda$1(I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(I)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lambda$0(I)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static compareTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static convertEliminatingTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 11

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x20000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x104

    const/4 v2, 0x0

    if-eq v0, v1, :cond_15

    const/16 v1, 0x204

    if-eq v0, v1, :cond_14

    const/16 v1, 0x804

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_0

    goto/16 :goto_c

    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    invoke-static {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->convertEliminatingTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    move-object v7, v3

    goto :goto_0

    :cond_1
    move-object v7, v1

    :goto_0
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    array-length v4, v3

    :goto_1
    move v5, v2

    move-object v8, v3

    :goto_2
    if-lt v5, v4, :cond_4

    invoke-static {v7, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eq v8, v3, :cond_1e

    :cond_3
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p0

    return-object p0

    :cond_4
    aget-object v6, v3, v5

    invoke-static {v6, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->convertEliminatingTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    invoke-static {v9, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-ne v8, v3, :cond_5

    new-array v8, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v3, v2, v8, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    aput-object v9, v8, v5

    goto :goto_3

    :cond_6
    if-eq v8, v3, :cond_7

    aput-object v6, v8, v5

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    if-nez p1, :cond_9

    goto/16 :goto_c

    :cond_9
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz p3, :cond_a

    invoke-interface {p3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->upperBound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    if-nez p3, :cond_b

    new-instance p3, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {p3, v1}, Ljava/util/HashSet;-><init>(I)V

    :cond_b
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->convertEliminatingTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p0

    return-object p0

    :cond_c
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->convertEliminatingTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v3, p2

    goto :goto_4

    :cond_d
    move-object v3, v1

    :goto_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v4

    if-nez v4, :cond_e

    move v5, v2

    goto :goto_5

    :cond_e
    array-length p2, v4

    move v5, p2

    :goto_5
    move p2, v2

    move-object v6, v4

    :goto_6
    if-lt p2, v5, :cond_10

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-nez p2, :cond_f

    if-eq v4, v6, :cond_1e

    :cond_f
    aget-object p0, v4, v2

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p0, p1, v6, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p0

    return-object p0

    :cond_10
    aget-object v7, v4, p2

    invoke-static {v7, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->convertEliminatingTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-static {v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-eqz v9, :cond_12

    if-ne v6, v4, :cond_11

    new-array v6, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v4, v2, v6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    aput-object v8, v6, p2

    goto :goto_7

    :cond_12
    if-eq v6, v4, :cond_13

    aput-object v7, v6, p2

    :cond_13
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_14
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1e

    invoke-static {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->convertEliminatingTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    const/4 v6, 0x0

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object p0

    return-object p0

    :cond_15
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->convertEliminatingTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v3, p1

    goto :goto_8

    :cond_16
    move-object v3, v1

    :goto_8
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v4, :cond_17

    move v5, v2

    goto :goto_9

    :cond_17
    array-length p1, v4

    move v5, p1

    :goto_9
    move p1, v2

    move-object p2, v4

    :goto_a
    if-lt p1, v5, :cond_19

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-nez p1, :cond_18

    if-eq v4, p2, :cond_1e

    :cond_18
    iget-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object p0

    return-object p0

    :cond_19
    aget-object v6, v4, p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    invoke-static {v6, v7, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->convertEliminatingTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_1b

    if-ne p2, v4, :cond_1a

    new-array p2, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v4, v2, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    aput-object v7, p2, p1

    goto :goto_b

    :cond_1b
    if-eq p2, v4, :cond_1c

    aput-object v6, p2, p1

    :cond_1c
    :goto_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_1d
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->convertEliminatingTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_1e

    iget-object p0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result p1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p0

    :cond_1e
    :goto_c
    return-object p0
.end method

.method public static filterValidTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/function/Function;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">([TT;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "[TT;>;)[TT;"
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    array-length v0, p0

    if-ne v1, v0, :cond_0

    return-object p0

    :cond_0
    if-nez v1, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p0

    :cond_2
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p0, v0

    aput-object v3, p1, v1

    move v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getBaseType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 16

    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_6

    const/16 v3, 0x8

    if-ge v1, v3, :cond_6

    const/4 v3, 0x0

    aget-char v3, v0, v3

    const/16 v4, 0x66

    const/16 v5, 0x61

    const/4 v7, 0x5

    const/16 v8, 0x6c

    const/16 v9, 0x6f

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-eq v3, v4, :cond_5

    const/16 v4, 0x69

    const/16 v13, 0x6e

    if-eq v3, v4, :cond_4

    if-eq v3, v8, :cond_3

    const/16 v14, 0x73

    const/16 v15, 0x72

    const/16 v4, 0x68

    if-eq v3, v14, :cond_2

    const/16 v14, 0x76

    if-eq v3, v14, :cond_1

    const/4 v14, 0x6

    const/16 v6, 0x65

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-ne v1, v14, :cond_6

    aget-char v1, v0, v12

    if-ne v1, v9, :cond_6

    aget-char v1, v0, v2

    const/16 v2, 0x75

    if-ne v1, v2, :cond_6

    aget-char v1, v0, v11

    const/16 v2, 0x62

    if-ne v1, v2, :cond_6

    aget-char v1, v0, v10

    if-ne v1, v8, :cond_6

    aget-char v0, v0, v7

    if-ne v0, v6, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->DOUBLE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :pswitch_1
    if-ne v1, v10, :cond_6

    aget-char v1, v0, v12

    if-ne v1, v4, :cond_6

    aget-char v1, v0, v2

    if-ne v1, v5, :cond_6

    aget-char v0, v0, v11

    if-ne v0, v15, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->CHAR:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :pswitch_2
    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    aget-char v3, v0, v12

    if-ne v3, v9, :cond_0

    aget-char v3, v0, v2

    if-ne v3, v9, :cond_0

    aget-char v3, v0, v11

    if-ne v3, v8, :cond_0

    aget-char v3, v0, v10

    if-ne v3, v6, :cond_0

    aget-char v3, v0, v7

    if-ne v3, v5, :cond_0

    aget-char v3, v0, v14

    if-ne v3, v13, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :cond_0
    if-ne v1, v10, :cond_6

    aget-char v1, v0, v12

    const/16 v3, 0x79

    if-ne v1, v3, :cond_6

    aget-char v1, v0, v2

    const/16 v2, 0x74

    if-ne v1, v2, :cond_6

    aget-char v0, v0, v11

    if-ne v0, v6, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BYTE:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :cond_1
    if-ne v1, v10, :cond_6

    aget-char v1, v0, v12

    if-ne v1, v9, :cond_6

    aget-char v1, v0, v2

    const/16 v2, 0x69

    if-ne v1, v2, :cond_6

    aget-char v0, v0, v11

    const/16 v1, 0x64

    if-ne v0, v1, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    return-object v0

    :cond_2
    if-ne v1, v7, :cond_6

    aget-char v1, v0, v12

    if-ne v1, v4, :cond_6

    aget-char v1, v0, v2

    if-ne v1, v9, :cond_6

    aget-char v1, v0, v11

    if-ne v1, v15, :cond_6

    aget-char v0, v0, v10

    const/16 v1, 0x74

    if-ne v0, v1, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->SHORT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :cond_3
    if-ne v1, v10, :cond_6

    aget-char v1, v0, v12

    if-ne v1, v9, :cond_6

    aget-char v1, v0, v2

    if-ne v1, v13, :cond_6

    aget-char v0, v0, v11

    const/16 v1, 0x67

    if-ne v0, v1, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->LONG:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :cond_4
    if-ne v1, v11, :cond_6

    aget-char v1, v0, v12

    if-ne v1, v13, :cond_6

    aget-char v0, v0, v2

    const/16 v1, 0x74

    if-ne v0, v1, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :cond_5
    if-ne v1, v7, :cond_6

    aget-char v1, v0, v12

    if-ne v1, v8, :cond_6

    aget-char v1, v0, v2

    if-ne v1, v9, :cond_6

    aget-char v1, v0, v11

    if-ne v1, v5, :cond_6

    aget-char v0, v0, v10

    const/16 v1, 0x74

    if-ne v0, v1, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->FLOAT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v0

    :cond_6
    :goto_0
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getExactMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x2

    add-int/lit8 v7, v2, 0x2

    new-array v8, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v9, 0x0

    .line 3
    aput-object v0, v8, v9

    .line 4
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v8, v10

    .line 5
    array-length v2, v1

    if-eqz v2, :cond_1

    .line 6
    array-length v2, v1

    invoke-static {v1, v9, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 9
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v1

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    move-object/from16 v12, p5

    move v13, v9

    :goto_0
    if-lt v13, v7, :cond_2

    return-object v12

    :cond_2
    move-object/from16 v14, p3

    if-nez v13, :cond_3

    .line 10
    invoke-virtual {v11, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-array v15, v10, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v2, v8, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getExactMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    aput-object v0, v15, v9

    move-object v0, v15

    .line 11
    :goto_1
    array-length v1, v0

    move v2, v9

    :goto_2
    if-lt v2, v1, :cond_4

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 12
    :cond_4
    aget-object v3, v0, v2

    if-eqz v3, :cond_5

    if-ne v12, v3, :cond_6

    :cond_5
    move-object/from16 v4, p1

    move-object/from16 v5, p4

    goto :goto_3

    :cond_6
    move-object/from16 v4, p1

    move-object/from16 v5, p4

    if-nez v13, :cond_7

    .line 13
    invoke-virtual {v3, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isSynthetic()Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isBridge()Z

    move-result v15

    if-eqz v15, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v12, :cond_9

    .line 14
    invoke-virtual {v12, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    .line 15
    :cond_8
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$MethodClashException;

    invoke-direct {v0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$MethodClashException;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0

    :cond_9
    move-object v12, v3

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private getFilteredExceptions(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 8

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-object p1

    :cond_0
    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v3, v0, :cond_2

    if-eq v4, v0, :cond_1

    new-array p1, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object p1

    :cond_2
    aget-object v5, p1, v3

    move v6, v2

    :goto_1
    if-lt v6, v0, :cond_3

    goto :goto_2

    :cond_3
    if-ne v3, v6, :cond_4

    goto :goto_4

    :cond_4
    aget-object v7, p1, v6

    invoke-static {v5, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ge v3, v6, :cond_6

    :goto_2
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v1, v4

    move v4, v6

    goto :goto_3

    :cond_5
    aget-object v7, p1, v6

    invoke-virtual {v5, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/w;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/w;-><init>()V

    invoke-static {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->filterValidTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/function/Function;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    check-cast p0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 2
    array-length v1, p0

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    move-object v4, p0

    move v3, v2

    move v5, v3

    :goto_0
    if-lt v3, v1, :cond_6

    if-nez v5, :cond_2

    return-object v4

    :cond_2
    if-ne v1, v5, :cond_3

    return-object v0

    :cond_3
    sub-int p0, v1, v5

    .line 3
    new-array v6, p0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move p0, v2

    :goto_1
    if-lt v2, v1, :cond_4

    return-object v6

    .line 4
    :cond_4
    aget-object v0, v4, v2

    if-eqz v0, :cond_5

    add-int/lit8 v3, p0, 0x1

    .line 5
    aput-object v0, v6, p0

    move p0, v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_6
    aget-object v6, v4, v3

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    move v7, v2

    :goto_2
    if-lt v7, v1, :cond_8

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-ne v3, v7, :cond_9

    goto :goto_4

    .line 7
    :cond_9
    aget-object v8, v4, v7

    if-nez v8, :cond_a

    goto :goto_4

    .line 8
    :cond_a
    invoke-static {v6, v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isMalformedPair(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v9

    if-eqz v9, :cond_b

    return-object v0

    .line 9
    :cond_b
    invoke-virtual {v6, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_d

    if-ne v4, p0, :cond_c

    .line 10
    new-array v8, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v4, v2, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    .line 11
    :cond_c
    aput-object v0, v4, v7

    add-int/lit8 v5, v5, 0x1

    :cond_d
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public static greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 12
    :cond_0
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/v;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/v;-><init>()V

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->filterValidTypes([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/function/Function;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    .line 13
    array-length v3, v0

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    const/4 v4, 0x0

    move-object v6, v0

    move v5, v4

    move v7, v5

    :goto_0
    if-lt v5, v3, :cond_6

    if-nez v7, :cond_2

    return-object v6

    :cond_2
    if-ne v3, v7, :cond_3

    return-object v2

    :cond_3
    sub-int v0, v3, v7

    .line 14
    new-array v8, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v0, v4

    :goto_1
    if-lt v4, v3, :cond_4

    return-object v8

    .line 15
    :cond_4
    aget-object v1, v6, v4

    if-eqz v1, :cond_5

    add-int/lit8 v2, v0, 0x1

    .line 16
    aput-object v1, v8, v0

    move v0, v2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_6
    aget-object v8, v6, v5

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    move v9, v4

    :goto_2
    if-lt v9, v3, :cond_8

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    if-ne v5, v9, :cond_9

    :goto_4
    goto :goto_5

    .line 18
    :cond_9
    aget-object v10, v6, v9

    if-nez v10, :cond_a

    goto :goto_4

    .line 19
    :cond_a
    invoke-static {v8, v10, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isMalformedPair(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v11

    if-eqz v11, :cond_b

    return-object v2

    .line 20
    :cond_b
    invoke-virtual {v8, v10, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v11

    if-eqz v11, :cond_e

    if-ne v6, v0, :cond_c

    .line 21
    new-array v10, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v6, v4, v10, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v10

    .line 22
    :cond_c
    aput-object v2, v6, v9

    add-int/lit8 v7, v7, 0x1

    :cond_d
    :goto_5
    move-object/from16 v15, p2

    goto/16 :goto_8

    .line 23
    :cond_e
    invoke-virtual {v10, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 24
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 25
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v12

    invoke-virtual {v11, v12, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 26
    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 27
    move-object v11, v8

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    goto :goto_6

    .line 28
    :cond_f
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v12

    invoke-virtual {v11, v12, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 29
    move-object v11, v8

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 30
    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-object/from16 v17, v11

    move-object v11, v10

    move-object/from16 v10, v17

    .line 31
    :goto_6
    iget-object v12, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v12, :cond_10

    goto :goto_4

    .line 32
    :cond_10
    invoke-virtual {v11, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->isProperType(Z)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v10, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->isProperType(Z)Z

    move-result v12

    if-nez v12, :cond_11

    goto :goto_4

    .line 33
    :cond_11
    iget-object v12, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v12, v12

    .line 34
    new-array v13, v12, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v14, v4

    :goto_7
    if-lt v14, v12, :cond_12

    .line 35
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 36
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v12

    move-object/from16 v15, p2

    invoke-virtual {v15, v10, v13, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v10

    .line 37
    invoke-virtual {v11, v10, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v10

    if-nez v10, :cond_14

    return-object v2

    :cond_12
    move-object/from16 v15, p2

    .line 38
    iget-object v2, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v14

    .line 39
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v16

    if-eqz v16, :cond_13

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->upperBound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    :cond_13
    aput-object v2, v13, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto :goto_7

    :cond_14
    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public static isMalformedPair(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x104

    if-eq p2, v0, :cond_0

    const/16 v0, 0x404

    if-eq p2, v0, :cond_0

    const/16 v0, 0x804

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne p2, v0, :cond_2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isOverriddenMethodGeneric(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v0

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-lt v2, v4, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    goto :goto_0

    :cond_1
    aget-object v5, v3, v2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v6

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v6, v7, :cond_2

    invoke-virtual {v0, p1, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static synthetic lambda$0(I)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 0

    new-array p0, p0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p0
.end method

.method private static synthetic lambda$1(I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    new-array p0, p0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p0
.end method

.method private leastContainingInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/lang/Object;Ljava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 18

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_1
    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v0

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    aget-object v8, v0, v7

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v9

    const/16 v10, 0x104

    const/4 v11, 0x0

    if-eq v9, v10, :cond_a

    const/16 v10, 0x404

    if-eq v9, v10, :cond_8

    const/16 v10, 0x804

    if-eq v9, v10, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v9

    move v8, v6

    :goto_2
    if-lt v8, v3, :cond_6

    goto :goto_5

    :cond_6
    aget-object v13, v4, v8

    aget-object v14, v9, v8

    move-object v15, v2

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Ljava/util/ArrayList;

    move-object/from16 v12, p0

    move/from16 v16, v8

    invoke-direct/range {v12 .. v17}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->leastContainingTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    if-nez v10, :cond_7

    return-object v11

    :cond_7
    aput-object v10, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v8

    :goto_3
    return-object v8

    :cond_a
    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move v9, v6

    :goto_4
    if-lt v9, v3, :cond_b

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_b
    aget-object v13, v4, v9

    iget-object v10, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v14, v10, v9

    move-object v15, v2

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Ljava/util/ArrayList;

    move-object/from16 v12, p0

    move/from16 v16, v9

    invoke-direct/range {v12 .. v17}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->leastContainingTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    if-nez v10, :cond_c

    return-object v11

    :cond_c
    aput-object v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4
.end method

.method private leastContainingTypeArgument(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILjava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static/range {p1 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v4, :cond_10

    move-object v4, v2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v9, v1

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq v10, v6, :cond_4

    if-eq v10, v7, :cond_2

    goto/16 :goto_0

    :cond_2
    if-ne v10, v7, :cond_16

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    filled-new-array {v1, v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v8

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    aget-object v12, v1, v5

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v9 .. v14}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1

    :cond_4
    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq v5, v6, :cond_7

    if-eq v5, v7, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v1

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1

    :cond_7
    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    filled-new-array {v1, v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-nez v5, :cond_8

    return-object v8

    :cond_8
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1

    :cond_a
    iget v9, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq v9, v6, :cond_d

    if-eq v9, v7, :cond_b

    goto/16 :goto_0

    :cond_b
    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    filled-new-array {v1, v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v8

    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    aget-object v12, v1, v5

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v9 .. v14}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1

    :cond_d
    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    filled-new-array {v1, v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-nez v5, :cond_e

    return-object v8

    :cond_e
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1

    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v9, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq v9, v6, :cond_13

    if-eq v9, v7, :cond_11

    goto :goto_0

    :cond_11
    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    filled-new-array {v1, v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-nez v1, :cond_12

    return-object v8

    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    aget-object v12, v1, v5

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v9 .. v14}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1

    :cond_13
    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    filled-new-array {v1, v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-nez v5, :cond_14

    return-object v8

    :cond_14
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1

    :cond_15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1

    :cond_16
    :goto_0
    filled-new-array/range {p1 .. p2}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-nez v5, :cond_17

    return-object v8

    :cond_17
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-static {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1

    :cond_18
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    return-object v1
.end method

.method private lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 5
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 6
    aget-object v1, v1, v4

    if-nez v1, :cond_0

    .line 7
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    :cond_0
    return-object v1

    .line 8
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :goto_0
    if-lt v7, v6, :cond_16

    .line 9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->minimalErasedCandidates([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_2

    return-object v10

    .line 12
    :cond_2
    array-length v11, v9

    if-nez v11, :cond_3

    .line 13
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    return-object v1

    :cond_3
    const/4 v12, -0x1

    move v1, v4

    move v3, v1

    move-object/from16 v16, v10

    move v6, v12

    :goto_1
    if-lt v1, v11, :cond_10

    if-eqz v3, :cond_f

    if-eq v3, v5, :cond_e

    const/4 v1, 0x2

    if-eq v3, v1, :cond_4

    goto :goto_6

    :cond_4
    if-nez v6, :cond_5

    .line 14
    aget-object v1, v9, v5

    :goto_2
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    goto :goto_3

    :cond_5
    aget-object v1, v9, v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    goto :goto_2

    :goto_3
    if-ne v1, v5, :cond_6

    aget-object v1, v9, v4

    return-object v1

    :cond_6
    if-nez v6, :cond_7

    .line 15
    aget-object v1, v9, v4

    :goto_4
    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    goto :goto_5

    :cond_7
    aget-object v1, v9, v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    goto :goto_4

    :goto_5
    if-ne v1, v5, :cond_8

    aget-object v1, v9, v5

    return-object v1

    :cond_8
    :goto_6
    add-int/lit8 v1, v3, -0x1

    .line 16
    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v7, v4

    move v8, v7

    :goto_7
    if-lt v7, v3, :cond_b

    .line 17
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v7

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v7, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v9, 0x340000

    cmp-long v7, v7, v9

    if-gez v7, :cond_9

    .line 18
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v18, 0x1

    const/4 v14, 0x0

    move-object/from16 v17, v2

    invoke-virtual/range {v13 .. v18}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v1

    goto :goto_8

    .line 19
    :cond_9
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 20
    check-cast v16, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v16, v3, v4

    .line 21
    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createIntersectionType18([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :goto_8
    if-nez v6, :cond_a

    goto :goto_9

    .line 23
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v1

    :goto_9
    return-object v1

    :cond_b
    if-nez v6, :cond_c

    .line 24
    aget-object v10, v9, v7

    goto :goto_a

    :cond_c
    aget-object v10, v9, v7

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    .line 25
    :goto_a
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v11

    if-eqz v11, :cond_d

    add-int/lit8 v11, v8, 0x1

    .line 26
    aput-object v10, v2, v8

    move v8, v11

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 27
    :cond_e
    aget-object v1, v9, v4

    return-object v1

    .line 28
    :cond_f
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    return-object v1

    .line 29
    :cond_10
    aget-object v7, v9, v1

    if-nez v7, :cond_11

    goto :goto_c

    .line 30
    :cond_11
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v0, v7, v13, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->leastContainingInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/lang/Object;Ljava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    if-nez v7, :cond_12

    return-object v10

    .line 31
    :cond_12
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v13

    if-ne v6, v12, :cond_13

    move v6, v13

    goto :goto_b

    :cond_13
    if-eq v13, v6, :cond_14

    return-object v10

    :cond_14
    :goto_b
    if-nez v16, :cond_15

    .line 32
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v13

    if-nez v13, :cond_15

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v16

    :cond_15
    add-int/lit8 v13, v3, 0x1

    .line 33
    aput-object v7, v9, v3

    move v3, v13

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 34
    :cond_16
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 35
    array-length v9, v8

    if-ge v9, v3, :cond_17

    goto :goto_f

    :cond_17
    move v10, v4

    :goto_d
    if-lt v10, v3, :cond_18

    .line 36
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    return-object v1

    .line 37
    :cond_18
    aget-object v11, v1, v10

    if-nez v11, :cond_19

    goto :goto_11

    :cond_19
    move v12, v4

    :goto_e
    if-lt v12, v9, :cond_1a

    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 38
    :cond_1a
    aget-object v13, v8, v12

    if-nez v13, :cond_1b

    goto :goto_10

    .line 39
    :cond_1b
    invoke-static {v13, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-nez v14, :cond_1d

    invoke-virtual {v13, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v13

    if-eqz v13, :cond_1c

    goto :goto_11

    :cond_1c
    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_1d
    :goto_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_d
.end method

.method private nullDefaultRangeForPosition(I)Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->nullDefaultRanges:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->start:I

    if-lt p1, v2, :cond_0

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->end:I

    if-ge p1, v2, :cond_0

    return-object v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, p2, p5}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 54
    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPotentiallyCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p5

    if-eqz p5, :cond_2

    return v2

    .line 55
    :cond_1
    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p5

    if-eqz p5, :cond_2

    return v2

    :cond_2
    if-eqz p4, :cond_4

    .line 56
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p4

    iget-wide p4, p4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v1, 0x330000

    cmp-long p4, p4, v1

    if-gez p4, :cond_3

    sget-boolean p4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->tolerateIllegalAmbiguousVarargsInvocation:Z

    if-nez p4, :cond_4

    :cond_3
    return v0

    .line 57
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result p4

    const p5, 0x10004

    if-eq p4, p5, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p5

    if-eq p4, p5, :cond_6

    .line 58
    :cond_5
    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 59
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_1
    return v0
.end method

.method public static substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    .line 2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->defaultSubstitutor:Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->defaultSubstitutor:Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    .line 3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->defaultSubstitutor:Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$Substitutor;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static typeAnnotationsResolutionScope(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    goto :goto_0

    :cond_1
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public boxing(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const v1, 0x10004

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public checkRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->localCheckRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->checkRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1
.end method

.method public final classScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;
    .locals 2

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    return-object v0
.end method

.method public final computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1
.end method

.method public final computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    .line 3
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 4
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const-wide/16 v7, 0x0

    if-ne v5, v2, :cond_0

    .line 5
    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v11, 0x20000000

    and-long/2addr v9, v11

    cmp-long v9, v9, v7

    if-nez v9, :cond_0

    if-nez v4, :cond_0

    .line 6
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v6, v9, :cond_0

    return-object v1

    .line 7
    :cond_0
    array-length v9, v2

    .line 8
    array-length v10, v5

    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v11

    const/4 v12, 0x0

    if-eq v9, v10, :cond_2

    if-eqz v11, :cond_1

    add-int/lit8 v11, v10, -0x1

    if-ge v9, v11, :cond_2

    :cond_1
    return-object v12

    .line 10
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v11

    .line 11
    sget-object v13, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const-wide/32 v16, 0x340000

    const/4 v7, 0x0

    if-eq v6, v13, :cond_c

    iget-wide v14, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v18, 0x310000

    cmp-long v8, v14, v18

    if-ltz v8, :cond_c

    cmp-long v8, v14, v16

    if-ltz v8, :cond_4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v13, v12

    goto :goto_2

    :cond_4
    :goto_0
    move v8, v7

    move-object v13, v12

    :goto_1
    if-lt v8, v9, :cond_8

    :goto_2
    if-eqz v13, :cond_5

    goto :goto_3

    :cond_5
    move-object v13, v2

    .line 12
    :goto_3
    invoke-static {v1, v13, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-nez v1, :cond_6

    return-object v12

    .line 13
    :cond_6
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_7

    return-object v1

    .line 14
    :cond_7
    iget-wide v8, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v2, v8, v16

    if-ltz v2, :cond_11

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v2, :cond_11

    instance-of v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v2, :cond_11

    .line 15
    move-object v2, v3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    .line 16
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-interface {v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    move-result-object v2

    if-eqz v2, :cond_11

    return-object v1

    :cond_8
    if-ge v8, v10, :cond_9

    .line 17
    aget-object v14, v5, v8

    goto :goto_4

    :cond_9
    add-int/lit8 v14, v10, -0x1

    aget-object v14, v5, v14

    .line 18
    :goto_4
    aget-object v15, v2, v8

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v15

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v14

    if-eq v15, v14, :cond_b

    if-nez v13, :cond_a

    .line 19
    new-array v13, v9, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 20
    invoke-static {v2, v7, v13, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v14

    aget-object v15, v2, v8

    invoke-virtual {v14, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v14

    aput-object v14, v13, v8

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_c
    if-eqz v4, :cond_f

    .line 22
    iget-wide v8, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v14, 0x330000

    cmp-long v5, v8, v14

    if-gez v5, :cond_f

    .line 23
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v3, :cond_d

    .line 24
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->wasInferred:Z

    if-nez v3, :cond_10

    .line 25
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/16 v5, 0xd

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v2

    .line 26
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isOverriding()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isOverriddenMethodGeneric(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 27
    :cond_e
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/16 v5, 0xb

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v2

    :cond_f
    if-ne v6, v13, :cond_10

    .line 28
    instance-of v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v5, :cond_10

    .line 29
    iget-wide v8, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v5, v8, v16

    if-ltz v5, :cond_10

    instance-of v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v5, :cond_10

    .line 30
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    .line 31
    move-object v5, v1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-interface {v3, v5}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    move-result-object v3

    if-eqz v3, :cond_10

    return-object v1

    :cond_10
    move-object v13, v2

    :cond_11
    if-eqz p4, :cond_12

    .line 32
    sget-boolean v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->tolerateIllegalAmbiguousVarargsInvocation:Z

    if-eqz v2, :cond_12

    iget-wide v2, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v8, 0x330000

    cmp-long v2, v2, v8

    if-gez v2, :cond_12

    goto :goto_5

    :cond_12
    move/from16 v7, p4

    .line 33
    :goto_5
    invoke-virtual {v0, v1, v13, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_14

    .line 34
    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v4, 0x10000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    .line 35
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v2, v1, v13, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createPolymorphicMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    move-result-object v1

    :cond_13
    return-object v1

    :cond_14
    if-eqz v4, :cond_15

    .line 36
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v6, v2, :cond_15

    .line 37
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/16 v4, 0xc

    invoke-direct {v2, v1, v3, v13, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v2

    .line 38
    :cond_15
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PolyParameterizedGenericMethodBinding;

    if-eqz v2, :cond_16

    .line 39
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/16 v5, 0x1b

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v2

    :cond_16
    return-object v12
.end method

.method public connectTypeVariables([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Z)Z
    .locals 29

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-eqz v7, :cond_0

    array-length v0, v7

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_17

    :cond_1
    new-instance v9, Ljava/util/HashMap;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    array-length v11, v7

    const/4 v12, 0x0

    move v0, v12

    :goto_0
    if-lt v0, v11, :cond_21

    move v13, v12

    const/4 v14, 0x1

    :goto_1
    if-lt v13, v11, :cond_5

    move v0, v12

    move v1, v0

    :goto_2
    if-lt v0, v11, :cond_4

    if-eqz v1, :cond_3

    :goto_3
    if-lt v12, v11, :cond_2

    goto :goto_4

    :cond_2
    aget-object v0, v7, v12

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->updateTagBits()J

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    return v14

    :cond_4
    aget-object v2, v7, v0

    invoke-virtual {v6, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->resolveTypeParameter(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V

    aget-object v2, v7, v0

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    aget-object v0, v7, v13

    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez v1, :cond_6

    move/from16 v24, v11

    move/from16 v23, v13

    goto/16 :goto_16

    :cond_6
    iget v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/16 v3, 0x100

    if-ne v2, v10, :cond_7

    move-object v2, v6

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1, v2, v12, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    goto :goto_5

    :cond_7
    move-object v2, v6

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    :goto_5
    const-wide/16 v16, 0x800

    const-wide/16 v18, 0x0

    const-wide/32 v20, 0x20000

    if-nez v2, :cond_8

    iget-wide v1, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v1, v1, v20

    iput-wide v1, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    move/from16 v23, v13

    goto/16 :goto_b

    :cond_8
    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_11

    const/16 v4, 0x1004

    if-eq v3, v4, :cond_b

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isFinal()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v22, 0x80000000000000L

    and-long v3, v3, v22

    cmp-long v3, v3, v18

    if-nez v3, :cond_a

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v15, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->finalVariableBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_a
    move v1, v12

    goto/16 :goto_9

    :cond_b
    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iget v5, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    const-wide/32 v22, 0x320000

    if-lt v4, v5, :cond_c

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v5, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne v4, v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    cmp-long v4, v4, v22

    if-gtz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->forwardTypeVariableReference(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V

    iget-wide v1, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v1, v1, v20

    iput-wide v1, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_7

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    cmp-long v4, v4, v22

    if-lez v4, :cond_f

    iget v4, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iget v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    if-lt v4, v5, :cond_f

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v5, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-ne v4, v5, :cond_f

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    array-length v5, v7

    invoke-direct {v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    invoke-virtual {v4, v15}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    :goto_6
    instance-of v8, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-nez v8, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->includes(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v15, v3, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->hierarchyCircularity(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iget-wide v1, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v1, v1, v20

    iput-wide v1, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :goto_7
    move/from16 v23, v13

    const/4 v12, 0x1

    goto :goto_c

    :cond_e
    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_6

    :cond_f
    :goto_8
    const/4 v1, 0x1

    :goto_9
    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v15, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_a

    :cond_10
    filled-new-array {v3}, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_a
    iget-wide v4, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    move/from16 v23, v13

    iget-wide v12, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v12, v12, v16

    or-long/2addr v4, v12

    iput-wide v4, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v15, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v12, v1

    goto :goto_c

    :cond_11
    move/from16 v23, v13

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->boundCannotBeArray(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-wide v1, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v1, v1, v20

    iput-wide v1, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :goto_b
    const/4 v12, 0x0

    :goto_c
    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->bounds:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v13, :cond_12

    array-length v5, v13

    const/4 v4, 0x0

    :goto_d
    if-lt v4, v5, :cond_13

    :cond_12
    move/from16 v24, v11

    goto/16 :goto_14

    :cond_13
    aget-object v3, v13, v4

    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-ne v0, v10, :cond_14

    move-object v0, v6

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :goto_e
    move-object v2, v0

    goto :goto_f

    :cond_14
    move-object v0, v6

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_e

    :goto_f
    if-nez v2, :cond_15

    iget-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v0, v0, v20

    iput-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v24, v11

    goto/16 :goto_13

    :cond_15
    iget-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    move/from16 v24, v11

    iget-wide v10, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v10, v10, v16

    or-long/2addr v0, v10

    iput-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v12, :cond_16

    if-nez v4, :cond_16

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->noAdditionalBoundAfterTypeVariable(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    iget-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v0, v0, v20

    iput-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_11

    :cond_16
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->boundCannotBeArray(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v0, v0, v20

    iput-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_17
    :goto_10
    move/from16 v25, v4

    move/from16 v26, v5

    goto/16 :goto_13

    :cond_18
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v1

    if-nez v1, :cond_19

    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->boundMustBeAnInterface(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v0, v0, v20

    iput-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_10

    :cond_19
    :goto_11
    if-eqz p2, :cond_1a

    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v10, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v11, v2

    move-object v2, v10

    move-object v10, v3

    move-object v3, v9

    move/from16 v25, v4

    move-object v4, v15

    move/from16 v26, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasErasedCandidatesCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_13

    :cond_1a
    move-object v11, v2

    move-object v10, v3

    move/from16 v25, v4

    move/from16 v26, v5

    :cond_1b
    move-object v5, v11

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    :goto_12
    add-int/lit8 v27, v0, -0x1

    if-gez v27, :cond_1c

    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v15, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v5, v0, v1

    goto :goto_13

    :cond_1c
    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v0, v27

    invoke-static {v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateBounds(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v0, v0, v20

    iput-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_13

    :cond_1d
    if-eqz p2, :cond_1e

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v3, v9

    move-object v4, v15

    move-object/from16 v28, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasErasedCandidatesCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_13
    add-int/lit8 v4, v25, 0x1

    move/from16 v11, v24

    move/from16 v5, v26

    const/4 v10, 0x2

    goto/16 :goto_d

    :cond_1e
    move-object/from16 v28, v5

    :cond_1f
    move/from16 v0, v27

    move-object/from16 v5, v28

    goto :goto_12

    :goto_14
    iget-wide v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v0, v0, v20

    cmp-long v0, v0, v18

    if-nez v0, :cond_20

    const/4 v1, 0x1

    goto :goto_15

    :cond_20
    const/4 v1, 0x0

    :goto_15
    and-int/2addr v14, v1

    :goto_16
    add-int/lit8 v13, v23, 0x1

    move/from16 v11, v24

    const/4 v10, 0x2

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_21
    move/from16 v24, v11

    aget-object v1, v7, v0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-nez v1, :cond_22

    const/4 v2, 0x0

    return v2

    :cond_22
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v0, v0, 0x1

    move v12, v2

    move/from16 v11, v24

    const/4 v10, 0x2

    goto/16 :goto_0

    :goto_17
    return v0
.end method

.method public createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1
.end method

.method public createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object p3
.end method

.method public createTypeVariables([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 11

    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    array-length v1, p1

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v1, :cond_2

    if-eq v5, v1, :cond_1

    new-array p1, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-static {v2, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_1
    return-object v2

    :cond_2
    aget-object v6, p1, v4

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    invoke-direct {v7, v8, p2, v4, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iput-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v9, 0x100000

    and-int/2addr v8, v9

    if-eqz v8, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v8

    const/4 v10, 0x4

    if-eq v8, v10, :cond_4

    const/16 v10, 0x8

    if-eq v8, v10, :cond_3

    goto :goto_1

    :cond_3
    move-object v8, p2

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v8

    if-eqz v8, :cond_5

    iget v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v9, v10

    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_1

    :cond_4
    instance-of v8, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v8, :cond_5

    move-object v8, p2

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v8, :cond_5

    iget v10, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v9, v10

    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_5
    :goto_1
    move v8, v3

    :goto_2
    if-lt v8, v5, :cond_6

    add-int/lit8 v6, v5, 0x1

    aput-object v7, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_6
    aget-object v9, v2, v8

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v10, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-static {v9, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateTypeParameterInType(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object p1
.end method

.method public deferBoundCheck(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->deferredBoundChecks:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->deferredBoundChecks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->deferredBoundChecks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public deferCheck(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->deferCheck(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final enclosingClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;
    .locals 2

    move-object v0, p0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    return-object v0
.end method

.method public final enclosingLambdaScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;
    .locals 3

    move-object v0, p0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v2, :cond_0

    return-object v1
.end method

.method public final enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;
    .locals 2

    move-object v0, p0

    :cond_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    return-object v0
.end method

.method public final enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public enclosingReferenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-object v0

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-object v0

    :cond_3
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    return-object v0
.end method

.method public final enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;
    .locals 2

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final enclosingTopMostClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;
    .locals 3

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz v2, :cond_2

    :goto_1
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public findDefaultAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    iget v10, v8, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x340000

    cmp-long v0, v0, v2

    const/4 v11, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    move v12, v0

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, p5

    :goto_1
    if-nez v14, :cond_12

    if-nez v9, :cond_1

    move v0, v11

    goto :goto_2

    :cond_1
    array-length v0, v9

    :goto_2
    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    sub-int v2, v1, v10

    add-int/2addr v2, v0

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v9, :cond_2

    invoke-static {v9, v11, v2, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v3, 0x0

    if-le v1, v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v4

    move v5, v10

    :goto_3
    if-lt v5, v1, :cond_4

    :cond_3
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move v3, v0

    move-object/from16 v0, v16

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v8, v5}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-object/from16 v15, p3

    invoke-virtual {v6, v13, v15, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz v9, :cond_5

    array-length v14, v9

    :goto_4
    if-lt v11, v14, :cond_6

    :cond_5
    move/from16 p2, v1

    goto :goto_5

    :cond_6
    move/from16 p2, v1

    aget-object v1, v9, v11

    invoke-virtual {v4, v1, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p2

    goto :goto_4

    :goto_5
    if-nez v12, :cond_7

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v1

    if-eqz v1, :cond_7

    instance-of v1, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-nez v1, :cond_8

    :cond_7
    const/4 v1, 0x0

    :goto_6
    if-lt v1, v10, :cond_9

    :cond_8
    add-int/lit8 v1, v0, 0x1

    aput-object v13, v2, v0

    move v0, v1

    goto :goto_7

    :cond_9
    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v11, :cond_a

    invoke-virtual {v4, v11, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->areMethodsCompatible(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move/from16 p2, v1

    if-nez v3, :cond_d

    move-object v3, v13

    goto :goto_7

    :cond_c
    move/from16 p2, v1

    :cond_d
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p2

    const/4 v11, 0x0

    goto :goto_3

    :goto_8
    const/4 v1, 0x2

    if-ge v3, v1, :cond_10

    if-nez v9, :cond_e

    if-nez v3, :cond_e

    return-object v0

    :cond_e
    const/4 v11, 0x0

    aget-object v0, v2, v11

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_f
    return-object v0

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v4, 0x300000

    cmp-long v0, v0, v4

    if-ltz v0, :cond_11

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->mostSpecificMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {v6, v2, v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->mostSpecificInterfaceMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0

    :cond_12
    move-object/from16 v15, p3

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object v4, v13

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethodInSuperInterfaces(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CLorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/List;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v14

    goto/16 :goto_1
.end method

.method public findDirectMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 4

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordReference(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C)V

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getCurrentPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v3

    :cond_1
    invoke-virtual {v3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v3

    :cond_2
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array {p1}, [[C

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p2, p1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_3
    return-object v1
.end method

.method public findExactMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v3, v4, :cond_9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isBridge()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v5, 0x310000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    array-length v3, p3

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v4, p3, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isHierarchyConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isSubtypeOfRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    :cond_3
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    :cond_4
    :goto_1
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v0, v3, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {v1, p1, p4, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne p3, v0, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->GETCLASS:[C

    invoke-static {p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p2

    invoke-virtual {p2, p1, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createGetClassMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-interface {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    goto :goto_2

    :cond_7
    iget-wide p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v1, p3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createPolymorphicMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_2
    return-object v1

    :cond_9
    return-object v2
.end method

.method public findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    return-object p1
.end method

.method public findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v5

    .line 3
    invoke-virtual {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v6

    const/16 v7, 0x44

    const/16 v8, 0x8

    if-eq v6, v7, :cond_25

    const/16 v7, 0x84

    if-eq v6, v7, :cond_24

    const/16 v7, 0x204

    if-eq v6, v7, :cond_0

    const/16 v7, 0x1004

    if-eq v6, v7, :cond_0

    const/16 v7, 0x2004

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    .line 6
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v7

    if-nez v7, :cond_23

    .line 7
    :goto_0
    move-object v6, v1

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 8
    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 9
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    invoke-direct {v1, v6, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v1

    .line 10
    :cond_1
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->initializeForStaticImports()V

    .line 11
    invoke-virtual {v6, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v7

    .line 12
    instance-of v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eqz v8, :cond_2

    move-object v8, v0

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const/4 v12, 0x2

    if-eqz v7, :cond_7

    if-eqz p5, :cond_3

    return-object v7

    :cond_3
    if-eqz v3, :cond_5

    if-eqz v8, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v7, v6, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 14
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getCurrentPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    return-object v7

    .line 15
    :cond_6
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v1, v7, v3, v2, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v1

    :cond_7
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_8
    :goto_4
    if-nez v7, :cond_9

    goto/16 :goto_a

    .line 16
    :cond_9
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 17
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v12, v9, :cond_f

    if-nez v8, :cond_a

    .line 18
    array-length v13, v12

    move/from16 v16, v7

    move-object v8, v12

    goto :goto_9

    .line 19
    :cond_a
    array-length v9, v12

    add-int v10, v13, v9

    .line 20
    array-length v11, v8

    if-lt v10, v11, :cond_b

    add-int/lit8 v10, v10, 0x5

    .line 21
    new-array v10, v10, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v11, 0x0

    invoke-static {v8, v11, v10, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_b
    move-object v10, v8

    :goto_5
    move v8, v13

    const/4 v11, 0x0

    :goto_6
    if-lt v11, v9, :cond_c

    move/from16 v16, v7

    move v13, v8

    move-object v8, v10

    goto :goto_9

    .line 22
    :cond_c
    aget-object v13, v12, v11

    move/from16 v16, v7

    const/4 v7, 0x0

    :goto_7
    if-lt v7, v8, :cond_d

    add-int/lit8 v7, v8, 0x1

    .line 23
    aput-object v13, v10, v8

    move v8, v7

    goto :goto_8

    :cond_d
    move/from16 v17, v8

    .line 24
    aget-object v8, v10, v7

    invoke-static {v13, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_e

    move/from16 v8, v17

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v16

    goto :goto_6

    :cond_e
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v17

    goto :goto_7

    :cond_f
    move/from16 v16, v7

    .line 25
    :goto_9
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-nez v6, :cond_1c

    :goto_a
    if-eqz v8, :cond_19

    const/4 v11, 0x0

    :goto_b
    if-lt v11, v13, :cond_10

    const/4 v1, 0x0

    goto :goto_c

    .line 26
    :cond_10
    aget-object v1, v8, v11

    .line 27
    invoke-virtual {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/4 v3, 0x1

    .line 28
    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v4

    if-eqz v4, :cond_14

    if-eqz p5, :cond_11

    return-object v4

    :cond_11
    if-nez v14, :cond_13

    move-object v14, v4

    :cond_12
    const/4 v7, 0x0

    goto :goto_11

    .line 29
    :cond_13
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v3, v14, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x3

    invoke-direct {v1, v14, v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    :goto_c
    if-eqz v1, :cond_19

    return-object v1

    .line 30
    :cond_14
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 31
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v3, :cond_12

    .line 32
    array-length v3, v1

    add-int v4, v13, v3

    .line 33
    array-length v7, v8

    if-lt v4, v7, :cond_15

    add-int/lit8 v4, v4, 0x5

    .line 34
    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v7, 0x0

    invoke-static {v8, v7, v4, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    :cond_15
    const/4 v7, 0x0

    move-object v4, v8

    :goto_d
    move v9, v7

    move v10, v13

    :goto_e
    if-lt v9, v3, :cond_16

    move-object v8, v4

    move v13, v10

    goto :goto_11

    .line 35
    :cond_16
    aget-object v12, v1, v9

    move v8, v7

    :goto_f
    if-lt v8, v10, :cond_17

    add-int/lit8 v8, v10, 0x1

    .line 36
    aput-object v12, v4, v10

    move v10, v8

    goto :goto_10

    .line 37
    :cond_17
    aget-object v13, v4, v8

    invoke-static {v12, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v13

    if-eqz v13, :cond_18

    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :goto_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_19
    if-eqz v14, :cond_1a

    return-object v14

    :cond_1a
    if-eqz v15, :cond_1b

    .line 38
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    const/4 v9, 0x2

    invoke-direct {v1, v15, v6, v2, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v1

    :cond_1b
    const/4 v1, 0x0

    return-object v1

    :cond_1c
    const/4 v7, 0x0

    const/4 v9, 0x2

    .line 39
    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    .line 40
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->initializeForStaticImports()V

    if-nez v3, :cond_1d

    move v11, v7

    goto :goto_12

    .line 41
    :cond_1d
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v11

    :goto_12
    if-nez v3, :cond_1e

    move v10, v7

    goto :goto_13

    :cond_1e
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v10

    :goto_13
    invoke-virtual {v6, v0, v11, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 42
    invoke-virtual {v6, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v10

    if-eqz v10, :cond_22

    if-eqz p5, :cond_1f

    return-object v10

    .line 43
    :cond_1f
    invoke-virtual {v10, v1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v11

    if-eqz v11, :cond_21

    if-nez v14, :cond_20

    move v12, v9

    move-object v14, v10

    goto/16 :goto_4

    .line 44
    :cond_20
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v3, v14, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x3

    invoke-direct {v1, v14, v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v1

    :cond_21
    move v12, v9

    if-nez v15, :cond_8

    move-object v15, v10

    goto/16 :goto_4

    :cond_22
    move v12, v9

    move/from16 v7, v16

    goto/16 :goto_4

    .line 45
    :cond_23
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    goto :goto_14

    :cond_24
    const/4 v1, 0x0

    return-object v1

    .line 46
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    .line 47
    :goto_14
    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_26

    .line 48
    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 49
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    invoke-direct {v1, v3, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v1

    .line 50
    :cond_26
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->LENGTH:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 51
    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v5, 0x80

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_27

    .line 52
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->ArrayLength:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v1

    .line 53
    :cond_27
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->ArrayLength:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v1

    :cond_28
    const/4 v4, 0x0

    return-object v4
.end method

.method public findMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, 0x10000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getCurrentPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordReference(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C)V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    const/4 v9, 0x2

    if-eqz v8, :cond_4

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    move-object/from16 v10, p0

    if-eqz v2, :cond_2

    iget-object v3, v10, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-ne v3, v7, :cond_1

    iget-wide v11, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v13, 0x40000

    and-long/2addr v11, v13

    cmp-long v3, v11, v4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v8, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    return-object v8

    :cond_3
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v0

    invoke-direct {v1, v0, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v1

    :cond_4
    move-object/from16 v10, p0

    const/4 v4, 0x1

    move-object v8, v1

    move-object v11, v3

    move-object v12, v11

    move-object v13, v12

    const/4 v14, 0x0

    :goto_2
    if-nez v4, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v16

    if-nez v16, :cond_9

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v16, v8

    check-cast v16, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v16

    move-object/from16 v9, v16

    goto :goto_3

    :cond_6
    move-object v9, v8

    :goto_3
    instance-of v15, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v15, :cond_8

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isHierarchyBeingConnected()Z

    move-result v15

    if-eqz v15, :cond_7

    return-object v3

    :cond_7
    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectTypeHierarchy()V

    :cond_8
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v16

    :cond_9
    move-object/from16 v9, v16

    if-eqz v9, :cond_f

    sget-object v15, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v9, v15, :cond_f

    if-nez v11, :cond_a

    array-length v14, v9

    move/from16 v17, v4

    move-object v11, v9

    goto :goto_8

    :cond_a
    array-length v15, v9

    add-int v3, v14, v15

    array-length v5, v11

    if-lt v3, v5, :cond_b

    add-int/lit8 v3, v3, 0x5

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x0

    invoke-static {v11, v5, v3, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_b
    move-object v3, v11

    :goto_4
    move v11, v14

    const/4 v5, 0x0

    :goto_5
    if-lt v5, v15, :cond_c

    move/from16 v17, v4

    move v14, v11

    move-object v11, v3

    goto :goto_8

    :cond_c
    aget-object v14, v9, v5

    move/from16 v17, v4

    const/4 v4, 0x0

    :goto_6
    if-lt v4, v11, :cond_d

    add-int/lit8 v4, v11, 0x1

    aput-object v14, v3, v11

    move v11, v4

    move-object/from16 v18, v9

    goto :goto_7

    :cond_d
    move-object/from16 v18, v9

    aget-object v9, v3, v4

    invoke-static {v14, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-eqz v9, :cond_e

    :goto_7
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v17

    move-object/from16 v9, v18

    goto :goto_5

    :cond_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, v18

    goto :goto_6

    :cond_f
    move/from16 v17, v4

    :goto_8
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v8

    if-nez v8, :cond_1b

    :goto_9
    if-eqz v11, :cond_18

    const/4 v5, 0x0

    :goto_a
    if-lt v5, v14, :cond_10

    const/4 v1, 0x0

    goto :goto_b

    :cond_10
    aget-object v1, v11, v5

    invoke-virtual {v7, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordReference(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C)V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v7, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-nez v12, :cond_12

    move-object v12, v2

    :cond_11
    const/4 v4, 0x0

    goto :goto_10

    :cond_12
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v12, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    :goto_b
    if-eqz v1, :cond_18

    return-object v1

    :cond_13
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_11

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v2, :cond_11

    array-length v2, v1

    add-int v3, v14, v2

    array-length v4, v11

    if-lt v3, v4, :cond_14

    add-int/lit8 v3, v3, 0x5

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x0

    invoke-static {v11, v4, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    move-object v3, v11

    :goto_c
    move v6, v4

    move v8, v14

    :goto_d
    if-lt v6, v2, :cond_15

    move-object v11, v3

    move v14, v8

    goto :goto_10

    :cond_15
    aget-object v9, v1, v6

    move v11, v4

    :goto_e
    if-lt v11, v8, :cond_16

    add-int/lit8 v11, v8, 0x1

    aput-object v9, v3, v8

    move v8, v11

    goto :goto_f

    :cond_16
    aget-object v14, v3, v11

    invoke-static {v9, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-eqz v14, :cond_17

    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_18
    if-eqz v12, :cond_19

    return-object v12

    :cond_19
    if-eqz v13, :cond_1a

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {v1, v0, v13, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v1

    :cond_1a
    const/4 v5, 0x0

    return-object v5

    :cond_1b
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v7, v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordReference(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C)V

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    if-eqz v9, :cond_1f

    invoke-virtual {v7, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-nez v2, :cond_1c

    invoke-virtual {v9, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v15

    if-eqz v15, :cond_1e

    goto :goto_11

    :cond_1c
    invoke-virtual {v9, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v15

    if-eqz v15, :cond_1e

    :goto_11
    if-nez v12, :cond_1d

    move-object v12, v9

    :goto_12
    move v9, v3

    move-object v3, v5

    goto/16 :goto_2

    :cond_1d
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {v1, v0, v12, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v1

    :cond_1e
    move-object v13, v9

    goto :goto_12

    :cond_1f
    move v9, v3

    move-object v3, v5

    move/from16 v4, v17

    goto/16 :goto_2
.end method

.method public findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod0(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    aget-object p2, p2, p3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    instance-of p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p3, :cond_0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-interface {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    const/16 p5, 0x10

    invoke-direct {p2, p1, p3, p4, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p2

    :cond_0
    return-object p1
.end method

.method public findMethod0(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 30

    move-object/from16 v8, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v7, p4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v11

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    const/4 v13, 0x3

    invoke-direct {v12, v13}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v14

    invoke-virtual {v14, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_1

    invoke-virtual {v14, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    array-length v0, v10

    invoke-virtual {v6, v9, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([CI)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-virtual {v12, v0}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->addAll([Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethodInSuperInterfaces(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CLorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/List;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v2, 0x300000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-wide/32 v16, 0x310000

    cmp-long v3, v0, v16

    if-ltz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    move-object/from16 v20, v14

    iget-wide v13, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v21, 0x340000

    cmp-long v4, v13, v21

    if-ltz v4, :cond_4

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v14

    move-object v4, v5

    :goto_4
    const/16 v21, 0x0

    if-nez v4, :cond_3d

    iget v4, v12, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    if-nez v13, :cond_6

    if-eqz v2, :cond_5

    if-nez v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const/16 v22, 0x0

    goto :goto_5

    :cond_6
    const/16 v22, 0x1

    :goto_5
    if-lez v4, :cond_f

    move-object/from16 v11, v21

    move-object/from16 v23, v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-lt v2, v4, :cond_7

    move-wide/from16 v26, v0

    move v0, v3

    move-object/from16 v1, v20

    move-object/from16 v15, v23

    goto/16 :goto_a

    :cond_7
    invoke-virtual {v12, v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v15, v24

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v8, v15, v10, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v15

    if-eqz v15, :cond_e

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v24

    move-wide/from16 v26, v0

    if-nez v24, :cond_8

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_9

    :cond_8
    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    if-nez v11, :cond_a

    move-object v11, v15

    :cond_a
    :goto_7
    move-object/from16 v1, v20

    goto :goto_9

    :goto_8
    if-ne v4, v0, :cond_c

    invoke-virtual {v15, v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v22, :cond_b

    filled-new-array {v15}, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v12

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findDefaultAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v15

    :cond_c
    move-object/from16 v1, v20

    if-nez v3, :cond_d

    new-array v0, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-object/from16 v23, v0

    :cond_d
    add-int/lit8 v0, v3, 0x1

    aput-object v15, v23, v3

    move v3, v0

    goto :goto_9

    :cond_e
    move-wide/from16 v26, v0

    goto :goto_7

    :goto_9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v20, v1

    move-wide/from16 v0, v26

    goto :goto_6

    :cond_f
    move-wide/from16 v26, v0

    move-object/from16 v1, v20

    move-object/from16 v11, v21

    move-object v15, v11

    const/4 v0, 0x0

    :goto_a
    const/16 v20, 0x2

    if-nez v0, :cond_23

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_10

    const/16 v1, 0xd

    if-eq v0, v1, :cond_10

    goto :goto_b

    :cond_10
    return-object v11

    :cond_11
    :goto_b
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v28, v4

    const/4 v6, 0x0

    move-object/from16 v4, p4

    move v7, v6

    move-object v6, v12

    move v8, v7

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findDefaultAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_15

    if-eqz v13, :cond_14

    move/from16 v1, v28

    if-lez v1, :cond_14

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v2

    if-eqz v2, :cond_14

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    move v4, v8

    :goto_c
    if-lt v4, v1, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual {v12, v4}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v14, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->computeSubstituteMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v14, v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isSubstituteParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    const/16 v2, 0x18

    invoke-direct {v1, v0, v9, v10, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v1

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_14
    :goto_d
    return-object v0

    :cond_15
    iget v0, v12, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    if-nez v0, :cond_16

    return-object v21

    :cond_16
    if-eqz v11, :cond_17

    return-object v11

    :cond_17
    invoke-virtual {v12, v8}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v2, v10

    iget v3, v12, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    const/4 v1, -0x1

    move-object v4, v0

    move v11, v1

    move v14, v8

    :goto_e
    if-lt v14, v3, :cond_18

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/4 v2, 0x1

    invoke-direct {v0, v4, v1, v10, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v0

    :cond_18
    invoke-virtual {v12, v14}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v1

    move v6, v8

    move v7, v6

    :goto_f
    if-lt v6, v2, :cond_1e

    if-ge v7, v11, :cond_19

    goto :goto_12

    :cond_19
    if-ne v7, v11, :cond_1c

    if-ge v5, v2, :cond_1a

    sub-int v1, v2, v5

    mul-int/lit8 v1, v1, 0x2

    goto :goto_10

    :cond_1a
    sub-int v1, v5, v2

    :goto_10
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v5

    if-ge v5, v2, :cond_1b

    sub-int v5, v2, v5

    mul-int/lit8 v5, v5, 0x2

    goto :goto_11

    :cond_1b
    sub-int/2addr v5, v2

    :goto_11
    if-lt v1, v5, :cond_1c

    goto :goto_12

    :cond_1c
    if-eq v4, v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_12

    :cond_1d
    move-object v4, v0

    move v11, v7

    :goto_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :cond_1e
    aget-object v9, v10, v6

    if-nez v6, :cond_1f

    move v13, v8

    goto :goto_13

    :cond_1f
    add-int/lit8 v13, v6, -0x1

    :goto_13
    if-ge v13, v5, :cond_22

    add-int/lit8 v15, v6, 0x1

    if-lt v13, v15, :cond_20

    goto :goto_14

    :cond_20
    aget-object v15, v1, v13

    invoke-static {v15, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v15

    if-eqz v15, :cond_21

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_21
    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    :cond_22
    :goto_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_23
    const/4 v8, 0x0

    move v2, v8

    move v4, v2

    :goto_15
    if-lt v4, v0, :cond_3a

    if-eqz v2, :cond_36

    const/4 v0, 0x1

    if-eq v2, v0, :cond_33

    const-wide/32 v0, 0x2f0000

    cmp-long v0, v26, v0

    if-gtz v0, :cond_25

    aget-object v0, v15, v8

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_24

    move-object/from16 v8, p0

    invoke-virtual {v8, v15, v2, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->mostSpecificClassMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    goto :goto_16

    :cond_24
    move-object/from16 v8, p0

    invoke-virtual {v8, v15, v2, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->mostSpecificInterfaceMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_25
    move v11, v8

    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v0, v0, v16

    if-ltz v0, :cond_2c

    move v4, v11

    :goto_17
    if-lt v4, v2, :cond_26

    goto :goto_1c

    :cond_26
    aget-object v0, v15, v4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isParameterizedGeneric()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->shallowOriginal()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :cond_27
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasSubstitutedParameters()Z

    move-result v1

    if-eqz v1, :cond_28

    add-int/lit8 v1, v4, 0x1

    :goto_18
    if-lt v1, v2, :cond_29

    :cond_28
    const/4 v14, 0x3

    goto :goto_1b

    :cond_29
    aget-object v3, v15, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasSubstitutedParameters()Z

    move-result v13

    if-eqz v13, :cond_2a

    if-eq v3, v0, :cond_2b

    iget-object v13, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v14, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v13, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v13

    if-eqz v13, :cond_2a

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_19

    :cond_2a
    const/4 v14, 0x3

    goto :goto_1a

    :cond_2b
    :goto_19
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aget-object v1, v15, v4

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v14, 0x3

    invoke-direct {v0, v1, v2, v3, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v0

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2c
    :goto_1c
    if-eqz p5, :cond_30

    new-array v1, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move v3, v11

    move v4, v3

    :goto_1d
    if-lt v4, v2, :cond_2e

    const/4 v0, 0x1

    if-ne v3, v0, :cond_2d

    aget-object v0, v1, v11

    return-object v0

    :cond_2d
    if-le v3, v0, :cond_30

    move-object/from16 v0, p0

    move v2, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->mostSpecificMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0

    :cond_2e
    const/4 v0, 0x1

    aget-object v13, v15, v4

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v13

    if-eqz v13, :cond_2f

    add-int/lit8 v13, v3, 0x1

    aget-object v14, v15, v4

    aput-object v14, v1, v3

    move v3, v13

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_30
    array-length v0, v15

    if-eq v2, v0, :cond_31

    new-array v0, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v15, v11, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v15, v0

    :cond_31
    if-eqz v22, :cond_32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v12

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findDefaultAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    goto :goto_1e

    :cond_32
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->mostSpecificMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_33
    move v11, v8

    move-object/from16 v8, p0

    if-eqz v22, :cond_34

    aget-object v0, v15, v11

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v12

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findDefaultAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0

    :cond_34
    aget-object v0, v15, v11

    if-eqz v0, :cond_35

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_35
    return-object v0

    :cond_36
    move v11, v8

    move-object/from16 v8, p0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v12

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findDefaultAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_37

    return-object v0

    :cond_37
    aget-object v0, v15, v11

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_38

    if-eqz v13, :cond_39

    const/16 v20, 0x14

    :cond_38
    :goto_1f
    move/from16 v1, v20

    goto :goto_20

    :cond_39
    const/16 v20, 0x1d

    goto :goto_1f

    :goto_20
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v2, v0, v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v2

    :cond_3a
    const/4 v14, 0x3

    const/16 v18, 0x1

    move v11, v8

    move-object/from16 v8, p0

    aget-object v3, v15, v4

    invoke-virtual {v3, v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v19

    if-eqz v19, :cond_3c

    if-eq v2, v4, :cond_3b

    aput-object v21, v15, v4

    aput-object v3, v15, v2

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    move v8, v11

    goto/16 :goto_15

    :cond_3d
    move-wide/from16 v26, v0

    move-object/from16 v1, v20

    const/16 v18, 0x1

    const/16 v19, 0x3

    const/16 v23, 0x0

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-nez v7, :cond_3e

    move/from16 v0, v23

    goto :goto_21

    :cond_3e
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v0

    :goto_21
    if-nez v7, :cond_3f

    move/from16 v15, v23

    goto :goto_22

    :cond_3f
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v15

    :goto_22
    invoke-virtual {v4, v8, v0, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v4, v10

    invoke-virtual {v0, v9, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([CI)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    array-length v15, v4

    if-lez v15, :cond_4b

    move-object/from16 v20, v1

    if-eqz v2, :cond_40

    if-nez v11, :cond_41

    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    if-lez v1, :cond_40

    goto :goto_23

    :cond_40
    move/from16 v24, v2

    move-object/from16 v25, v5

    goto/16 :goto_28

    :cond_41
    :goto_23
    move/from16 v22, v15

    move/from16 v1, v23

    :goto_24
    if-lt v1, v15, :cond_42

    move/from16 v24, v2

    move-object/from16 v25, v5

    move/from16 v15, v22

    goto :goto_28

    :cond_42
    move/from16 v24, v2

    aget-object v2, v4, v1

    if-nez v2, :cond_43

    goto :goto_25

    :cond_43
    if-eqz v11, :cond_44

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v25

    if-nez v25, :cond_44

    add-int/lit8 v22, v22, -0x1

    aput-object v21, v4, v1

    :goto_25
    move-object/from16 v25, v5

    goto :goto_27

    :cond_44
    move-object/from16 v25, v5

    iget v5, v12, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    move/from16 v6, v23

    :goto_26
    if-lt v6, v5, :cond_45

    goto :goto_27

    :cond_45
    invoke-virtual {v12, v6}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move/from16 v29, v5

    invoke-virtual/range {v28 .. v28}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->findOriginalInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    if-eqz v7, :cond_47

    invoke-virtual {v14, v5, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v5

    if-eqz v5, :cond_47

    if-eqz v3, :cond_46

    invoke-virtual/range {v28 .. v28}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isBridge()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isBridge()Z

    move-result v2

    if-nez v2, :cond_46

    goto :goto_27

    :cond_46
    add-int/lit8 v22, v22, -0x1

    aput-object v21, v4, v1

    :goto_27
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move/from16 v2, v24

    move-object/from16 v5, v25

    goto :goto_24

    :cond_47
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, p4

    move/from16 v5, v29

    goto :goto_26

    :goto_28
    if-lez v15, :cond_4c

    array-length v1, v4

    if-ne v1, v15, :cond_48

    invoke-virtual {v12, v4}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->addAll([Ljava/lang/Object;)V

    goto :goto_2a

    :cond_48
    array-length v1, v4

    move/from16 v2, v23

    :goto_29
    if-lt v2, v1, :cond_49

    goto :goto_2a

    :cond_49
    aget-object v5, v4, v2

    if-eqz v5, :cond_4a

    invoke-virtual {v12, v5}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_4b
    move-object/from16 v20, v1

    move/from16 v24, v2

    move-object/from16 v25, v5

    :cond_4c
    :goto_2a
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move/from16 v2, v24

    move-object/from16 v5, v25

    move-wide/from16 v0, v26

    goto/16 :goto_4
.end method

.method public findMethodForArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/16 p4, 0x8

    invoke-direct {p1, p2, p3, v0, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne p3, v1, :cond_3

    const/4 v1, 0x0

    aget-char v1, p2, v1

    const/16 v3, 0x63

    if-eq v1, v3, :cond_2

    const/16 v3, 0x67

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->GETCLASS:[C

    invoke-static {p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createGetClassMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CLONE:[C

    invoke-static {p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->getCloneMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    invoke-virtual {v0, p1, p4, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    const/16 p4, 0x1a

    invoke-direct {p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    :cond_5
    return-object p1
.end method

.method public findMethodInSuperInterfaces(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CLorg/eclipse/jdt/internal/compiler/util/ObjectVector;Ljava/util/List;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;",
            "[C",
            "Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;",
            ">;",
            "Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_11

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v4, v5, :cond_11

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v5, :cond_0

    goto/16 :goto_e

    :cond_0
    aget-object v8, v4, v7

    if-eqz v2, :cond_4

    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->uncapture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v9, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v15, p1

    move-object/from16 v9, p2

    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_d

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-nez v3, :cond_5

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceStart()I

    move-result v9

    :goto_2
    if-nez v3, :cond_6

    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->sourceEnd()I

    move-result v10

    :goto_3
    invoke-virtual {v8, v0, v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v9, p2

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v10

    array-length v11, v10

    if-lez v11, :cond_7

    iget v11, v1, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    array-length v12, v10

    const/4 v13, 0x0

    :goto_4
    if-lt v13, v12, :cond_8

    :cond_7
    move-object/from16 v15, p1

    goto :goto_8

    :cond_8
    aget-object v14, v10, v13

    move-object/from16 v15, p1

    invoke-virtual {v14, v15, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v16

    if-nez v16, :cond_9

    goto :goto_7

    :cond_9
    if-lez v11, :cond_c

    const/4 v6, 0x0

    :goto_5
    if-lt v6, v11, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    :cond_c
    :goto_6
    invoke-virtual {v1, v14}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    :goto_8
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v0, v6, :cond_3

    array-length v6, v0

    add-int v8, v5, v6

    array-length v10, v4

    if-lt v8, v10, :cond_d

    add-int/lit8 v8, v8, 0x5

    new-array v8, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v10, 0x0

    invoke-static {v4, v10, v8, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    move-object v8, v4

    :goto_9
    move v12, v5

    move v11, v10

    :goto_a
    if-lt v11, v6, :cond_e

    move-object v4, v8

    move v5, v12

    goto :goto_d

    :cond_e
    aget-object v13, v0, v11

    move v4, v10

    :goto_b
    if-lt v4, v12, :cond_f

    add-int/lit8 v4, v12, 0x1

    aput-object v13, v8, v12

    move v12, v4

    goto :goto_c

    :cond_f
    aget-object v5, v8, v4

    invoke-static {v13, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :goto_d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_11
    :goto_e
    return-void
.end method

.method public findType([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordReference([[C[C)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p2, p3, :cond_1

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array {p1}, [[C

    move-result-object p1

    const/4 p3, 0x2

    invoke-direct {p2, p1, v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_1
    return-object v0
.end method

.method public findVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBinding([CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v5

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    :try_start_0
    iput-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    and-int/lit8 v8, v2, 0x3

    const/4 v10, 0x1

    if-eqz v8, :cond_29

    move-object v11, v1

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    iget v7, v11, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v7, v10, :cond_22

    const/4 v9, 0x2

    if-eq v7, v9, :cond_21

    const/4 v10, 0x3

    if-eq v7, v10, :cond_10

    const/4 v10, 0x4

    if-eq v7, v10, :cond_0

    goto/16 :goto_11

    :cond_0
    if-eqz v13, :cond_1

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v13

    :cond_1
    if-eqz v8, :cond_4

    :try_start_1
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7

    if-eqz v7, :cond_3

    move/from16 v7, v19

    if-lez v7, :cond_2

    invoke-interface {v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setDepth(I)V

    move-object/from16 v10, v20

    invoke-interface {v3, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    goto/16 :goto_16

    :goto_1
    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v8

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    move-object v7, v8

    const/4 v8, 0x0

    :goto_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v10

    iget-wide v10, v10, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v12, 0x310000

    cmp-long v10, v10, v12

    if-ltz v10, :cond_f

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInImports()V

    iget-object v10, v5, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-eqz v10, :cond_f

    array-length v11, v10

    const/4 v12, 0x0

    :goto_3
    if-lt v12, v11, :cond_b

    array-length v11, v10

    move-object v12, v8

    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_4
    if-lt v8, v11, :cond_5

    if-eqz v7, :cond_2a

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-interface {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v7

    :cond_5
    :try_start_3
    aget-object v13, v10, v8

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v14

    if-eqz v14, :cond_a

    iget-boolean v14, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    if-eqz v14, :cond_a

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v15, v14, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v15, :cond_a

    check-cast v14, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v14, v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v15

    if-nez v15, :cond_6

    if-nez v12, :cond_a

    move-object v12, v14

    goto :goto_5

    :cond_6
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v15

    if-eqz v15, :cond_a

    if-ne v7, v14, :cond_7

    goto :goto_5

    :cond_7
    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v13, :cond_8

    if-eqz v4, :cond_8

    iget v15, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v15, v9

    iput v15, v13, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_8
    if-eqz v16, :cond_9

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x3

    invoke-direct {v2, v7, v4, v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    iput-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v2

    :cond_9
    move-object v7, v14

    const/16 v16, 0x1

    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    :try_start_4
    aget-object v13, v10, v12

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v14

    if-eqz v14, :cond_e

    iget-boolean v14, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    if-nez v14, :cond_e

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    array-length v15, v14

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    aget-object v14, v14, v15

    invoke-static {v14, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v14, 0xd

    invoke-virtual {v5, v13, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->resolveSingleImport(Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v14

    if-eqz v14, :cond_e

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v15, v14, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v15, :cond_e

    check-cast v14, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v7, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v7, :cond_c

    if-eqz v4, :cond_c

    iget v13, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v13, v9

    iput v13, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_c
    iget-object v7, v14, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-interface {v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_d

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v14

    :cond_d
    move-object v7, v14

    if-nez v8, :cond_e

    move-object v8, v7

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    :cond_f
    move-object v12, v8

    goto/16 :goto_12

    :cond_10
    move/from16 v7, v19

    move-object/from16 v10, v20

    :try_start_5
    move-object v9, v11

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move/from16 v20, v7

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    if-nez v15, :cond_1e

    invoke-virtual {v9, v7, v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v9

    if-eqz v9, :cond_1e

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v15

    move-object/from16 v21, v13

    const/4 v13, 0x3

    if-ne v15, v13, :cond_13

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_12

    :cond_11
    const/4 v2, 0x0

    goto :goto_6

    :cond_12
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x5

    invoke-direct {v2, v8, v4, v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V
    :try_end_5
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x0

    iput-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v2

    :goto_6
    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v9

    :cond_13
    :try_start_6
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v13

    if-nez v13, :cond_15

    if-eqz v14, :cond_14

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v14, v9, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v15, 0x6

    invoke-direct {v13, v9, v14, v0, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    goto :goto_7

    :cond_14
    if-eqz v12, :cond_15

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v14, v9, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v15, 0x7

    invoke-direct {v13, v9, v14, v0, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    goto :goto_7

    :cond_15
    const/4 v13, 0x0

    :goto_7
    iget-object v14, v9, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v7, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-nez v14, :cond_16

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v14

    iget-wide v14, v14, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v22, 0x300000

    cmp-long v14, v14, v22

    if-ltz v14, :cond_19

    :cond_16
    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_18

    :cond_17
    move/from16 v15, v17

    goto :goto_8

    :cond_18
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v14

    if-eqz v14, :cond_19

    iget-object v14, v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v15, v9, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v14, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-eqz v14, :cond_19

    iget-object v14, v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v14, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-eqz v14, :cond_19

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x5

    invoke-direct {v2, v8, v4, v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V
    :try_end_6
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v3, 0x0

    iput-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v2

    :cond_19
    move/from16 v15, v17

    goto :goto_b

    :goto_8
    if-lez v15, :cond_1a

    :try_start_7
    invoke-interface {v3, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setDepth(I)V

    invoke-interface {v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    :try_end_7
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_1a
    if-nez v13, :cond_1b

    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :cond_1b
    move-object v9, v13

    goto :goto_9

    :goto_a
    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v9

    :cond_1c
    move/from16 v15, v17

    const/4 v13, 0x0

    :goto_b
    if-eqz v8, :cond_1d

    :try_start_8
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v14

    move-object/from16 v17, v10

    const/4 v10, 0x2

    if-ne v14, v10, :cond_1f

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v14

    if-eq v14, v10, :cond_1f

    :cond_1d
    move-object/from16 v20, v7

    move-object v8, v9

    move/from16 v17, v15

    goto :goto_c

    :cond_1e
    move-object/from16 v21, v13

    move/from16 v15, v17

    move-object/from16 v17, v10

    :cond_1f
    move-object/from16 v13, v21

    move/from16 v24, v20

    move-object/from16 v20, v17

    move/from16 v17, v24

    :goto_c
    add-int/lit8 v9, v15, 0x1

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v7

    or-int/2addr v12, v7

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v7

    if-nez v7, :cond_20

    const/4 v14, 0x0

    goto :goto_d

    :cond_20
    iget-boolean v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    move v14, v7

    :goto_d
    move/from16 v19, v17

    const/4 v15, 0x0

    const/16 v18, 0x1

    move/from16 v17, v9

    goto/16 :goto_11

    :cond_21
    move-object/from16 v21, v13

    move/from16 v15, v17

    move-object/from16 v17, v20

    move/from16 v20, v19

    move-object v7, v11

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v9, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    or-int/2addr v12, v9

    iget-boolean v9, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    or-int/2addr v14, v9

    iget-boolean v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    move/from16 v24, v15

    move v15, v7

    move/from16 v7, v24

    goto :goto_e

    :cond_22
    move-object/from16 v21, v13

    move/from16 v7, v17

    move-object/from16 v17, v20

    move/from16 v20, v19

    :goto_e
    invoke-virtual {v11, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    move-result-object v9

    if-eqz v9, :cond_27

    if-eqz v8, :cond_23

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x5

    invoke-direct {v2, v8, v4, v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V
    :try_end_8
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v3, 0x0

    iput-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v2

    :cond_23
    if-lez v7, :cond_24

    :try_start_9
    invoke-interface {v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setDepth(I)V

    :cond_24
    if-eqz v18, :cond_25

    instance-of v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v0, :cond_26

    move-object v0, v3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x80000

    or-int/2addr v2, v4

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_25
    :goto_f
    const/4 v2, 0x0

    goto :goto_10

    :cond_26
    instance-of v0, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;

    if-eqz v0, :cond_25

    move-object v0, v3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v4, 0x200000

    or-int/2addr v2, v4

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I
    :try_end_9
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_f

    :goto_10
    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v9

    :cond_27
    move/from16 v19, v20

    move-object/from16 v13, v21

    move-object/from16 v20, v17

    move/from16 v17, v7

    :goto_11
    :try_start_a
    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaScope()Z

    move-result v7

    if-eqz v7, :cond_28

    const/16 v18, 0x1

    :cond_28
    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_29
    const/4 v12, 0x0

    :cond_2a
    :goto_12
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_2f

    invoke-static/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBaseType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5
    :try_end_a
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v5, :cond_2b

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v5

    :cond_2b
    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_2c

    const/4 v10, 0x4

    goto :goto_13

    :cond_2c
    const/16 v10, 0x14

    :goto_13
    :try_start_b
    invoke-virtual {v1, v0, v10, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5
    :try_end_b
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v5, :cond_2d

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2e

    :cond_2d
    const/4 v2, 0x0

    goto :goto_14

    :cond_2e
    move-object v2, v4

    goto :goto_15

    :goto_14
    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v4

    :cond_2f
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_30

    :try_start_c
    invoke-virtual {v5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSimpleReference([C)V

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTopLevelPackage([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2
    :try_end_c
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v2, :cond_31

    const/4 v4, 0x0

    iput-object v4, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v2

    :cond_30
    const/4 v2, 0x0

    :cond_31
    :goto_15
    if-eqz v12, :cond_32

    const/4 v4, 0x0

    iput-object v4, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v12

    :cond_32
    const/4 v4, 0x0

    if-eqz v2, :cond_33

    :try_start_d
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v5
    :try_end_d
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/4 v7, 0x1

    if-eq v5, v7, :cond_33

    iput-object v4, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v2

    :cond_33
    :try_start_e
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V
    :try_end_e
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v3, 0x0

    iput-object v3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v2

    :goto_16
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->updateContext(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_17
    iput-object v2, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    throw v0
.end method

.method public getConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getConstructor0(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    instance-of v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    const/16 v1, 0x10

    invoke-direct {p2, p1, v0, p3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getConstructor0(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 12

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x0

    :try_start_0
    iput-object p3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    array-length v3, p2

    invoke-virtual {p1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([CI)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    invoke-direct {p1, v0, p2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object p1

    :cond_2
    :try_start_2
    array-length v0, v3

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v4, v3

    const/4 v6, 0x0

    move-object v9, v2

    move v7, v6

    move v8, v7

    :goto_1
    if-lt v7, v4, :cond_9

    if-nez v8, :cond_4

    if-nez v9, :cond_3

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aget-object v0, v3, v6

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    invoke-direct {p1, v0, v3, p2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object p1

    :cond_3
    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v9

    :cond_4
    :try_start_3
    new-array v4, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move v3, v6

    move v7, v3

    :goto_2
    if-lt v3, v8, :cond_7

    if-ne v7, v5, :cond_5

    aget-object p1, v4, v6
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object p1

    :cond_5
    if-nez v7, :cond_6

    :try_start_4
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aget-object p2, v0, v6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x2

    invoke-direct {p1, p2, v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object p1

    :cond_6
    move-object v3, p0

    move v5, v7

    move-object v6, p2

    move-object v7, p3

    move-object v8, p1

    :try_start_5
    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->mostSpecificMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1
    :try_end_5
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object p1

    :cond_7
    :try_start_6
    aget-object v9, v0, v3

    invoke-virtual {v9, p3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v10

    if-eqz v10, :cond_8

    add-int/lit8 v10, v7, 0x1

    aput-object v9, v4, v7

    move v7, v10

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    aget-object v10, v3, v7

    invoke-virtual {p0, v10, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v11

    if-eqz v11, :cond_a

    add-int/lit8 v11, v8, 0x1

    aput-object v10, v0, v8
    :try_end_6
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v8, v11

    goto :goto_3

    :cond_a
    if-nez v9, :cond_b

    move-object v9, v10

    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :goto_4
    :try_start_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->updateContext(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_5
    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    throw p1
.end method

.method public final getCurrentPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getDeclarationModifiers()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_4

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializer()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_4

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    return v0

    :cond_2
    move-object v1, p0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_3

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    return v0

    :cond_3
    if-eqz v1, :cond_4

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    return v0

    :cond_4
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getExactConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->canBeInstantiated()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isReifiable()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    new-array v7, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    aput-object v1, v7, v0

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v9

    const/16 v4, 0x1001

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-object p2

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    array-length v4, p1

    move-object v5, v2

    :goto_1
    if-lt v0, v4, :cond_6

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq p1, p2, :cond_5

    array-length p1, p1

    array-length p2, v3

    if-eq p1, p2, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v5

    :cond_5
    return-object v5

    :cond_6
    aget-object v6, p1, v0

    invoke-virtual {v6, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v7

    if-eqz v7, :cond_8

    return-object v2

    :cond_8
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v7

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v7, v8, :cond_9

    if-nez v3, :cond_9

    return-object v2

    :cond_9
    if-nez v5, :cond_a

    move-object v5, v6

    :goto_2
    add-int/2addr v0, v1

    goto :goto_1

    :cond_a
    :goto_3
    return-object v2
.end method

.method public getExactMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 16
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v4, p1

    :goto_0
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .line 20
    :try_start_0
    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getExactMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/Scope$MethodClashException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_9

    .line 21
    invoke-virtual {v1, p3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    .line 23
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v2

    .line 24
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v2, v3, :cond_4

    if-eqz p3, :cond_9

    array-length v4, p3

    array-length v5, v2

    if-eq v4, v5, :cond_4

    goto :goto_1

    .line 25
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CLONE:[C

    invoke-static {p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->getCloneMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    .line 28
    :cond_5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->GETCLASS:[C

    invoke-static {p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p2

    invoke-virtual {p2, p1, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createGetClassMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    move-result-object p1

    return-object p1

    .line 30
    :cond_6
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 31
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->GETCLASS:[C

    invoke-static {p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 32
    iget-object p2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 33
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p2

    invoke-virtual {p2, p1, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createGetClassMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    move-result-object p1

    return-object p1

    :cond_7
    if-eq v2, v3, :cond_8

    .line 34
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v1

    :catch_0
    :cond_9
    :goto_1
    return-object v0
.end method

.method public getField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iput-object p3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findField(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v3

    :cond_0
    :try_start_1
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    instance-of v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-direct {v3, p1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v3

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->updateContext(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    throw p1
.end method

.method public getImplicitMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v10

    iget-wide v0, v10, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v2, 0x300000

    cmp-long v0, v0, v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ltz v0, :cond_0

    move v13, v11

    goto :goto_0

    :cond_0
    move v13, v12

    :goto_0
    move-object v15, v6

    move v0, v12

    move v3, v0

    move/from16 v16, v3

    move/from16 v17, v16

    move/from16 v18, v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    :goto_1
    iget v1, v15, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_35

    const/4 v14, 0x3

    if-eq v1, v14, :cond_1a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    move v1, v12

    move/from16 v23, v11

    move v11, v3

    move/from16 v3, v23

    goto/16 :goto_18

    :cond_1
    if-eqz v16, :cond_17

    iget-wide v0, v10, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    if-eqz v4, :cond_3

    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_2

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v0, v11, :cond_2

    return-object v4

    :cond_2
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    if-ne v0, v11, :cond_3

    if-eqz v18, :cond_3

    return-object v4

    :cond_3
    check-cast v15, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInImports()V

    iget-object v10, v15, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-eqz v10, :cond_17

    array-length v13, v10

    move v3, v12

    move/from16 v16, v3

    const/4 v2, 0x0

    :goto_2
    if-lt v3, v13, :cond_6

    if-eqz v2, :cond_5

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->size:I

    if-ne v3, v11, :cond_4

    invoke-virtual {v2, v12}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto/16 :goto_b

    :cond_4
    new-array v1, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->copyInto([Ljava/lang/Object;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v3

    move-object/from16 v3, p2

    move-object v10, v4

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->mostSpecificMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    move-object v4, v10

    goto/16 :goto_b

    :cond_5
    move-object v10, v4

    goto/16 :goto_b

    :cond_6
    aget-object v1, v10, v3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-boolean v12, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    if-eqz v12, :cond_8

    if-nez v16, :cond_7

    instance-of v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v12, :cond_7

    move-object v12, v0

    check-cast v12, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v14, v1

    move-object v1, v12

    move-object v12, v2

    move-object/from16 v2, p1

    move/from16 v18, v3

    move-object/from16 v3, p2

    move-object/from16 v21, v4

    move-object/from16 v4, p3

    move-object/from16 v22, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v14, v1

    move-object v12, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    goto :goto_3

    :cond_8
    move-object v14, v1

    move-object v12, v2

    move/from16 v18, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_9

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v1, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    goto :goto_4

    :cond_9
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v1, :cond_a

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v0, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v14, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    array-length v1, v0

    sub-int/2addr v1, v11

    invoke-virtual {v6, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v0, 0x0

    :goto_4
    move-object/from16 v4, v21

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_c

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_d

    if-nez v4, :cond_c

    move-object v4, v0

    move-object v2, v12

    :cond_b
    const/4 v14, 0x2

    goto/16 :goto_a

    :cond_c
    :goto_5
    const/4 v14, 0x2

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v6, v0, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v15, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-nez v16, :cond_e

    iget-boolean v0, v14, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    if-nez v0, :cond_e

    move/from16 v16, v11

    const/4 v2, 0x0

    goto :goto_6

    :cond_e
    move-object v2, v12

    :goto_6
    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_f
    iget-object v0, v14, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v0, :cond_10

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/4 v14, 0x2

    or-int/2addr v3, v14

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_7

    :cond_10
    const/4 v14, 0x2

    :goto_7
    if-nez v2, :cond_11

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;-><init>(I)V

    move-object v2, v0

    :cond_11
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/ObjectVector;->add(Ljava/lang/Object;)V

    goto :goto_a

    :cond_12
    const/4 v14, 0x2

    if-nez v4, :cond_13

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v0, v1, v7, v2, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    move-object v4, v0

    :cond_13
    :goto_8
    move-object v2, v12

    goto :goto_a

    :cond_14
    const/4 v14, 0x2

    if-nez v4, :cond_13

    :goto_9
    move-object v4, v1

    goto :goto_8

    :cond_15
    const/4 v14, 0x2

    if-nez v4, :cond_13

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    invoke-direct {v1, v0, v7, v8, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    goto :goto_9

    :cond_16
    move-object v12, v2

    move/from16 v18, v3

    move-object/from16 v22, v5

    goto :goto_5

    :goto_a
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v5, v22

    const/4 v12, 0x0

    const/4 v14, 0x3

    goto/16 :goto_2

    :cond_17
    move-object/from16 v22, v5

    move-object/from16 v5, v22

    :goto_b
    if-eqz v5, :cond_18

    iget-object v0, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-interface {v9, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-object v5

    :cond_18
    if-eqz v4, :cond_19

    return-object v4

    :cond_19
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    invoke-direct {v0, v7, v8, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v0

    :cond_1a
    move v14, v2

    move-object/from16 v22, v5

    move-object v1, v15

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v12

    if-nez v0, :cond_32

    invoke-virtual {v1, v12, v7, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findExactMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-nez v0, :cond_1b

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v12

    move-object/from16 v2, p1

    move v11, v3

    move-object/from16 v3, p2

    move-object/from16 v20, v4

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :goto_c
    move-object v5, v0

    goto :goto_d

    :cond_1b
    move v11, v3

    move-object/from16 v20, v4

    goto :goto_c

    :goto_d
    move-object/from16 v0, v22

    if-eqz v5, :cond_31

    if-nez v0, :cond_2f

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_1f

    if-nez v17, :cond_1c

    if-eqz v16, :cond_1f

    :cond_1c
    if-eqz v20, :cond_1d

    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    if-eq v0, v14, :cond_1d

    return-object v20

    :cond_1d
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v1, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v2, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v17, :cond_1e

    const/4 v3, 0x6

    goto :goto_e

    :cond_1e
    const/4 v3, 0x7

    :goto_e
    invoke-direct {v0, v5, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v0

    :cond_1f
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_20

    if-eqz v19, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v6, v12, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->tagAsAccessingEnclosingInstanceStateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    goto :goto_f

    :cond_20
    const/4 v1, 0x0

    :goto_f
    if-nez v13, :cond_26

    iget-object v2, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v12, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v12, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eq v2, v3, :cond_21

    goto :goto_13

    :cond_21
    if-eqz v20, :cond_23

    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    if-ne v2, v14, :cond_22

    goto :goto_11

    :cond_22
    :goto_10
    const/4 v3, 0x1

    goto/16 :goto_15

    :cond_23
    :goto_11
    if-eqz v20, :cond_24

    const/4 v4, 0x0

    goto :goto_12

    :cond_24
    move-object/from16 v4, v20

    :goto_12
    if-lez v11, :cond_25

    invoke-interface {v9, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setDepth(I)V

    invoke-interface {v9, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_25
    const/4 v3, 0x1

    goto/16 :goto_16

    :cond_26
    :goto_13
    if-eqz v18, :cond_27

    return-object v20

    :cond_27
    if-lez v11, :cond_28

    invoke-interface {v9, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setDepth(I)V

    invoke-interface {v9, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setActualReceiverType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_28
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne v8, v0, :cond_29

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->GETCLASS:[C

    invoke-static {v7, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, v12, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createGetClassMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    move-result-object v0

    return-object v0

    :cond_29
    return-object v5

    :cond_2a
    const/4 v1, 0x0

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    if-eq v2, v14, :cond_2b

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    return-object v5

    :cond_2b
    const/4 v3, 0x1

    :cond_2c
    if-nez v20, :cond_2d

    move-object v4, v5

    goto :goto_14

    :cond_2d
    move-object/from16 v4, v20

    :goto_14
    if-nez v18, :cond_2e

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    if-ne v2, v3, :cond_2e

    move-object v2, v5

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_2e

    invoke-virtual {v2, v12, v9, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move/from16 v18, v3

    move-object v4, v5

    :cond_2e
    move-object v5, v0

    goto :goto_16

    :cond_2f
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_30

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v12, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual {v12, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eq v2, v4, :cond_33

    :cond_30
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    const/4 v1, 0x5

    invoke-direct {v0, v5, v7, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v0

    :cond_31
    const/4 v1, 0x0

    goto/16 :goto_10

    :cond_32
    move-object/from16 v20, v4

    move-object/from16 v0, v22

    const/4 v1, 0x0

    move/from16 v23, v11

    move v11, v3

    move/from16 v3, v23

    :cond_33
    :goto_15
    move-object v5, v0

    move-object/from16 v4, v20

    :goto_16
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v2

    or-int v16, v16, v2

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v2

    if-nez v2, :cond_34

    move/from16 v17, v1

    goto :goto_17

    :cond_34
    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    move/from16 v17, v2

    :goto_17
    move v11, v0

    move v0, v1

    goto :goto_18

    :cond_35
    move-object/from16 v20, v4

    move-object v0, v5

    move v1, v12

    move/from16 v23, v11

    move v11, v3

    move/from16 v3, v23

    move-object v2, v15

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    or-int v16, v16, v4

    iget-boolean v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isConstructorCall:Z

    or-int v17, v17, v4

    iget-boolean v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    move-object/from16 v19, v2

    move v0, v4

    move-object/from16 v4, v20

    :goto_18
    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    move v12, v1

    move/from16 v23, v11

    move v11, v3

    move/from16 v3, v23

    goto/16 :goto_1
.end method

.method public final getJavaIoSerializable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_IO_SERIALIZABLE:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangAnnotationAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ANNOTATION:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangAssertionError()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ASSERTIONERROR:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangClass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_CLASS:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangCloneable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_CLONEABLE:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangEnum()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ENUM:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangIllegalArgumentException()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ILLEGALARGUMENTEXCEPTION:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangInvokeLambdaMetafactory()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INVOKE_LAMBDAMETAFACTORY:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangInvokeMethodHandlesLookup()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INVOKE_METHODHANDLES:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    const-string v1, "Lookup"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findDirectMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangInvokeSerializedLambda()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INVOKE_SERIALIZEDLAMBDA:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangIterable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ITERABLE:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangString()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_STRING:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaLangThrowable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_THROWABLE:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getJavaUtilIterator()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_UTIL_ITERATOR:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public final getMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    filled-new-array {p1}, [[C

    move-result-object p1

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2
.end method

.method public getMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 14

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v1

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v12, 0x0

    :try_start_0
    iput-object v10, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_6

    const/16 v3, 0x84

    const/4 v13, 0x1

    if-eq v2, v3, :cond_5

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    const/16 v1, 0x8

    invoke-direct {v0, v8, v9, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v2, v8, v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findExactMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v3
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    iput-object v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v1

    :cond_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    invoke-direct {v0, v8, v9, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_3

    iput-object v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v1

    :cond_3
    :try_start_4
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne v9, v2, :cond_4

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->GETCLASS:[C

    invoke-static {v8, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createGetClassMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    move-result-object v0
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-object v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v0

    :cond_4
    iput-object v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v1

    :cond_5
    :try_start_5
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    invoke-direct {v0, v8, v9, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    :try_end_5
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-object v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v0

    :cond_6
    :try_start_6
    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p0, v0, v8, v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethodForArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0
    :try_end_6
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iput-object v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    return-object v0

    :goto_0
    :try_start_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v0, v10, v1}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->updateContext(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    iput-object v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->missingClassFileLocation:Ljava/lang/Object;

    throw v0
.end method

.method public final getOnlyPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    array-length v4, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move v5, v3

    :goto_0
    if-lt v5, v4, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v6, v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-static {p1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-direct {v1, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v1

    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-static {p1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    invoke-direct {v3, p1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v3

    :cond_4
    move v5, v6

    goto :goto_0

    :cond_5
    :goto_1
    aget-object p1, p1, v0

    filled-new-array {p1}, [[C

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0
.end method

.method public final getPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    aget-object v0, p1, v0

    filled-new-array {v0}, [[C

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    invoke-virtual {v4, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object p1

    invoke-direct {v1, v0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v1

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v4, :cond_1

    aget-object p1, p1, v0

    filled-new-array {p1}, [[C

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemType([[CILorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v4, :cond_3

    return-object v2

    :cond_3
    array-length v4, p1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move v5, v3

    :goto_0
    if-lt v5, v4, :cond_4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v0, p1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :cond_4
    add-int/lit8 v6, v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v7

    if-ge v6, v4, :cond_5

    move v8, v3

    goto :goto_1

    :cond_5
    move v8, v0

    :goto_1
    invoke-virtual {v1, v5, v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-virtual {p0, p1, v6, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemType([[CILorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-static {p1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    instance-of v0, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_7

    move-object v0, v5

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_7
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    invoke-direct {v1, p1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v1

    :cond_8
    instance-of v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v7, :cond_9

    return-object v1

    :cond_9
    move-object v1, v5

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move v5, v6

    goto :goto_0
.end method

.method public getStaticFactory(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    const/4 v5, 0x0

    move-object v7, v2

    move v8, v5

    :goto_0
    if-nez v7, :cond_0

    :goto_1
    move-object v9, v1

    move v10, v8

    goto :goto_3

    :cond_0
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v9

    if-nez v9, :cond_1

    move v10, v5

    goto :goto_2

    :cond_1
    array-length v10, v9

    :goto_2
    if-lez v10, :cond_2

    add-int v11, v8, v10

    new-array v12, v11, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-static {v1, v5, v12, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v5, v12, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v11

    move-object v1, v12

    :cond_2
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v9

    if-eqz v9, :cond_1a

    goto :goto_1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    goto :goto_4

    :cond_3
    move-object/from16 v1, p1

    :goto_4
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    array-length v8, v3

    invoke-virtual {v1, v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([CI)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v12

    array-length v1, v12

    new-array v13, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v14, v12

    move v1, v5

    move v15, v1

    :goto_5
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v15, v14, :cond_a

    if-nez v1, :cond_4

    return-object v7

    :cond_4
    array-length v0, v12

    if-eq v1, v0, :cond_5

    new-array v0, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v13, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v16, v0

    goto :goto_6

    :cond_5
    move-object/from16 v16, v13

    :goto_6
    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move v0, v5

    move v9, v0

    :goto_7
    if-lt v0, v1, :cond_8

    if-nez v9, :cond_6

    return-object v7

    :cond_6
    if-ne v9, v8, :cond_7

    aget-object v0, v2, v5

    goto :goto_8

    :cond_7
    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->mostSpecificMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_8
    aget-object v10, v16, v0

    invoke-virtual {v6, v10, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v11

    if-eqz v11, :cond_9

    add-int/lit8 v11, v9, 0x1

    aput-object v10, v2, v9

    move v9, v11

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    aget-object v8, v12, v15

    invoke-virtual {v8, v4, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v16

    if-nez v16, :cond_b

    goto :goto_9

    :cond_b
    iget-object v7, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v7, v7

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v17

    array-length v5, v3

    if-eq v5, v7, :cond_d

    if-eqz v17, :cond_c

    array-length v5, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_d

    :cond_c
    :goto_9
    move-object/from16 v22, v9

    move-object/from16 v17, v12

    move/from16 v20, v14

    goto/16 :goto_f

    :cond_d
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v5

    array-length v7, v5

    add-int/2addr v7, v10

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v3

    if-eqz v11, :cond_e

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-object/from16 v17, v12

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v12

    invoke-direct {v4, v12, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    goto :goto_a

    :cond_e
    move-object/from16 v17, v12

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    :goto_a
    new-instance v12, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;

    invoke-direct {v12, v4, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFactoryMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    new-array v4, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v4, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {v4, v7}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    const-string v19, ""

    move-object/from16 v22, v9

    move/from16 v20, v14

    move-object/from16 v14, v19

    const/16 v21, 0x0

    move-object/from16 v19, v5

    const/4 v5, 0x0

    :goto_b
    const-string v9, "\'"

    if-lt v5, v10, :cond_18

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move v5, v10

    const/4 v9, 0x0

    :goto_c
    if-lt v5, v7, :cond_17

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$3;

    invoke-direct {v14, v6, v6, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$3;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)V

    const/4 v5, 0x0

    :goto_d
    if-lt v5, v7, :cond_11

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v4

    invoke-static {v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    move-result-object v4

    iput-object v4, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    iput-object v4, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    iput-object v4, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v4, :cond_f

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v4, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_f
    add-int/lit8 v4, v1, 0x1

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    if-eqz v11, :cond_10

    move-object/from16 v7, p1

    goto :goto_e

    :cond_10
    iget-object v7, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_e
    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-direct {v5, v3, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    aput-object v5, v13, v1

    move v1, v4

    :goto_f
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v12, v17

    move/from16 v14, v20

    move-object/from16 v9, v22

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_11
    if-ge v5, v10, :cond_12

    aget-object v9, v22, v5

    goto :goto_10

    :cond_12
    sub-int v9, v5, v10

    aget-object v9, v19, v9

    :goto_10
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move/from16 v24, v1

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v14, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    move-object/from16 v25, v2

    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v14, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    iget-object v6, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v6, :cond_14

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v6, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object v9, v1

    goto :goto_11

    :cond_13
    const/4 v6, 0x0

    aget-object v9, v2, v6

    :goto_11
    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_14
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v6

    const/16 v9, 0x44

    if-eq v6, v9, :cond_16

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_15

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v6, v2

    add-int/lit8 v9, v6, 0x1

    new-array v9, v9, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move/from16 v18, v7

    move-object/from16 v26, v8

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v2, v8, v9, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v1, v9, v8

    invoke-virtual {v0, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_12
    const/4 v6, 0x0

    goto :goto_13

    :cond_15
    move/from16 v18, v7

    move-object/from16 v26, v8

    const/4 v8, 0x0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_12

    :cond_16
    move/from16 v18, v7

    move-object/from16 v26, v8

    const/4 v8, 0x0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_13
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move/from16 v7, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v8, v26

    goto/16 :goto_d

    :cond_17
    move/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v18, v7

    move-object/from16 v26, v8

    const/4 v6, 0x0

    const/4 v8, 0x0

    aget-object v0, v19, v9

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v7, v19, v9

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-static {v7, v14}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v7

    invoke-direct {v2, v7, v12, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    aput-object v2, v1, v5

    invoke-virtual {v4, v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x1

    add-int/2addr v9, v0

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move/from16 v7, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v8, v26

    goto/16 :goto_c

    :cond_18
    move/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v18, v7

    move-object/from16 v26, v8

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    aget-object v1, v22, v5

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-object/from16 v7, v21

    if-eq v2, v7, :cond_19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v2

    move-object v14, v7

    goto :goto_14

    :cond_19
    move-object/from16 v21, v7

    :goto_14
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    iget-object v7, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    invoke-direct {v9, v0, v12, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    aput-object v9, v7, v5

    invoke-virtual {v4, v2, v9}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move/from16 v7, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v8, v26

    goto/16 :goto_b

    :cond_1a
    move-object/from16 v25, v2

    move v0, v8

    move v8, v5

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    move-object/from16 v6, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v8, v0

    move-object/from16 v0, p2

    goto/16 :goto_0
.end method

.method public final getType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBaseType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1
.end method

.method public final getType([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 6
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object p1

    const/4 p2, 0x1

    .line 7
    invoke-direct {v0, p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 10
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_2

    move-object p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-static {p2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->arrayConcat([[C[C)[[C

    move-result-object p1

    :goto_0
    if-eqz v3, :cond_3

    .line 11
    move-object p2, v0

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 12
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p2

    .line 13
    invoke-direct {v2, p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    .line 14
    :cond_4
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 15
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 16
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 17
    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/4 v1, 0x2

    .line 18
    invoke-direct {p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p1

    :cond_5
    return-object v0
.end method

.method public final getType([[CI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 19
    aget-object v2, p1, v0

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBaseType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v2

    .line 21
    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordQualifiedReference([[C)V

    .line 22
    aget-object v3, p1, v0

    if-ne p2, v1, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/16 v4, 0x14

    :goto_0
    invoke-virtual {p0, v3, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v3

    if-nez v3, :cond_2

    .line 23
    aget-object p1, p1, v0

    filled-new-array {p1}, [[C

    move-result-object p1

    .line 24
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getCurrentPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object v0

    invoke-direct {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    .line 25
    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 26
    instance-of p2, v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz p2, :cond_3

    .line 27
    aget-object p1, p1, v0

    filled-new-array {p1}, [[C

    move-result-object p1

    .line 28
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, v5, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object v0

    .line 30
    invoke-direct {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    .line 31
    :cond_3
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v3

    .line 32
    :cond_4
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v4, :cond_b

    .line 33
    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move v6, v1

    :goto_1
    if-lt v6, p2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v6, 0x1

    .line 34
    aget-object v6, p1, v6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v7

    if-ge v3, p2, :cond_6

    move v8, v1

    goto :goto_2

    :cond_6
    move v8, v0

    :goto_2
    invoke-virtual {v4, v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v6

    if-nez v6, :cond_7

    .line 35
    invoke-static {p1, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 36
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 37
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object v0

    .line 38
    invoke-direct {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    .line 39
    :cond_7
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_9

    .line 40
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 41
    invoke-static {p1, v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 42
    instance-of v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_8

    move-object v0, v6

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 43
    :cond_8
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    .line 44
    invoke-direct {p2, p1, v5, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    .line 45
    :cond_9
    instance-of v4, v6, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v4, :cond_a

    move-object v9, v6

    move v6, v3

    move-object v3, v9

    .line 46
    :goto_3
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v4, :cond_c

    .line 47
    invoke-static {p1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 48
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 49
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, v5, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object v0

    .line 50
    invoke-direct {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    .line 51
    :cond_a
    move-object v4, v6

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-object v9, v6

    move v6, v3

    move-object v3, v9

    goto :goto_1

    :cond_b
    move v6, v1

    move v1, v0

    .line 52
    :cond_c
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 53
    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    if-eqz v1, :cond_d

    .line 54
    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 55
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 56
    invoke-static {p1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    const/4 v0, 0x2

    .line 57
    invoke-direct {p2, p1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_d
    move-object v1, v3

    :goto_4
    if-lt v6, p2, :cond_e

    return-object v1

    :cond_e
    add-int/lit8 v2, v6, 0x1

    .line 58
    aget-object v4, p1, v6

    invoke-virtual {p0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_10

    .line 60
    instance-of p2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    if-eqz p2, :cond_f

    .line 61
    move-object p2, v1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 62
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 63
    invoke-static {p1, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 64
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;->closestReferenceMatch()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    .line 65
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    .line 66
    invoke-direct {v3, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v3

    .line 67
    :cond_f
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 68
    invoke-static {p1, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 69
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 70
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v1

    .line 71
    invoke-direct {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_10
    move v6, v2

    goto :goto_4
.end method

.method public final getTypeOrPackage([CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    and-int/lit8 v2, p2, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-nez v2, :cond_1

    move-object v11, v0

    .line 1
    :goto_0
    iget-object v12, v11, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v12, :cond_0

    const/4 v13, 0x0

    goto :goto_3

    :cond_0
    move-object v11, v12

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v11

    iget-wide v11, v11, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v13, 0x300000

    cmp-long v11, v11, v13

    if-ltz v11, :cond_2

    move v11, v6

    goto :goto_1

    :cond_2
    move v11, v9

    :goto_1
    move-object v12, v0

    move v14, v9

    move v15, v14

    const/4 v13, 0x0

    .line 3
    :goto_2
    iget v8, v12, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v3, 0x5

    if-eq v8, v6, :cond_3f

    if-eq v8, v7, :cond_39

    if-eq v8, v5, :cond_25

    if-eq v8, v10, :cond_3

    const-wide/16 v16, 0x0

    goto/16 :goto_13

    :cond_3
    if-eqz v13, :cond_4

    .line 4
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v3

    if-eq v3, v7, :cond_4

    return-object v13

    :cond_4
    move-object v11, v12

    .line 5
    :goto_3
    check-cast v11, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    .line 6
    iget-object v3, v11, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->typeOrPackageCache:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;

    if-eqz v3, :cond_a

    .line 7
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->get([C)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz v4, :cond_a

    .line 8
    instance-of v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-eqz v8, :cond_7

    .line 9
    move-object v8, v4

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    iget-object v12, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v12, :cond_5

    .line 10
    iget v14, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v14, v7

    iput v14, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 11
    :cond_5
    instance-of v12, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;

    if-eqz v12, :cond_6

    .line 12
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ImportConflictBinding;->conflictingTypeBinding:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 13
    :cond_6
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-virtual {v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    if-eqz v2, :cond_9

    if-eqz v13, :cond_8

    .line 14
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v8

    if-eq v8, v7, :cond_8

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v8

    if-eq v8, v5, :cond_8

    return-object v13

    .line 15
    :cond_8
    instance-of v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v8, :cond_9

    return-object v4

    :cond_9
    and-int/lit8 v8, p2, 0x10

    if-eqz v8, :cond_a

    .line 16
    instance-of v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v8, :cond_a

    return-object v4

    :cond_a
    if-eqz v2, :cond_1c

    .line 17
    iget-object v2, v11, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->imports:[Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-eqz v2, :cond_f

    if-nez v3, :cond_f

    .line 18
    array-length v4, v2

    move v8, v9

    :goto_5
    if-lt v8, v4, :cond_b

    goto :goto_7

    .line 19
    :cond_b
    aget-object v12, v2, v8

    .line 20
    iget-boolean v5, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    if-nez v5, :cond_e

    .line 21
    iget-object v5, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    array-length v14, v5

    sub-int/2addr v14, v6

    aget-object v5, v5, v14

    invoke-static {v5, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 22
    invoke-virtual {v11, v12, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->resolveSingleImport(Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_6

    .line 23
    :cond_c
    instance-of v14, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v14, :cond_e

    .line 24
    iget-object v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v1, :cond_d

    .line 25
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v2, v7

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_d
    return-object v5

    :cond_e
    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x3

    goto :goto_5

    .line 26
    :cond_f
    :goto_7
    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 27
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-virtual {v11, v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordReference([[C[C)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v5

    .line 29
    instance-of v8, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v8, :cond_11

    .line 30
    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 31
    iget-wide v14, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v18, 0x80

    and-long v14, v14, v18

    const-wide/16 v16, 0x0

    cmp-long v8, v14, v16

    if-nez v8, :cond_11

    if-eqz v3, :cond_10

    .line 32
    invoke-virtual {v3, v1, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v5

    :cond_11
    if-eqz v2, :cond_1c

    .line 33
    array-length v5, v2

    move v8, v9

    const/4 v10, 0x0

    :goto_8
    if-lt v9, v5, :cond_13

    if-eqz v10, :cond_1c

    if-eqz v3, :cond_12

    .line 34
    invoke-virtual {v3, v1, v10}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v10

    .line 35
    :cond_13
    aget-object v12, v2, v9

    .line 36
    iget-boolean v14, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    if-eqz v14, :cond_1b

    .line 37
    iget-object v14, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->resolvedImport:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    .line 38
    instance-of v15, v14, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v15, :cond_14

    .line 39
    check-cast v14, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v0, v1, v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findType([CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v14

    goto :goto_9

    .line 40
    :cond_14
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 41
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v15

    check-cast v14, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v15, v1, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v14

    if-eqz v14, :cond_16

    .line 42
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v15

    if-nez v15, :cond_16

    const/4 v14, 0x0

    goto :goto_9

    .line 43
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v15

    check-cast v14, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v15, v1, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findDirectMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v14

    .line 44
    :cond_16
    :goto_9
    invoke-static {v14, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v15

    if-eqz v15, :cond_1b

    if-eqz v14, :cond_1b

    .line 45
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 46
    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->reference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v12, :cond_17

    .line 47
    iget v15, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v15, v7

    iput v15, v12, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_17
    if-eqz v8, :cond_19

    .line 48
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v2, v4, v10, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    if-eqz v3, :cond_18

    .line 49
    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v2

    :cond_19
    move v8, v6

    move-object v10, v14

    goto :goto_a

    :cond_1a
    if-nez v13, :cond_1b

    move-object v13, v14

    :cond_1b
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 50
    :cond_1c
    invoke-virtual {v11, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordSimpleReference([C)V

    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_1e

    .line 51
    iget-object v4, v11, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTopLevelPackage([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 52
    iget-wide v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->tagBits:J

    const-wide/16 v9, 0x80

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_1e

    if-eqz v3, :cond_1d

    .line 53
    invoke-virtual {v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-object v4

    :cond_1e
    if-nez v13, :cond_22

    .line 54
    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v4

    if-eqz v2, :cond_1f

    if-eqz p3, :cond_21

    .line 55
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    iget-object v7, v11, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v5, v7, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object v8

    goto :goto_b

    .line 56
    :cond_1f
    iget-object v5, v11, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTopLevelPackage([C)Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 57
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-nez v5, :cond_21

    :cond_20
    if-eqz p3, :cond_21

    .line 58
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    iget-object v7, v11, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v5, v7, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMissingType(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MissingTypeBinding;

    move-result-object v8

    goto :goto_b

    :cond_21
    const/4 v8, 0x0

    .line 59
    :goto_b
    new-instance v13, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v13, v4, v8, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    if-eqz v3, :cond_24

    if-eqz v2, :cond_24

    .line 60
    invoke-virtual {v3, v1, v13}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 61
    :cond_22
    iget-wide v4, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v7, 0x80

    and-long/2addr v4, v7

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_24

    .line 62
    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v4

    .line 63
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-direct {v5, v4, v13, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    if-eqz v3, :cond_23

    if-eqz v2, :cond_23

    .line 64
    invoke-virtual {v3, v1, v5}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObject;->put([CLjava/lang/Object;)Ljava/lang/Object;

    :cond_23
    move-object v13, v5

    :cond_24
    :goto_c
    return-object v13

    .line 65
    :cond_25
    move-object v4, v12

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-ne v12, v0, :cond_28

    .line 66
    iget-wide v9, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v18, 0x40000

    and-long v9, v9, v18

    const-wide/16 v16, 0x0

    cmp-long v9, v9, v16

    if-nez v9, :cond_29

    .line 67
    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getTypeVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v3

    if-eqz v3, :cond_26

    return-object v3

    .line 68
    :cond_26
    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_27

    return-object v4

    .line 69
    :cond_27
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v3

    or-int/2addr v15, v3

    const/4 v5, 0x3

    goto/16 :goto_13

    :cond_28
    const-wide/16 v16, 0x0

    :cond_29
    const/4 v9, 0x7

    if-nez v14, :cond_33

    .line 70
    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    if-eqz v10, :cond_33

    .line 71
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v14

    const/4 v5, 0x3

    if-ne v14, v5, :cond_2c

    if-eqz v13, :cond_2b

    .line 72
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    if-ne v2, v7, :cond_2a

    goto :goto_d

    .line 73
    :cond_2a
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v1

    invoke-direct {v2, v1, v13, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    :cond_2b
    :goto_d
    return-object v10

    .line 74
    :cond_2c
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v14

    if-eqz v14, :cond_31

    .line 75
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v14

    invoke-static {v4, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-nez v14, :cond_2d

    if-eqz v11, :cond_31

    :cond_2d
    if-eqz v15, :cond_2e

    .line 76
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v14

    if-nez v14, :cond_2e

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isGenericType()Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 77
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v1

    invoke-direct {v2, v1, v10, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    :cond_2e
    if-eqz v13, :cond_30

    if-eqz v11, :cond_2f

    .line 78
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v14

    if-ne v14, v7, :cond_2f

    goto :goto_e

    .line 79
    :cond_2f
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v14

    if-eqz v14, :cond_31

    invoke-static {v13, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-eqz v14, :cond_31

    .line 80
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v1

    invoke-direct {v2, v1, v13, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    :cond_30
    :goto_e
    return-object v10

    :cond_31
    if-eqz v13, :cond_32

    .line 81
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v14

    if-ne v14, v7, :cond_34

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v14

    if-eq v14, v7, :cond_34

    :cond_32
    move-object v13, v10

    goto :goto_f

    :cond_33
    const/4 v5, 0x3

    .line 82
    :cond_34
    :goto_f
    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getTypeVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v10

    if-eqz v10, :cond_36

    if-eqz v15, :cond_35

    .line 83
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v1

    invoke-direct {v2, v1, v10, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    :cond_35
    return-object v10

    .line 84
    :cond_36
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v9

    or-int/2addr v15, v9

    .line 85
    iget-object v9, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v9, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_38

    if-eqz v13, :cond_37

    .line 86
    invoke-static {v13, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    if-eq v2, v7, :cond_37

    .line 87
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v1

    invoke-direct {v2, v1, v13, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    :cond_37
    return-object v4

    :cond_38
    const/4 v14, 0x0

    goto :goto_13

    :cond_39
    const-wide/16 v16, 0x0

    .line 88
    move-object v4, v12

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    .line 89
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v9

    if-eqz v9, :cond_3e

    .line 90
    iget-object v10, v9, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v10, :cond_3a

    .line 91
    invoke-virtual {v10, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getTypeVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v9

    if-eqz v9, :cond_3e

    return-object v9

    .line 92
    :cond_3a
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v9

    if-nez v9, :cond_3b

    const/4 v10, 0x0

    goto :goto_10

    .line 93
    :cond_3b
    array-length v10, v9

    :cond_3c
    :goto_10
    add-int/lit8 v10, v10, -0x1

    if-gez v10, :cond_3d

    goto :goto_11

    .line 94
    :cond_3d
    aget-object v14, v9, v10

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    invoke-static {v14, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 95
    aget-object v14, v9, v10

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v14, :cond_3c

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 96
    aget-object v1, v9, v10

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object v1

    .line 97
    :cond_3e
    :goto_11
    iget-boolean v9, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    or-int/2addr v15, v9

    .line 98
    iget-boolean v14, v4, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    goto :goto_12

    :cond_3f
    const-wide/16 v16, 0x0

    .line 99
    :goto_12
    move-object v4, v12

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->findLocalType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_41

    if-eqz v13, :cond_40

    .line 100
    invoke-static {v13, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 101
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    filled-new-array/range {p1 .. p1}, [[C

    move-result-object v1

    invoke-direct {v2, v1, v13, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v2

    :cond_40
    return-object v4

    .line 102
    :cond_41
    :goto_13
    iget-object v12, v12, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    const/4 v9, 0x0

    const/4 v10, 0x4

    goto/16 :goto_2
.end method

.method public final getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 9

    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 104
    aget-object v3, p1, v1

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBaseType([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    .line 105
    :cond_0
    aget-object v3, p1, v1

    const/16 v4, 0x14

    invoke-virtual {p0, v3, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([CIZ)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    .line 107
    :cond_1
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v4, :cond_8

    .line 108
    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move v5, v2

    :goto_0
    if-lt v5, v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v5, 0x1

    .line 109
    aget-object v5, p1, v5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v6

    if-ge v3, v0, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    invoke-virtual {v4, v5, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 110
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 111
    invoke-static {p1, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 112
    invoke-direct {v0, p1, v5, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    .line 113
    :cond_4
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-nez v6, :cond_6

    .line 114
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 115
    invoke-static {p1, v1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 116
    instance-of v1, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_5

    move-object v1, v4

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 117
    :cond_5
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v1

    .line 118
    invoke-direct {v0, p1, v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    .line 119
    :cond_6
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez v5, :cond_7

    move v5, v3

    move-object v3, v4

    .line 120
    :goto_2
    nop

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v4, :cond_9

    return-object v3

    .line 121
    :cond_7
    move-object v5, v4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-object v8, v5

    move v5, v3

    move-object v3, v4

    move-object v4, v8

    goto :goto_0

    :cond_8
    move v5, v2

    move v2, v1

    .line 122
    :cond_9
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 123
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_a

    .line 124
    invoke-virtual {v3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 125
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 126
    invoke-static {p1, v1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    const/4 v1, 0x2

    .line 127
    invoke-direct {v0, p1, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    :cond_a
    :goto_3
    if-lt v5, v0, :cond_b

    return-object v4

    :cond_b
    add-int/lit8 v2, v5, 0x1

    .line 128
    aget-object v5, p1, v5

    invoke-virtual {p0, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v5

    if-nez v5, :cond_c

    .line 130
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    .line 131
    invoke-static {p1, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    .line 132
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 133
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v2

    .line 134
    invoke-direct {v0, p1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object v0

    .line 135
    :cond_c
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createRawType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    move-result-object v4

    :goto_4
    move v5, v2

    goto :goto_3

    .line 137
    :cond_d
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->maybeCreateParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    goto :goto_4
.end method

.method public hasDefaultNullnessFor(II)Z
    .locals 1

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->localNonNullByDefaultValue(I)I

    move-result v0

    if-eqz v0, :cond_1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasDefaultNullnessFor(II)Z

    move-result p1

    return p1
.end method

.method public hasErasedCandidatesCollisions(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Z
    .locals 4

    invoke-interface {p3}, Ljava/util/Map;->clear()V

    filled-new-array {p1, p2}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->minimalErasedCandidates([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    array-length v0, p1

    move v1, p2

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_2

    :cond_0
    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_2

    check-cast v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    aget-object p3, v2, p2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    aget-object p2, v2, p2

    const/4 v0, 0x1

    aget-object v1, v2, v0

    invoke-virtual {p1, p3, p5, p2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->superinterfacesCollide(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-wide p1, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v1, 0x20000

    or-long/2addr p1, v1

    iput-wide p1, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return p2
.end method

.method public innermostSwitchCase()Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;
    .locals 2

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAcceptableMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v3

    array-length v6, v4

    const-wide/32 v7, 0x330000

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v5, v6, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v11, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v13, 0x310000

    cmp-long v6, v11, v13

    if-gez v6, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    move v6, v9

    :goto_1
    if-lt v6, v5, :cond_1

    return v10

    :cond_1
    if-eqz v11, :cond_2

    aget-object v12, v3, v6

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v12

    goto :goto_2

    :cond_2
    aget-object v12, v3, v6

    :goto_2
    if-eqz v11, :cond_3

    aget-object v13, v4, v6

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    goto :goto_3

    :cond_3
    aget-object v13, v4, v6

    :goto_3
    invoke-static {v12, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v12, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_4

    :cond_4
    sub-int/2addr v5, v10

    if-ne v6, v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v12

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    check-cast v13, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    sget-boolean v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->tolerateIllegalAmbiguousVarargsInvocation:Z

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v3

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    cmp-long v3, v3, v7

    if-gez v3, :cond_6

    invoke-static {v12, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v12, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    return v10

    :cond_6
    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    return v10

    :cond_8
    return v9

    :cond_9
    :goto_4
    iget-object v14, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v14

    if-eqz v14, :cond_a

    goto/16 :goto_5

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v14

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v14

    if-eqz v11, :cond_b

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v14

    :cond_b
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v15

    const/16 v10, 0x104

    const/16 v7, 0x1004

    if-eq v15, v10, :cond_d

    const/16 v8, 0x204

    if-eq v15, v8, :cond_d

    if-eq v15, v7, :cond_c

    const/16 v8, 0x2004

    if-eq v15, v8, :cond_d

    goto :goto_5

    :cond_c
    check-cast v14, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->hasOnlyRawBounds()Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v10

    const/4 v14, 0x4

    if-eq v10, v14, :cond_10

    const/16 v14, 0x404

    if-eq v10, v14, :cond_f

    const/16 v14, 0x804

    if-eq v10, v14, :cond_10

    if-eq v10, v7, :cond_e

    goto :goto_5

    :cond_e
    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->upperBound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_5

    :cond_f
    return v9

    :cond_10
    invoke-virtual {v12, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_5

    :cond_11
    return v9

    :cond_12
    :goto_5
    add-int/lit8 v6, v6, 0x1

    const-wide/32 v7, 0x330000

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v7

    if-eqz v7, :cond_18

    sget-boolean v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->tolerateIllegalAmbiguousVarargsInvocation:Z

    if-eqz v7, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v7

    iget-wide v7, v7, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v10, 0x330000

    cmp-long v7, v7, v10

    if-gez v7, :cond_14

    if-le v5, v6, :cond_14

    add-int/lit8 v7, v6, -0x1

    aget-object v7, v4, v7

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    iget v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_14

    return v9

    :cond_14
    if-le v5, v6, :cond_15

    move v5, v6

    :cond_15
    const/4 v6, 0x2

    sub-int/2addr v5, v6

    :goto_6
    if-gez v5, :cond_16

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v4, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_18

    invoke-virtual {v0, v2, v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)I

    move-result v1

    if-ne v1, v6, :cond_18

    return v7

    :cond_16
    const/4 v7, 0x1

    aget-object v8, v3, v5

    aget-object v10, v4, v5

    invoke-static {v8, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_17

    aget-object v8, v3, v5

    aget-object v10, v4, v5

    invoke-virtual {v8, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-nez v8, :cond_17

    return v9

    :cond_17
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_18
    return v9
.end method

.method public isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v3, 0x310000

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public final isDefinedInField(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z
    .locals 2

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final isDefinedInMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final isDefinedInSameUnit(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 4

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->topLevelTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    array-length v1, v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object p1, v0

    goto :goto_0
.end method

.method public final isDefinedInType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 2

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public isInsideCase(Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;)Z
    .locals 3

    move-object v0, p0

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    if-ne v1, p1, :cond_2

    return v2

    :cond_2
    :goto_0
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public isInsideDeprecatedCode()Z
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_8

    array-length v3, v0

    if-lez v3, :cond_8

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->initializeDeprecatedAnnotationTagBits()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isViewedAsDeprecated()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_1
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->initializeDeprecatedAnnotationTagBits()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isViewedAsDeprecated()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isInsideInitializer()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v0

    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v3, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isViewedAsDeprecated()Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_3
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isViewedAsDeprecated()Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_4
    instance-of v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    if-eqz v3, :cond_7

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceModuleBinding;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->isDeprecated()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isViewedAsDeprecated()Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->initializeDeprecatedAnnotationTagBits()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isViewedAsDeprecated()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    :goto_0
    return v1
.end method

.method public isLambdaScope()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLambdaSubscope()Z
    .locals 4

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaScope()Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    goto :goto_0
.end method

.method public isModuleScope()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSubtypeOfRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 10

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x0

    move v2, v1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    return v4

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v3, :cond_8

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v3, v5, :cond_8

    if-nez v0, :cond_3

    array-length v2, v3

    move-object v0, v3

    goto :goto_4

    :cond_3
    array-length v5, v3

    add-int v6, v2, v5

    array-length v7, v0

    if-lt v6, v7, :cond_4

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    move-object v6, v0

    :goto_0
    move v7, v1

    move v8, v2

    :goto_1
    if-lt v7, v5, :cond_5

    move-object v0, v6

    move v2, v8

    goto :goto_4

    :cond_5
    aget-object v9, v3, v7

    move v0, v1

    :goto_2
    if-lt v0, v8, :cond_6

    add-int/lit8 v0, v8, 0x1

    aput-object v9, v6, v8

    move v8, v0

    goto :goto_3

    :cond_6
    aget-object v2, v6, v0

    invoke-static {v9, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_1

    move p1, v1

    :goto_5
    if-lt p1, v2, :cond_9

    return v1

    :cond_9
    aget-object v3, v0, p1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v5

    if-eqz v5, :cond_a

    return v4

    :cond_a
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v3, :cond_f

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v3, v5, :cond_f

    array-length v5, v3

    add-int v6, v2, v5

    array-length v7, v0

    if-lt v6, v7, :cond_b

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_b
    move-object v6, v0

    :goto_6
    move v7, v1

    move v8, v2

    :goto_7
    if-lt v7, v5, :cond_c

    move-object v0, v6

    move v2, v8

    goto :goto_a

    :cond_c
    aget-object v9, v3, v7

    move v0, v1

    :goto_8
    if-lt v0, v8, :cond_d

    add-int/lit8 v0, v8, 0x1

    aput-object v9, v6, v8

    move v8, v0

    goto :goto_9

    :cond_d
    aget-object v2, v6, v0

    invoke-static {v9, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_e

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    :goto_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_5
.end method

.method public final localCheckRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->nullDefaultRangeForPosition(I)Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;

    move-result-object p2

    if-eqz p2, :cond_1

    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->value:I

    if-ne p1, v0, :cond_0

    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->target:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->NOT_REDUNDANT:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final localNonNullByDefaultValue(I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->nullDefaultRangeForPosition(I)Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->value:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    :cond_0
    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/ArrayList;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public final methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;
    .locals 2

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public minimalErasedCandidates([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/Map;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x0

    if-lt v5, v2, :cond_3b

    if-eqz v6, :cond_3a

    const/4 v5, 0x1

    if-eq v6, v5, :cond_39

    aget-object v6, v0, v3

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v8

    if-eqz v8, :cond_0

    return-object v7

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v9

    const/16 v10, 0x44

    if-eq v9, v10, :cond_1

    const/16 v10, 0x104

    if-eq v9, v10, :cond_1

    const/16 v10, 0x404

    if-eq v9, v10, :cond_1

    move-object v9, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    :goto_1
    invoke-static {v9, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v4

    move v9, v5

    :goto_2
    if-lt v6, v9, :cond_26

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v11, v10, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v6, v4

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_23

    add-int/2addr v3, v5

    move v8, v3

    move v3, v10

    :goto_4
    if-lt v8, v2, :cond_d

    if-le v3, v5, :cond_c

    move v0, v4

    :goto_5
    if-lt v0, v10, :cond_3

    goto/16 :goto_9

    :cond_3
    aget-object v1, v11, v0

    if-nez v1, :cond_4

    goto :goto_7

    :cond_4
    move v2, v4

    :goto_6
    if-lt v2, v10, :cond_5

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    if-ne v0, v2, :cond_6

    goto :goto_8

    :cond_6
    aget-object v3, v11, v2

    if-nez v3, :cond_7

    goto :goto_8

    :cond_7
    instance-of v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v6, :cond_9

    iget v6, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v6, v5, :cond_8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    if-eqz v3, :cond_b

    aput-object v7, v11, v2

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v6, v5, :cond_a

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v8

    if-ne v6, v8, :cond_a

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    if-eqz v3, :cond_b

    aput-object v7, v11, v2

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    :goto_9
    return-object v11

    :cond_d
    aget-object v9, v0, v8

    if-nez v9, :cond_e

    goto/16 :goto_e

    :cond_e
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, v4

    :goto_a
    if-lt v6, v10, :cond_f

    goto/16 :goto_e

    :cond_f
    aget-object v12, v11, v6

    if-eqz v12, :cond_16

    invoke-static {v12, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v13

    if-eqz v13, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v9, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    if-nez v13, :cond_11

    aput-object v7, v11, v6

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_16

    return-object v7

    :cond_11
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_12

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_12
    instance-of v15, v14, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v15, :cond_13

    check-cast v14, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v13, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v15

    if-eqz v15, :cond_16

    filled-new-array {v14, v13}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_13
    check-cast v14, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v15, v14

    move v7, v4

    :goto_b
    if-lt v7, v15, :cond_14

    add-int/lit8 v7, v15, 0x1

    new-array v7, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v14, v4, v7, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v1, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v13, v7, v15

    goto :goto_c

    :cond_14
    aget-object v4, v14, v7

    invoke-static {v4, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_c

    :cond_15
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_b

    :cond_16
    :goto_c
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_a

    :cond_17
    move v4, v3

    const/4 v7, 0x0

    :goto_d
    if-lt v7, v10, :cond_18

    move v3, v4

    :goto_e
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_18
    aget-object v13, v11, v7

    if-nez v13, :cond_19

    goto/16 :goto_13

    :cond_19
    invoke-static {v13, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_1d

    iget v3, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne v3, v5, :cond_1a

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_10

    :cond_1a
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_f

    :cond_1b
    invoke-virtual {v9, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    :goto_f
    if-nez v3, :cond_1c

    const/4 v6, 0x0

    aput-object v6, v11, v7

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_21

    return-object v6

    :cond_1c
    move-object v14, v3

    goto :goto_11

    :cond_1d
    :goto_10
    move-object v14, v13

    :goto_11
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1e

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_1e
    instance-of v6, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v6, :cond_1f

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v14, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_21

    filled-new-array {v3, v14}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-interface {v1, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_1f
    move-object v15, v3

    check-cast v15, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v15

    const/4 v6, 0x0

    :goto_12
    if-lt v6, v3, :cond_20

    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v12, 0x0

    invoke-static {v15, v12, v6, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v1, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v14, v6, v3

    goto :goto_13

    :cond_20
    aget-object v12, v15, v6

    invoke-static {v12, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v12

    if-eqz v12, :cond_22

    :cond_21
    :goto_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_23
    move/from16 v16, v4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v9

    if-nez v9, :cond_25

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v7

    if-eqz v7, :cond_24

    goto :goto_14

    :cond_24
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    :cond_25
    :goto_14
    aput-object v4, v11, v6

    move v6, v8

    move/from16 v4, v16

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_26
    move/from16 v16, v4

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v7

    if-lez v7, :cond_2a

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    iget v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    move-object v4, v10

    goto :goto_16

    :pswitch_1
    if-le v7, v5, :cond_27

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_15
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_22

    :cond_27
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaIoSerializable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangCloneable()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2a
    :goto_16
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v10

    if-eqz v10, :cond_2e

    move-object v10, v4

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v10, :cond_2e

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v11

    if-eqz v11, :cond_2e

    if-nez v7, :cond_2b

    move-object v4, v10

    goto :goto_17

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v4

    invoke-virtual {v4, v10, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v4

    :goto_17
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v7

    if-nez v7, :cond_2d

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v7

    if-eqz v7, :cond_2c

    goto :goto_18

    :cond_2c
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    goto :goto_19

    :cond_2d
    :goto_18
    move-object v7, v4

    :goto_19
    invoke-static {v7, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_38

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_22

    :cond_2e
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v10

    if-eqz v10, :cond_34

    array-length v11, v10

    move/from16 v12, v16

    :goto_1a
    if-lt v12, v11, :cond_2f

    goto :goto_1e

    :cond_2f
    aget-object v13, v10, v12

    if-nez v7, :cond_30

    move-object v14, v13

    goto :goto_1b

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v14

    invoke-virtual {v14, v13, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v14

    :goto_1b
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_33

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v15

    if-nez v15, :cond_32

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v13

    if-eqz v13, :cond_31

    goto :goto_1c

    :cond_31
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    goto :goto_1d

    :cond_32
    :goto_1c
    move-object v13, v14

    :goto_1d
    invoke-static {v13, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v15

    if-eqz v15, :cond_33

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    :cond_34
    :goto_1e
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-eqz v4, :cond_38

    if-nez v7, :cond_35

    move-object v7, v4

    goto :goto_1f

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v10

    invoke-virtual {v10, v4, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v7

    :goto_1f
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_38

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v10

    if-nez v10, :cond_37

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v4

    if-eqz v4, :cond_36

    goto :goto_20

    :cond_36
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    goto :goto_21

    :cond_37
    :goto_20
    move-object v4, v7

    :goto_21
    invoke-static {v4, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_38

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    :goto_22
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v16

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_39
    return-object v0

    :cond_3a
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object v0

    :cond_3b
    move/from16 v16, v4

    aget-object v4, v0, v5

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v4, v7, :cond_3c

    const/4 v7, 0x0

    aput-object v7, v0, v5

    move-object v4, v7

    goto :goto_23

    :cond_3c
    const/4 v7, 0x0

    :goto_23
    if-nez v4, :cond_3d

    goto :goto_24

    :cond_3d
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    if-eqz v4, :cond_3e

    return-object v7

    :cond_3e
    if-gez v3, :cond_3f

    move v3, v5

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    :goto_24
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v16

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0
.end method

.method public final mostSpecificClassMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 6

    const/4 p3, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    if-eqz p3, :cond_1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, p3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aget-object p1, p1, v0

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x3

    invoke-direct {p2, p1, p3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p2

    :cond_1
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v3

    if-nez v3, :cond_2

    move-object p3, v2

    :cond_2
    move v3, v0

    :goto_2
    if-lt v3, p2, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object p1

    iget-object p2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v2

    :cond_3
    if-ne v1, v3, :cond_4

    goto :goto_3

    :cond_4
    aget-object v4, p1, v3

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersCompatibleWith([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public final mostSpecificInterfaceMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 5

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-lt v0, p2, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aget-object p1, p1, p3

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x3

    invoke-direct {p2, p1, p3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p2

    :cond_0
    aget-object v1, p1, v0

    move v2, p3

    :goto_1
    if-lt v2, p2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object p1

    iget-object p2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object v1

    :cond_1
    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    aget-object v3, p1, v2

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersCompatibleWith([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final mostSpecificMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v6

    iget-wide v6, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v8, 0x340000

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ltz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    if-eqz v6, :cond_2

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->checkingPotentialCompatibility()Z

    move-result v9

    if-eqz v9, :cond_2

    array-length v9, v1

    if-eq v2, v9, :cond_1

    new-array v9, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v1, v8, v9, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v9

    :cond_1
    invoke-interface {v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->acceptPotentiallyCompatibleMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    :cond_2
    new-array v9, v2, [I

    move v10, v8

    move v11, v10

    :goto_1
    const/4 v12, -0x1

    if-lt v10, v2, :cond_50

    if-nez v11, :cond_3

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aget-object v1, v1, v8

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v2, v1, v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v2

    :cond_3
    if-ne v11, v7, :cond_5

    aget-object v1, v1, v8

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_4
    return-object v1

    :cond_5
    if-eq v11, v2, :cond_6

    new-array v2, v11, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v1, v8, v2, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v11, [I

    invoke-static {v9, v8, v1, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v1

    move-object v14, v2

    move v15, v11

    goto :goto_2

    :cond_6
    move-object v14, v1

    move v15, v2

    move-object v13, v9

    :goto_2
    new-array v1, v15, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v9, 0x3

    if-eqz v6, :cond_1b

    move v6, v8

    move v11, v6

    :goto_3
    if-lt v6, v15, :cond_a

    if-nez v11, :cond_7

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aget-object v2, v14, v8

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v1, v2, v3, v4, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v1

    :cond_7
    if-ne v11, v7, :cond_9

    aget-object v1, v1, v8

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_8
    return-object v1

    :cond_9
    move-object v12, v5

    move v8, v7

    move-object/from16 v21, v14

    goto/16 :goto_15

    :cond_a
    aget-object v16, v14, v6

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v9

    iget-object v8, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget v7, v13, v6

    const/4 v10, 0x0

    :goto_4
    if-lt v10, v15, :cond_b

    add-int/lit8 v7, v11, 0x1

    aget-object v8, v14, v6

    aput-object v8, v1, v11

    move v11, v7

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    goto/16 :goto_10

    :cond_b
    if-ne v6, v10, :cond_c

    :goto_5
    move/from16 v18, v11

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_c
    aget v2, v13, v10

    if-le v7, v12, :cond_e

    if-le v2, v12, :cond_e

    if-eq v7, v2, :cond_e

    if-ge v7, v2, :cond_d

    goto :goto_5

    :cond_d
    move/from16 v18, v11

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    goto/16 :goto_f

    :cond_e
    aget-object v18, v14, v10

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->genericMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v12

    move/from16 v18, v11

    iget-object v11, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object/from16 v20, v13

    instance-of v13, v4, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-nez v13, :cond_11

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v5, :cond_f

    goto :goto_6

    :cond_f
    move-object/from16 v21, v14

    :cond_10
    const/4 v5, 0x2

    const/4 v13, 0x0

    goto :goto_a

    :cond_11
    :goto_6
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v5

    move-object/from16 v21, v14

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v5, v14, :cond_10

    if-eqz v13, :cond_12

    move-object v5, v4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->arguments()[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v5

    goto :goto_7

    :cond_12
    move-object v5, v4

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {v5, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->createPseudoExpressions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v5

    :goto_7
    new-instance v11, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    const/4 v13, 0x0

    invoke-direct {v11, v0, v5, v13, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    const/4 v5, 0x2

    if-ne v7, v5, :cond_13

    const/4 v14, 0x1

    goto :goto_8

    :cond_13
    const/4 v14, 0x0

    :goto_8
    if-ne v2, v5, :cond_14

    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v11, v9, v12, v14, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isMoreSpecificThan(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ZZ)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_f

    :goto_a
    array-length v12, v3

    const/4 v14, 0x0

    :goto_b
    if-lt v14, v12, :cond_16

    if-ne v7, v5, :cond_15

    if-ne v2, v5, :cond_15

    array-length v2, v3

    const/4 v5, 0x1

    invoke-static {v8, v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    array-length v12, v3

    invoke-static {v11, v12, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    invoke-static {v2, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isSubtypeOf(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_f

    :cond_15
    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, p5

    move/from16 v11, v18

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    const/4 v12, -0x1

    goto/16 :goto_4

    :cond_16
    aget-object v5, v3, v14

    const/4 v13, 0x2

    move/from16 v22, v7

    if-ne v7, v13, :cond_17

    const/4 v7, 0x1

    goto :goto_d

    :cond_17
    const/4 v7, 0x0

    :goto_d
    invoke-static {v8, v14, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    if-ne v2, v13, :cond_18

    const/4 v13, 0x1

    goto :goto_e

    :cond_18
    const/4 v13, 0x0

    :goto_e
    invoke-static {v11, v14, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    invoke-static {v7, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v23

    if-eqz v23, :cond_19

    goto :goto_11

    :cond_19
    invoke-virtual {v5, v7, v13, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sIsMoreSpecific(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v5

    if-nez v5, :cond_1a

    :goto_f
    move/from16 v11, v18

    :goto_10
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, p5

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v12, -0x1

    goto/16 :goto_3

    :cond_1a
    :goto_11
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v22

    const/4 v5, 0x2

    const/4 v13, 0x0

    goto :goto_b

    :cond_1b
    move-object/from16 v20, v13

    move-object/from16 v21, v14

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$2;

    invoke-direct {v5, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$2;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_12
    if-le v7, v2, :cond_43

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1f

    const/4 v2, 0x0

    :goto_13
    if-lt v2, v15, :cond_1c

    goto :goto_14

    :cond_1c
    aget-object v4, v1, v2

    if-eqz v4, :cond_1e

    aget-object v1, v21, v2

    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReferences([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_1d
    return-object v1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1f
    if-nez v4, :cond_20

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    const/4 v2, 0x0

    aget-object v2, v21, v2

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v5, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v1

    :cond_20
    :goto_14
    move-object/from16 v12, p5

    move v11, v15

    :goto_15
    if-eqz v12, :cond_22

    instance-of v2, v12, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    if-eqz v2, :cond_21

    goto :goto_16

    :cond_21
    invoke-virtual/range {p5 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v12, v2

    :cond_22
    :goto_16
    move-object v6, v12

    const/4 v5, 0x0

    :goto_17
    if-lt v5, v11, :cond_23

    goto :goto_1b

    :cond_23
    aget-object v2, v1, v5

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v7

    if-eqz v7, :cond_24

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v7, v9, :cond_24

    move v7, v8

    goto :goto_18

    :cond_24
    const/4 v7, 0x0

    :goto_18
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_19
    if-lt v9, v11, :cond_26

    if-eqz v10, :cond_25

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v10, v1, :cond_25

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/MostSpecificExceptionMethodBinding;

    invoke-direct {v1, v2, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MostSpecificExceptionMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-object v1

    :cond_25
    return-object v2

    :cond_26
    aget-object v12, v1, v9

    if-eqz v12, :cond_27

    if-ne v5, v9, :cond_28

    :cond_27
    :goto_1a
    move-object/from16 p2, v2

    move/from16 v22, v11

    goto/16 :goto_28

    :cond_28
    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v13

    iget-object v14, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v15, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v14, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-eqz v14, :cond_29

    :goto_1b
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    const/4 v14, 0x0

    aget-object v2, v21, v14

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v15, 0x3

    invoke-direct {v1, v2, v3, v4, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v1

    :cond_29
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v16

    if-nez v16, :cond_2e

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v12

    if-nez v12, :cond_27

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result v12

    if-eqz v12, :cond_2a

    goto :goto_1a

    :cond_2a
    invoke-virtual {v4, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->findOriginalInheritedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v12

    if-nez v12, :cond_2c

    :cond_2b
    :goto_1c
    move/from16 v22, v11

    goto/16 :goto_29

    :cond_2c
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasSubstitutedParameters()Z

    move-result v13

    if-nez v13, :cond_2d

    iget-object v13, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v13, v8, :cond_27

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v8

    invoke-virtual {v8, v4, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isParameterSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v8

    if-nez v8, :cond_27

    goto :goto_1c

    :cond_2e
    if-eqz v6, :cond_27

    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    iget-object v14, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v14, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v14

    if-nez v14, :cond_2f

    instance-of v14, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v14, :cond_2f

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v14, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    array-length v15, v3

    invoke-virtual {v8, v14, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([CI)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    array-length v14, v8

    const/4 v15, 0x0

    :goto_1d
    if-lt v15, v14, :cond_30

    :cond_2f
    move/from16 v22, v11

    goto :goto_1e

    :cond_30
    aget-object v18, v8, v15

    move/from16 v22, v11

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v11

    if-ne v11, v4, :cond_31

    aget-object v4, v8, v15

    goto :goto_1e

    :cond_31
    add-int/lit8 v15, v15, 0x1

    move/from16 v11, v22

    goto :goto_1d

    :goto_1e
    iget-object v8, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    iget-object v11, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v11, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v11

    if-nez v11, :cond_34

    instance-of v11, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v11, :cond_34

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v11, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    array-length v14, v3

    invoke-virtual {v8, v11, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([CI)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    array-length v11, v8

    const/4 v14, 0x0

    :goto_1f
    if-lt v14, v11, :cond_32

    goto :goto_20

    :cond_32
    aget-object v15, v8, v14

    invoke-virtual {v15}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v15

    if-ne v15, v13, :cond_33

    aget-object v13, v8, v14

    goto :goto_20

    :cond_33
    add-int/lit8 v14, v14, 0x1

    goto :goto_1f

    :cond_34
    :goto_20
    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v8, v11, :cond_35

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v8

    invoke-virtual {v4, v13, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->computeSubstitutedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v13

    :cond_35
    if-eqz v13, :cond_42

    invoke-virtual {v4, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v8

    if-nez v8, :cond_36

    goto/16 :goto_29

    :cond_36
    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v14, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v8, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v8, v11, :cond_37

    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    iget-object v11, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    if-nez v8, :cond_38

    goto/16 :goto_29

    :cond_37
    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v11, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v8, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-nez v8, :cond_38

    goto/16 :goto_29

    :cond_38
    if-eqz v7, :cond_41

    iget-object v8, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v8

    if-eqz v8, :cond_41

    iget-object v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v11, v12, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v8, v11, :cond_41

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v11, v13, :cond_39

    move-object/from16 p2, v2

    move-object v10, v13

    goto/16 :goto_28

    :cond_39
    if-nez v10, :cond_3a

    goto :goto_21

    :cond_3a
    move-object v8, v10

    :goto_21
    array-length v11, v8

    invoke-direct {v0, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getFilteredExceptions(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v12

    array-length v13, v12

    new-instance v14, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v14, v11}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_22
    if-lt v15, v11, :cond_3d

    if-eqz v10, :cond_3c

    iget v8, v14, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    if-nez v8, :cond_3b

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_23
    move-object v10, v8

    goto :goto_24

    :cond_3b
    new-array v8, v8, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_23

    :goto_24
    invoke-virtual {v14, v10}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->asArray([Ljava/lang/Object;)V

    move-object/from16 p2, v2

    goto :goto_28

    :cond_3c
    move-object/from16 p2, v2

    move-object v10, v8

    goto :goto_28

    :cond_3d
    move-object/from16 p2, v2

    aget-object v2, v8, v15

    move/from16 v18, v10

    const/4 v10, 0x0

    :goto_25
    if-lt v10, v13, :cond_3e

    move-object/from16 v19, v4

    goto :goto_26

    :cond_3e
    move-object/from16 v19, v4

    aget-object v4, v12, v10

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v20

    if-eqz v20, :cond_3f

    invoke-virtual {v14, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    move/from16 v10, v18

    goto :goto_27

    :cond_3f
    invoke-virtual {v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v18

    if-eqz v18, :cond_40

    invoke-virtual {v14, v4}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    :goto_27
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, v19

    goto :goto_22

    :cond_40
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v19

    const/16 v18, 0x1

    goto :goto_25

    :cond_41
    move-object/from16 p2, v2

    move-object/from16 v19, v4

    move-object/from16 v4, v19

    :goto_28
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    move/from16 v11, v22

    const/4 v8, 0x1

    goto/16 :goto_19

    :cond_42
    :goto_29
    add-int/lit8 v5, v5, 0x1

    move/from16 v11, v22

    const/4 v8, 0x1

    goto/16 :goto_17

    :cond_43
    move-object/from16 v12, p5

    const/4 v8, 0x3

    move v13, v4

    const/4 v14, 0x0

    :goto_2a
    if-lt v14, v15, :cond_44

    add-int/lit8 v7, v7, 0x1

    move v4, v13

    goto/16 :goto_12

    :cond_44
    aget v4, v20, v14

    if-eq v4, v7, :cond_45

    goto/16 :goto_30

    :cond_45
    aget-object v18, v21, v14

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tiebreakMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    const/4 v6, 0x0

    :goto_2b
    if-lt v6, v15, :cond_47

    aput-object v18, v1, v14

    add-int/lit8 v13, v13, 0x1

    :cond_46
    :goto_2c
    move v2, v7

    goto :goto_30

    :cond_47
    if-eq v14, v6, :cond_4f

    aget v9, v20, v6

    if-eq v9, v7, :cond_48

    goto :goto_31

    :cond_48
    aget-object v9, v21, v6

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v10

    if-ne v2, v10, :cond_49

    const/4 v10, -0x1

    aput v10, v20, v6

    goto :goto_31

    :cond_49
    instance-of v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v10, :cond_4b

    move-object v10, v9

    check-cast v10, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    iget-boolean v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    if-eqz v11, :cond_4a

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v11

    if-eqz v11, :cond_4b

    :cond_4a
    iget-object v10, v10, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_2d

    :cond_4b
    move-object v10, v9

    :goto_2d
    iget-object v11, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4c

    const/4 v8, 0x1

    goto :goto_2e

    :cond_4c
    const/4 v8, 0x0

    :goto_2e
    invoke-virtual {v0, v10, v11, v5, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v8

    if-eqz v8, :cond_46

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v10

    if-nez v10, :cond_4d

    goto :goto_2f

    :cond_4d
    invoke-virtual {v0, v4, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isAcceptableMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v10

    if-nez v10, :cond_4e

    goto :goto_2f

    :cond_4e
    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isBridge()Z

    move-result v10

    if-eqz v10, :cond_4f

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isBridge()Z

    move-result v9

    if-nez v9, :cond_4f

    invoke-virtual {v4, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v8

    if-eqz v8, :cond_4f

    :goto_2f
    goto :goto_2c

    :goto_30
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x3

    goto :goto_2a

    :cond_4f
    :goto_31
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x3

    goto :goto_2b

    :cond_50
    move-object v12, v5

    aget-object v5, v1, v10

    invoke-virtual {v0, v5, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)I

    move-result v5

    aput v5, v9, v10

    const/4 v7, -0x1

    if-eq v5, v7, :cond_52

    if-eq v10, v11, :cond_51

    aget-object v7, v1, v10

    aput-object v7, v1, v11

    aput v5, v9, v11

    :cond_51
    add-int/lit8 v11, v11, 0x1

    :cond_52
    add-int/lit8 v10, v10, 0x1

    move-object v5, v12

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public final namedMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;
    .locals 2

    move-object v0, p0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isLambdaScope()Z

    move-result v1

    if-nez v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    return-object v0

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public originalReferenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;
    .locals 3

    move-object v0, p0

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-object v0

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-object v0

    :cond_3
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-ne v0, v1, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final outerMostClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    :cond_0
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    :cond_1
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v1, :cond_0

    return-object v0
.end method

.method public final outerMostMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    :cond_0
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    :cond_1
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v1, :cond_0

    return-object v0
.end method

.method public parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)I

    move-result p1

    return p1
.end method

.method public parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)I
    .locals 9

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    const/16 v1, 0x17

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez p1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v3, 0x340000

    cmp-long v0, v0, v3

    const/4 v1, 0x0

    if-ltz v0, :cond_c

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v0, :cond_c

    .line 4
    instance-of v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v0, :cond_2

    .line 5
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    .line 6
    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-interface {p3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 7
    iget v3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    goto :goto_1

    .line 8
    :cond_2
    instance-of v3, p3, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v3, :cond_3

    .line 9
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    .line 10
    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    invoke-virtual {p3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->getInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 11
    iget v3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    const/4 v4, 0x2

    if-eqz v0, :cond_8

    if-eqz p3, :cond_8

    .line 12
    iget v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    if-lt v0, v4, :cond_8

    .line 13
    array-length v0, p2

    move v5, v1

    :goto_2
    if-lt v5, v0, :cond_4

    goto :goto_4

    .line 14
    :cond_4
    aget-object v6, p2, v5

    .line 15
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isFunctionalType()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isVarArgs()Z

    move-result v8

    invoke-static {v7, v5, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    .line 17
    invoke-virtual {v6, v7, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 18
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPolyType()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 19
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isVarArgs()Z

    move-result v8

    invoke-static {v7, v5, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getParameter([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;IZ)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    .line 20
    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/PolyTypeBinding;->expression:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v6, v7, p1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPertinentToApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    return v2

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    const/4 p3, 0x1

    if-eq v3, p3, :cond_b

    if-eq v3, v4, :cond_a

    const/4 p3, 0x3

    if-eq v3, p3, :cond_9

    goto :goto_5

    :cond_9
    return v4

    :cond_a
    return p3

    :cond_b
    return v1

    .line 21
    :cond_c
    :goto_5
    invoke-virtual {p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)I

    move-result p1

    return p1
.end method

.method public parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)I
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v7, p1

    .line 23
    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 24
    array-length v1, v8

    .line 25
    array-length v9, v0

    .line 26
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    .line 27
    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v5, 0x310000

    cmp-long v3, v3, v5

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-gez v3, :cond_4

    if-eq v1, v9, :cond_0

    return v11

    :cond_0
    move v1, v10

    :goto_0
    if-lt v1, v9, :cond_1

    return v10

    .line 28
    :cond_1
    aget-object v2, v8, v1

    .line 29
    aget-object v3, v0, v1

    .line 30
    invoke-static {v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    move-object/from16 v12, p0

    invoke-virtual {v3, v2, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_3

    return v11

    :cond_2
    move-object/from16 v12, p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v12, p0

    if-eqz p3, :cond_5

    .line 31
    sget-boolean v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->tolerateIllegalAmbiguousVarargsInvocation:Z

    if-eqz v3, :cond_5

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v4, 0x330000

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    move v13, v10

    goto :goto_1

    :cond_5
    move/from16 v13, p3

    .line 32
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v14

    .line 33
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v15, v1, -0x1

    const/16 v16, 0x2

    if-ne v1, v9, :cond_9

    .line 34
    aget-object v6, v8, v15

    .line 35
    aget-object v5, v0, v15

    .line 36
    invoke-static {v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    move-object v4, v14

    move-object/from16 v17, v5

    move v5, v13

    move-object/from16 v18, v6

    move-object/from16 v6, p1

    .line 37
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    if-ne v1, v11, :cond_7

    .line 38
    move-object/from16 v6, v18

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    if-eqz v13, :cond_6

    .line 39
    move-object/from16 v5, v17

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :cond_6
    move-object/from16 v2, v17

    :goto_2
    move-object/from16 v1, p0

    move-object v4, v14

    move v5, v13

    move-object/from16 v6, p1

    .line 40
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    if-ne v1, v11, :cond_11

    return v11

    :cond_7
    move/from16 v16, v1

    goto :goto_7

    :cond_8
    :goto_3
    move/from16 v16, v10

    goto :goto_7

    :cond_9
    if-ge v1, v9, :cond_e

    .line 41
    aget-object v1, v8, v15

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    move v5, v15

    :goto_4
    if-lt v5, v9, :cond_a

    goto :goto_7

    :cond_a
    if-eqz v13, :cond_b

    add-int/lit8 v1, v9, -0x1

    if-ne v5, v1, :cond_b

    .line 42
    aget-object v1, v0, v5

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :goto_5
    move-object v2, v1

    goto :goto_6

    :cond_b
    aget-object v1, v0, v5

    goto :goto_5

    .line 43
    :goto_6
    invoke-static {v6, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v14

    move/from16 v17, v5

    move v5, v13

    move-object/from16 v18, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    if-ne v1, v11, :cond_d

    return v11

    :cond_c
    move/from16 v17, v5

    move-object/from16 v18, v6

    :cond_d
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v6, v18

    goto :goto_4

    :cond_e
    if-eq v15, v9, :cond_11

    return v11

    :cond_f
    if-eq v1, v9, :cond_10

    return v11

    :cond_10
    move v15, v9

    goto :goto_3

    :cond_11
    :goto_7
    move/from16 v6, v16

    :goto_8
    if-lt v10, v15, :cond_12

    return v6

    .line 44
    :cond_12
    aget-object v3, v8, v10

    if-eqz v13, :cond_13

    add-int/lit8 v1, v9, -0x1

    if-ne v10, v1, :cond_13

    .line 45
    aget-object v1, v0, v10

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :goto_9
    move-object v2, v1

    goto :goto_a

    :cond_13
    aget-object v1, v0, v10

    goto :goto_9

    .line 46
    :goto_a
    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object/from16 v1, p0

    move-object v4, v14

    move v5, v13

    move/from16 v19, v6

    move-object/from16 v6, p1

    .line 47
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;ZLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)I

    move-result v1

    if-ne v1, v11, :cond_14

    return v11

    :cond_14
    move/from16 v2, v19

    if-le v1, v2, :cond_16

    move v6, v1

    goto :goto_b

    :cond_15
    move v2, v6

    :cond_16
    move v6, v2

    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_8
.end method

.method public parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I
    .locals 3

    .line 48
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_6

    if-nez p2, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 50
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const v2, 0x10004

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 51
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 52
    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_1
    return v0
.end method

.method public abstract problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;
.end method

.method public problemType([[CILorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v1

    if-eq v1, v0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->useModuleSystem:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eq v2, v3, :cond_1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    const/16 p3, 0x1e

    invoke-direct {p2, p1, v1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p3, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    :goto_0
    return-object p3
.end method

.method public recordNonNullByDefault(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/ast/Annotation;II)Z
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->original:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->nullDefaultRanges:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->nullDefaultRanges:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->nullDefaultRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->nullDefaultRanges:Ljava/util/ArrayList;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;

    move-object v4, v1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;-><init>(ILorg/eclipse/jdt/internal/compiler/ast/Annotation;IILorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->start:I

    if-ne v4, p4, :cond_2

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->end:I

    if-ne v4, p5, :cond_2

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->contains(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result p4

    if-eqz p4, :cond_4

    return v2

    :cond_4
    invoke-virtual {v1, p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$NullDefaultRange;->merge(ILorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    return v3
.end method

.method public final referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public referenceContext()Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;
    .locals 3

    move-object v0, p0

    :cond_0
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-object v0

    :cond_2
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-object v0

    :cond_3
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    return-object v0
.end method

.method public resolveTypeParameter(Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;)V
    .locals 0

    return-void
.end method

.method public startIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tagAsAccessingEnclosingInstanceStateOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->methodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingReceiverType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    if-nez p2, :cond_5

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->isStatic:Z

    if-nez v3, :cond_5

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->shouldCaptureInstance:Z

    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-eqz v3, :cond_8

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v3, v1, :cond_7

    goto :goto_3

    :cond_7
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v2, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object v0

    goto :goto_0

    :cond_9
    :goto_3
    return-void
.end method

.method public validateNullAnnotation(JLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    iget-object v1, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v2

    const-wide/high16 v3, 0x180000000000000L

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-wide p1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_1
    and-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalAnnotationForBaseType(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;J)V

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    return v0
.end method
