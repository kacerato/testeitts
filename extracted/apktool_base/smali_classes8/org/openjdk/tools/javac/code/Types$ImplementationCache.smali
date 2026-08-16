.class Lorg/openjdk/tools/javac/code/Types$ImplementationCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImplementationCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;
    }
.end annotation


# instance fields
.field private _map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache;->_map:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static synthetic access$1600(Lorg/openjdk/tools/javac/code/Types$ImplementationCache;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache;->_map:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method private implementationInternal(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;ZLorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Z",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/openjdk/tools/javac/code/Types;->skipTypeVars(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v3, p4}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, p1, p2, v4, p3}, Lorg/openjdk/tools/javac/code/Symbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_3

    :cond_3
    move-object v2, v3

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object v2

    :cond_5
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public get(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;ZLorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Z",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache;->_map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache;->_map:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$ImplementationCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/code/Types;->membersClosure(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Scope$CompoundScope;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->getMark()I

    move-result v3

    invoke-virtual {v1, p4, p3, v3}, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;->matches(Lorg/openjdk/tools/javac/util/Filter;ZI)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, v1, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;->cachedImpl:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object p1

    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/code/Types$ImplementationCache;->implementationInternal(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;ZLorg/openjdk/tools/javac/util/Filter;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    new-instance v7, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Scope$CompoundScope;->getMark()I

    move-result v6

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Types$ImplementationCache$Entry;-><init>(Lorg/openjdk/tools/javac/code/Types$ImplementationCache;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/Filter;ZI)V

    invoke-interface {v0, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
