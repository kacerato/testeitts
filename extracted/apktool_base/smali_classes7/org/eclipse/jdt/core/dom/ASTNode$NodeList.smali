.class Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/ASTNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;
    }
.end annotation


# instance fields
.field private cursors:Ljava/util/List;

.field propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field store:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/eclipse/jdt/core/dom/ASTNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->store:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->cursors:Ljava/util/List;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-void
.end method

.method private declared-synchronized updateCursors(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->cursors:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->update(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget v1, v0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    iget-boolean v3, v2, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->cycleRisk:Z

    iget-object v2, v2, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->elementType:Ljava/lang/Class;

    invoke-static {v0, v1, v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->checkNewChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;ZLjava/lang/Class;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v2, v0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v2, v0, v1, v3}, Lorg/eclipse/jdt/core/dom/AST;->preAddChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->store:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->updateCursors(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object p2, p1, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p2, p1, v1, v0}, Lorg/eclipse/jdt/core/dom/AST;->postAddChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AST node cannot be modified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->store:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public listSize()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->memSize()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->treeSize()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public memSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public newCursor()Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->cursors:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->cursors:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->cursors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseCursor(Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->cursors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->cursors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->cursors:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    and-int/lit8 v0, v0, 0x4

    const-string v1, "AST node cannot be modified"

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->store:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget v2, v0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v2, v1, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v2, v1, v0, v3}, Lorg/eclipse/jdt/core/dom/AST;->preRemoveChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->store:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->updateCursors(II)V

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v2, p1, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v2, p1, v0, v3}, Lorg/eclipse/jdt/core/dom/AST;->postRemoveChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget v0, v0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    and-int/lit8 v0, v0, 0x4

    const-string v1, "AST node cannot be modified"

    if-nez v0, :cond_2

    check-cast p2, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->store:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-ne v0, p2, :cond_0

    return-object v0

    :cond_0
    iget v2, v0, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    iget-boolean v3, v2, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->cycleRisk:Z

    iget-object v2, v2, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->elementType:Ljava/lang/Class;

    invoke-static {v1, p2, v3, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->checkNewChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;ZLjava/lang/Class;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v2, v1, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v2, v1, v0, p2, v3}, Lorg/eclipse/jdt/core/dom/AST;->preReplaceChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->store:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p2, v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->setParent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->this$0:Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v2, v1, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->propertyDescriptor:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v2, v1, v0, p2, v3}, Lorg/eclipse/jdt/core/dom/AST;->postReplaceChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->store:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
