.class public Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# instance fields
.field private caughtExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

.field private discouragedExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

.field private exceptionsStack:Ljava/util/Stack;

.field private thrownExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    return-void
.end method

.method private acceptException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->thrownExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private endVisitMethodInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->acceptException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeCaughtException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->thrownExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    aget-object v2, v0, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_2

    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->thrownExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->thrownExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->discouragedExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removeCaughtExceptions(Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;Z)V
    .locals 8

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchArguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    move v2, v0

    :goto_1
    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;

    move v3, v0

    :goto_2
    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/UnionTypeReference;->typeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    array-length v7, v6

    if-lt v3, v7, :cond_2

    goto :goto_4

    :cond_2
    aget-object v6, v6, v3

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz p2, :cond_3

    move-object v7, v6

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v7}, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->removeCaughtException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->caughtExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUncheckedException(Z)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->discouragedExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz p2, :cond_6

    move-object v4, v3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->removeCaughtException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->caughtExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUncheckedException(Z)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->discouragedExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private visitType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    .line 4
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->endVisitMethodInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->endVisitMethodInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    .line 7
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;->exception:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->acceptException(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 8
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;->endVisit(Lorg/eclipse/jdt/internal/compiler/ast/ThrowStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public getAlreadyCaughtExceptions()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->caughtExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->asArray([Ljava/lang/Object;)V

    return-object v1
.end method

.method public getDiscouragedExceptions()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->discouragedExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->asArray([Ljava/lang/Object;)V

    return-object v1
.end method

.method public getThrownUncaughtExceptions()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->thrownExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->elementSize:I

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->asArray([Ljava/lang/Object;)V

    return-object v1
.end method

.method public processThrownExceptions(Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->thrownExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->exceptionsStack:Ljava/util/Stack;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->caughtExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->discouragedExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->removeCaughtExceptions(Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;Z)V

    return-void
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 5

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->exceptionsStack:Ljava/util/Stack;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->thrownExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>()V

    .line 6
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->thrownExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    .line 7
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->tryBlock:Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-virtual {v1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->removeCaughtExceptions(Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;Z)V

    .line 9
    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->exceptionsStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->thrownExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    .line 10
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->values:[Ljava/lang/Object;

    move v2, v1

    .line 11
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_2

    .line 12
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TryStatement;->catchBlocks:[Lorg/eclipse/jdt/internal/compiler/ast/Block;

    if-nez v3, :cond_0

    move v4, v1

    goto :goto_1

    .line 13
    :cond_0
    array-length p1, v3

    move v4, p1

    :goto_1
    move p1, v1

    :goto_2
    if-lt p1, v4, :cond_1

    return v1

    .line 14
    :cond_1
    aget-object v0, v3, p1

    invoke-virtual {v0, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/Block;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 15
    :cond_2
    aget-object v3, v0, v2

    if-eqz v3, :cond_3

    .line 16
    iget-object v4, p0, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->thrownExceptions:Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->visitType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->visitType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/ThrownExceptionFinder;->visitType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)Z

    move-result p1

    return p1
.end method
