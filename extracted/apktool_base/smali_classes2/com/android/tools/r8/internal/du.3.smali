.class public final Lcom/android/tools/r8/internal/du;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/du;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/du;->b:Ljava/util/IdentityHashMap;

    invoke-static {p1}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/d91;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/d91;-><init>(Lcom/android/tools/r8/internal/du;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/du;->b:Ljava/util/IdentityHashMap;

    .line 2
    iget-object p2, p2, Lcom/android/tools/r8/internal/eu;->a:Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/du;->a:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-static {v0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xU;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/cu;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)[Lcom/android/tools/r8/graph/j1;
    .locals 7

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/e91;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/e91;-><init>(Lcom/android/tools/r8/internal/du;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/android/tools/r8/internal/qK;->d(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/tools/r8/graph/j1;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H5;

    .line 9
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    iget-object v4, p0, Lcom/android/tools/r8/internal/du;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v5, Lcom/android/tools/r8/graph/j1$a;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v6

    invoke-direct {v5, v3, v6}, Lcom/android/tools/r8/graph/j1$a;-><init>(Lcom/android/tools/r8/graph/j1;Z)V

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, p2, v4}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    .line 13
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    .line 14
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
