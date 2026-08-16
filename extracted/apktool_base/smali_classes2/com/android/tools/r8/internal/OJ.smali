.class public final Lcom/android/tools/r8/internal/OJ;
.super Lcom/android/tools/r8/internal/NJ;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final l:Lcom/android/tools/r8/graph/D0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/internal/xw0;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p3, p2}, Lcom/android/tools/r8/internal/NJ;-><init>(Ljava/util/List;Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean p2, Lcom/android/tools/r8/internal/OJ;->m:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/wI$a;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/wI$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Ku0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 36
    iget-object p1, p1, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 7

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object v2

    .line 7
    sget-object v3, Lcom/android/tools/r8/internal/kR;->j:Lcom/android/tools/r8/internal/kR;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, v2, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    :goto_0
    if-eqz v4, :cond_10

    .line 9
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 10
    :cond_2
    sget-boolean v2, Lcom/android/tools/r8/internal/OJ;->m:Z

    if-nez v2, :cond_4

    instance-of v3, v0, Lcom/android/tools/r8/internal/de;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v3

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    if-ne v5, p1, :cond_9

    if-nez v2, :cond_6

    .line 14
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/wI;->c()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    if-nez v2, :cond_8

    const/4 p1, 0x0

    .line 17
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/wI;->c()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne p1, v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    return-object v0

    .line 18
    :cond_9
    invoke-static {}, Lcom/android/tools/r8/internal/wI;->a()Lcom/android/tools/r8/internal/wI$a;

    move-result-object v3

    .line 19
    new-instance v5, Lcom/android/tools/r8/internal/DP0;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/DP0;-><init>(Lcom/android/tools/r8/internal/wI$a;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/wI$a;->a()Lcom/android/tools/r8/internal/wI;

    move-result-object v3

    if-nez v2, :cond_f

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/de;->F()Lcom/android/tools/r8/internal/wI;

    move-result-object v4

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    if-ne v5, p1, :cond_b

    if-nez v2, :cond_f

    .line 23
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/wI;->c()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/wI;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    if-nez v2, :cond_d

    .line 24
    iget-object v4, v4, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    .line 25
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_4

    .line 26
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_4
    if-nez v2, :cond_f

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/wI;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_5

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_f
    :goto_5
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 29
    invoke-static {p1, v0, v1, v3}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wI;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    :cond_10
    :goto_6
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 0

    .line 53
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/yD;->a(Lcom/android/tools/r8/internal/NJ;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 11

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/NJ;->y2()I

    move-result v0

    .line 38
    iget v1, p1, Lcom/android/tools/r8/internal/Kn;->o:I

    if-le v0, v1, :cond_0

    .line 39
    iput v0, p1, Lcom/android/tools/r8/internal/Kn;->o:I

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/OJ;->b(Lcom/android/tools/r8/internal/Kn;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 41
    sget-boolean v1, Lcom/android/tools/r8/internal/OJ;->m:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/NJ;->c(Lcom/android/tools/r8/internal/Kn;)V

    .line 42
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 43
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Kn;Lcom/android/tools/r8/internal/xw0;)I

    move-result v1

    .line 44
    new-instance v2, Lcom/android/tools/r8/internal/Xp;

    .line 45
    iget-object v3, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 46
    invoke-direct {v2, v1, v0, v3}, Lcom/android/tools/r8/internal/Xp;-><init>(IILcom/android/tools/r8/graph/D0;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    .line 47
    new-array v0, v0, [I

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Kn;[I)I

    move-result v4

    .line 49
    new-instance v1, Lcom/android/tools/r8/internal/Wp;

    .line 50
    iget-object v5, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 51
    aget v6, v0, v2

    const/4 v2, 0x1

    aget v7, v0, v2

    const/4 v2, 0x2

    aget v8, v0, v2

    const/4 v2, 0x3

    aget v9, v0, v2

    const/4 v2, 0x4

    aget v10, v0, v2

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/tools/r8/internal/Wp;-><init>(ILcom/android/tools/r8/graph/D0;IIIII)V

    move-object v2, v1

    .line 52
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/NJ;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Kn;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 1

    .line 58
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 59
    iget-object v0, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 60
    iget-object v0, v0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 62
    iget-object v0, v0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/NT;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/NJ;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xba

    .line 34
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 54
    new-instance v0, Lcom/android/tools/r8/internal/ha;

    .line 55
    iget-object v1, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    .line 56
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ha;-><init>(Lcom/android/tools/r8/graph/D0;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/u;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/D0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Kn;)Z
    .locals 1

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/Kn;->e:Lcom/android/tools/r8/internal/nJ;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->p:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/NJ;->b(Lcom/android/tools/r8/internal/Kn;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p1, Lcom/android/tools/r8/internal/OJ;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b0()Lcom/android/tools/r8/internal/OJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b0()Lcom/android/tools/r8/internal/OJ;
    .locals 0

    return-object p0
.end method

.method public final d1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; call site: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v2()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/OJ;->l:Lcom/android/tools/r8/graph/D0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final x2()Ljava/lang/String;
    .locals 1

    const-string v0, "Custom"

    return-object v0
.end method
