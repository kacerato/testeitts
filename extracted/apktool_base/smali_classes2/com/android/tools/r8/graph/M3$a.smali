.class public Lcom/android/tools/r8/graph/M3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/M3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/android/tools/r8/graph/M3$a;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/graph/M3$a;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/M3$a;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    sput-object v0, Lcom/android/tools/r8/graph/M3$a;->c:Lcom/android/tools/r8/graph/M3$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/M3$a;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/graph/M3$a;->b:Ljava/util/Set;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/graph/M3$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/graph/M3$a;->c:Lcom/android/tools/r8/graph/M3$a;

    return-object v0
.end method

.method public static synthetic a(Ljava/util/Collection;Ljava/util/HashMap;Ljava/lang/String;Lcom/android/tools/r8/graph/H3$e;)V
    .locals 0

    .line 9
    invoke-interface {p0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 10
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Lcom/android/tools/r8/graph/M3$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/tools/r8/graph/M3$a;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/graph/M3$a;->b:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/graph/M3$a;->a:Ljava/util/Map;

    new-instance v3, Lcom/android/tools/r8/graph/t9;

    invoke-direct {v3, p1, v1}, Lcom/android/tools/r8/graph/t9;-><init>(Ljava/util/Collection;Ljava/util/HashMap;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 8
    new-instance p1, Lcom/android/tools/r8/graph/M3$a;

    invoke-direct {p1, v1, v0}, Lcom/android/tools/r8/graph/M3$a;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object p1
.end method

.method public a(Ljava/util/Map;)Lcom/android/tools/r8/graph/M3$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/tools/r8/graph/H3$e;",
            ">;)",
            "Lcom/android/tools/r8/graph/M3$a;"
        }
    .end annotation

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/graph/M3$a;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 15
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/graph/M3$a;->b:Ljava/util/Set;

    new-instance v3, Lcom/android/tools/r8/graph/s9;

    invoke-direct {v3, p1, v1}, Lcom/android/tools/r8/graph/s9;-><init>(Ljava/util/Map;Ljava/util/HashSet;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 17
    new-instance p1, Lcom/android/tools/r8/graph/M3$a;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/graph/M3$a;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-object p1
.end method
