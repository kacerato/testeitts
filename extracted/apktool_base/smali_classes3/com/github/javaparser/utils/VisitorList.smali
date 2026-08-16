.class public Lcom/github/javaparser/utils/VisitorList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TN;>;"
    }
.end annotation


# instance fields
.field protected final equalsVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Boolean;",
            "Lcom/github/javaparser/ast/visitor/Visitable;",
            ">;"
        }
    .end annotation
.end field

.field protected final hashcodeVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected innerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/utils/VisitorList<",
            "TN;>.EqualsHashcodeOverridingFacade;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/visitor/GenericVisitor;Lcom/github/javaparser/ast/visitor/GenericVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hashcodeVisitor",
            "equalsVisitor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Boolean;",
            "Lcom/github/javaparser/ast/visitor/Visitable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/VisitorList;->hashcodeVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    iput-object p2, p0, Lcom/github/javaparser/utils/VisitorList;->equalsVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorList;->lambda$toArray$0(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorList;->lambda$toArray$1(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$toArray$0(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "facade"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$toArray$1(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "facade"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(ILcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-direct {v1, p0, p2}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/utils/VisitorList;->add(ILcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public add(Lcom/github/javaparser/ast/Node;)Z
    .locals 2
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
            "(TN;)Z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elem"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/utils/VisitorList;->add(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TN;>;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/utils/VisitorList;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/VisitorList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/utils/VisitorList;->add(ILcom/github/javaparser/ast/Node;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TN;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/utils/VisitorList;->add(Lcom/github/javaparser/ast/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/VisitorList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TN;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-static {p1}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/utils/VisitorList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/utils/VisitorList$1;

    invoke-direct {v0, p0}, Lcom/github/javaparser/utils/VisitorList$1;-><init>(Lcom/github/javaparser/utils/VisitorList;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TN;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/VisitorList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TN;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/utils/VisitorList$2;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/utils/VisitorList$2;-><init>(Lcom/github/javaparser/utils/VisitorList;I)V

    return-object v0
.end method

.method public remove(I)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TN;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-static {p1}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/utils/VisitorList;->remove(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/javaparser/utils/VisitorList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/utils/VisitorList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/javaparser/utils/VisitorList;->clear()V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/utils/VisitorList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/github/javaparser/utils/VisitorList;->size()I

    move-result p1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)TN;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-direct {v1, p0, p2}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-static {p1}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/utils/VisitorList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation

    new-instance v6, Lcom/github/javaparser/utils/VisitorList$3;

    iget-object v2, p0, Lcom/github/javaparser/utils/VisitorList;->hashcodeVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    iget-object v3, p0, Lcom/github/javaparser/utils/VisitorList;->equalsVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/utils/VisitorList$3;-><init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/visitor/GenericVisitor;Lcom/github/javaparser/ast/visitor/GenericVisitor;II)V

    return-object v6
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/utils/g0;

    invoke-direct {v1}, Lcom/github/javaparser/utils/g0;-><init>()V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/utils/f0;

    invoke-direct {v1}, Lcom/github/javaparser/utils/f0;-><init>()V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/github/javaparser/utils/VisitorList;->size()I

    move-result v1

    const-string v2, "]"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
