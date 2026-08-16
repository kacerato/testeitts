.class public Lcom/github/javaparser/utils/VisitorMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TN;TV;>;"
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

.field private final innerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/github/javaparser/utils/VisitorMap<",
            "TN;TV;>.EqualsHashcodeOverridingFacade;TV;>;"
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/github/javaparser/utils/VisitorMap;->hashcodeVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    iput-object p2, p0, Lcom/github/javaparser/utils/VisitorMap;->equalsVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorMap;->lambda$keySet$0(Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/github/javaparser/utils/VisitorMap;)Lcom/github/javaparser/ast/visitor/GenericVisitor;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/utils/VisitorMap;->hashcodeVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/github/javaparser/utils/VisitorMap;)Lcom/github/javaparser/ast/visitor/GenericVisitor;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/utils/VisitorMap;->equalsVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleEntry;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorMap;->lambda$entrySet$1(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$entrySet$1(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleEntry;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;

    invoke-static {v1}, Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;->access$200(Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic lambda$keySet$0(Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "k"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;->access$200(Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    new-instance v1, Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorMap;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TN;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/utils/j0;

    invoke-direct {v1}, Lcom/github/javaparser/utils/j0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    new-instance v1, Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorMap;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/utils/h0;

    invoke-direct {v1}, Lcom/github/javaparser/utils/h0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public put(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)TV;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    new-instance v1, Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorMap;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/utils/VisitorMap;->put(Lcom/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TN;+TV;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/utils/i0;

    invoke-direct {v0, p0}, Lcom/github/javaparser/utils/i0;-><init>(Lcom/github/javaparser/utils/VisitorMap;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    new-instance v1, Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/utils/VisitorMap$EqualsHashcodeOverridingFacade;-><init>(Lcom/github/javaparser/utils/VisitorMap;Lcom/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorMap;->innerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
