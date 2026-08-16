.class public Lcom/android/tools/r8/internal/uc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/hC;

.field public final e:Lcom/android/tools/r8/graph/I2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/uc0;->d:Lcom/android/tools/r8/internal/hC;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1, v2, v0}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/uc0;->e:Lcom/android/tools/r8/graph/I2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 88
    new-instance v0, Lcom/android/tools/r8/internal/Ru1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Ru1;-><init>(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)V

    .line 89
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p0

    .line 90
    new-instance p1, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->B:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 91
    new-instance p2, Lcom/android/tools/r8/internal/ga;

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ga;->W()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result p0

    invoke-direct {p2, p3, p1, p0}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 93
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Ljava/util/List;
    .locals 0

    .line 125
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;)V
    .locals 1

    .line 1
    const-string v0, "[Ljava/lang/Object;"

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    const-string v0, "[Ljava/lang/String;"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->c(Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/android/tools/r8/internal/bc0;->a(Lcom/android/tools/r8/graph/u1;)V

    .line 7
    invoke-static {p0}, Lcom/android/tools/r8/internal/ac0;->a(Lcom/android/tools/r8/graph/u1;)V

    .line 8
    invoke-static {p0}, Lcom/android/tools/r8/internal/cc0;->a(Lcom/android/tools/r8/graph/u1;)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    throw v0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->B:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/A2;
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->H4:Lcom/android/tools/r8/graph/n2;

    iget-object v2, v1, Lcom/android/tools/r8/graph/n2;->b:Lcom/android/tools/r8/graph/A2;

    if-eq p1, v2, :cond_0

    iget-object v3, v1, Lcom/android/tools/r8/graph/n2;->c:Lcom/android/tools/r8/graph/A2;

    if-eq p1, v3, :cond_0

    iget-object v3, v1, Lcom/android/tools/r8/graph/n2;->d:Lcom/android/tools/r8/graph/A2;

    if-eq p1, v3, :cond_0

    return-object p1

    :cond_0
    if-nez p2, :cond_5

    if-ne p1, v2, :cond_1

    .line 203
    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$c;->c:Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 204
    :cond_1
    iget-object p2, v1, Lcom/android/tools/r8/graph/n2;->d:Lcom/android/tools/r8/graph/A2;

    if-ne p1, p2, :cond_2

    .line 205
    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$c;->h:Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 206
    :cond_2
    sget-boolean p2, Lcom/android/tools/r8/internal/uc0;->f:Z

    if-nez p2, :cond_4

    iget-object p2, v1, Lcom/android/tools/r8/graph/n2;->c:Lcom/android/tools/r8/graph/A2;

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 207
    :cond_4
    :goto_0
    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$c;->e:Lcom/android/tools/r8/graph/A2;

    return-object p1

    .line 208
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Rewrite invoke-super to abstract method error."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/mr0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;
    .locals 3

    const/16 v0, 0x1002

    const/4 v1, 0x0

    .line 94
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 96
    new-instance v1, Lcom/android/tools/r8/graph/j1$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 97
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p3

    .line 98
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p3

    .line 99
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object p3

    .line 100
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p3

    .line 101
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p1, p3}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 102
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/mr0;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;
    .locals 3

    .line 55
    iget-object p2, p2, Lcom/android/tools/r8/internal/wc0;->d:[Lcom/android/tools/r8/graph/l1;

    .line 56
    new-instance v0, Lcom/android/tools/r8/internal/bc0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->k2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/tools/r8/internal/bc0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/mr0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    .line 104
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 105
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/android/tools/r8/internal/Nu1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Nu1;-><init>()V

    .line 107
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object p3

    iget-object v2, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/Ou1;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/tools/r8/internal/Ou1;-><init>(Lcom/android/tools/r8/internal/uc0;Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiFunction;)V

    .line 108
    invoke-virtual {v0, v1, p3, v2, v3}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 2

    .line 169
    new-instance p3, Lcom/android/tools/r8/internal/cc0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    .line 170
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 171
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/android/tools/r8/internal/cc0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/util/List;Z)V

    .line 172
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/cc0;->b()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/i0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 52
    new-instance v0, Lcom/android/tools/r8/internal/Iu1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Iu1;-><init>(Lcom/android/tools/r8/internal/uc0;Lcom/android/tools/r8/internal/W9;)V

    .line 53
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 2

    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    instance-of v0, p2, Lcom/android/tools/r8/internal/ha;

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/xc0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 42
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/ga;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    .line 45
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    if-eq v1, v0, :cond_4

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 48
    sget-boolean v0, Lcom/android/tools/r8/internal/uc0;->f:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_3
    :goto_0
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 50
    :cond_4
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 51
    :cond_5
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final a(Ljava/util/List;)Lcom/android/tools/r8/internal/o50;
    .locals 7

    .line 110
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 112
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 115
    :goto_1
    new-instance v4, Lcom/android/tools/r8/internal/Qu1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Qu1;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 116
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/o50;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    iget-object v2, p0, Lcom/android/tools/r8/internal/uc0;->d:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 119
    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 120
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    .line 121
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/uc0;->f:Z

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_3
    if-nez v0, :cond_7

    .line 124
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v0, p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Ljava/util/ArrayList;
    .locals 4

    const/4 v0, 0x2

    .line 173
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 174
    iget-object p2, p1, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    .line 175
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 176
    iget-object v0, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/android/tools/r8/graph/M2;

    .line 177
    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 178
    const-string v3, "$record$getFieldsAsObjects"

    invoke-virtual {v0, p2, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 179
    sget-boolean v0, Lcom/android/tools/r8/internal/uc0;->f:Z

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p1, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    .line 181
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 182
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    const/16 v3, 0xb7

    invoke-direct {v1, v3, p2, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance p2, Lcom/android/tools/r8/internal/t9;

    .line 185
    iget-object v1, p1, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    const/4 v3, 0x1

    .line 186
    invoke-direct {p2, v1, v3}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object p2, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 188
    new-instance p2, Lcom/android/tools/r8/internal/E9;

    .line 189
    iget-object v1, p1, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 190
    iget-object v3, p1, Lcom/android/tools/r8/internal/wc0;->c:Lcom/android/tools/r8/graph/L2;

    .line 191
    iget-object p1, p1, Lcom/android/tools/r8/internal/wc0;->d:[Lcom/android/tools/r8/graph/l1;

    .line 192
    invoke-static {v3, p1}, Lcom/android/tools/r8/internal/qc0;->a(Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/qc0;

    move-result-object p1

    .line 193
    invoke-direct {p2, v1, p1}, Lcom/android/tools/r8/internal/E9;-><init>(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V

    .line 194
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_2
    new-instance p2, Lcom/android/tools/r8/internal/A9;

    .line 196
    iget-object p1, p1, Lcom/android/tools/r8/internal/wc0;->c:Lcom/android/tools/r8/graph/L2;

    .line 197
    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/uc0;->e:Lcom/android/tools/r8/graph/I2;

    new-instance p2, Lcom/android/tools/r8/internal/Pu1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Pu1;-><init>()V

    .line 199
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 200
    invoke-interface {p3, p1, p4}, Lcom/android/tools/r8/internal/lc0;->f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 201
    new-instance p2, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    const/16 p3, 0xb8

    invoke-direct {p2, p3, p1, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Ljava/util/ArrayList;
    .locals 7

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object p1, p1, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    .line 128
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v2, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/android/tools/r8/graph/M2;

    .line 130
    invoke-virtual {v2, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 131
    const-string v5, "$record$hashCode"

    invoke-virtual {v2, v1, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 132
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 133
    invoke-interface {p3, v3}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 134
    new-instance p1, Lcom/android/tools/r8/internal/z9;

    int-to-long p2, v4

    sget-object p4, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x20

    if-ge v2, v5, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/uc0;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/o50;

    move-result-object v1

    .line 137
    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v5

    invoke-interface {p2, v5}, Lcom/android/tools/r8/internal/ky;->a(I)I

    move-result p2

    .line 138
    new-instance v5, Lcom/android/tools/r8/internal/kb;

    sget-object v6, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v5, Lcom/android/tools/r8/internal/yb;

    invoke-direct {v5, v2, p2}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 141
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->B0()I

    move-result v5

    .line 142
    new-instance v6, Lcom/android/tools/r8/internal/T9;

    invoke-direct {v6, v2}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 144
    new-instance v2, Lcom/android/tools/r8/internal/pa;

    sget-object v6, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v2, v6, p2}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 146
    new-instance v6, Lcom/android/tools/r8/internal/T9;

    invoke-direct {v6, v2}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->B0()I

    move-result v2

    add-int/2addr v5, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {p3, v5}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 149
    iget-object p2, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    .line 150
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 151
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p2

    .line 152
    new-instance p3, Lcom/android/tools/r8/internal/Su1;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/Su1;-><init>()V

    .line 153
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object p6

    iget-object v2, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/Tu1;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/tools/r8/internal/Tu1;-><init>(Lcom/android/tools/r8/internal/uc0;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/graph/H2;)V

    .line 154
    invoke-virtual {p2, p3, p6, v2, v3}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 155
    invoke-interface {p4, p1, p5}, Lcom/android/tools/r8/internal/lc0;->h(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 156
    new-instance p2, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    const/16 p3, 0xb8

    invoke-direct {p2, p3, p1, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 157
    :cond_2
    sget-boolean p2, Lcom/android/tools/r8/internal/uc0;->f:Z

    if-nez p2, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 158
    :cond_4
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/ga;

    const/16 p2, 0xb7

    invoke-direct {p1, p2, v1, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 8

    move-object v7, p0

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object v0

    .line 58
    iget-object v1, v7, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    .line 59
    sget-boolean v2, Lcom/android/tools/r8/internal/xc0;->a:Z

    if-nez v2, :cond_1

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object v2

    move-object v5, p7

    invoke-static {v2, v1, p7}, Lcom/android/tools/r8/internal/xc0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move-object v5, p7

    .line 62
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/xc0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/wc0;

    move-result-object v1

    .line 63
    iget-object v0, v1, Lcom/android/tools/r8/internal/wc0;->a:Lcom/android/tools/r8/graph/L2;

    .line 64
    iget-object v2, v7, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v2, Lcom/android/tools/r8/graph/u1;->m0:Lcom/android/tools/r8/graph/L2;

    if-ne v0, v3, :cond_2

    move-object v0, p0

    move-object v2, p4

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 66
    :cond_2
    iget-object v3, v2, Lcom/android/tools/r8/graph/u1;->Y:Lcom/android/tools/r8/graph/L2;

    if-ne v0, v3, :cond_3

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p8

    .line 67
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 68
    :cond_3
    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->X:Lcom/android/tools/r8/graph/L2;

    if-ne v0, v2, :cond_6

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v1, v1, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 72
    iget-object v3, v7, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v3, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 73
    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 74
    const-string v5, "$record$equals"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 75
    sget-boolean v3, Lcom/android/tools/r8/internal/uc0;->f:Z

    if-nez v3, :cond_5

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_5
    :goto_1
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 77
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Invoke dynamic needs record desugaring but could not be desugared."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    .line 10
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 p1, 0x1009

    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    .line 12
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 13
    new-instance p1, Lcom/android/tools/r8/internal/Ju1;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Ju1;-><init>(Lcom/android/tools/r8/internal/uc0;Ljava/util/function/BiFunction;)V

    .line 14
    iput-object p1, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 15
    iput-boolean v0, p3, Lcom/android/tools/r8/synthesis/N;->q:Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 18
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W9;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    instance-of v2, v1, Lcom/android/tools/r8/internal/ha;

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {p0, p3, v1}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/am;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/xc0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/wc0;

    move-result-object v1

    .line 25
    iget-object v2, v1, Lcom/android/tools/r8/internal/wc0;->a:Lcom/android/tools/r8/graph/L2;

    .line 26
    iget-object v3, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->m0:Lcom/android/tools/r8/graph/L2;

    if-ne v2, v4, :cond_1

    .line 27
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/tools/r8/internal/uc0;->b(Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    goto :goto_0

    .line 28
    :cond_1
    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->Y:Lcom/android/tools/r8/graph/L2;

    if-ne v2, v4, :cond_3

    .line 29
    iget-object v2, v1, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    .line 30
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/tools/r8/internal/uc0;->c(Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    goto :goto_0

    .line 32
    :cond_3
    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->X:Lcom/android/tools/r8/graph/L2;

    if-ne v2, v3, :cond_4

    .line 33
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    goto :goto_0

    .line 34
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Invoke dynamic needs record desugaring but could not be desugared."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Ljava/util/ArrayList;

    .line 161
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 163
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 164
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 165
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 166
    new-instance v0, Lcom/android/tools/r8/internal/Lu1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/Lu1;-><init>(Lcom/android/tools/r8/internal/uc0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/o50;)V

    .line 167
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 168
    iput-boolean v1, p3, Lcom/android/tools/r8/synthesis/N;->q:Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 4

    .line 78
    iget-object p1, p1, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    .line 79
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 80
    iget-object v1, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 81
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 82
    const-string v3, "$record$equals"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 83
    sget-boolean v1, Lcom/android/tools/r8/internal/uc0;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 84
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/uc0;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/o50;

    move-result-object v1

    .line 85
    new-instance v2, Lcom/android/tools/r8/internal/Ku1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/tools/r8/internal/Ku1;-><init>(Lcom/android/tools/r8/internal/uc0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/graph/A2;)V

    .line 86
    invoke-virtual {p2, v2, v0}, Lcom/android/tools/r8/internal/Z70;->a(Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 87
    invoke-interface {p4, p1, p3}, Lcom/android/tools/r8/internal/lc0;->w(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 16
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    const/16 v0, 0xba

    .line 17
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;
    .locals 3

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/ac0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/tools/r8/internal/ac0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    .line 12
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/mr0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v2, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/tools/r8/graph/M2;

    .line 4
    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 5
    const-string v4, "$record$getFieldsAsObjects"

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/internal/uc0;->f:Z

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    new-instance v2, Lcom/android/tools/r8/internal/Mu1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/tools/r8/internal/Mu1;-><init>(Lcom/android/tools/r8/internal/uc0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/graph/A2;)V

    .line 8
    invoke-virtual {p2, v2, v1}, Lcom/android/tools/r8/internal/Z70;->a(Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 9
    invoke-interface {p4, p1, p3}, Lcom/android/tools/r8/internal/lc0;->y(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/cc0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/uc0;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/android/tools/r8/internal/cc0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Ljava/util/List;Z)V

    .line 13
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/mr0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/internal/wc0;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/wc0;->e:Lcom/android/tools/r8/graph/H2;

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/uc0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/tools/r8/graph/M2;

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 5
    const-string v3, "$record$hashCode"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/internal/uc0;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/uc0;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/o50;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/Hu1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/tools/r8/internal/Hu1;-><init>(Lcom/android/tools/r8/internal/uc0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/graph/A2;)V

    .line 9
    invoke-virtual {p2, v2, v0}, Lcom/android/tools/r8/internal/Z70;->a(Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 10
    invoke-interface {p4, p1, p3}, Lcom/android/tools/r8/internal/lc0;->h(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
