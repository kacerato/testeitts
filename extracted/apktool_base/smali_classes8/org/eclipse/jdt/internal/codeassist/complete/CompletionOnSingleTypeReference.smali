.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;
.source "SourceFile"


# static fields
.field public static final K_CLASS:I = 0x1

.field public static final K_EXCEPTION:I = 0x3

.field public static final K_INTERFACE:I = 0x2

.field public static final K_TYPE:I


# instance fields
.field public fieldTypeCompletionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

.field public isCompletionNode:Z

.field public isConstructorType:Z

.field private kind:I


# direct methods
.method public constructor <init>([CJ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;-><init>([CJI)V

    return-void
.end method

.method public constructor <init>([CJI)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;-><init>([CJ)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->isCompletionNode:Z

    .line 4
    iput p4, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->kind:I

    return-void
.end method


# virtual methods
.method public aboutToResolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public augmentTypeWithAdditionalDimensions(I[[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;
    .locals 0

    return-object p0
.end method

.method public getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->fieldTypeCompletionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->isCompletionNode:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->fieldTypeCompletionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0
.end method

.method public isClass()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isException()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->kind:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->kind:I

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

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->kind:I

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
    .locals 1

    iget p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->kind:I

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
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveTypeEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->fieldTypeCompletionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->isCompletionNode:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->resolveTypeEnclosing(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    invoke-direct {v0, p0, p2, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw v0

    :cond_1
    new-instance p2, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->fieldTypeCompletionNode:Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnFieldType;

    invoke-direct {p2, v0, p1}, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    throw p2
.end method

.method public setKind(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnSingleTypeReference;->kind:I

    return-void
.end method
