.class public final Lcom/android/tools/r8/graph/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jq0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/qd0;

.field public final b:Lcom/android/tools/r8/internal/qd0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/O;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/O;->a:Lcom/android/tools/r8/graph/G;

    new-instance v1, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/android/tools/r8/internal/ka;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object v2

    iget v3, v1, Lcom/android/tools/r8/internal/qd0;->i:I

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/android/tools/r8/graph/K;->a:Lcom/android/tools/r8/internal/qd0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O;->b:Lcom/android/tools/r8/graph/G;

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/tools/r8/internal/ka;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->m()Lcom/android/tools/r8/internal/ka;

    move-result-object v1

    iget v2, v0, Lcom/android/tools/r8/internal/qd0;->i:I

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/android/tools/r8/graph/K;->b:Lcom/android/tools/r8/internal/qd0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/ka;

    check-cast p2, Lcom/android/tools/r8/internal/ka;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/K;->a:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/graph/K;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/ka;

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method
