.class public final Lcom/android/tools/r8/internal/st0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/graph/I2;

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/st0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/st0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/st0;->d:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->M4:Lcom/android/tools/r8/graph/u1$e;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1$e;->a:Lcom/android/tools/r8/graph/A2;

    iput-object v0, p0, Lcom/android/tools/r8/internal/st0;->e:Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$e;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p1, p0, Lcom/android/tools/r8/internal/st0;->f:Lcom/android/tools/r8/graph/A2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->C:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->N:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->C:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/st0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/i0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Df;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Sm0;
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/st0;->b:Lcom/android/tools/r8/graph/y;

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 20
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object p4

    iget-object v1, p0, Lcom/android/tools/r8/internal/st0;->b:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/it1;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/tools/r8/internal/it1;-><init>(Lcom/android/tools/r8/internal/st0;Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiFunction;)V

    .line 21
    invoke-virtual {v0, p1, p4, v1, v2}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 22
    invoke-interface {p5, p1, p6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    new-instance p2, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    const/16 p3, 0xb8

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 3

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->O()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 34
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/st0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->r5:Lcom/android/tools/r8/graph/L2;

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v1, Lcom/android/tools/r8/graph/u1;->s5:Lcom/android/tools/r8/graph/I2;

    if-ne p1, v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/st0;->c()Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/st0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    sget-object v0, Lcom/android/tools/r8/internal/C2;->u:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 38
    iget-object p1, p0, Lcom/android/tools/r8/internal/st0;->e:Lcom/android/tools/r8/graph/A2;

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 41
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/st0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/st0;->b()Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/st0;->f:Lcom/android/tools/r8/graph/A2;

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 47
    iget-object v0, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    if-ne v0, v1, :cond_2

    iget-object v0, p2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    if-ne v0, p1, :cond_2

    iget-object p1, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/st0;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/st0;->d()Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 50
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 7

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/st1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/st1;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/tt1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/tt1;-><init>()V

    .line 3
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/ut1;

    move-object v0, p6

    invoke-direct {v5, p6}, Lcom/android/tools/r8/internal/ut1;-><init>(Lcom/android/tools/r8/internal/ea;)V

    move-object v4, p8

    .line 4
    iget-object v6, v4, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    move-object v0, p0

    move-object v2, p1

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/st0;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Df;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Sm0;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 8

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/ot1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ot1;-><init>()V

    move-object v7, p0

    iget-object v2, v7, Lcom/android/tools/r8/internal/st0;->d:Lcom/android/tools/r8/graph/I2;

    new-instance v3, Lcom/android/tools/r8/internal/pt1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/pt1;-><init>()V

    .line 8
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/qt1;

    move-object v0, p5

    invoke-direct {v5, p5}, Lcom/android/tools/r8/internal/qt1;-><init>(Lcom/android/tools/r8/internal/ea;)V

    move-object v4, p7

    .line 9
    iget-object v6, v4, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    move-object v0, p0

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/st0;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Df;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Sm0;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p3, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 12
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 p1, 0x1009

    .line 13
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    .line 14
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/mt1;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/mt1;-><init>(Lcom/android/tools/r8/internal/st0;Ljava/util/function/BiFunction;)V

    .line 16
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    :goto_0
    if-eqz p1, :cond_2

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/st0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq p1, v1, :cond_2

    .line 27
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/st0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    iget-object p1, v0, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/If;

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class or interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " required for desugaring of try-with-resources is not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/Xl;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/st0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/jt1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/jt1;-><init>(Lcom/android/tools/r8/internal/st0;Lcom/android/tools/r8/graph/I2;)V

    .line 5
    invoke-static {v1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v1
.end method

.method public final b(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 7

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/kt1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kt1;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/lt1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/lt1;-><init>()V

    .line 8
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/ut1;

    move-object v0, p6

    invoke-direct {v5, p6}, Lcom/android/tools/r8/internal/ut1;-><init>(Lcom/android/tools/r8/internal/ea;)V

    move-object v4, p8

    .line 9
    iget-object v6, v4, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    move-object v0, p0

    move-object v2, p1

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/st0;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Df;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Sm0;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Xl;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/nt1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/nt1;-><init>(Lcom/android/tools/r8/internal/st0;)V

    .line 3
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v1
.end method

.method public final d()Lcom/android/tools/r8/internal/Xl;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/st0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/rt1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/rt1;-><init>(Lcom/android/tools/r8/internal/st0;Lcom/android/tools/r8/graph/I2;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v1
.end method
