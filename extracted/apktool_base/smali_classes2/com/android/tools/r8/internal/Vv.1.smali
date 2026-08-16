.class public final Lcom/android/tools/r8/internal/Vv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Lcom/android/tools/r8/internal/qd0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Vv;->a:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Vv;->b:Lcom/android/tools/r8/internal/qd0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Ljava/util/List;
    .locals 0

    .line 13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vv;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    new-instance v1, Lcom/android/tools/r8/internal/QZ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/QZ0;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 15
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/OZ0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/OZ0;-><init>(Lcom/android/tools/r8/internal/Vv;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/n3;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l3;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    check-cast p2, Lcom/android/tools/r8/graph/o3;

    .line 5
    iget-object v0, p2, Lcom/android/tools/r8/graph/o3;->a:Lcom/android/tools/r8/graph/l1;

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/o3;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/PZ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/PZ0;-><init>(Lcom/android/tools/r8/internal/Vv;Lcom/android/tools/r8/graph/F5;)V

    .line 9
    iget-object v1, p2, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/d;->a(Ljava/util/function/Consumer;)V

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vv;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    .line 11
    iget-object p2, p2, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/d;->b()I

    move-result p2

    .line 12
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vv;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/F5;

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/Vv;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/qd0;->c(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_0

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/internal/Vv;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
