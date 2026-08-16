.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;
.source "SourceFile"


# static fields
.field public static final K_CLASS:I = 0x1

.field public static final K_EXCEPTION:I = 0x3

.field public static final K_INTERFACE:I = 0x2

.field public static final K_TYPE:I


# instance fields
.field public completionIdentifier:[C

.field public isConstructorType:Z

.field private kind:I


# direct methods
.method public constructor <init>([[C[C[J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;-><init>([[C[C[JI)V

    return-void
.end method

.method public constructor <init>([[C[C[JI)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;-><init>([[C[J)V

    .line 3
    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->completionIdentifier:[C

    .line 4
    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->kind:I

    return-void
.end method


# virtual methods
.method public aboutToResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public augmentTypeWithAdditionalDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 0

    return-object p0
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getTypeOrPackage([[C)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {v1, p0, v0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>()V

    throw p1

    :cond_1
    new-instance v1, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {v1, p0, v0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v1
.end method

.method public isClass()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isException()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->kind:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->kind:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->kind:I

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
    .locals 2

    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->kind:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

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
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v1, v0

    if-lt p1, v1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->completionIdentifier:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2

    :cond_3
    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public setKind(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnQualifiedTypeReference;->kind:I

    return-void
.end method
