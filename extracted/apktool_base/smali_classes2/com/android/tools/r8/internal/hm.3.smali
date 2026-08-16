.class public final Lcom/android/tools/r8/internal/hm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/Cm;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Cm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/hm;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Cf;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Gf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Cf;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Gf;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->S:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Cf;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Gf;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Cf;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Gf;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->R:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 176
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 179
    :goto_0
    array-length v2, p4

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    move v3, v0

    .line 180
    :goto_1
    array-length v4, p4

    if-ge v3, v4, :cond_4

    .line 181
    aget-object v4, p4, v3

    if-eqz v4, :cond_3

    if-eqz p2, :cond_2

    .line 182
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    goto :goto_2

    .line 183
    :cond_2
    invoke-virtual {v4, v0}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    goto :goto_2

    .line 184
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    :goto_2
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 185
    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 186
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object v3, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 187
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 188
    invoke-virtual {p2, p5, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 189
    sget-boolean v1, Lcom/android/tools/r8/internal/hm;->d:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, p5, v1}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/A2;

    move-result-object p5

    if-eq p2, p5, :cond_9

    iget-object p5, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 190
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p5

    .line 191
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p5

    .line 192
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object p5

    .line 193
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xU;->g()Ljava/util/Map;

    move-result-object p5

    .line 194
    invoke-interface {p5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_9

    iget-object p5, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 195
    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 196
    invoke-static {p1, v1, p5}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/A2;

    move-result-object p5

    .line 197
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eq v1, v2, :cond_5

    if-nez p3, :cond_5

    .line 198
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    goto :goto_4

    .line 199
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p3

    if-ge v0, p3, :cond_7

    .line 200
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p5, v0}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eq p3, v1, :cond_6

    aget-object p3, p4, v0

    if-nez p3, :cond_6

    .line 201
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_8

    goto :goto_5

    .line 202
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_5
    return-object p2
.end method

