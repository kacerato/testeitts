.class public final Lcom/android/tools/r8/internal/v00;
.super Lcom/android/tools/r8/internal/hx0;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/hx0;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Collection;Ljava/util/IdentityHashMap;)V
    .locals 2

    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/lx0;

    .line 9
    iget-object v1, v0, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    .line 10
    invoke-virtual {p1, v1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/LinkedList;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/v00;->b(Ljava/util/LinkedList;)Ljava/util/IdentityHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/lx0;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    .line 5
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/lx0;

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/v00;->b:Z

    if-nez v0, :cond_1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/util/LinkedList;)Ljava/util/IdentityHashMap;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Gv1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Gv1;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Consumer;)Ljava/util/IdentityHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoNestedMergingPolicy"

    return-object v0
.end method
