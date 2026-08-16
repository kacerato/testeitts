.class public Lcom/github/javaparser/ast/NodeList$NodeListIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/NodeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field current:Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TN;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/github/javaparser/ast/NodeList;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TN;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->current:Lcom/github/javaparser/ast/Node;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ast/NodeList;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "list",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TN;>;I)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->current:Lcom/github/javaparser/ast/Node;

    .line 6
    invoke-interface {p2, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Lcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v0}, Lcom/github/javaparser/ast/NodeList;->access$000(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/NodeList;->access$400(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)V

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/NodeList;->access$500(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)V

    .line 4
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->add(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TN;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    iput-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->current:Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->next()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    iput-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->current:Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->previous()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v0}, Lcom/github/javaparser/ast/NodeList;->access$000(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->current:Lcom/github/javaparser/ast/Node;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    iget-object v2, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->current:Lcom/github/javaparser/ast/Node;

    invoke-static {v1, v0, v2}, Lcom/github/javaparser/ast/NodeList;->access$100(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)V

    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->current:Lcom/github/javaparser/ast/Node;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public set(Lcom/github/javaparser/ast/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v0}, Lcom/github/javaparser/ast/NodeList;->access$000(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->current:Lcom/github/javaparser/ast/Node;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v1}, Lcom/github/javaparser/ast/NodeList;->access$000(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v1}, Lcom/github/javaparser/ast/NodeList;->access$000(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v1, v0, p1}, Lcom/github/javaparser/ast/NodeList;->access$200(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)V

    .line 6
    iget-object v1, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v1}, Lcom/github/javaparser/ast/NodeList;->access$000(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/Node;->setParentNode(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    .line 7
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/NodeList;->access$300(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)V

    .line 8
    iget-object v0, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal index. The index should be between 0 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->this$0:Lcom/github/javaparser/ast/NodeList;

    .line 10
    invoke-static {v2}, Lcom/github/javaparser/ast/NodeList;->access$000(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " excluded. It is instead "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/NodeList$NodeListIterator;->set(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
