.class public Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
.source "SourceFile"


# static fields
.field public static final BOTH:I = 0x3

.field public static final NEW:I = 0x1

.field public static final OLD:I = 0x2


# instance fields
.field private listEntries:Ljava/util/List;

.field private originalNodes:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->originalNodes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->listEntries:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->originalNodes:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 7
    :cond_0
    aget-object v1, p1, v0

    .line 8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->listEntries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->originalNodes:Ljava/util/List;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getEntries()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->listEntries:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->originalNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->listEntries:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->originalNodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->listEntries:Ljava/util/List;

    new-instance v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    invoke-direct {v4, v2, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->listEntries:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getChangeKind()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->listEntries:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->listEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->listEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    .line 4
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public getChangeKind(I)I
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getChangeKind()I

    move-result p1

    return p1
.end method

.method public getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    return-object v0
.end method

.method public getIndex(Lorg/eclipse/jdt/core/dom/ASTNode;I)I
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return v1

    :cond_1
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getNewValue()Ljava/lang/Object;
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getEntries()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getOriginalValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->originalNodes:Ljava/util/List;

    return-object v0
.end method

.method public insert(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public isListRewrite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeEntry(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->replaceEntry(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p1

    return-object p1
.end method

.method public replaceEntry(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
    .locals 6

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-lt v2, v1, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p1, :cond_2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v4, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->setNewValue(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v3

    :cond_3
    return-object v4

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public revertChange(Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->setNewValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;I)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;->setNewValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " [list change\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ListRewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
