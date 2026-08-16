.class public Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$GuessedTypeRequestor;,
        Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;
    }
.end annotation


# instance fields
.field private combinationsCount:I

.field private nameEnvironment:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

.field private originalTypes:Ljava/util/HashMap;

.field private problemFactory:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;

.field private substituedTypes:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine;->problemFactory:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->problemFactory:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/codeassist/impl/Engine;->nameEnvironment:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->nameEnvironment:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    return-void
.end method

.method private computeMissingElements([Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;[[[C[Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[I[I)Z
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-lt v2, v0, :cond_0

    return v3

    :cond_0
    aget-object v4, p1, v2

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v5, :cond_1

    return v1

    :cond_1
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v6, p2, v2

    array-length v6, v6

    sub-int/2addr v6, v3

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->depth()I

    move-result v7

    add-int/2addr v7, v3

    if-le v7, v6, :cond_3

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->enclosingTypeAt(I)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    :goto_1
    aput-object v5, p3, v2

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    aput v5, p4, v2

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    add-int/2addr v4, v3

    aput v4, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private convert(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 7

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    .line 4
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions()I

    move-result v2

    .line 6
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;-><init>([[CI[J)V

    .line 8
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 9
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    .line 10
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v0, v0

    if-eq v0, v2, :cond_1

    return-object v1

    .line 12
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->getTypeName()[[C

    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->findTypeNames([[C)[[[C

    move-result-object v2

    if-eqz v2, :cond_3

    .line 14
    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    const/4 v3, 0x0

    .line 16
    aget-object v4, v2, v3

    .line 17
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions()I

    move-result v5

    .line 18
    aget-object v6, v2, v3

    array-length v6, v6

    new-array v6, v6, [J

    .line 19
    invoke-direct {v1, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;-><init>([[CI[J)V

    .line 20
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 21
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    aget-wide v3, p1, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int p1, v3

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 22
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->substituedTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->originalTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    array-length v0, v2

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    :cond_3
    :goto_0
    return-object v1
.end method

.method private convert(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 6

    .line 25
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    .line 28
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    .line 29
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    const-wide/16 v3, 0x0

    .line 30
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;-><init>([CIJ)V

    .line 31
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 32
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->originalSourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    .line 33
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->getTypeName()[[C

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->findTypeNames([[C)[[[C

    move-result-object v2

    if-eqz v2, :cond_2

    .line 36
    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    const/4 v3, 0x0

    .line 38
    aget-object v3, v2, v3

    .line 39
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    .line 40
    array-length v5, v3

    new-array v5, v5, [J

    .line 41
    invoke-direct {v1, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;-><init>([[CI[J)V

    .line 42
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 43
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->originalSourceEnd:I

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 44
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->substituedTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->originalTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    array-length v0, v2

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    :cond_2
    :goto_0
    return-object v1
.end method

.method private convert(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 10

    .line 47
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 48
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 49
    array-length v2, v0

    .line 50
    new-array v3, v2, [[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v2, :cond_6

    .line 51
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    .line 53
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    .line 54
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions()I

    move-result v2

    .line 55
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v4, v4

    new-array v4, v4, [J

    .line 56
    invoke-direct {v0, v1, v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[J)V

    .line 57
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 58
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-eqz v0, :cond_a

    .line 60
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v0, v0

    if-eq v0, v5, :cond_1

    return-object v1

    .line 61
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->getTypeName()[[C

    move-result-object v0

    .line 62
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->findTypeNames([[C)[[[C

    move-result-object v6

    if-eqz v6, :cond_5

    .line 63
    array-length v7, v6

    if-nez v7, :cond_2

    goto :goto_3

    .line 64
    :cond_2
    aget-object v1, v6, v4

    array-length v1, v1

    new-array v7, v1, [[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    sub-int/2addr v1, v5

    sub-int/2addr v2, v5

    :goto_1
    const/4 v5, -0x1

    if-le v1, v5, :cond_4

    if-gt v2, v5, :cond_3

    goto :goto_2

    .line 65
    :cond_3
    aget-object v5, v3, v2

    aput-object v5, v7, v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 66
    :cond_4
    :goto_2
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    .line 67
    aget-object v2, v6, v4

    .line 68
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;->dimensions()I

    move-result v3

    .line 69
    aget-object v5, v6, v4

    array-length v5, v5

    new-array v5, v5, [J

    .line 70
    invoke-direct {v1, v2, v7, v3, v5}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[J)V

    .line 71
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 72
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    aget-wide v2, p1, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p1, v2

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 73
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->substituedTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->originalTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    array-length v0, v6

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    :cond_5
    :goto_3
    return-object v1

    .line 76
    :cond_6
    aget-object v6, v0, v5

    if-nez v6, :cond_7

    goto :goto_5

    .line 77
    :cond_7
    array-length v6, v6

    .line 78
    new-array v7, v6, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aput-object v7, v3, v5

    move v7, v4

    :goto_4
    if-lt v7, v6, :cond_8

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 79
    :cond_8
    aget-object v8, v3, v5

    aget-object v9, v0, v5

    aget-object v9, v9, v7

    invoke-direct {p0, v9}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v9

    aput-object v9, v8, v7

    .line 80
    aget-object v8, v3, v5

    aget-object v8, v8, v7

    if-nez v8, :cond_9

    return-object v1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    return-object v1
.end method

.method private convert(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 9

    .line 81
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 83
    array-length v2, v0

    .line 84
    new-array v5, v2, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_3

    .line 85
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    .line 87
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    .line 88
    iget v6, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    const-wide/16 v7, 0x0

    move-object v3, v0

    .line 89
    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;-><init>([C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IJ)V

    .line 90
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 91
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->getTypeName()[[C

    move-result-object v0

    .line 94
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->findTypeNames([[C)[[[C

    move-result-object v2

    if-eqz v2, :cond_2

    .line 95
    array-length v4, v2

    if-nez v4, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    aget-object v1, v2, v3

    array-length v1, v1

    new-array v4, v1, [[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    add-int/lit8 v1, v1, -0x1

    .line 97
    aput-object v5, v4, v1

    .line 98
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    .line 99
    aget-object v3, v2, v3

    .line 100
    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;->dimensions:I

    .line 101
    array-length v6, v3

    new-array v6, v6, [J

    .line 102
    invoke-direct {v1, v3, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[J)V

    .line 103
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 104
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 105
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->substituedTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->originalTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    array-length v0, v2

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    :cond_2
    :goto_1
    return-object v1

    .line 108
    :cond_3
    aget-object v6, v0, v4

    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v6

    aput-object v6, v5, v4

    if-nez v6, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 7

    .line 109
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    .line 112
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 113
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v0, v0

    if-eq v0, v2, :cond_1

    return-object v1

    .line 116
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->getTypeName()[[C

    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->findTypeNames([[C)[[[C

    move-result-object v2

    if-eqz v2, :cond_3

    .line 118
    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    .line 119
    :cond_2
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    array-length v5, v4

    new-array v5, v5, [J

    invoke-direct {v1, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    .line 120
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 121
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    aget-wide v3, p1, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int p1, v3

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 122
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->substituedTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->originalTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    array-length v0, v2

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    :cond_3
    :goto_0
    return-object v1
.end method

.method private convert(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 5

    .line 125
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    .line 128
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 129
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0

    .line 130
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->getTypeName()[[C

    move-result-object v0

    .line 132
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->findTypeNames([[C)[[[C

    move-result-object v2

    if-eqz v2, :cond_2

    .line 133
    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    array-length v4, v3

    new-array v4, v4, [J

    invoke-direct {v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    .line 135
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 136
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 137
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->substituedTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->originalTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    array-length v0, v2

    mul-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    :cond_2
    :goto_0
    return-object v1
.end method

.method private convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 1

    .line 140
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    if-eqz v0, :cond_0

    .line 141
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    if-eqz v0, :cond_1

    .line 143
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1

    .line 144
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    if-eqz v0, :cond_2

    .line 145
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1

    .line 146
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    if-eqz v0, :cond_3

    .line 147
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->convert(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1

    .line 148
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    if-eqz v0, :cond_4

    .line 149
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->convert(Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1

    .line 150
    :cond_4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    if-eqz v0, :cond_5

    .line 151
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->convert(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1

    .line 152
    :cond_5
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    if-eqz v0, :cond_6

    .line 153
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->convert(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private convert(Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 3

    .line 154
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 155
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    move-object v1, v0

    .line 156
    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->kind:I

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;-><init>(I)V

    .line 157
    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;->bound:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 158
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 159
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0
.end method

.method private findTypeNames([[C)[[[C
    .locals 7

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    array-length v2, p1

    const/4 v3, 0x0

    if-le v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/16 v5, 0x2e

    invoke-static {p1, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$1;

    invoke-direct {v6, p0, v2, p1, v5}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$1;-><init>(Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;Z[CLjava/util/ArrayList;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->nameEnvironment:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    invoke-virtual {p1, v0, v1, v3, v6}, Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findExactTypes([CZILorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    return-object v4

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v2, 0x2

    aput v3, v0, v2

    aput v3, v0, v1

    aput p1, v0, v3

    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[C

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[C

    return-object p1
.end method

.method private getOriginal(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->originalTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[C

    return-object p1
.end method

.method private getSubstituedTypes()[Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->substituedTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    return-object v0
.end method

.method private getSubstitution(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->substituedTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[C

    return-object p1
.end method

.method private nextSubstitution([Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;[[[[C[I)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    aget v3, p3, v2

    aget-object v4, p2, v2

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    aput v3, p3, v2

    :goto_1
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    aget v4, p3, v1

    aget-object v3, v3, v4

    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v4, v3

    new-array v4, v4, [J

    iput-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    instance-of v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    if-eqz v4, :cond_3

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v3, v3

    new-array v4, v3, [[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    add-int/lit8 v3, v3, -0x1

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    :goto_2
    const/4 v6, -0x1

    if-le v3, v6, :cond_3

    if-gt v5, v6, :cond_2

    goto :goto_3

    :cond_2
    aget-object v6, v2, v5

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    aput v1, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public guess(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$GuessedTypeRequestor;)V
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v6, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->substituedTypes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v6, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->originalTypes:Ljava/util/HashMap;

    const/4 v9, 0x1

    iput v9, v6, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->convert(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->getSubstituedTypes()[Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;

    move-result-object v11

    array-length v12, v11

    array-length v0, v11

    new-array v13, v0, [I

    array-length v0, v11

    new-array v14, v0, [[[[C

    array-length v0, v11

    new-array v15, v0, [[[C

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, v11

    if-lt v1, v2, :cond_6

    new-instance v5, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;

    invoke-direct {v5}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;-><init>()V

    move v4, v0

    :goto_1
    iget v0, v6, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->combinationsCount:I

    if-lt v4, v0, :cond_1

    return-void

    :cond_1
    invoke-direct {v6, v11, v14, v13}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->nextSubstitution([Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;[[[[C[I)V

    iget-object v0, v6, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->problemFactory:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->startCheckingProblems()V

    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    if-eq v0, v9, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    move-object v3, v0

    goto :goto_3

    :cond_2
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v5, v10, v0}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    invoke-virtual {v5, v10, v0}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    invoke-virtual {v10, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, v6, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->problemFactory:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->stopCheckingProblems()V

    iget-object v0, v6, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->problemFactory:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasForbiddenProblems:Z

    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    new-array v2, v12, [Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    new-array v1, v12, [I

    new-array v0, v12, [I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move-object v1, v11

    move-object/from16 v18, v2

    move-object v2, v15

    move-object v9, v3

    move-object/from16 v3, v18

    move/from16 v22, v4

    move-object/from16 v4, v19

    move-object/from16 v23, v5

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->computeMissingElements([Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;[[[C[Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    invoke-virtual {v9, v8, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v17

    iget-object v0, v6, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->problemFactory:Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/codeassist/CompletionEngine$CompletionProblemFactory;->hasAllowedProblems:Z

    move-object/from16 v16, p3

    move/from16 v21, v0

    invoke-interface/range {v16 .. v21}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$GuessedTypeRequestor;->accept(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[I[IZ)V

    goto :goto_4

    :cond_4
    move/from16 v22, v4

    move-object/from16 v23, v5

    :cond_5
    :goto_4
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v5, v23

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    aget-object v2, v11, v1

    invoke-direct {v6, v2}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->getSubstitution(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[[[C

    move-result-object v2

    aput-object v2, v14, v1

    aget-object v2, v11, v1

    invoke-direct {v6, v2}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;->getOriginal(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)[[C

    move-result-object v2

    aput-object v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x1

    goto/16 :goto_0
.end method
