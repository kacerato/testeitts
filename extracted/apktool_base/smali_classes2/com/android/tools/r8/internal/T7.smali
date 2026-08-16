.class public final Lcom/android/tools/r8/internal/T7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/T7;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/ZW0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/ZW0;-><init>(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)V

    .line 23
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p0

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 25
    new-instance p2, Lcom/android/tools/r8/internal/i9;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-static {p0, p2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 6

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/T7;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->m3:Lcom/android/tools/r8/graph/M2;

    if-eq v0, v2, :cond_4

    iget-object v0, v1, Lcom/android/tools/r8/graph/u1;->n3:Lcom/android/tools/r8/internal/hC;

    iget-object v1, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/T7;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->n3:Lcom/android/tools/r8/internal/hC;

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/T7;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->G4:Lcom/android/tools/r8/graph/D1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/D1;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 12
    iget-object v2, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    if-ne v2, v3, :cond_3

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/O2;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 14
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/T7;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->m3:Lcom/android/tools/r8/graph/M2;

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->W()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/T7;->b:Lcom/android/tools/r8/graph/u1;

    .line 19
    iget-object v4, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result p1

    invoke-direct {v1, v2, v0, p1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 21
    invoke-static {v1, p2}, Lcom/android/tools/r8/internal/T7;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    return-void
.end method
