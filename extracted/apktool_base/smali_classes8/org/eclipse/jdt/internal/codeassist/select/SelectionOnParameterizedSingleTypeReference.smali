.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnParameterizedSingleTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;
.source "SourceFile"


# direct methods
.method public constructor <init>([C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;J)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;-><init>([C[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;IJ)V

    return-void
.end method


# virtual methods
.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    const-string p1, "<SelectOnType:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p1, 0x3c

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;ZI)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 2
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1
.end method

.method public resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;I)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 4
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1
.end method
