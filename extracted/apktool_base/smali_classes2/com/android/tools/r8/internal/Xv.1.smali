.class public Lcom/android/tools/r8/internal/Xv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/G1;

.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/Vv;

.field public final e:Lcom/android/tools/r8/internal/Wv;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;

.field public final h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xv;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xv;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xv;->h:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Xv;->a:Lcom/android/tools/r8/internal/G1;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xv;->c:Lcom/android/tools/r8/graph/u1;

    new-instance p1, Lcom/android/tools/r8/internal/Vv;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Vv;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xv;->d:Lcom/android/tools/r8/internal/Vv;

    new-instance p1, Lcom/android/tools/r8/internal/Wv;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Wv;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xv;->e:Lcom/android/tools/r8/internal/Wv;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/j;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/shaking/j;->a:Ljava/util/Set;

    .line 2
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Iw0;
    .locals 4

    if-eqz p6, :cond_11

    .line 74
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result p5

    if-eqz p5, :cond_0

    goto/16 :goto_5

    .line 75
    :cond_0
    instance-of p5, p6, Lcom/android/tools/r8/internal/zv0;

    if-eqz p5, :cond_1

    return-object p6

    .line 76
    :cond_1
    sget-boolean p5, Lcom/android/tools/r8/internal/Xv;->i:Z

    if-nez p5, :cond_3

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/Iw0;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 77
    :cond_3
    :goto_0
    instance-of v0, p6, Lcom/android/tools/r8/internal/ig;

    if-eqz v0, :cond_5

    .line 78
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/Iw0;->a()Lcom/android/tools/r8/internal/ig;

    move-result-object p1

    .line 79
    iget-object p3, p1, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    .line 80
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    iput-object p2, p1, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    .line 81
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 82
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    :cond_4
    return-object p1

    .line 83
    :cond_5
    instance-of p2, p6, Lcom/android/tools/r8/internal/ug;

    if-eqz p2, :cond_9

    .line 84
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/Iw0;->e()Lcom/android/tools/r8/internal/ug;

    move-result-object p2

    .line 85
    iget-object p4, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 87
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 88
    iget-object p5, p2, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    .line 89
    iget-object p4, p4, Lcom/android/tools/r8/graph/y;->w:Lcom/android/tools/r8/internal/J1;

    .line 90
    iget-object p6, p4, Lcom/android/tools/r8/internal/K1;->a:Lcom/android/tools/r8/graph/y;

    .line 91
    invoke-virtual {p1, p6}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 92
    invoke-virtual {p4, p5, p3, p1}, Lcom/android/tools/r8/internal/K1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p6

    .line 93
    sget-boolean v0, Lcom/android/tools/r8/internal/J1;->c:Z

    if-nez v0, :cond_7

    invoke-virtual {p4, p3, p5, p1}, Lcom/android/tools/r8/internal/K1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 94
    :cond_7
    :goto_1
    iput-object p6, p2, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    .line 95
    invoke-virtual {p6, p5}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p2, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 97
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    :cond_8
    return-object p2

    :cond_9
    if-nez p5, :cond_b

    .line 98
    instance-of p2, p6, Lcom/android/tools/r8/internal/lg;

    if-eqz p2, :cond_a

    goto :goto_2

    .line 99
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 100
    :cond_b
    :goto_2
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/Iw0;->b()Lcom/android/tools/r8/internal/lg;

    move-result-object p2

    .line 101
    iget-object p5, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    .line 102
    invoke-virtual {p4, p5}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object p4

    .line 103
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    sget-boolean p6, Lcom/android/tools/r8/internal/lg;->h:Z

    if-nez p6, :cond_d

    .line 105
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p6

    .line 106
    check-cast p6, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p6}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p6

    .line 107
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p6

    if-eqz p6, :cond_c

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 108
    :cond_d
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p6

    .line 109
    check-cast p6, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p6}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p6

    .line 110
    iget-object v0, p2, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    .line 111
    iget-object v1, p5, Lcom/android/tools/r8/graph/y;->w:Lcom/android/tools/r8/internal/J1;

    .line 112
    iget-object v2, v1, Lcom/android/tools/r8/internal/K1;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p6, v2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p6

    .line 113
    invoke-virtual {v1, v0, p3, p6}, Lcom/android/tools/r8/internal/K1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 114
    sget-boolean v3, Lcom/android/tools/r8/internal/J1;->c:Z

    if-nez v3, :cond_f

    invoke-virtual {v1, p3, v0, p6}, Lcom/android/tools/r8/internal/K1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/F1;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    goto :goto_4

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 115
    :cond_f
    :goto_4
    iput-object v2, p2, Lcom/android/tools/r8/internal/lg;->f:Lcom/android/tools/r8/internal/F1;

    .line 116
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 118
    iget-object p3, p2, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    const/4 p6, 0x0

    .line 119
    invoke-virtual {p3, p5, p4, p6, p1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xt;

    move-result-object p4

    .line 120
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object p6

    .line 121
    invoke-static {p5, p4, p1, p6}, Lcom/android/tools/r8/internal/Ix0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    .line 122
    iput-object p1, p2, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    .line 123
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/lg;->w()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 125
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1

    :cond_10
    return-object p2

    .line 126
    :cond_11
    :goto_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p5

    .line 127
    check-cast p5, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    .line 128
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result p6

    if-eqz p6, :cond_12

    .line 129
    invoke-static {p2}, Lcom/android/tools/r8/internal/ig;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1

    .line 130
    :cond_12
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 131
    invoke-static {p3}, Lcom/android/tools/r8/internal/ug;->a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1

    .line 132
    :cond_13
    sget-boolean p2, Lcom/android/tools/r8/internal/Xv;->i:Z

    if-nez p2, :cond_15

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_6

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 133
    :cond_15
    :goto_6
    iget-object p2, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    .line 134
    invoke-virtual {p4, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/zt;

    move-result-object p4

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/zt;

    move-result-object p4

    .line 135
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 136
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object p5

    .line 137
    invoke-static {p2, p4, p1, p5}, Lcom/android/tools/r8/internal/Ix0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    .line 138
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {p3, p1, p2}, Lcom/android/tools/r8/internal/lg;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Iw0;
    .locals 0

    if-nez p4, :cond_6

    .line 46
    iget-object p3, p0, Lcom/android/tools/r8/internal/Xv;->a:Lcom/android/tools/r8/internal/G1;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 47
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 48
    sget-boolean p3, Lcom/android/tools/r8/internal/Xv;->i:Z

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->g0()Z

    move-result p3

    if-nez p3, :cond_1

    .line 49
    instance-of p3, p1, Lcom/android/tools/r8/internal/Dm0;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 51
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/Xv;->c:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-ne p2, p3, :cond_2

    .line 52
    sget-boolean p2, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object p2, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    .line 53
    sget-object p3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/lg;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1

    .line 54
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    .line 55
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {p3, p4, p2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p2

    .line 58
    sget-boolean p3, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 59
    new-instance p3, Lcom/android/tools/r8/internal/kv;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/kv;-><init>(Lcom/android/tools/r8/internal/de;)V

    .line 60
    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/lg;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1

    .line 61
    :cond_3
    sget-boolean p3, Lcom/android/tools/r8/internal/Xv;->i:Z

    if-nez p3, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/ug;->a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1

    .line 63
    :cond_6
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/e80;Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 227
    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    invoke-virtual {p1, p4, v0}, Lcom/android/tools/r8/internal/Pn;->a(Lcom/android/tools/r8/graph/G0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/F1;

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    instance-of v0, p1, Lcom/android/tools/r8/internal/A7;

    if-eqz v0, :cond_0

    .line 230
    new-instance p1, Lcom/android/tools/r8/internal/F21;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/F21;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/l40;->a(Ljava/util/function/Consumer;)V

    .line 231
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->b0()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 233
    iget-object p3, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p2, p4, p3, p1}, Lcom/android/tools/r8/internal/l40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    .line 235
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a()V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 8
    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 9
    new-instance v2, Lcom/android/tools/r8/internal/C21;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/C21;-><init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/graph/m3;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/t5;->a(Ljava/util/function/BiConsumer;)V

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 11
    new-instance v3, Lcom/android/tools/r8/internal/D21;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/D21;-><init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/graph/m3;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v4, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xw0;)V
    .locals 9

    .line 64
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xv;->a:Lcom/android/tools/r8/internal/G1;

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 67
    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/G1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Bm0;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 69
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    goto :goto_0

    .line 70
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xv;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/tools/r8/graph/g1;

    new-instance v8, Lcom/android/tools/r8/internal/A21;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/A21;-><init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xw0;)V

    .line 73
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/R2;)V
    .locals 3

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {v1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/a3;

    move-result-object v1

    if-ne p2, v1, :cond_0

    return-void

    .line 44
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/Xv;->i:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 45
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/B21;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/tools/r8/internal/B21;-><init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/m3;Lcom/android/tools/r8/graph/F5;)V
    .locals 2

    .line 34
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    check-cast p1, Lcom/android/tools/r8/graph/n3;

    .line 35
    iget-object p1, p1, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/o3;

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 39
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Xv;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    sget-object v0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/m3;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V
    .locals 1

    .line 13
    iget-object p3, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/shaking/i;

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->c()V

    .line 16
    :cond_0
    iget-object p3, p3, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 17
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object p3

    .line 19
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/e80;->k()Lcom/android/tools/r8/internal/e80;

    move-result-object p3

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/y21;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/tools/r8/internal/y21;-><init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/graph/m3;Lcom/android/tools/r8/internal/e80;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;)V

    .line 22
    iget-object p1, p3, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/android/tools/r8/internal/Xv;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/m3;Lcom/android/tools/r8/internal/e80;Lcom/android/tools/r8/graph/F5;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/F0;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    check-cast p1, Lcom/android/tools/r8/graph/n3;

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 27
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/o3;

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/o3;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 29
    sget-object p1, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    sget-object v0, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 32
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 33
    iget-object p2, p2, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/graph/F5;)V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xv;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 183
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    .line 184
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 185
    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 186
    invoke-static {v2}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    move-result-object v2

    .line 187
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw0;

    .line 188
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    .line 190
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 191
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 192
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/G1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Bm0;

    move-result-object v1

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 194
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/F1;->b0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1, v3, v2, v1}, Lcom/android/tools/r8/internal/l40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    .line 197
    :cond_1
    instance-of v1, v0, Lcom/android/tools/r8/internal/lg;

    if-eqz v1, :cond_5

    .line 198
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 199
    iget-object v1, v1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 200
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/vw;->g()Lcom/android/tools/r8/internal/xt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 201
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->b()Lcom/android/tools/r8/internal/lg;

    move-result-object v0

    .line 202
    iget-object v0, v0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    .line 203
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v1

    if-nez v1, :cond_5

    .line 204
    sget-boolean v1, Lcom/android/tools/r8/internal/Xv;->i:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    .line 205
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 206
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    .line 207
    invoke-static {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/Ix0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/xt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 209
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 210
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 213
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/l40;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;

    move-result-object v1

    .line 214
    iput-object v0, v1, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    goto :goto_2

    .line 215
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    .line 218
    invoke-static {v1, v3, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 219
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    .line 220
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 223
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/l40;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;

    move-result-object v1

    .line 224
    iput-object v0, v1, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    .line 225
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_6

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Xv;->b(Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/graph/F5;)V

    :cond_6
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Xv;->b(Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/l40;)V
    .locals 3

    .line 236
    sget-boolean v0, Lcom/android/tools/r8/internal/Xv;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/l40;->b()V

    .line 237
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 238
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 239
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    .line 240
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->d:Lcom/android/tools/r8/internal/Vv;

    new-instance v2, Lcom/android/tools/r8/internal/x21;

    invoke-direct {v2, p0, p2}, Lcom/android/tools/r8/internal/x21;-><init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/internal/l40;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Vv;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    .line 241
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->e:Lcom/android/tools/r8/internal/Wv;

    new-instance v2, Lcom/android/tools/r8/internal/z21;

    invoke-direct {v2, p0, p2}, Lcom/android/tools/r8/internal/z21;-><init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/internal/l40;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Wv;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    .line 243
    sget-boolean v0, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v0, :cond_2

    .line 244
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_1

    .line 245
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    :goto_1
    iget-object v0, p2, Lcom/android/tools/r8/internal/l40;->b:Lcom/android/tools/r8/shaking/j;

    .line 247
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/j;->a(Lcom/android/tools/r8/shaking/i;)V

    .line 248
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/l40;->c()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/tZ;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xv;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/e80;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->c:Lcom/android/tools/r8/graph/u1;

    .line 142
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 143
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;

    move-result-object p1

    if-nez p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/android/tools/r8/internal/Xv;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1, p3}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    if-nez v1, :cond_2

    .line 146
    iget-object p1, p0, Lcom/android/tools/r8/internal/Xv;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 147
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 148
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 149
    iget-object p2, p2, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 150
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object p2

    .line 151
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fE;->b()Lcom/android/tools/r8/internal/UD;

    move-result-object p2

    .line 152
    monitor-enter v0

    .line 153
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/internal/H21;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/tools/r8/internal/H21;-><init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/internal/UD;Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Pn;->a(Lcom/android/tools/r8/internal/ht0;)V

    .line 154
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/u;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/android/tools/r8/internal/G21;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/G21;-><init>(Lcom/android/tools/r8/internal/Xv;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/ir/optimize/u;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/UD;Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/F1;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/UD;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/SD;

    move-result-object p1

    .line 157
    invoke-interface {p1}, Lcom/android/tools/r8/internal/SD;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {p1}, Lcom/android/tools/r8/internal/SD;->q()Lcom/android/tools/r8/internal/RD;

    move-result-object p1

    .line 159
    iget-object p2, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 160
    iget p1, p1, Lcom/android/tools/r8/internal/RD;->a:I

    .line 161
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 162
    iget-object p2, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    .line 163
    sget-object v0, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 164
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 165
    iget-object p2, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    .line 166
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->v:Lcom/android/tools/r8/internal/I1;

    .line 167
    invoke-virtual {p2, p5, p1, p4}, Lcom/android/tools/r8/internal/I1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    goto :goto_1

    .line 168
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/SD;->r()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 169
    invoke-interface {p1}, Lcom/android/tools/r8/internal/SD;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    .line 170
    iget-object p2, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    .line 171
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->v:Lcom/android/tools/r8/internal/I1;

    .line 172
    invoke-virtual {p2, p5, p1, p4}, Lcom/android/tools/r8/internal/I1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    goto :goto_1

    .line 173
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/internal/SD;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 174
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    goto :goto_1

    .line 175
    :cond_2
    sget-boolean p2, Lcom/android/tools/r8/internal/Xv;->i:Z

    if-nez p2, :cond_4

    invoke-interface {p1}, Lcom/android/tools/r8/internal/SD;->isUnknown()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 176
    :cond_4
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    .line 177
    :goto_1
    sget-boolean p2, Lcom/android/tools/r8/internal/Xv;->i:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    instance-of p2, p1, Lcom/android/tools/r8/internal/A7;

    if-nez p2, :cond_5

    goto :goto_2

    .line 179
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 180
    :cond_6
    :goto_2
    invoke-interface {p6, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/graph/F5;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/graph/F0;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xv;->h:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    sget-object v1, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    .line 5
    new-instance v2, Lcom/android/tools/r8/graph/e8;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/e8;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rK;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move-object v2, v0

    check-cast v2, Lcom/android/tools/r8/internal/e0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/e0;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/e0;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 7
    iget-object v2, v2, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->m()Lcom/android/tools/r8/internal/fE;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fE;->b()Lcom/android/tools/r8/internal/UD;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/UD;->a(Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/SD;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Lcom/android/tools/r8/internal/SD;->r()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    iget-object v3, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    .line 14
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->v:Lcom/android/tools/r8/internal/I1;

    .line 15
    invoke-interface {v2}, Lcom/android/tools/r8/internal/SD;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v2

    invoke-virtual {v3, v1, v2, p2}, Lcom/android/tools/r8/internal/I1;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 17
    :cond_3
    invoke-interface {v2}, Lcom/android/tools/r8/internal/SD;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    sget-object v1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    goto :goto_1

    .line 19
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/internal/Xv;->i:Z

    if-nez v0, :cond_6

    invoke-interface {v2}, Lcom/android/tools/r8/internal/SD;->s()Z

    move-result v0

    if-nez v0, :cond_6

    .line 20
    invoke-interface {v2}, Lcom/android/tools/r8/internal/SD;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_6
    :goto_0
    sget-object v1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    .line 23
    :cond_7
    :goto_1
    sget-boolean v0, Lcom/android/tools/r8/internal/Xv;->i:Z

    if-nez v0, :cond_9

    .line 24
    instance-of v0, v1, Lcom/android/tools/r8/internal/A7;

    if-nez v0, :cond_8

    goto :goto_2

    .line 25
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_9
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_a

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/l40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xv;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/e80;

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/E21;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/tools/r8/internal/E21;-><init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/internal/e80;Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/H2;->b(Ljava/util/function/Function;)V

    return-void
.end method
