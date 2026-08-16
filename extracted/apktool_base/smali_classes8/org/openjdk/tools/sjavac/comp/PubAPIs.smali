.class public Lorg/openjdk/tools/sjavac/comp/PubAPIs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final pubApisKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/sjavac/comp/PubAPIs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected log:Lorg/openjdk/tools/javac/util/Log;

.field protected publicApiPerClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->pubApisKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method private constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->publicApiPerClass:Ljava/util/Map;

    sget-object v0, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->pubApisKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->log:Lorg/openjdk/tools/javac/util/Log;

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/sjavac/comp/PubAPIs;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->pubApisKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/sjavac/comp/PubAPIs;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/sjavac/comp/PubAPIs;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/sjavac/comp/PubAPIs;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getPubapis(Ljava/util/Collection;Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->publicApiPerClass:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-direct {v4}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    iget-object v5, p0, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->publicApiPerClass:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-static {v4, v2}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->mergeTypes(Lorg/openjdk/tools/sjavac/pubapi/PubApi;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public visitPubapi(Lorg/openjdk/javax/lang/model/element/Element;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;

    invoke-direct {v0}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;-><init>()V

    invoke-virtual {v0, p1}, Lorg/openjdk/javax/lang/model/util/AbstractElementVisitor6;->visit(Lorg/openjdk/javax/lang/model/element/Element;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->publicApiPerClass:Ljava/util/Map;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/comp/PubapiVisitor;->getCollectedPubApi()Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
