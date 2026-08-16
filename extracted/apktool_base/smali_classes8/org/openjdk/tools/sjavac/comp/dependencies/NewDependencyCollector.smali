.class public Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/util/TaskListener;


# instance fields
.field private final context:Lorg/openjdk/tools/javac/util/Context;

.field private cpDeps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private deps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final explicitJFOs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Context;",
            "Ljava/util/Collection<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->context:Lorg/openjdk/tools/javac/util/Context;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->explicitJFOs:Ljava/util/Collection;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;)Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->lambda$getDependencyNodes$0(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;)Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    move-result-object p0

    return-object p0
.end method

.method private allSupertypes(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getSuperclass()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->allSupertypes(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getInterfaces()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->allSupertypes(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->lambda$getDependencyNodes$1(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->lambda$getAllDependencies$3(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private collectPubApisOfDependencies(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Context;",
            "Ljava/util/Collection<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/sjavac/comp/PubAPIs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->getDependencyNodes(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;Z)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->getClassSymbol()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->getLocationOf(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    if-ne v1, v2, :cond_0

    :cond_1
    invoke-virtual {v0, p2}, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->visitPubapi(Lorg/openjdk/javax/lang/model/element/Element;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic d(ZLjava/util/Collection;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->lambda$getDependencyNodes$2(ZLjava/util/Collection;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)Z

    move-result p0

    return p0
.end method

.method private getAllDependencies(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lorg/openjdk/tools/javac/util/GraphUtils$Node<",
            "**>;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->getSupportedDependencyKinds()[Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/sjavac/comp/dependencies/d;

    invoke-direct {v1, p1}, Lorg/openjdk/tools/sjavac/comp/dependencies/d;-><init>(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method private getDependencies(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Context;",
            "Ljava/util/Collection<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v1}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->getDependencyNodes(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;Z)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    .line 4
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->getClassSymbol()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Util;->pkgNameOfClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_1

    .line 7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_2

    .line 9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    invoke-direct {p0, p2}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->getAllDependencies(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/util/GraphUtils$Node;

    .line 11
    check-cast v3, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    if-ne v3, p2, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->getClassSymbol()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    if-nez v4, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->getClassSymbol()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    invoke-virtual {p0, p3, v4}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->isSymbolRelevant(ZLorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->getClassSymbol()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_6
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->getClassSymbol()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->allSupertypes(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 16
    invoke-virtual {p0, p3, v1}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->isSymbolRelevant(ZLorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 17
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    return-object v0
.end method

.method private getDependencyNodes(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;Z)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Context;",
            "Ljava/util/Collection<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;Z)",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Dependencies;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Dependencies;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->getNodes()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/sjavac/comp/dependencies/a;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/comp/dependencies/a;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/sjavac/comp/dependencies/b;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/comp/dependencies/b;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/sjavac/comp/dependencies/c;

    invoke-direct {v0, p3, p2}, Lorg/openjdk/tools/sjavac/comp/dependencies/c;-><init>(ZLjava/util/Collection;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method private getLocationOf(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    instance-of v0, p1, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/comp/JavaFileObjectWithLocation;->getLocation()Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic lambda$getAllDependencies$3(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;->getDependenciesByKind(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDependencyNodes$0(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$Node;)Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;
    .locals 0

    check-cast p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;

    return-object p0
.end method

.method private static synthetic lambda$getDependencyNodes$1(Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->getClassSymbol()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getDependencyNodes$2(ZLjava/util/Collection;Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;)Z
    .locals 0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;->getClassSymbol()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p2

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public finished(Lorg/openjdk/source/util/TaskEvent;)V
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/source/util/TaskEvent;->getKind()Lorg/openjdk/source/util/TaskEvent$Kind;

    move-result-object p1

    sget-object v0, Lorg/openjdk/source/util/TaskEvent$Kind;->COMPILATION:Lorg/openjdk/source/util/TaskEvent$Kind;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->context:Lorg/openjdk/tools/javac/util/Context;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->explicitJFOs:Ljava/util/Collection;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->collectPubApisOfDependencies(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->context:Lorg/openjdk/tools/javac/util/Context;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->explicitJFOs:Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->getDependencies(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;Z)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->deps:Ljava/util/Map;

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->context:Lorg/openjdk/tools/javac/util/Context;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->explicitJFOs:Ljava/util/Collection;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->getDependencies(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;Z)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->cpDeps:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public getDependencies(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->cpDeps:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->deps:Ljava/util/Map;

    :goto_0
    return-object p1
.end method

.method public isSymbolRelevant(ZLorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 0

    invoke-direct {p0, p2}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->getLocationOf(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p2

    if-eqz p1, :cond_0

    sget-object p1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    :goto_0
    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
