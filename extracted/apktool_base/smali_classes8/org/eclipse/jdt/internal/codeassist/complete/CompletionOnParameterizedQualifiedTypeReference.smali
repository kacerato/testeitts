.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;
.source "SourceFile"


# static fields
.field public static final K_CLASS:I = 0x1

.field public static final K_EXCEPTION:I = 0x3

.field public static final K_INTERFACE:I = 0x2

.field public static final K_TYPE:I


# instance fields
.field public completionIdentifier:[C

.field private kind:I


# direct methods
.method public constructor <init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C[J)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C[JI)V

    return-void
.end method

.method public constructor <init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;[C[JI)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p4}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;-><init>([[C[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;I[J)V

    .line 3
    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;->completionIdentifier:[C

    .line 4
    iput p5, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;->kind:I

    return-void
.end method


# virtual methods
.method public isClass()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isException()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;->kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInterface()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSuperType()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 10

    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;->kind:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string p1, "<CompleteOnType:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string p1, "<CompleteOnException:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string p1, "<CompleteOnInterface:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string p1, "<CompleteOnClass:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length p1, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    add-int/lit8 v3, p1, -0x1

    const/16 v4, 0x2e

    const-string v5, ", "

    const/16 v6, 0x3c

    const/16 v7, 0x3e

    if-lt v2, v3, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    aget-object p1, p1, v3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object p1, p1, v3

    if-eqz p1, :cond_4

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v2, p1

    sub-int/2addr v2, v0

    move v0, v1

    :goto_2
    if-lt v0, v2, :cond_3

    aget-object p1, p1, v2

    invoke-virtual {p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    aget-object v3, p1, v0

    invoke-virtual {v3, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnParameterizedQualifiedTypeReference;->completionIdentifier:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    aget-object v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->typeArguments:[[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v3, v3, v2

    if-eqz v3, :cond_7

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v6, v3

    sub-int/2addr v6, v0

    move v8, v1

    :goto_4
    if-lt v8, v6, :cond_6

    aget-object v3, v3, v6

    invoke-virtual {v3, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_6
    aget-object v9, v3, v8

    invoke-virtual {v9, v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 2
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p2, p0, p3, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw p2
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    .line 3
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 4
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p2, p0, v0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw p2
.end method
