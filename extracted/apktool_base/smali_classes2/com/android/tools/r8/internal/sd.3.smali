.class public abstract Lcom/android/tools/r8/internal/sd;
.super Lcom/android/tools/r8/internal/bt0;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/internal/qd;

.field public final g:Lcom/android/tools/r8/graph/c4;

.field public final h:Lcom/android/tools/r8/internal/od;

.field public final i:Lcom/android/tools/r8/internal/cW;

.field public final j:Ljava/util/IdentityHashMap;

.field public final k:Lcom/android/tools/r8/internal/Dq;

.field public final l:Lcom/android/tools/r8/internal/Bq;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/od;Lcom/android/tools/r8/internal/cW;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/bt0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sd;->j:Ljava/util/IdentityHashMap;

    new-instance p1, Lcom/android/tools/r8/internal/Dq;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sd;->k:Lcom/android/tools/r8/internal/Dq;

    new-instance p1, Lcom/android/tools/r8/internal/Bq;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Bq;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sd;->l:Lcom/android/tools/r8/internal/Bq;

    iput-object p2, p0, Lcom/android/tools/r8/internal/sd;->f:Lcom/android/tools/r8/internal/qd;

    iput-object p3, p0, Lcom/android/tools/r8/internal/sd;->g:Lcom/android/tools/r8/graph/c4;

    iput-object p4, p0, Lcom/android/tools/r8/internal/sd;->h:Lcom/android/tools/r8/internal/od;

    iput-object p5, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 1
    invoke-static {p1, p1}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    .line 2
    check-cast p0, Lcom/android/tools/r8/internal/r6;

    .line 3
    iget-object p0, p0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/l1;)Z
    .locals 0

    .line 209
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    invoke-interface {v0, p3, p3}, Lcom/android/tools/r8/internal/cW;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 211
    sget-boolean v0, Lcom/android/tools/r8/internal/sd;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 212
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 214
    :cond_1
    :goto_0
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/O2;
    .locals 2

    .line 90
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/android/tools/r8/internal/Us1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/internal/Us1;-><init>(Lcom/android/tools/r8/internal/sd;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V

    .line 92
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    iget-object p1, p2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    sget-object v0, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/M2;

    .line 95
    iget-object v0, p2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    if-eq p1, v0, :cond_2

    .line 96
    array-length p2, p1

    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p2, Lcom/android/tools/r8/graph/O2;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    :cond_2
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;
    .locals 2

    .line 97
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    instance-of v0, v0, Lcom/android/tools/r8/graph/l0;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    .line 101
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/cW;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 103
    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    .line 104
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 105
    invoke-static {v1, v0, p1}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    .line 106
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 107
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->h:Lcom/android/tools/r8/internal/od;

    invoke-virtual {v0, p1, p3}, Lcom/android/tools/r8/internal/od;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 109
    iget-object p1, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    .line 110
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->L0()V

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p2, p3, p1, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 113
    sget-boolean p3, Lcom/android/tools/r8/internal/sd;->m:Z

    if-nez p3, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 114
    :cond_3
    :goto_0
    sget-object p2, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    :cond_4
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 10

    .line 115
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 116
    iget-object v1, p0, Lcom/android/tools/r8/internal/sd;->k:Lcom/android/tools/r8/internal/Dq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v2

    .line 118
    iget-object v1, v1, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    goto/16 :goto_3

    .line 120
    :cond_0
    move-object v1, p3

    check-cast v1, Lcom/android/tools/r8/internal/r6;

    .line 121
    iget-object v2, v1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 122
    invoke-virtual {v2, p4}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 123
    check-cast v2, Lcom/android/tools/r8/graph/F2;

    if-eqz v2, :cond_1

    .line 124
    iget-object p2, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    .line 125
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 126
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    goto/16 :goto_3

    .line 127
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 128
    iget-object v3, p0, Lcom/android/tools/r8/internal/sd;->k:Lcom/android/tools/r8/internal/Dq;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    new-instance v4, Lcom/android/tools/r8/graph/D2;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 131
    iget-object v3, v3, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 132
    new-instance v3, Lcom/android/tools/r8/graph/D2;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 133
    iget-object v4, v1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v2

    goto :goto_1

    .line 134
    :cond_3
    :goto_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    iget-object p2, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, p0, Lcom/android/tools/r8/internal/sd;->f:Lcom/android/tools/r8/internal/qd;

    .line 136
    iget-object v3, v3, Lcom/android/tools/r8/internal/qd;->a:Lcom/android/tools/r8/internal/hC;

    .line 137
    new-instance v4, Lcom/android/tools/r8/internal/Xs1;

    invoke-direct {v4, p3}, Lcom/android/tools/r8/internal/Xs1;-><init>(Lcom/android/tools/r8/internal/UY;)V

    .line 138
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object p3

    invoke-virtual {p2, v2, v3, v4, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/hC;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 140
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p3

    instance-of p3, p3, Lcom/android/tools/r8/internal/fD;

    if-eqz p3, :cond_5

    .line 141
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/fD;

    .line 142
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    sub-int/2addr v2, v0

    .line 143
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/fD;->l(I)V

    goto :goto_1

    .line 144
    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    .line 145
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 147
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/internal/Ys1;

    invoke-direct {v8, p0, p2, p3}, Lcom/android/tools/r8/internal/Ys1;-><init>(Lcom/android/tools/r8/internal/sd;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;)V

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 148
    invoke-virtual/range {v3 .. v9}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 149
    :cond_5
    :goto_1
    sget-boolean p3, Lcom/android/tools/r8/internal/sd;->m:Z

    if-nez p3, :cond_7

    .line 150
    invoke-static {p2, p2}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object p3

    .line 151
    iget-object v0, v1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_2

    .line 152
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 153
    :cond_7
    :goto_2
    invoke-static {p2, p2}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object p3

    .line 154
    iget-object v0, v1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, p4, p3, v1}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 156
    :goto_3
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/tools/r8/internal/sd;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;)Lcom/android/tools/r8/internal/Bq;
    .locals 8

    .line 28
    sget-boolean v0, Lcom/android/tools/r8/internal/sd;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/r6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r6;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 31
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 32
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v3

    .line 33
    iget-object v5, p2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 34
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 35
    check-cast v5, Lcom/android/tools/r8/graph/F2;

    if-nez v5, :cond_3

    .line 36
    iget-object v6, p0, Lcom/android/tools/r8/internal/sd;->l:Lcom/android/tools/r8/internal/Bq;

    .line 37
    iget-object v6, v6, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 38
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/tools/r8/graph/F2;

    if-eqz v3, :cond_5

    move-object v5, v3

    goto :goto_2

    .line 40
    :cond_3
    sget-boolean v6, Lcom/android/tools/r8/internal/sd;->m:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/tools/r8/internal/sd;->l:Lcom/android/tools/r8/internal/Bq;

    .line 41
    iget-object v6, v6, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 42
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 43
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 44
    iget-object v3, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 45
    invoke-virtual {v3, v2, v5, v4}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_1

    .line 46
    :cond_6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    sget v6, Lcom/android/tools/r8/graph/F2;->b:I

    .line 47
    new-instance v6, Lcom/android/tools/r8/graph/E2;

    invoke-direct {v6, v5, v3}, Lcom/android/tools/r8/graph/E2;-><init>(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)V

    .line 48
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 49
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    iget-object v3, p0, Lcom/android/tools/r8/internal/sd;->l:Lcom/android/tools/r8/internal/Bq;

    .line 51
    iget-object v3, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 52
    invoke-interface {v3, v6}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 53
    iget-object v3, p2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 54
    invoke-interface {v3, v6}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 55
    iget-object v3, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 56
    invoke-virtual {v3, v2, v6, v4}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto/16 :goto_1

    .line 57
    :cond_7
    new-instance v1, Lcom/android/tools/r8/internal/Bq;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/Bq;-><init>(Lcom/android/tools/r8/internal/Bq;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p2

    new-instance v2, Lcom/android/tools/r8/internal/Vs1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/tools/r8/internal/Vs1;-><init>(Lcom/android/tools/r8/internal/sd;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;)V

    .line 59
    iget-object p2, p2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 60
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/O4;->c(Lcom/android/tools/r8/internal/Jy;)V

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p2

    new-instance v2, Lcom/android/tools/r8/internal/Ws1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/tools/r8/internal/Ws1;-><init>(Lcom/android/tools/r8/internal/sd;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;)V

    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    sget-object v0, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v0, p2, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 64
    iget-object p2, p2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/O4;->b(Lcom/android/tools/r8/internal/Jy;)V

    .line 65
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p2

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v0

    .line 67
    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 68
    iget-object v2, v2, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 69
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/s3;->a()V

    .line 70
    sget-object v2, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/g1;

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->F0()[Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    .line 72
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/sd;->a([Lcom/android/tools/r8/graph/g1;Ljava/util/Set;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/g1;)V

    .line 73
    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/internal/sd;->a([Lcom/android/tools/r8/graph/g1;Ljava/util/Set;)[Lcom/android/tools/r8/graph/g1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E0;->b([Lcom/android/tools/r8/graph/g1;)V

    .line 74
    iget-object p1, p0, Lcom/android/tools/r8/internal/sd;->h:Lcom/android/tools/r8/internal/od;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/od;->a()V

    return-object v1
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/pd;
    .locals 7

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    const-string v1, "Fixup"

    if-nez v0, :cond_0

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/Ls1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Ls1;-><init>(Lcom/android/tools/r8/internal/sd;)V

    invoke-virtual {p2, v1, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/pd;

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sd;->d()V

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    .line 12
    new-instance v3, Lcom/android/tools/r8/graph/Tc;

    invoke-direct {v3}, Lcom/android/tools/r8/graph/Tc;-><init>()V

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/Ms1;

    invoke-direct {v4, p0, v2}, Lcom/android/tools/r8/internal/Ms1;-><init>(Lcom/android/tools/r8/internal/sd;Ljava/util/Set;)V

    .line 13
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/rK;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    new-instance v3, Lcom/android/tools/r8/internal/Ns1;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/Ns1;-><init>(Lcom/android/tools/r8/internal/sd;)V

    invoke-interface {v1, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 15
    new-instance v3, Lcom/android/tools/r8/internal/Os1;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/Os1;-><init>(Lcom/android/tools/r8/internal/sd;)V

    invoke-interface {v1, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 18
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/sd;->d(Lcom/android/tools/r8/graph/H2;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 19
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 21
    new-instance v6, Lcom/android/tools/r8/internal/Bq;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/Bq;-><init>()V

    invoke-virtual {p0, v5, v2, v6}, Lcom/android/tools/r8/internal/sd;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V

    goto :goto_1

    .line 22
    :cond_3
    sget-boolean v1, Lcom/android/tools/r8/internal/sd;->m:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sd;->c()V

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/sd;->h:Lcom/android/tools/r8/internal/od;

    iget-object v2, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/internal/od;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/cW;)Lcom/android/tools/r8/internal/pd;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/android/tools/r8/shaking/b;

    iget-object v2, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/shaking/b;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/lZ;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/shaking/b;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V

    .line 26
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Ljava/util/Set;Lcom/android/tools/r8/graph/L2;)Ljava/util/Optional;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    .line 205
    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 206
    iget-object p1, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 207
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/internal/Qs1;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/Qs1;-><init>(Ljava/util/Set;)V

    .line 208
    invoke-virtual {p1, p3}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 217
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V
    .locals 4

    .line 75
    sget-boolean v0, Lcom/android/tools/r8/internal/sd;->m:Z

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 76
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/Bq;

    sget-object v1, Lcom/android/tools/r8/internal/We0;->l:Lcom/android/tools/r8/internal/We0;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/android/tools/r8/internal/Bq;-><init>(I)V

    .line 77
    new-instance v1, Lcom/android/tools/r8/internal/r6;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/r6;-><init>()V

    .line 78
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/Ks1;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/tools/r8/internal/Ks1;-><init>(Lcom/android/tools/r8/internal/sd;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;)V

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    sget-object p2, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object p2, v2, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 81
    iget-object p2, v2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/graph/O4;->d(Lcom/android/tools/r8/internal/Jy;)V

    .line 82
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/Rs1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Rs1;-><init>(Lcom/android/tools/r8/internal/sd;)V

    .line 83
    iget-object p2, p2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 84
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/O4;->e(Lcom/android/tools/r8/internal/Jy;)V

    if-nez v0, :cond_3

    .line 85
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->e1()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 86
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p2

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->F0()[Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/sd;->a([Lcom/android/tools/r8/graph/g1;Ljava/util/Set;)[Lcom/android/tools/r8/graph/g1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E0;->b([Lcom/android/tools/r8/graph/g1;)V

    .line 89
    iget-object p1, p0, Lcom/android/tools/r8/internal/sd;->h:Lcom/android/tools/r8/internal/od;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/od;->a()V

    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 215
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 216
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/sd;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/graph/A2;)Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->k:Lcom/android/tools/r8/internal/Dq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    new-instance v1, Lcom/android/tools/r8/graph/D2;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 160
    iget-object v0, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->l:Lcom/android/tools/r8/internal/Bq;

    .line 162
    new-instance v1, Lcom/android/tools/r8/graph/D2;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 163
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 164
    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/android/tools/r8/graph/D2;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 166
    iget-object p1, p1, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 167
    invoke-interface {p1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 168
    new-instance p1, Lcom/android/tools/r8/graph/D2;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 169
    check-cast p2, Lcom/android/tools/r8/internal/r6;

    .line 170
    iget-object p2, p2, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 171
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/graph/F2;)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->k:Lcom/android/tools/r8/internal/Dq;

    .line 173
    iget-object v0, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 174
    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->l:Lcom/android/tools/r8/internal/Bq;

    .line 176
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 177
    invoke-interface {v0, p3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    check-cast p1, Lcom/android/tools/r8/internal/r6;

    .line 179
    iget-object p1, p1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 180
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 181
    iget-object p1, p2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 182
    invoke-interface {p1, p3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a([Lcom/android/tools/r8/graph/g1;Ljava/util/Set;)[Lcom/android/tools/r8/graph/g1;
    .locals 9

    if-eqz p1, :cond_5

    .line 183
    sget-boolean v0, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 184
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 185
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/android/tools/r8/graph/g1;

    const/4 v1, 0x0

    move v2, v1

    .line 186
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 187
    aget-object v3, p1, v2

    .line 188
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/l1;

    .line 189
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    .line 190
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 191
    iget-object v6, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    new-instance v7, Lcom/android/tools/r8/internal/Ps1;

    invoke-direct {v7, p0, v5, p2}, Lcom/android/tools/r8/internal/Ps1;-><init>(Lcom/android/tools/r8/internal/sd;Lcom/android/tools/r8/graph/l1;Ljava/util/Set;)V

    iget-object v5, v5, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 192
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 193
    invoke-virtual {v6, v7, v5, v8, v1}, Lcom/android/tools/r8/graph/u1;->a(Ljava/util/function/Function;Ljava/lang/String;Lcom/android/tools/r8/graph/M2;I)Ljava/lang/Object;

    move-result-object v5

    .line 194
    check-cast v5, Lcom/android/tools/r8/graph/v2;

    .line 195
    check-cast v5, Lcom/android/tools/r8/graph/l1;

    .line 196
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 197
    sget-boolean v7, Lcom/android/tools/r8/internal/sd;->m:Z

    if-nez v7, :cond_2

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-eq v5, v4, :cond_3

    .line 198
    iget-object v6, p0, Lcom/android/tools/r8/internal/sd;->h:Lcom/android/tools/r8/internal/od;

    invoke-virtual {v6, v4, v5}, Lcom/android/tools/r8/internal/od;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V

    .line 199
    iget-object v4, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    .line 200
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1;

    move-result-object v3

    .line 201
    aput-object v3, v0, v2

    goto :goto_2

    .line 202
    :cond_3
    aput-object v3, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    .line 203
    :cond_5
    :goto_3
    sget-object p1, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    invoke-interface {v0, p1, p1}, Lcom/android/tools/r8/internal/cW;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->k:Lcom/android/tools/r8/internal/Dq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v1

    .line 71
    iget-object v0, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object p3

    goto :goto_0

    .line 73
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/android/tools/r8/internal/r6;

    .line 74
    iget-object v1, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 75
    invoke-virtual {v1, p4}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    check-cast v1, Lcom/android/tools/r8/graph/F2;

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    .line 78
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/Ss1;

    invoke-direct {v4, p0, p3, p2}, Lcom/android/tools/r8/internal/Ss1;-><init>(Lcom/android/tools/r8/internal/sd;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/internal/Bq;)V

    .line 80
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/I2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/F2;

    move-result-object p3

    .line 81
    iget-object v0, v0, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, p4, p3, v1}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object p3, v1

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->k:Lcom/android/tools/r8/internal/Dq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v1

    .line 85
    iget-object v0, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->l:Lcom/android/tools/r8/internal/Bq;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v1

    .line 89
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/Ts1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Ts1;-><init>(Lcom/android/tools/r8/internal/cW;)V

    .line 91
    iget-object v1, v0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v0

    .line 92
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 93
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v0

    .line 94
    iget-object p2, p2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 95
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    invoke-virtual {p2, v0, v1, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 99
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/tools/r8/internal/sd;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 9

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->k:Lcom/android/tools/r8/internal/Dq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v1

    .line 22
    iget-object v0, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    .line 26
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/Zs1;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Zs1;-><init>(Lcom/android/tools/r8/internal/cW;)V

    .line 27
    iget-object v2, v1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v1, v1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v1

    .line 28
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 29
    new-instance v1, Lcom/android/tools/r8/graph/D2;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 30
    iget-object v2, p0, Lcom/android/tools/r8/internal/sd;->l:Lcom/android/tools/r8/internal/Bq;

    .line 31
    iget-object v2, v2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 32
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/tools/r8/graph/F2;

    if-nez v2, :cond_7

    .line 34
    iget-object v2, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 35
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 36
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 37
    invoke-static {v2, v2}, Lcom/android/tools/r8/internal/rd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/D2;

    move-result-object v3

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/sd;->k:Lcom/android/tools/r8/internal/Dq;

    .line 39
    iget-object v2, v2, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    .line 40
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 41
    iget-object v2, p0, Lcom/android/tools/r8/internal/sd;->l:Lcom/android/tools/r8/internal/Bq;

    .line 42
    iget-object v2, v2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 43
    invoke-interface {v2, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_2

    .line 44
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v6, v2, 0x1

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v2, :cond_3

    .line 48
    const-string v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    iget-object v7, v4, Lcom/android/tools/r8/graph/u1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Lcom/android/tools/r8/graph/L2;

    invoke-direct {v8, v2}, Lcom/android/tools/r8/graph/L2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/L2;

    if-nez v7, :cond_6

    .line 51
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 52
    iget-object v3, v3, Lcom/android/tools/r8/graph/D2;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 53
    new-instance v4, Lcom/android/tools/r8/graph/E2;

    invoke-direct {v4, v3, v2}, Lcom/android/tools/r8/graph/E2;-><init>(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)V

    move-object v2, v4

    .line 54
    :goto_2
    sget-boolean v3, Lcom/android/tools/r8/internal/sd;->m:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/sd;->l:Lcom/android/tools/r8/internal/Bq;

    .line 55
    iget-object v3, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 56
    invoke-interface {v3, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 58
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/sd;->l:Lcom/android/tools/r8/internal/Bq;

    .line 59
    iget-object v3, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 60
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move v2, v6

    goto :goto_1

    .line 61
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    .line 62
    iget-object v3, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 63
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/F2;->b()Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/F2;->a()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/android/tools/r8/internal/sd;->h:Lcom/android/tools/r8/internal/od;

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/od;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    :cond_8
    :goto_5
    return-object p1
.end method

.method public final synthetic b()Lcom/android/tools/r8/internal/pd;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->h:Lcom/android/tools/r8/internal/od;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/od;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/cW;)Lcom/android/tools/r8/internal/pd;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->d1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    .line 5
    iget-object v3, v0, Lcom/android/tools/r8/graph/i3;->b:Lcom/android/tools/r8/graph/A2;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    .line 7
    :goto_0
    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/cW;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iput-object v1, p1, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/i3;)Lcom/android/tools/r8/graph/i3;

    move-result-object v0

    .line 10
    iput-object v0, p1, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 12
    iput-object v0, p1, Lcom/android/tools/r8/graph/E0;->n:Ljava/util/List;

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->U0()Lcom/android/tools/r8/graph/o5;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v1, Lcom/android/tools/r8/graph/o5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/o5;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 15
    :cond_3
    iput-object v1, p1, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->W0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/android/tools/r8/graph/E0;->q:Ljava/util/List;

    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/sd;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/bt0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/sd;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/sd;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    .line 9
    iput-object v0, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    return-void
.end method

.method public final synthetic d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/sd;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Lcom/android/tools/r8/graph/H2;)Z
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v4, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 7
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public final synthetic e(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/sd;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
