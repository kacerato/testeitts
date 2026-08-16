.class public Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FAILED:I = 0x1


# instance fields
.field private collectedSubstitutes:[[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field depth:I

.field expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field genericMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field hasExplicitExpectedType:Z

.field public isUnchecked:Z

.field status:I

.field substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->genericMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length p1, p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    const-class v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->collectedSubstitutes:[[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method


# virtual methods
.method public getSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->collectedSubstitutes:[[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    return-object p1
.end method

.method public hasUnresolvedTypeArgument()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public recordSubstitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->collectedSubstitutes:[[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    aget-object p1, v0, p1

    aget-object v0, p1, p3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_1

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    move-object v0, v3

    :goto_1
    aput-object p2, v0, v1

    aput-object v0, p1, p3

    goto :goto_2

    :cond_1
    aget-object v4, v0, v3

    if-ne v4, p2, :cond_2

    return-void

    :cond_2
    if-nez v4, :cond_3

    aput-object p2, v0, v3

    :goto_2
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "InferenceContex for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->genericMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_10

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->genericMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n\t[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->status:I

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "failed]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v1, "ok]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/16 v5, 0x5d

    if-nez v1, :cond_2

    const-string v1, " [expectedType=null]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const-string v1, " [expectedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    const-string v1, " [depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "\n\t[collected={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->collectedSubstitutes:[[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    array-length v1, v1

    move v6, v1

    :goto_3
    move v7, v2

    :goto_4
    const-string v8, "="

    if-lt v7, v6, :cond_8

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n\t[inferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_5

    :cond_4
    array-length v1, v1

    :goto_5
    move v3, v2

    :goto_6
    if-lt v2, v1, :cond_6

    if-nez v3, :cond_5

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v2

    if-nez v4, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->genericMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->collectedSubstitutes:[[[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v9, v1, v7

    move v1, v2

    :goto_8
    const/4 v3, 0x2

    if-le v1, v3, :cond_9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    aget-object v10, v9, v1

    if-eqz v10, :cond_f

    array-length v11, v10

    move v12, v2

    :goto_9
    if-lt v12, v11, :cond_a

    goto :goto_b

    :cond_a
    const-string v13, "\n\t\t"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v13, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->genericMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v13, v13, v7

    iget-object v13, v13, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_d

    if-eq v1, v4, :cond_c

    if-eq v1, v3, :cond_b

    goto :goto_a

    :cond_b
    const-string v13, ">:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_c
    const-string v13, "<:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_d
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_a
    aget-object v13, v10, v12

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->shortReadableName()[C

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_f
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_10
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->genericMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
