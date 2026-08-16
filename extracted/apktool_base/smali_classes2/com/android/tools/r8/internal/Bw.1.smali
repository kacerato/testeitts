.class public abstract Lcom/android/tools/r8/internal/Bw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Cw;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Cw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cw;->j:Lcom/android/tools/r8/internal/f80;

    .line 87
    iget-object v0, v0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 88
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/F5;

    .line 90
    iget-object v3, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/Dw;->a(Lcom/android/tools/r8/graph/F5;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/Cw;->b(Lcom/android/tools/r8/graph/F5;)I

    move-result v1

    .line 92
    sget-boolean v3, Lcom/android/tools/r8/internal/Bw;->b:Z

    if-nez v3, :cond_2

    .line 93
    invoke-static {v1}, Lcom/android/tools/r8/internal/yw;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/android/tools/r8/internal/yw;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cw;->j:Lcom/android/tools/r8/internal/f80;

    .line 97
    iget-object v0, v0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 98
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    return v2
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;)I
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cw;->i:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    iget-object v0, v0, Lcom/android/tools/r8/internal/Dw;->a:Lcom/android/tools/r8/internal/tZ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne v2, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Cw;->g:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cw;->h:Lcom/android/tools/r8/internal/fB;

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/internal/VJ;->f(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Cw;->i:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    .line 75
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Dw;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cw;->l:Lcom/android/tools/r8/internal/Cw;

    .line 77
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/aB0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/aB0;-><init>(Lcom/android/tools/r8/internal/Cw;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/zE;->a(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Cw;->g:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cw;->h:Lcom/android/tools/r8/internal/fB;

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 79
    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v3

    .line 80
    sget-object v4, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    .line 82
    sget-boolean v2, Lcom/android/tools/r8/internal/Dw;->f:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Dw;->a()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 83
    :cond_2
    :goto_0
    iput-object p1, v0, Lcom/android/tools/r8/internal/Dw;->b:Lcom/android/tools/r8/internal/zE;

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Dw;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 85
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bw;->a()I

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/rE;)I
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Dw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Cw;->g:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cw;->h:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v2

    .line 48
    sget-object v3, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bw;->a()I

    move-result p1

    return p1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/Dw;->a:Lcom/android/tools/r8/internal/tZ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Cw;->g:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cw;->h:Lcom/android/tools/r8/internal/fB;

    .line 53
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/hw;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v1, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Cw;->j:Lcom/android/tools/r8/internal/f80;

    .line 55
    iget-object v1, v1, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    .line 58
    iget-object v1, v1, Lcom/android/tools/r8/internal/Dw;->e:Lcom/android/tools/r8/internal/f80;

    .line 59
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Cw;->j:Lcom/android/tools/r8/internal/f80;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cw;->l:Lcom/android/tools/r8/internal/Cw;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/ZA0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/ZA0;-><init>(Lcom/android/tools/r8/internal/Cw;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Dw;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 63
    iget-object v0, v0, Lcom/android/tools/r8/internal/Dw;->c:Ljava/util/Set;

    .line 64
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    .line 66
    sget-boolean v1, Lcom/android/tools/r8/internal/Dw;->f:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Dw;->a()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_4
    :goto_0
    iput-object p1, v0, Lcom/android/tools/r8/internal/Dw;->b:Lcom/android/tools/r8/internal/zE;

    :cond_5
    const/4 p1, 0x2

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)I
    .locals 5

    :goto_0
    const/4 v0, 0x2

    if-eqz p1, :cond_12

    .line 7
    sget-boolean v1, Lcom/android/tools/r8/internal/Bw;->b:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/internal/Dw;->c:Ljava/util/Set;

    .line 9
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_e

    const/16 v2, 0xa

    if-eq v1, v2, :cond_b

    const/16 v2, 0xf

    if-eq v1, v2, :cond_a

    const/16 v2, 0x10

    if-eq v1, v2, :cond_9

    const/16 v2, 0x18

    if-eq v1, v2, :cond_6

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_5

    const/16 v2, 0x38

    if-eq v1, v2, :cond_4

    const/16 v2, 0x41

    if-eq v1, v2, :cond_3

    const/16 v2, 0x21

    if-eq v1, v2, :cond_2

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bw;->a()I

    move-result v1

    goto/16 :goto_4

    .line 13
    :cond_2
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Bw;->a(Lcom/android/tools/r8/internal/VJ;)I

    move-result v1

    goto/16 :goto_4

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Dw;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bw;->a()I

    move-result v1

    goto/16 :goto_4

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bw;->a()I

    move-result v1

    goto/16 :goto_4

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Bw;->a(Lcom/android/tools/r8/internal/rE;)I

    move-result v1

    goto/16 :goto_4

    .line 19
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    .line 22
    iget-object v2, v2, Lcom/android/tools/r8/internal/Dw;->d:Ljava/util/Set;

    .line 23
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bw;->a()I

    move-result v1

    goto/16 :goto_4

    .line 25
    :cond_7
    iget-object v2, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v3, v2, Lcom/android/tools/r8/internal/Cw;->k:Lcom/android/tools/r8/internal/Yx0;

    new-instance v4, Lcom/android/tools/r8/internal/Aw;

    invoke-direct {v4, v2, v1}, Lcom/android/tools/r8/internal/Aw;-><init>(Lcom/android/tools/r8/internal/Cw;Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Yx0;->c(Ljava/lang/Object;)V

    :cond_8
    :goto_2
    move v1, v0

    goto :goto_4

    .line 26
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    goto :goto_2

    .line 27
    :cond_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    goto :goto_2

    .line 28
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 30
    iget-object v2, v2, Lcom/android/tools/r8/internal/Dw;->c:Ljava/util/Set;

    .line 31
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 32
    iget-object v2, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 33
    iget-object v2, v2, Lcom/android/tools/r8/internal/Dw;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 34
    sget-boolean v2, Lcom/android/tools/r8/internal/Dw;->f:Z

    if-nez v2, :cond_d

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_d
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Dw;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bw;->a()I

    move-result v1

    goto :goto_4

    .line 37
    :cond_e
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C4;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 39
    iget-object v2, v2, Lcom/android/tools/r8/internal/Dw;->c:Ljava/util/Set;

    .line 40
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 41
    iget-object v2, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 42
    iget-object v2, v2, Lcom/android/tools/r8/internal/Dw;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 43
    sget-boolean v2, Lcom/android/tools/r8/internal/Dw;->f:Z

    if-nez v2, :cond_8

    if-eqz v1, :cond_f

    goto :goto_2

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :goto_4
    invoke-static {v1}, Lcom/android/tools/r8/internal/yw;->a(I)Z

    move-result v2

    if-eqz v2, :cond_10

    return v1

    :cond_10
    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    goto :goto_5

    .line 45
    :cond_11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    :goto_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/f60;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Cw;->l:Lcom/android/tools/r8/internal/Cw;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/aB0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/aB0;-><init>(Lcom/android/tools/r8/internal/Cw;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/f60;->e(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Bw;->a:Lcom/android/tools/r8/internal/Cw;

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/internal/Dw;->c:Ljava/util/Set;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/internal/Dw;->f:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public abstract b()Lcom/android/tools/r8/internal/Zs0;
.end method
