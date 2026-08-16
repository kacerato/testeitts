.class public final Lcom/android/tools/r8/internal/s10;
.super Lcom/android/tools/r8/internal/u10;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Iterable;

.field public final d:Lcom/android/tools/r8/graph/M2;

.field public final e:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/u10;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/s10;->c:Ljava/lang/Iterable;

    iput-object p4, p0, Lcom/android/tools/r8/internal/s10;->d:Lcom/android/tools/r8/graph/M2;

    iput-object p5, p0, Lcom/android/tools/r8/internal/s10;->e:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/graph/G;
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/s10;->d:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3}, Lcom/android/tools/r8/internal/jy;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/AD;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v2

    invoke-static {v1}, Lcom/android/tools/r8/internal/u10;->b(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/tools/r8/internal/s10;->c:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/g1;

    new-instance v5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    iget-object v7, p0, Lcom/android/tools/r8/internal/s10;->d:Lcom/android/tools/r8/graph/M2;

    invoke-static {v7}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/vb;

    iget-object v7, p0, Lcom/android/tools/r8/internal/s10;->d:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {v0, v7, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/tools/r8/internal/Q9;

    sget-object v7, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v6, v7, v8, v5}, Lcom/android/tools/r8/internal/Q9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v6, Lcom/android/tools/r8/internal/vb;

    iget-object v7, p0, Lcom/android/tools/r8/internal/s10;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {v0, v7, v7, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/ab;

    iget-object v6, p0, Lcom/android/tools/r8/internal/s10;->e:Lcom/android/tools/r8/graph/M2;

    invoke-static {v6}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/tools/r8/internal/G9;

    iget-object v5, v2, Lcom/android/tools/r8/internal/G9;->c:Lcom/android/tools/r8/internal/jG;

    iget-object v6, v2, Lcom/android/tools/r8/internal/G9;->d:Ljava/util/Deque;

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/mr0;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0
.end method
