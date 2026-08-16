.class public final Lcom/android/tools/r8/internal/jm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/km;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jm;->b:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/km;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/km;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jm;->c:Lcom/android/tools/r8/internal/km;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Uf1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Uf1;-><init>(Lcom/android/tools/r8/internal/W9;)V

    .line 8
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 10
    sget p1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 11
    new-instance p1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic a(Ljava/util/function/IntConsumer;I)V
    .locals 1

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_0

    .line 6
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/jm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->o3:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->x()Lcom/android/tools/r8/internal/Eb;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/jm;->c:Lcom/android/tools/r8/internal/km;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/Eb;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 16
    iget-object v2, p2, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    iget-object p2, p2, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 18
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Eb;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-eq v0, p2, :cond_6

    .line 19
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/Eb;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/W9;

    move-result-object v1

    goto/16 :goto_1

    .line 20
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->f()Lcom/android/tools/r8/internal/F9;

    move-result-object p2

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/jm;->c:Lcom/android/tools/r8/internal/km;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/tools/r8/internal/km;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/F9;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;

    move-result-object v1

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/jm;->c:Lcom/android/tools/r8/internal/km;

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v3

    .line 28
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 29
    iget-object v5, v0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 30
    iget-object v5, v0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 31
    :cond_4
    iget-object v5, v0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v2, v4, v5}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    if-ne v4, v2, :cond_5

    move-object v4, v1

    goto :goto_0

    .line 32
    :cond_5
    iget-object v5, v0, Lcom/android/tools/r8/internal/km;->a:Lcom/android/tools/r8/graph/y;

    .line 33
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v3

    .line 34
    invoke-virtual {v0, v3, v2, p1}, Lcom/android/tools/r8/internal/km;->a(Lcom/android/tools/r8/graph/J4;Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/D5;)V

    :goto_0
    if-eqz v4, :cond_6

    .line 35
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->W()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result p2

    invoke-direct {v1, p1, v4, p2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    :cond_6
    :goto_1
    if-nez v1, :cond_7

    .line 36
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 37
    :cond_7
    invoke-static {v1}, Lcom/android/tools/r8/internal/jm;->a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->a(Ljava/util/function/IntConsumer;)V

    .line 2
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Tf1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Tf1;-><init>(Ljava/util/function/IntConsumer;)V

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/MH;->a()Ljava/util/function/IntConsumer;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Ca;->a(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final b(Ljava/util/function/IntConsumer;)V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/MH;->a()Ljava/util/function/IntConsumer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Ca;->a(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V

    return-void
.end method
