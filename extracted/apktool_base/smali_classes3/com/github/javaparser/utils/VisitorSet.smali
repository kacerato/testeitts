.class public Lcom/github/javaparser/utils/VisitorSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final equalsVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Boolean;",
            "Lcom/github/javaparser/ast/visitor/Visitable;",
            ">;"
        }
    .end annotation
.end field

.field private final hashcodeVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final innerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/github/javaparser/utils/VisitorSet<",
            "TN;>.EqualsHashcodeOverridingFacade;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/visitor/GenericVisitor;Lcom/github/javaparser/ast/visitor/GenericVisitor;)V
    .locals 1
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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    iput-object p1, p0, Lcom/github/javaparser/utils/VisitorSet;->hashcodeVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    iput-object p2, p0, Lcom/github/javaparser/utils/VisitorSet;->equalsVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorSet;->lambda$toArray$1(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/github/javaparser/utils/VisitorSet;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/github/javaparser/utils/VisitorSet;)Lcom/github/javaparser/ast/visitor/GenericVisitor;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/utils/VisitorSet;->hashcodeVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/github/javaparser/utils/VisitorSet;)Lcom/github/javaparser/ast/visitor/GenericVisitor;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/utils/VisitorSet;->equalsVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorSet;->lambda$toString$2(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorSet;->lambda$toArray$0(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$toArray$0(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "facade"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;->access$100(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$toArray$1(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "facade"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;->access$100(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$toString$2(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "facade"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;->access$100(Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    new-instance v1, Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorSet;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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

    .line 1
    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/utils/VisitorSet;->add(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

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

    invoke-virtual {p0, v1}, Lcom/github/javaparser/utils/VisitorSet;->add(Lcom/github/javaparser/ast/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

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

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    new-instance v1, Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorSet;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/VisitorSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

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

    new-instance v0, Lcom/github/javaparser/utils/VisitorSet$1;

    invoke-direct {v0, p0}, Lcom/github/javaparser/utils/VisitorSet$1;-><init>(Lcom/github/javaparser/utils/VisitorSet;)V

    return-object v0
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

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    new-instance v1, Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorSet;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

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

    invoke-virtual {p0, v1}, Lcom/github/javaparser/utils/VisitorSet;->remove(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lcom/github/javaparser/utils/VisitorSet;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/javaparser/utils/VisitorSet;->clear()V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/utils/VisitorSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/github/javaparser/utils/VisitorSet;->size()I

    move-result p1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/utils/m0;

    invoke-direct {v1}, Lcom/github/javaparser/utils/m0;-><init>()V

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
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/utils/k0;

    invoke-direct {v1}, Lcom/github/javaparser/utils/k0;-><init>()V

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
    .locals 4

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorSet;->innerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/utils/l0;

    invoke-direct {v1}, Lcom/github/javaparser/utils/l0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "["

    const-string v2, "]"

    const-string v3, ","

    invoke-static {v3, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
