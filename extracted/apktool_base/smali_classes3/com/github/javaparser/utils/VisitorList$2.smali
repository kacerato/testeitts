.class Lcom/github/javaparser/utils/VisitorList$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/utils/VisitorList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final itr:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Lcom/github/javaparser/utils/VisitorList<",
            "TN;>.EqualsHashcodeOverridingFacade;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/github/javaparser/utils/VisitorList;

.field final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/github/javaparser/utils/VisitorList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$index"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/utils/VisitorList$2;->this$0:Lcom/github/javaparser/utils/VisitorList;

    iput p2, p0, Lcom/github/javaparser/utils/VisitorList$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Lcom/github/javaparser/ast/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    new-instance v1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    iget-object v2, p0, Lcom/github/javaparser/utils/VisitorList$2;->this$0:Lcom/github/javaparser/utils/VisitorList;

    invoke-direct {v1, v2, p1}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elem"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/utils/VisitorList$2;->add(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

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
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-static {v0}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/utils/VisitorList$2;->next()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

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
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-static {v0}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/utils/VisitorList$2;->previous()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

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
            "elem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    new-instance v1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    iget-object v2, p0, Lcom/github/javaparser/utils/VisitorList$2;->this$0:Lcom/github/javaparser/utils/VisitorList;

    invoke-direct {v1, v2, p1}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elem"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/utils/VisitorList$2;->set(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
