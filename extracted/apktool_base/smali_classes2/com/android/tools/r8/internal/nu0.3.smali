.class public final Lcom/android/tools/r8/internal/nu0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/Vw0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Vw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nu0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nu0;->b:Lcom/android/tools/r8/internal/Vw0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/nu0;->a(Lcom/android/tools/r8/internal/hw;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 5
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/internal/nu0;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-static {v4, v5, v6}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 11
    iget-object v5, p0, Lcom/android/tools/r8/internal/nu0;->b:Lcom/android/tools/r8/internal/Vw0;

    invoke-virtual {v5, v1, v4}, Lcom/android/tools/r8/internal/Vw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/nu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    return v3

    .line 15
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/nu0;->a(Lcom/android/tools/r8/internal/hw;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    .line 18
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->R0()Lcom/android/tools/r8/internal/Or0;

    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/android/tools/r8/internal/nu0;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/nu0;->a:Lcom/android/tools/r8/graph/y;

    .line 25
    invoke-static {v2, v4, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 26
    iget-object v4, p0, Lcom/android/tools/r8/internal/nu0;->b:Lcom/android/tools/r8/internal/Vw0;

    invoke-virtual {v4, v1, v2}, Lcom/android/tools/r8/internal/Vw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/hw;)Z
    .locals 4

    .line 27
    sget-boolean v0, Lcom/android/tools/r8/internal/nu0;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/nu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v2, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/android/tools/r8/internal/nu0;->b:Lcom/android/tools/r8/internal/Vw0;

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/Vw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    .line 31
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/nu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v2
.end method
