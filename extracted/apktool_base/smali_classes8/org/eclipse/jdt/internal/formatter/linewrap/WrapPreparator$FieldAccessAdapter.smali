.class Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldAccessAdapter"
.end annotation


# instance fields
.field final accessExpression:Lorg/eclipse/jdt/core/dom/Expression;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/Expression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;->accessExpression:Lorg/eclipse/jdt/core/dom/Expression;

    return-void
.end method

.method public static isFieldAccess(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/FieldAccess;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/QualifiedName;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/ThisExpression;

    if-nez v0, :cond_0

    instance-of p0, p0, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getExpression()Lorg/eclipse/jdt/core/dom/Expression;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;->accessExpression:Lorg/eclipse/jdt/core/dom/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/FieldAccess;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/dom/FieldAccess;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/FieldAccess;->getExpression()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/QualifiedName;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/dom/QualifiedName;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/ThisExpression;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/core/dom/ThisExpression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ThisExpression;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    return-object v0

    :cond_2
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->getQualifier()Lorg/eclipse/jdt/core/dom/Name;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getIdentifierIndex(Lorg/eclipse/jdt/internal/formatter/TokenManager;)I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$FieldAccessAdapter;->accessExpression:Lorg/eclipse/jdt/core/dom/Expression;

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/FieldAccess;

    const/16 v2, 0x16

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/dom/FieldAccess;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/FieldAccess;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    return p1

    :cond_0
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/QualifiedName;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/core/dom/QualifiedName;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/QualifiedName;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    return p1

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/ThisExpression;

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    return p1

    :cond_2
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;

    if-eqz v1, :cond_3

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->lastIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
