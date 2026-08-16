.class public abstract Lcom/android/tools/r8/internal/yY;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/tools/r8/internal/wY;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/AA;
    .locals 0

    .line 11
    new-instance p0, Lcom/android/tools/r8/internal/AA;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/AA;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/H2;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/yY;->a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/xA1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/xA1;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/AA;

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 8
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/s60;->a(Ljava/util/Collection;)Ljava/util/Collection;

    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
