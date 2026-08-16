.class Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpeculativeCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;
    }
.end annotation


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;->cache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;->matches(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public put(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)V
    .locals 4

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->msym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;->cache:Ljava/util/Map;

    new-instance v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;

    invoke-direct {v3, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache$Entry;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)V

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
