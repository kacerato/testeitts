.class public final Lcom/android/tools/r8/internal/ZD;
.super Lcom/android/tools/r8/internal/Rw;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final i:Lcom/android/tools/r8/internal/TD;

.field public final j:Lcom/android/tools/r8/internal/VD;

.field public final k:Lcom/android/tools/r8/graph/H0;

.field public final l:Lcom/android/tools/r8/internal/QJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/QJ;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Rw;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;)V

    new-instance p2, Lcom/android/tools/r8/internal/TD;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/TD;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/ZD;->i:Lcom/android/tools/r8/internal/TD;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->x:Lcom/android/tools/r8/internal/VD;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ZD;->j:Lcom/android/tools/r8/internal/VD;

    iput-object p4, p0, Lcom/android/tools/r8/internal/ZD;->k:Lcom/android/tools/r8/graph/H0;

    iput-object p5, p0, Lcom/android/tools/r8/internal/ZD;->l:Lcom/android/tools/r8/internal/QJ;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/SD;
    .locals 3

    .line 25
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object p1, v0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/android/tools/r8/internal/ZD;->j:Lcom/android/tools/r8/internal/VD;

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p1

    .line 30
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/VD;->a(I)Lcom/android/tools/r8/internal/RD;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    .line 32
    sget-object v2, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 41
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    if-nez v0, :cond_2

    .line 42
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/ZD;->j:Lcom/android/tools/r8/internal/VD;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance p1, Lcom/android/tools/r8/internal/YD;

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/internal/YD;-><init>(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/pu0;)V

    return-object p1

    .line 45
    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/rv0;->a:Lcom/android/tools/r8/internal/rv0;

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/ZD;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/SD;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/F0;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ZD;->k:Lcom/android/tools/r8/graph/H0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    :goto_0
    invoke-interface {p2}, Lcom/android/tools/r8/internal/SD;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {p2}, Lcom/android/tools/r8/internal/SD;->q()Lcom/android/tools/r8/internal/RD;

    move-result-object p2

    .line 50
    iget p2, p2, Lcom/android/tools/r8/internal/RD;->a:I

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZD;->l:Lcom/android/tools/r8/internal/QJ;

    .line 52
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ZD;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/SD;

    move-result-object p2

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ZD;->b(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/SD;)V

    return-void

    .line 55
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/ZD;->m:Z

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/android/tools/r8/internal/SD;->r()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/android/tools/r8/internal/SD;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZD;->i:Lcom/android/tools/r8/internal/TD;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/TD;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)Lcom/android/tools/r8/internal/TD;

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/internal/xw0;)V
    .locals 4

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, p1, v2}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/graph/F0;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZD;->l:Lcom/android/tools/r8/internal/QJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eq v0, v2, :cond_2

    goto/16 :goto_1

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/ZD;->l:Lcom/android/tools/r8/internal/QJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    if-eq v0, v2, :cond_4

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/internal/Rw;->e:Lcom/android/tools/r8/internal/dt;

    if-nez p2, :cond_3

    .line 11
    new-instance p2, Lcom/android/tools/r8/internal/dt;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Rw;->b:Lcom/android/tools/r8/internal/fB;

    invoke-direct {p2, v3, v1}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Rw;->e:Lcom/android/tools/r8/internal/dt;

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/Rw;->e:Lcom/android/tools/r8/internal/dt;

    .line 13
    invoke-virtual {p2, v0, v2}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v1

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    if-ne v2, p2, :cond_6

    goto :goto_0

    .line 15
    :cond_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/ZD;->l:Lcom/android/tools/r8/internal/QJ;

    if-ne v2, v3, :cond_5

    goto :goto_1

    .line 16
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 17
    :cond_8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v2, Lcom/android/tools/r8/internal/Y5;

    invoke-direct {v2, v0, p2}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    .line 20
    :cond_9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Y5;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 21
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Y5;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2, v0, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/p;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/p;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_a
    :goto_0
    const/4 v1, 0x0

    :cond_b
    :goto_1
    if-eqz v1, :cond_c

    .line 23
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/ZD;->a(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/SD;

    move-result-object p2

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ZD;->b(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/SD;)V

    :cond_c
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/SD;)V
    .locals 3

    invoke-interface {p2}, Lcom/android/tools/r8/internal/SD;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/graph/F5;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZD;->i:Lcom/android/tools/r8/internal/TD;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/TD;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)Lcom/android/tools/r8/internal/TD;

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZD;->k:Lcom/android/tools/r8/graph/H0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ZD;->k:Lcom/android/tools/r8/graph/H0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ZD;->l:Lcom/android/tools/r8/internal/QJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fE;->b()Lcom/android/tools/r8/internal/UD;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rw;->a:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/Y31;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Y31;-><init>(Lcom/android/tools/r8/internal/ZD;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/UD;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;)V

    return-void
.end method