.method public final synthetic a(ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Cm;->a(ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(ZLcom/android/tools/r8/internal/Gm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 7

    .line 175
    iget-object v0, p0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Cm;->a(ZLcom/android/tools/r8/internal/Gm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ta;Lcom/android/tools/r8/internal/Cf;)Lcom/android/tools/r8/graph/H5;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v9

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    new-instance v5, Lcom/android/tools/r8/internal/Hd1;

    invoke-direct {v5, v8, v9}, Lcom/android/tools/r8/internal/Hd1;-><init>(Lcom/android/tools/r8/internal/Cf;Lcom/android/tools/r8/graph/H2;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/hm;->b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;

    move-result-object v15

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    new-instance v5, Lcom/android/tools/r8/internal/wd1;

    invoke-direct {v5, v8, v9}, Lcom/android/tools/r8/internal/wd1;-><init>(Lcom/android/tools/r8/internal/Cf;Lcom/android/tools/r8/graph/H2;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)[Lcom/android/tools/r8/graph/A2;

    move-result-object v16

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v3, v15

    move-object/from16 v4, v16

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/android/tools/r8/internal/e;

    iget-object v11, v6, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/tools/r8/graph/A2;

    .line 27
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v14

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/android/tools/r8/internal/e;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;)V

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/e;->b()Lcom/android/tools/r8/graph/G;

    move-result-object v1

    .line 29
    iget-object v2, v6, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/Cm;->b(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 30
    sget-object v2, Lcom/android/tools/r8/graph/j1;->w:Lcom/android/tools/r8/internal/GG;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/internal/SG;)V

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    .line 33
    :cond_0
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 34
    sget-boolean v1, Lcom/android/tools/r8/internal/hm;->d:Z

    if-nez v1, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    move-object/from16 v1, p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :goto_0
    invoke-interface {v7, v0, v1}, Lcom/android/tools/r8/internal/Dm;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/graph/H5;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v6, p4

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 38
    iget-object v0, v7, Lcom/android/tools/r8/internal/hm;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    :goto_0
    move-object v9, v0

    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    goto :goto_0

    .line 41
    :goto_1
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/vd1;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/vd1;-><init>(Lcom/android/tools/r8/internal/Df;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/hm;->b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    .line 43
    new-instance v5, Lcom/android/tools/r8/internal/vd1;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/vd1;-><init>(Lcom/android/tools/r8/internal/Df;)V

    const/4 v2, 0x1

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)[Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 45
    iget-object v0, v7, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 46
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 47
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v11

    .line 48
    new-instance v12, Lcom/android/tools/r8/internal/Dd1;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/Dd1;-><init>()V

    .line 49
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v13

    iget-object v14, v7, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    new-instance v15, Lcom/android/tools/r8/internal/Ed1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v8

    move-object v4, v10

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/Ed1;-><init>(Lcom/android/tools/r8/internal/hm;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;)V

    .line 50
    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 51
    invoke-interface {v1, v0, v2}, Lcom/android/tools/r8/internal/Em;->l(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 11

    .line 52
    new-instance v8, Lcom/android/tools/r8/internal/e;

    move-object v9, p0

    iget-object v6, v9, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 55
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v4

    .line 56
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ga;->W()I

    move-result v10

    move-object v0, v8

    move-object v1, v6

    move-object v2, v7

    move-object v5, p2

    move-object v6, p3

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/e;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;I)V

    .line 57
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/e;->b()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 8

    .line 125
    iget-object v1, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance p3, Lcom/android/tools/r8/internal/z9;

    array-length v0, p2

    int-to-long v2, v0

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p3, v2, v3, v0}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance p3, Lcom/android/tools/r8/internal/xa;

    iget-object v0, p0, Lcom/android/tools/r8/internal/hm;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    move v0, p3

    move v3, v0

    .line 129
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 130
    new-instance v2, Lcom/android/tools/r8/internal/kb;

    sget-object v5, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v2, Lcom/android/tools/r8/internal/z9;

    int-to-long v5, v0

    sget-object v7, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v2, v5, v6, v7}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 133
    new-instance v5, Lcom/android/tools/r8/internal/pa;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    aget-object v5, p2, v0

    const/16 v6, 0xb8

    if-eqz v5, :cond_0

    .line 135
    new-instance v5, Lcom/android/tools/r8/internal/ga;

    aget-object v7, p2, v0

    invoke-direct {v5, v6, v7, p3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    iget-object v5, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 138
    new-instance v7, Lcom/android/tools/r8/internal/ga;

    invoke-direct {v7, v6, v5, p3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_1
    new-instance v5, Lcom/android/tools/r8/internal/Z8;

    sget-object v6, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/Z8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v5, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v5, :cond_2

    iget-object v5, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 141
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v5, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/ab;

    sget-object p2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance p1, Lcom/android/tools/r8/graph/G;

    add-int/lit8 v2, v3, 0x4

    .line 144
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, p1

    move-object v5, v6

    .line 145
    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/j1;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/hm;->b:Lcom/android/tools/r8/graph/u1;

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/Cm;->b(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;)Ljava/util/ArrayList;
    .locals 16

    move-object/from16 v3, p2

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    .line 59
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/tools/r8/internal/vd1;

    invoke-direct {v9, v3}, Lcom/android/tools/r8/internal/vd1;-><init>(Lcom/android/tools/r8/internal/Df;)V

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object v5, v10

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 60
    invoke-virtual/range {v4 .. v9}, Lcom/android/tools/r8/internal/hm;->b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    .line 61
    new-instance v9, Lcom/android/tools/r8/internal/vd1;

    invoke-direct {v9, v3}, Lcom/android/tools/r8/internal/vd1;-><init>(Lcom/android/tools/r8/internal/Df;)V

    const/4 v6, 0x1

    .line 62
    invoke-virtual/range {v4 .. v9}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)[Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 63
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v0

    .line 64
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v12, 0xb8

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_6

    move v1, v14

    move v2, v1

    .line 65
    :goto_0
    array-length v4, v8

    sub-int/2addr v4, v13

    if-ge v1, v4, :cond_1

    .line 66
    aget-object v4, v8, v1

    if-eqz v4, :cond_0

    move v4, v15

    goto :goto_1

    :cond_0
    move v4, v14

    :goto_1
    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    sub-int/2addr v0, v15

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result v0

    or-int/2addr v0, v2

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 68
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/hm;->a([Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;)V

    goto :goto_3

    .line 69
    :cond_2
    array-length v0, v8

    if-lez v0, :cond_3

    array-length v0, v8

    sub-int/2addr v0, v15

    aget-object v0, v8, v0

    if-eqz v0, :cond_3

    .line 70
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    array-length v1, v8

    sub-int/2addr v1, v15

    aget-object v1, v8, v1

    invoke-direct {v0, v12, v1, v14}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_3
    array-length v0, v8

    if-le v0, v15, :cond_6

    array-length v0, v8

    sub-int/2addr v0, v13

    aget-object v0, v8, v0

    if-eqz v0, :cond_6

    .line 72
    sget-boolean v0, Lcom/android/tools/r8/internal/hm;->d:Z

    if-nez v0, :cond_5

    .line 73
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    .line 74
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/O2;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->T0()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 76
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_5
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/kb;

    sget-object v1, Lcom/android/tools/r8/internal/kb$a;->k:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    array-length v2, v8

    sub-int/2addr v2, v13

    aget-object v2, v8, v2

    invoke-direct {v0, v12, v2, v14}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/android/tools/r8/internal/kb;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    const/4 v2, 0x1

    .line 80
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v11

    move-object v4, v8

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/hm;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->W()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_b

    .line 83
    sget-boolean v0, Lcom/android/tools/r8/internal/hm;->d:Z

    if-nez v0, :cond_8

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    if-eq v0, v15, :cond_8

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    if-ne v0, v13, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_8
    :goto_4
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    if-ne v0, v13, :cond_a

    .line 85
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ga;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object/from16 v0, p0

    .line 86
    iget-object v2, v0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 87
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 88
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 90
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot generate inlined api conversion for return type for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    .line 92
    :goto_5
    new-instance v1, Lcom/android/tools/r8/internal/pa;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v1, v2, v14}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    .line 93
    :goto_6
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    invoke-direct {v1, v12, v11, v14}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v9

    :cond_b
    move-object/from16 v0, p0

    return-object v9
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/synthesis/N;)V
    .locals 7

    .line 7
    iput-object p1, p6, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 p1, 0x1009

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    .line 9
    iput-object p1, p6, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 10
    iput-boolean v0, p6, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 11
    new-instance p1, Lcom/android/tools/r8/internal/yd1;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/yd1;-><init>(Lcom/android/tools/r8/internal/hm;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;)V

    .line 12
    iput-object p1, p6, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    .line 1
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 p1, 0x1009

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    .line 3
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 4
    iput-boolean v0, p4, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/xd1;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/xd1;-><init>(Lcom/android/tools/r8/internal/hm;Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;)V

    .line 6
    iput-object p1, p4, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a([Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;)V
    .locals 5

    const/4 v0, 0x4

    .line 94
    invoke-interface {p6, v0}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 95
    iget-object p6, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 96
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p6

    iget-object v0, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 97
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 98
    invoke-virtual {p6, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p6

    .line 99
    iget-object v0, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 100
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 101
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/android/tools/r8/internal/Fd1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Fd1;-><init>()V

    .line 103
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/Gd1;

    invoke-direct {v4, p0, p6, p4, p1}, Lcom/android/tools/r8/internal/Gd1;-><init>(Lcom/android/tools/r8/internal/hm;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;)V

    .line 104
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p6

    .line 105
    iget-object p3, p3, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 106
    invoke-interface {p7, p6, p3}, Lcom/android/tools/r8/internal/Em;->l(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 107
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    .line 108
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p6

    check-cast p6, Lcom/android/tools/r8/graph/A2;

    const/16 p7, 0xb8

    const/4 v0, 0x0

    invoke-direct {p3, p7, p6, v0}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 109
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object p3, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result p6

    invoke-interface {p5, p6}, Lcom/android/tools/r8/internal/ky;->a(I)I

    move-result p5

    .line 111
    new-instance p6, Lcom/android/tools/r8/internal/yb;

    invoke-direct {p6, p3, p5}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p3, v0

    .line 112
    :goto_0
    array-length p6, p1

    if-ge p3, p6, :cond_2

    .line 113
    new-instance p6, Lcom/android/tools/r8/internal/pa;

    sget-object p7, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p6, p7, p5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance p6, Lcom/android/tools/r8/internal/z9;

    int-to-long v1, p3

    sget-object p7, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p6, v1, v2, p7}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    aget-object p6, p1, p3

    if-eqz p6, :cond_0

    .line 116
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p6

    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {p4, p3}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p6

    .line 118
    :goto_1
    new-instance p7, Lcom/android/tools/r8/internal/X8;

    sget-object v1, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    invoke-direct {p7, v1}, Lcom/android/tools/r8/internal/X8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    invoke-virtual {p2, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result p7

    if-eqz p7, :cond_1

    .line 120
    new-instance p7, Lcom/android/tools/r8/internal/i9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hm;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, p6}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-direct {p7, v1}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object p7, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p7

    invoke-virtual {p7, p6}, Lcom/android/tools/r8/graph/u1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p6

    .line 122
    new-instance p7, Lcom/android/tools/r8/internal/ga;

    const/16 v1, 0xb6

    invoke-direct {p7, v1, p6, v0}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p2, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    :cond_1
    new-instance p7, Lcom/android/tools/r8/internal/i9;

    invoke-direct {p7, p6}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)[Lcom/android/tools/r8/graph/A2;
    .locals 8

    .line 146
    iget-object v0, p0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    new-instance v7, Lcom/android/tools/r8/internal/Ad1;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/Ad1;-><init>(Lcom/android/tools/r8/internal/hm;ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)V

    .line 147
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p2

    new-array p2, p2, [Lcom/android/tools/r8/graph/A2;

    .line 148
    iget-object p3, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    const/4 p5, 0x0

    .line 149
    :goto_0
    array-length v1, p3

    if-ge p5, v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 151
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xU;->g()Ljava/util/Map;

    move-result-object v1

    .line 155
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/graph/A2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 156
    :cond_0
    aget-object v1, v1, p5

    .line 157
    :goto_1
    aget-object v2, p3, p5

    .line 158
    invoke-virtual {v0, v2, v1, p1, p4}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    invoke-interface {v7, v2, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    aput-object v1, p2, p5

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)[Lcom/android/tools/r8/graph/A2;
    .locals 8

    .line 161
    iget-object v0, p0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    new-instance v7, Lcom/android/tools/r8/internal/Cd1;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/Cd1;-><init>(Lcom/android/tools/r8/internal/hm;ZLcom/android/tools/r8/internal/Gm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)V

    .line 162
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p2

    new-array p2, p2, [Lcom/android/tools/r8/graph/A2;

    .line 163
    iget-object p3, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p3, p3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    const/4 p5, 0x0

    .line 164
    :goto_0
    array-length v1, p3

    if-ge p5, v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 166
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xU;->g()Ljava/util/Map;

    move-result-object v1

    .line 170
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/graph/A2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 171
    :cond_0
    aget-object v1, v1, p5

    .line 172
    :goto_1
    aget-object v2, p3, p5

    .line 173
    invoke-virtual {v0, v2, v1, p1, p4}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-interface {v7, v2, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    aput-object v1, p2, p5

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;
    .locals 7

    .line 5
    new-instance v6, Lcom/android/tools/r8/internal/zd1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/zd1;-><init>(Lcom/android/tools/r8/internal/hm;ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)V

    .line 6
    iget-object p2, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p3

    .line 8
    iget-object p5, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p5

    .line 10
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p5

    .line 11
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object p5

    .line 12
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xU;->g()Ljava/util/Map;

    move-result-object p5

    .line 13
    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Lcom/android/tools/r8/graph/A2;

    const/4 v0, 0x0

    if-nez p5, :cond_0

    move-object p3, v0

    goto :goto_0

    .line 14
    :cond_0
    aget-object p3, p5, p3

    .line 15
    :goto_0
    iget-object p5, p0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    invoke-virtual {p5, p2, p3, p1, p4}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    invoke-interface {v6, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;
    .locals 7

    .line 18
    new-instance v6, Lcom/android/tools/r8/internal/Bd1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Bd1;-><init>(Lcom/android/tools/r8/internal/hm;ZLcom/android/tools/r8/internal/Gm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;)V

    .line 19
    iget-object p2, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p3

    .line 21
    iget-object p5, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p5

    .line 23
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p5

    .line 24
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object p5

    .line 25
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xU;->g()Ljava/util/Map;

    move-result-object p5

    .line 26
    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Lcom/android/tools/r8/graph/A2;

    const/4 v0, 0x0

    if-nez p5, :cond_0

    move-object p3, v0

    goto :goto_0

    .line 27
    :cond_0
    aget-object p3, p5, p3

    .line 28
    :goto_0
    iget-object p5, p0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    invoke-virtual {p5, p2, p3, p1, p4}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 29
    invoke-interface {v6, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final synthetic b(ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 7

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Cm;->a(ZLcom/android/tools/r8/internal/Fm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(ZLcom/android/tools/r8/internal/Gm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;
    .locals 7

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Cm;->a(ZLcom/android/tools/r8/internal/Gm;Lcom/android/tools/r8/graph/H5;Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/j1;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hm;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/hm;->c:Lcom/android/tools/r8/internal/Cm;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/Cm;->b(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
