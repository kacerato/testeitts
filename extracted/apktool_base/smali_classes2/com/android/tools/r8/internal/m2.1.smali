.class public final Lcom/android/tools/r8/internal/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/m2;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/Bj1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/Bj1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4;)V

    .line 17
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p0

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/Zl;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/Fj1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Fj1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;)V

    .line 22
    new-instance p0, Lcom/android/tools/r8/internal/Yl;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Yl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Yl;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p0

    .line 23
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Yl;->a(Lcom/android/tools/r8/internal/Zl;)Lcom/android/tools/r8/internal/Yl;

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/K0;
    .locals 1

    if-nez p2, :cond_0

    .line 53
    new-instance p0, Lcom/android/tools/r8/internal/Cj1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Cj1;-><init>()V

    return-object p0

    .line 54
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result p1

    if-eq p0, p1, :cond_4

    .line 56
    new-instance p0, Lcom/android/tools/r8/internal/Dj1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Dj1;-><init>()V

    return-object p0

    .line 57
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 58
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object p2

    .line 60
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 61
    invoke-virtual {p1, v0, p0, p2}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    new-instance p0, Lcom/android/tools/r8/internal/Ej1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ej1;-><init>()V

    return-object p0

    .line 63
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 64
    invoke-virtual {p1, p3, p0, p2}, Lcom/android/tools/r8/graph/Z4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 65
    new-instance p0, Lcom/android/tools/r8/internal/Cj1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Cj1;-><init>()V

    return-object p0

    .line 66
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->u()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 67
    new-instance p0, Lcom/android/tools/r8/internal/Dj1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Dj1;-><init>()V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/ir/optimize/K0;)Ljava/util/ArrayList;
    .locals 3

    if-nez p5, :cond_1

    .line 26
    sget-boolean p0, Lcom/android/tools/r8/internal/m2;->c:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 27
    :cond_1
    invoke-interface {p5, p0, p3, p4}, Lcom/android/tools/r8/ir/optimize/K0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/N0;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;

    move-result-object p0

    .line 28
    iget-object p0, p0, Lcom/android/tools/r8/ir/optimize/L0;->a:Lcom/android/tools/r8/graph/H5;

    .line 29
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object p4

    .line 31
    iget-object p5, p4, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length p5, p5

    const/4 v0, 0x1

    sub-int/2addr p5, v0

    :goto_0
    if-ltz p5, :cond_3

    .line 32
    new-instance v1, Lcom/android/tools/r8/internal/kb;

    .line 33
    invoke-virtual {p4, p5}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    sget-object v2, Lcom/android/tools/r8/internal/kb$a;->d:Lcom/android/tools/r8/internal/kb$a;

    goto :goto_1

    .line 35
    :cond_2
    sget-object v2, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    :goto_1
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    .line 36
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result p4

    if-nez p4, :cond_4

    .line 38
    new-instance p4, Lcom/android/tools/r8/internal/kb;

    sget-object p5, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p4, p5}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_4
    new-instance p4, Lcom/android/tools/r8/internal/ga;

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    const/16 p5, 0xb8

    const/4 v1, 0x0

    invoke-direct {p4, p5, p0, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 41
    sget-boolean p0, Lcom/android/tools/r8/internal/m2;->c:Z

    if-nez p0, :cond_6

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 42
    :cond_6
    :goto_2
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/tools/r8/internal/kb;

    sget-object p4, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p0, p4}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p1

    if-nez p1, :cond_8

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 47
    new-instance p1, Lcom/android/tools/r8/internal/z9;

    sget-object p2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    .line 48
    iget-object p0, p0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    aget-byte p0, p0, v1

    int-to-char p0, p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Kw0;->a(C)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p0

    const-wide/16 p4, 0x0

    .line 49
    invoke-direct {p1, p4, p5, p0}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    goto :goto_3

    .line 50
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/x9;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/x9;-><init>()V

    .line 51
    :goto_3
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3

    .line 52
    :cond_8
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/QT;->a(I)V

    return-object p3
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p8

    .line 19
    invoke-static {p0, p1, p2, p8}, Lcom/android/tools/r8/internal/m2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/K0;

    move-result-object v5

    move-object v2, p5

    move-object v3, p7

    move-object v4, p9

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/m2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/ir/optimize/K0;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 6

    .line 25
    new-instance v5, Lcom/android/tools/r8/internal/Cj1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/Cj1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p6

    move-object v4, p8

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/m2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/ir/optimize/K0;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/m2;->b:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v0, p2, Lcom/android/tools/r8/graph/V4;

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$a;->y()Z

    move-result v0

    goto :goto_2

    .line 12
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/m2;->c:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/m2;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/m2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 15
    :cond_5
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    return-void
.end method
