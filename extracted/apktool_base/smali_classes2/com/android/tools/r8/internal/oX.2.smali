.class public final Lcom/android/tools/r8/internal/oX;
.super Lcom/android/tools/r8/internal/nX;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/oX;

.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Cq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/oX;

    new-instance v1, Lcom/android/tools/r8/internal/Cq;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/oX;-><init>(Lcom/android/tools/r8/internal/Cq;)V

    sput-object v0, Lcom/android/tools/r8/internal/oX;->b:Lcom/android/tools/r8/internal/oX;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Cq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nX;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/oX;->a:Lcom/android/tools/r8/internal/Cq;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/TW;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/TW;)Lcom/android/tools/r8/internal/TW;
    .locals 9

    if-nez p3, :cond_0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p3, Lcom/android/tools/r8/internal/Fj;

    if-nez v0, :cond_19

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p0, Lcom/android/tools/r8/internal/Fj;

    if-eqz v0, :cond_1

    goto/16 :goto_e

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    :cond_2
    :goto_0
    move-object v2, v0

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->n()Lcom/android/tools/r8/internal/xt;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->n()Lcom/android/tools/r8/internal/xt;

    move-result-object v2

    .line 9
    invoke-virtual {v0, p1, v2, v1, v1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    .line 14
    invoke-static {p1, v0, v2, v3}, Lcom/android/tools/r8/internal/Ix0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    sget-boolean v2, Lcom/android/tools/r8/internal/oX;->c:Z

    if-nez v2, :cond_7

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_1
    if-nez v2, :cond_2

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 21
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    goto :goto_3

    .line 24
    :cond_9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 25
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->u:Lcom/android/tools/r8/internal/H1;

    .line 27
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->i()Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->i()Lcom/android/tools/r8/internal/F1;

    move-result-object v3

    .line 29
    invoke-virtual {p1, v0, v3, p2}, Lcom/android/tools/r8/internal/H1;->b(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 30
    :goto_3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->G()Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->G()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 31
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->t()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->t()I

    move-result v3

    if-ne p2, v3, :cond_a

    move v7, p2

    goto :goto_4

    :cond_a
    move v7, v0

    .line 32
    :goto_4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->r()Ljava/util/BitSet;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->r()Ljava/util/BitSet;

    move-result-object v0

    if-eqz p2, :cond_d

    if-nez v0, :cond_b

    goto :goto_5

    .line 33
    :cond_b
    invoke-virtual {p2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/BitSet;

    .line 34
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    .line 35
    invoke-virtual {p2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    move-object v5, p2

    goto :goto_6

    :cond_d
    :goto_5
    move-object v5, v1

    .line 36
    :goto_6
    sget-boolean p2, Lcom/android/tools/r8/internal/oX;->c:Z

    if-nez p2, :cond_f

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 37
    :cond_f
    :goto_7
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->s()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->s()Ljava/util/BitSet;

    move-result-object v3

    if-eqz v0, :cond_12

    if-nez v3, :cond_10

    goto :goto_8

    .line 38
    :cond_10
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 39
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    .line 40
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_8

    :cond_11
    move-object v6, v0

    goto :goto_9

    :cond_12
    :goto_8
    move-object v6, v1

    :goto_9
    if-nez p2, :cond_14

    if-eqz v6, :cond_14

    .line 41
    invoke-virtual {v6}, Ljava/util/BitSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_a

    :cond_13
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 42
    :cond_14
    :goto_a
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->C()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_15

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->C()Z

    move-result p2

    if-nez p2, :cond_15

    move p2, v1

    goto :goto_b

    :cond_15
    move p2, v0

    .line 43
    :goto_b
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->D()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->D()Z

    move-result v3

    if-eqz v3, :cond_16

    move v4, v1

    goto :goto_c

    :cond_16
    move v4, v0

    .line 44
    :goto_c
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->F()Z

    move-result p3

    if-eqz p3, :cond_17

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->F()Z

    move-result p0

    if-eqz p0, :cond_17

    move v8, v1

    goto :goto_d

    :cond_17
    move v8, v0

    .line 45
    :goto_d
    sget p0, Lcom/android/tools/r8/internal/kX;->j:I

    .line 46
    sget p0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    .line 47
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    xor-int/lit8 v3, p2, 0x1

    .line 48
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p0

    if-eqz p0, :cond_18

    if-gez v7, :cond_18

    if-nez v5, :cond_18

    if-nez v6, :cond_18

    if-nez p2, :cond_18

    if-nez v4, :cond_18

    if-nez v8, :cond_18

    .line 50
    sget-object p0, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    return-object p0

    .line 51
    :cond_18
    new-instance p0, Lcom/android/tools/r8/internal/kX;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/internal/kX;-><init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;ZZLjava/util/BitSet;Ljava/util/BitSet;IZ)V

    return-object p0

    .line 52
    :cond_19
    :goto_e
    sget-object p0, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/TW;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/tools/r8/internal/oX;->a:Lcom/android/tools/r8/internal/Cq;

    new-instance v1, Lcom/android/tools/r8/internal/Ho1;

    invoke-direct {v1, p3, p1}, Lcom/android/tools/r8/internal/Ho1;-><init>(Lcom/android/tools/r8/internal/TW;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/internal/Cq;->a(Lcom/android/tools/r8/graph/F2;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/oX;)V
    .locals 1

    .line 53
    iget-object p2, p2, Lcom/android/tools/r8/internal/oX;->a:Lcom/android/tools/r8/internal/Cq;

    new-instance v0, Lcom/android/tools/r8/internal/Go1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Go1;-><init>(Lcom/android/tools/r8/internal/oX;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Cq;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/oX;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/TW;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/oX;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/TW;)V

    return-void
.end method
