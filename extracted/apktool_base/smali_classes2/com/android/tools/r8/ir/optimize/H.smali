.class public Lcom/android/tools/r8/ir/optimize/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ir/optimize/Y;


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/nJ;

.field public final c:Lcom/android/tools/r8/internal/nJ$h;

.field public final d:Lcom/android/tools/r8/shaking/o2;

.field public final e:Lcom/android/tools/r8/graph/H5;

.field public final f:Lcom/android/tools/r8/internal/dX;

.field public final g:Lcom/android/tools/r8/internal/KD;

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->b:Lcom/android/tools/r8/internal/nJ;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->c:Lcom/android/tools/r8/internal/nJ$h;

    .line 8
    iput-object p4, p0, Lcom/android/tools/r8/ir/optimize/H;->g:Lcom/android/tools/r8/internal/KD;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/H;->d:Lcom/android/tools/r8/shaking/o2;

    .line 10
    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    .line 11
    iput-object p3, p0, Lcom/android/tools/r8/ir/optimize/H;->f:Lcom/android/tools/r8/internal/dX;

    .line 12
    iput p5, p0, Lcom/android/tools/r8/ir/optimize/H;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;Lcom/android/tools/r8/internal/fB;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/internal/nJ$h;->g:I

    .line 2
    invoke-static {p5}, Lcom/android/tools/r8/ir/optimize/W;->b(Lcom/android/tools/r8/internal/fB;)I

    move-result p5

    sub-int v6, v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/ir/optimize/H;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wD;)Ljava/lang/Boolean;
    .locals 0

    .line 299
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/wD;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/bz;)Ljava/lang/Boolean;
    .locals 0

    .line 123
    iget-object p1, p1, Lcom/android/tools/r8/internal/bz;->e:Ljava/util/Set;

    .line 124
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 125
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/B1;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/tools/r8/graph/B1;->b:Lcom/android/tools/r8/graph/A2;

    .line 318
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Cx0;)Z
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Cx0;->g()V

    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p0

    sub-int/2addr v0, p0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p0

    if-eq v0, p0, :cond_1

    .line 9
    invoke-virtual {p2, v0, p0}, Lcom/android/tools/r8/internal/Cx0;->a(II)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 10
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected attempt to invoke a class initializer (`"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->s()Ljava/util/BitSet;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    .line 5
    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 8
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static b(Lcom/android/tools/r8/graph/B1;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/tools/r8/graph/B1;->b:Lcom/android/tools/r8/graph/A2;

    .line 42
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/Optional;)I
    .locals 6

    .line 103
    invoke-static {p3}, Lv/c;->a(Ljava/util/Optional;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_5

    .line 104
    iget-object p3, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 106
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_2

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result p3

    invoke-static {p3}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p3

    .line 108
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    .line 110
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    .line 112
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    .line 114
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    new-instance v4, Lcom/android/tools/r8/graph/B1;

    .line 117
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/u1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/android/tools/r8/graph/B1;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_1

    .line 118
    :cond_2
    iget-object v4, v3, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    new-instance v4, Lcom/android/tools/r8/graph/B1;

    .line 120
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/u1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/android/tools/r8/graph/B1;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 121
    new-instance v2, Lv/h;

    invoke-direct {v2, v4}, Lv/h;-><init>(Lcom/android/tools/r8/graph/B1;)V

    .line 122
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x8

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/graph/H5;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/VJ;->d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/de;
    .locals 0

    .line 1
    return-object p2
.end method

.method public a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Pc;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/S;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    .line 127
    invoke-static {v10, v12, v15}, Lcom/android/tools/r8/ir/optimize/H;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Cx0;)Z

    move-result v0

    const/16 v16, 0x0

    if-eqz v0, :cond_0

    return-object v16

    .line 128
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 129
    iget-object v1, v8, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v12}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v1

    iget-object v2, v8, Lcom/android/tools/r8/ir/optimize/H;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/TW;->H()Z

    move-result v3

    const/4 v7, 0x1

    const/16 v17, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/I1;->q:Z

    if-eqz v1, :cond_5

    .line 133
    :goto_0
    iget-object v1, v8, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    .line 134
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 135
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object v2

    .line 137
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/F4;->c:Z

    if-nez v2, :cond_4

    .line 138
    iget-object v2, v11, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 139
    iget-object v3, v11, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v2, v3}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object v2

    .line 142
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/F4;->c:Z

    if-nez v2, :cond_4

    .line 143
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object v0

    .line 144
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/F4;->c:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 145
    :cond_2
    iget-object v0, v8, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->M:Z

    if-nez v0, :cond_3

    iget-object v0, v8, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    .line 146
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 147
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 148
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 150
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    move v0, v7

    goto :goto_3

    :cond_3
    move/from16 v0, v17

    goto :goto_3

    .line 151
    :cond_4
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 152
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 153
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 154
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->g()Z

    move-result v0

    xor-int/2addr v0, v7

    goto :goto_3

    .line 155
    :cond_5
    invoke-virtual/range {p8 .. p8}, Lcom/android/tools/r8/internal/Cx0;->p()V

    goto :goto_1

    :goto_3
    if-eqz v0, :cond_7

    .line 156
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 157
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 158
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 159
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->g()Z

    move-result v0

    if-nez v0, :cond_6

    return-object v16

    .line 160
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    .line 161
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected attempt to force inline method `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "` in `"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_7
    iget-object v0, v8, Lcom/android/tools/r8/ir/optimize/H;->g:Lcom/android/tools/r8/internal/KD;

    iget-object v6, v8, Lcom/android/tools/r8/ir/optimize/H;->f:Lcom/android/tools/r8/internal/dX;

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p0

    move-object/from16 v5, p7

    move-object/from16 v7, p8

    .line 164
    invoke-interface/range {v0 .. v7}, Lcom/android/tools/r8/internal/KD;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/H;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/U;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/android/tools/r8/ir/optimize/U;->f:Lcom/android/tools/r8/ir/optimize/U;

    if-ne v0, v1, :cond_8

    return-object v16

    .line 166
    :cond_8
    iget-object v1, v8, Lcom/android/tools/r8/ir/optimize/H;->f:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dX;->c()Lcom/android/tools/r8/internal/E8;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Lcom/android/tools/r8/internal/E8;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 167
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->o1()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v8, Lcom/android/tools/r8/ir/optimize/H;->f:Lcom/android/tools/r8/internal/dX;

    .line 168
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 169
    new-instance v0, Lcom/android/tools/r8/ir/optimize/V;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/V;-><init>()V

    return-object v0

    .line 170
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    iget-object v2, v8, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, v8, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    .line 171
    invoke-virtual {v1, v2, v3, v15}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Cx0;)Z

    move-result v1

    if-nez v1, :cond_a

    return-object v16

    .line 172
    :cond_a
    invoke-virtual {v8, v9, v11, v12, v15}, Lcom/android/tools/r8/ir/optimize/H;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Cx0;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v16

    .line 173
    :cond_b
    iget-object v1, v8, Lcom/android/tools/r8/ir/optimize/H;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    sget-object v2, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 175
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result v1

    if-nez v1, :cond_d

    .line 176
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->s0()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    move/from16 v7, v17

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v7, 0x1

    :goto_5
    if-eqz v7, :cond_e

    .line 177
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->g()Z

    move-result v1

    if-nez v1, :cond_f

    .line 178
    iget-object v1, v9, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v2, 0x2a

    .line 179
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    move-object/from16 v1, p6

    goto :goto_7

    :cond_f
    :goto_6
    return-object v16

    .line 180
    :goto_7
    invoke-virtual {v10, v12, v8, v1, v15}, Lcom/android/tools/r8/internal/VJ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/H;Lcom/android/tools/r8/internal/Pc;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/P;

    move-result-object v1

    if-nez v1, :cond_10

    return-object v16

    .line 181
    :cond_10
    iget-object v2, v8, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 183
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v4

    if-nez v4, :cond_11

    .line 185
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    goto :goto_8

    .line 186
    :cond_11
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v3

    invoke-interface {v8, v10, v3}, Lcom/android/tools/r8/ir/optimize/Y;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/de;

    move-result-object v3

    .line 187
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Lcom/android/tools/r8/ir/optimize/Y;->b()Lcom/android/tools/r8/graph/y;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v4

    .line 188
    invoke-interface/range {p0 .. p0}, Lcom/android/tools/r8/ir/optimize/Y;->b()Lcom/android/tools/r8/graph/y;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 189
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    goto :goto_8

    :cond_12
    move-object/from16 v3, v16

    :goto_8
    if-eqz v3, :cond_14

    .line 190
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j;

    invoke-static {v3, v13, v2, v4}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    move/from16 v7, v17

    goto :goto_9

    .line 192
    :cond_13
    iput-object v3, v1, Lcom/android/tools/r8/ir/optimize/P;->a:Lcom/android/tools/r8/graph/H2;

    :cond_14
    const/4 v7, 0x1

    :goto_9
    if-nez v7, :cond_15

    return-object v16

    .line 193
    :cond_15
    iget-object v2, v8, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    .line 194
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-nez v3, :cond_16

    move/from16 v2, v17

    goto :goto_a

    .line 196
    :cond_16
    new-instance v3, Lcom/android/tools/r8/ir/optimize/G;

    .line 197
    invoke-direct {v3, v2, v13}, Lcom/android/tools/r8/ir/optimize/G;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 198
    invoke-virtual {v12, v3}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 199
    iget-object v2, v3, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 200
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_a
    if-eqz v2, :cond_17

    .line 201
    invoke-virtual/range {p8 .. p8}, Lcom/android/tools/r8/internal/Cx0;->v()V

    return-object v16

    .line 202
    :cond_17
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 203
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v2

    .line 204
    iget-object v3, v8, Lcom/android/tools/r8/ir/optimize/H;->c:Lcom/android/tools/r8/internal/nJ$h;

    .line 205
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ$h;->a:Z

    if-nez v3, :cond_18

    :goto_b
    move/from16 v7, v17

    goto/16 :goto_15

    .line 206
    :cond_18
    invoke-virtual {v14, v12, v2}, Lcom/android/tools/r8/internal/JD;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/fB;

    move-result-object v3

    .line 207
    iget-object v4, v8, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 208
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 209
    iget-object v6, v8, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v6

    if-eqz v6, :cond_19

    if-ne v4, v5, :cond_19

    .line 210
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->m()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    if-ne v4, v6, :cond_19

    .line 211
    invoke-virtual {v14, v2, v3}, Lcom/android/tools/r8/internal/JD;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/fB;)V

    :goto_c
    const/4 v7, 0x1

    goto/16 :goto_15

    .line 212
    :cond_19
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    .line 213
    iget-object v4, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 214
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    .line 215
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 216
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1a
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    .line 218
    iget-object v11, v8, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 219
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v9

    .line 220
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    if-ne v11, v4, :cond_1a

    .line 221
    iget-object v11, v8, Lcom/android/tools/r8/ir/optimize/H;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/nJ;->e()Z

    move-result v11

    if-nez v11, :cond_1b

    .line 222
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    if-eq v5, v11, :cond_1b

    .line 223
    invoke-virtual {v15, v9}, Lcom/android/tools/r8/internal/Cx0;->a(Lcom/android/tools/r8/internal/QJ;)V

    goto/16 :goto_b

    .line 224
    :cond_1b
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 225
    :cond_1c
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 226
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v9

    .line 227
    iget-object v11, v8, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    .line 228
    invoke-virtual {v9, v11, v12}, Lcom/android/tools/r8/internal/hw;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object v11

    if-nez v11, :cond_1d

    .line 229
    invoke-virtual {v15, v9}, Lcom/android/tools/r8/internal/Cx0;->b(Lcom/android/tools/r8/internal/rE;)V

    goto/16 :goto_b

    .line 230
    :cond_1d
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 231
    iget-object v13, v8, Lcom/android/tools/r8/ir/optimize/H;->c:Lcom/android/tools/r8/internal/nJ$h;

    iget-boolean v13, v13, Lcom/android/tools/r8/internal/nJ$h;->b:Z

    if-eqz v13, :cond_20

    iget-object v13, v8, Lcom/android/tools/r8/ir/optimize/H;->b:Lcom/android/tools/r8/internal/nJ;

    move-object/from16 p3, v5

    iget-object v5, v8, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    .line 232
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v18

    move-object/from16 p1, v7

    if-eqz v18, :cond_1e

    .line 233
    sget-object v7, Lcom/android/tools/r8/internal/C2;->I:Lcom/android/tools/r8/internal/C2;

    .line 234
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v13

    invoke-interface {v13, v7}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 235
    invoke-interface {v5}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    .line 236
    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->U4:Lcom/android/tools/r8/graph/R1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/R1;->a:Lcom/android/tools/r8/graph/A2;

    invoke-interface {v5, v7}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v5

    goto :goto_e

    :cond_1e
    move/from16 v5, v17

    :goto_e
    if-eqz v5, :cond_20

    .line 237
    iget-object v5, v8, Lcom/android/tools/r8/ir/optimize/H;->f:Lcom/android/tools/r8/internal/dX;

    .line 238
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/dX;->e()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 239
    instance-of v5, v11, Lcom/android/tools/r8/graph/F5;

    if-eqz v5, :cond_20

    .line 240
    invoke-interface {v11}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object v5

    .line 241
    iget-object v7, v1, Lcom/android/tools/r8/ir/optimize/P;->e:Lcom/android/tools/r8/internal/f80;

    if-nez v7, :cond_1f

    .line 242
    new-instance v7, Lcom/android/tools/r8/internal/f80;

    new-instance v9, Ljava/util/IdentityHashMap;

    invoke-direct {v9}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v7, v9}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    .line 243
    iput-object v7, v1, Lcom/android/tools/r8/ir/optimize/P;->e:Lcom/android/tools/r8/internal/f80;

    .line 244
    :cond_1f
    iget-object v7, v1, Lcom/android/tools/r8/ir/optimize/P;->e:Lcom/android/tools/r8/internal/f80;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    move-object/from16 v7, p1

    move-object/from16 v5, p3

    goto/16 :goto_d

    .line 245
    :cond_20
    invoke-virtual {v15, v9}, Lcom/android/tools/r8/internal/Cx0;->a(Lcom/android/tools/r8/internal/rE;)V

    goto/16 :goto_b

    .line 246
    :cond_21
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 247
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 248
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-ne v7, v4, :cond_22

    .line 249
    invoke-virtual {v15, v6}, Lcom/android/tools/r8/internal/Cx0;->a(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_b

    .line 250
    :cond_23
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fB;->y()I

    move-result v5

    .line 251
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v9, v17

    :goto_f
    if-ge v9, v7, :cond_28

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lcom/android/tools/r8/internal/QJ;

    .line 252
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v13

    .line 253
    invoke-virtual {v13, v11}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/zE;)Ljava/lang/Iterable;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_26

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 p1, v6

    move-object/from16 v6, v18

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    move/from16 p3, v7

    .line 254
    iget-object v7, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    move/from16 p5, v9

    .line 255
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object/from16 p6, v11

    move/from16 v11, v17

    :goto_11
    if-ge v11, v9, :cond_25

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v11, v11, 0x1

    check-cast v18, Lcom/android/tools/r8/internal/xw0;

    move-object/from16 v19, v7

    .line 256
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-ne v7, v4, :cond_24

    .line 257
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/fB;->a(I)V

    .line 258
    invoke-virtual {v15, v6}, Lcom/android/tools/r8/internal/Cx0;->a(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_b

    :cond_24
    move-object/from16 v7, v19

    goto :goto_11

    :cond_25
    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v9, p5

    move-object/from16 v11, p6

    goto :goto_10

    :cond_26
    move-object/from16 p1, v6

    move/from16 p3, v7

    move/from16 p5, v9

    .line 259
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 260
    invoke-virtual {v3, v7, v5}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/W5;I)V

    goto :goto_12

    :cond_27
    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v9, p5

    goto :goto_f

    .line 261
    :cond_28
    iget-object v6, v3, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 262
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 263
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 264
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    .line 265
    iget-object v11, v9, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 p1, v6

    move/from16 v6, v17

    :goto_14
    if-ge v6, v13, :cond_2b

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v6, v6, 0x1

    check-cast v18, Lcom/android/tools/r8/internal/xw0;

    move/from16 p3, v6

    .line 267
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    if-ne v6, v4, :cond_2a

    .line 268
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/fB;->a(I)V

    .line 269
    invoke-virtual {v15, v9}, Lcom/android/tools/r8/internal/Cx0;->a(Lcom/android/tools/r8/internal/zE;)V

    goto/16 :goto_b

    :cond_2a
    move/from16 v6, p3

    goto :goto_14

    :cond_2b
    move-object/from16 v6, p1

    goto :goto_13

    .line 270
    :cond_2c
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/fB;->a(I)V

    .line 271
    :cond_2d
    invoke-virtual {v14, v2, v3}, Lcom/android/tools/r8/internal/JD;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/fB;)V

    goto/16 :goto_c

    :goto_15
    if-nez v7, :cond_2e

    return-object v16

    .line 272
    :cond_2e
    sget-object v2, Lcom/android/tools/r8/ir/optimize/U;->d:Lcom/android/tools/r8/ir/optimize/U;

    if-ne v0, v2, :cond_32

    .line 273
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/H;->i:Z

    if-nez v2, :cond_30

    iget-object v2, v8, Lcom/android/tools/r8/ir/optimize/H;->f:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_16

    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 274
    :cond_30
    :goto_16
    invoke-static/range {p7 .. p7}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    .line 275
    invoke-virtual {v8, v10, v12, v2}, Lcom/android/tools/r8/ir/optimize/H;->c(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/Optional;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 276
    sget-object v0, Lcom/android/tools/r8/ir/optimize/U;->e:Lcom/android/tools/r8/ir/optimize/U;

    .line 277
    :cond_31
    iput-object v0, v1, Lcom/android/tools/r8/ir/optimize/P;->c:Lcom/android/tools/r8/ir/optimize/U;

    goto :goto_17

    .line 278
    :cond_32
    sget-object v2, Lcom/android/tools/r8/ir/optimize/U;->e:Lcom/android/tools/r8/ir/optimize/U;

    if-ne v0, v2, :cond_33

    .line 279
    invoke-static/range {p7 .. p7}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    .line 280
    invoke-virtual {v8, v10, v12, v2}, Lcom/android/tools/r8/ir/optimize/H;->c(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/Optional;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 281
    invoke-virtual/range {p8 .. p8}, Lcom/android/tools/r8/internal/Cx0;->j()V

    return-object v16

    .line 282
    :cond_33
    iput-object v0, v1, Lcom/android/tools/r8/ir/optimize/P;->c:Lcom/android/tools/r8/ir/optimize/U;

    .line 283
    :goto_17
    new-instance v0, Lcom/android/tools/r8/ir/optimize/Q;

    iget-object v2, v1, Lcom/android/tools/r8/ir/optimize/P;->f:Lcom/android/tools/r8/graph/H5;

    iget-object v3, v1, Lcom/android/tools/r8/ir/optimize/P;->b:Lcom/android/tools/r8/internal/VJ;

    iget-object v4, v1, Lcom/android/tools/r8/ir/optimize/P;->c:Lcom/android/tools/r8/ir/optimize/U;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/tools/r8/ir/optimize/Q;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/NJ;Lcom/android/tools/r8/ir/optimize/U;)V

    .line 284
    iget-object v2, v1, Lcom/android/tools/r8/ir/optimize/P;->a:Lcom/android/tools/r8/graph/H2;

    if-eqz v2, :cond_34

    .line 285
    iput-object v2, v0, Lcom/android/tools/r8/ir/optimize/Q;->f:Lcom/android/tools/r8/graph/H2;

    .line 286
    :cond_34
    iget-boolean v2, v1, Lcom/android/tools/r8/ir/optimize/P;->d:Z

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    .line 287
    iput-boolean v2, v0, Lcom/android/tools/r8/ir/optimize/Q;->d:Z

    .line 288
    :cond_35
    iget-object v1, v1, Lcom/android/tools/r8/ir/optimize/P;->e:Lcom/android/tools/r8/internal/f80;

    if-eqz v1, :cond_36

    .line 289
    iput-object v1, v0, Lcom/android/tools/r8/ir/optimize/Q;->e:Lcom/android/tools/r8/internal/f80;

    :cond_36
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    .line 316
    iget v0, p0, Lcom/android/tools/r8/ir/optimize/H;->h:I

    invoke-static {p1}, Lcom/android/tools/r8/ir/optimize/W;->b(Lcom/android/tools/r8/internal/fB;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/r8/ir/optimize/H;->h:I

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Cx0;)Z
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/H2;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 16
    iget-object v2, v2, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 17
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 18
    iget-object v4, v4, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 19
    invoke-interface {v2}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    iget-object v0, v1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 21
    invoke-interface {v4, v0}, Lcom/android/tools/r8/androidapi/f;->c(Lcom/android/tools/r8/androidapi/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Cx0;->a()V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 25
    invoke-interface {v0, v4}, Lcom/android/tools/r8/androidapi/f;->d(Lcom/android/tools/r8/androidapi/f;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 26
    invoke-virtual {p4, v2, v4}, Lcom/android/tools/r8/internal/Cx0;->a(Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/androidapi/f;)V

    :goto_0
    return v3

    .line 27
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/H;->i:Z

    if-nez p1, :cond_6

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->g()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_6
    :goto_2
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Cx0;->t()V

    return v3

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    sget-object v1, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result v0

    if-nez v0, :cond_8

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v0, 0x2a

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 35
    :cond_8
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result p1

    if-nez p1, :cond_9

    .line 36
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->s0()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    return v3

    .line 37
    :cond_a
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/H;->f:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/dX;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 38
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Cx0;->q()V

    return v3

    .line 39
    :cond_b
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    .line 41
    :cond_c
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    .line 42
    iget-object v1, v1, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    iget-object v2, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 45
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v2

    if-ne p1, v2, :cond_d

    goto :goto_4

    .line 47
    :cond_d
    iget-object p1, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    .line 51
    :cond_e
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 52
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 53
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/Qv;->b:Z

    if-eqz p1, :cond_f

    .line 54
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 55
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    .line 56
    sget-object v0, Lcom/android/tools/r8/graph/k1;->d:Lcom/android/tools/r8/graph/k1;

    if-eq p1, v0, :cond_f

    .line 57
    :goto_3
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Cx0;->l()V

    return v3

    .line 58
    :cond_f
    :goto_4
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    .line 59
    iget-object v1, v0, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    .line 60
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qo0;->c()Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_14

    .line 61
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v2

    .line 62
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/po0;->c:Z

    if-nez v2, :cond_14

    .line 63
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->g()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_5

    .line 64
    :cond_10
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 65
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 66
    iget-object v2, v2, Lcom/android/tools/r8/shaking/i;->x:Ljava/util/Set;

    .line 67
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_5

    .line 68
    :cond_11
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 69
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v2

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    .line 71
    iget-boolean v0, v2, Lcom/android/tools/r8/shaking/t1;->g:Z

    if-eqz v0, :cond_12

    goto :goto_5

    .line 72
    :cond_12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/qo0;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_5

    .line 73
    :cond_13
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/qo0;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    goto :goto_6

    :cond_14
    :goto_5
    move p1, v4

    :goto_6
    if-nez p1, :cond_15

    .line 74
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Cx0;->m()V

    return v3

    .line 75
    :cond_15
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 76
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Cx0;->f()V

    return v3

    .line 77
    :cond_16
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/H;->d:Lcom/android/tools/r8/shaking/o2;

    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 78
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Cx0;->k()V

    return v3

    .line 79
    :cond_17
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/H;->i:Z

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/H;->d:Lcom/android/tools/r8/shaking/o2;

    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    iget-object p4, p0, Lcom/android/tools/r8/ir/optimize/H;->e:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, p2, p4, p3}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_7

    :cond_18
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_19
    :goto_7
    return v4
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Cx0;)Z
    .locals 5

    .line 80
    iget-object v0, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x2a

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 82
    :cond_0
    iget-object v0, p3, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 84
    :cond_1
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 86
    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/HD;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/Set;Ljava/util/Set;)V

    .line 87
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 88
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/OG0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/OG0;-><init>()V

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/WX;

    .line 89
    iget-object p3, p3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/xw0;

    .line 91
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 92
    new-instance v4, Lcom/android/tools/r8/internal/NN0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/NN0;-><init>()V

    invoke-virtual {p3, v4}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    iget-object v4, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 94
    iget-object p3, p3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 95
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object p3

    .line 96
    invoke-virtual {p3, v3}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p3

    .line 97
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/xw0;

    .line 98
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 99
    :cond_3
    invoke-static {p3, v0, v1}, Lcom/android/tools/r8/internal/HD;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0

    .line 100
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p2

    add-int/2addr p2, p1

    .line 101
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/H;->c:Lcom/android/tools/r8/internal/nJ$h;

    iget p1, p1, Lcom/android/tools/r8/internal/nJ$h;->h:I

    if-le p2, p1, :cond_5

    .line 102
    invoke-virtual {p4, p2, p1}, Lcom/android/tools/r8/internal/Cx0;->d(II)V

    return v3

    :cond_5
    return v2
.end method

.method public final a(Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Pc;)Z
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 291
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lv/f;

    invoke-direct {v2, p3, p2}, Lv/f;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 293
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/y;->b(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 294
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 295
    invoke-virtual {p4, v0, p1}, Lcom/android/tools/r8/internal/Pc;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/gK;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 296
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    iget-object p4, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p4, p2}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/o0;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 297
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    new-instance p2, Lv/g;

    invoke-direct {p2, p3}, Lv/g;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 298
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/Q;Lcom/android/tools/r8/internal/Cx0;)Z
    .locals 2

    .line 300
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/Q;->c:Lcom/android/tools/r8/ir/optimize/U;

    sget-object v0, Lcom/android/tools/r8/ir/optimize/U;->b:Lcom/android/tools/r8/ir/optimize/U;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 301
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/ir/optimize/H;->h:I

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 302
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Cx0;->n()V

    :cond_2
    return v1
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/Q;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Cx0;)Z
    .locals 3

    .line 303
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/Q;->c:Lcom/android/tools/r8/ir/optimize/U;

    sget-object v0, Lcom/android/tools/r8/ir/optimize/U;->b:Lcom/android/tools/r8/ir/optimize/U;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 304
    :cond_0
    invoke-static {p3}, Lcom/android/tools/r8/ir/optimize/W;->b(Lcom/android/tools/r8/internal/fB;)I

    move-result p1

    .line 305
    iget v0, p0, Lcom/android/tools/r8/ir/optimize/H;->h:I

    invoke-static {p3}, Lcom/android/tools/r8/ir/optimize/W;->b(Lcom/android/tools/r8/internal/fB;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 306
    iget p2, p0, Lcom/android/tools/r8/ir/optimize/H;->h:I

    invoke-virtual {p6, p1, p2}, Lcom/android/tools/r8/internal/Cx0;->c(II)V

    goto :goto_3

    .line 307
    :cond_1
    invoke-virtual {p0, p2, p4, p3, p6}, Lcom/android/tools/r8/ir/optimize/H;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Cx0;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 308
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 309
    :cond_2
    iget-object p1, p3, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/W5;

    .line 310
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p3

    .line 311
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object p3

    move p4, v1

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 312
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr p2, p4

    goto :goto_0

    .line 313
    :cond_5
    iget-object p1, p5, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result p1

    mul-int/2addr p1, p2

    .line 314
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/H;->c:Lcom/android/tools/r8/internal/nJ$h;

    iget p2, p2, Lcom/android/tools/r8/internal/nJ$h;->i:I

    if-lt p1, p2, :cond_6

    .line 315
    invoke-virtual {p6, p1, p2}, Lcom/android/tools/r8/internal/Cx0;->b(II)V

    goto :goto_3

    :cond_6
    :goto_2
    return v1

    :cond_7
    :goto_3
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/Optional;)I
    .locals 10

    .line 9
    invoke-static {p3}, Lv/c;->a(Ljava/util/Optional;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 10
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 13
    :cond_0
    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/JD;

    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/internal/JD;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/fB;

    move-result-object p3

    .line 14
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lv/d;

    invoke-direct {v0, p3}, Lv/d;-><init>(Lcom/android/tools/r8/internal/fB;)V

    .line 15
    iget-object p3, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/k3;

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 19
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 20
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v5

    .line 21
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v6

    .line 22
    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    .line 23
    iget-object v5, v5, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 24
    iget-object v7, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 25
    iget-object v7, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v5, v7}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v6

    .line 27
    invoke-virtual {p2, v6}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 28
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 30
    new-instance v8, Lcom/android/tools/r8/graph/B1;

    .line 31
    invoke-virtual {p3, v6}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    invoke-virtual {p3, v6}, Lcom/android/tools/r8/graph/u1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lcom/android/tools/r8/graph/B1;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_1

    .line 32
    :cond_4
    iget-object v8, p3, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 33
    new-instance v8, Lcom/android/tools/r8/graph/B1;

    .line 34
    invoke-virtual {p3, v6}, Lcom/android/tools/r8/graph/u1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    invoke-virtual {p3, v6}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lcom/android/tools/r8/graph/B1;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_6

    goto :goto_0

    .line 35
    :cond_6
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v6

    .line 36
    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 37
    iget-object v9, v8, Lcom/android/tools/r8/graph/B1;->a:Lcom/android/tools/r8/graph/A2;

    .line 38
    invoke-virtual {v5, v9}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lv/e;

    invoke-direct {v5, v8}, Lv/e;-><init>(Lcom/android/tools/r8/graph/B1;)V

    .line 39
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v1, 0x4

    .line 40
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v6

    if-ne v6, v7, :cond_7

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v6

    if-ne v6, v7, :cond_7

    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_0

    :cond_7
    move v1, v5

    goto/16 :goto_0

    :cond_8
    :goto_2
    return v1
.end method

.method public final b()Lcom/android/tools/r8/graph/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->a:Lcom/android/tools/r8/graph/y;

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/Optional;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/H;->f:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/dX;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/H;->c:Lcom/android/tools/r8/internal/nJ$h;

    iget v1, v1, Lcom/android/tools/r8/internal/nJ$h;->d:I

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/H;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$h;->e:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_2

    :cond_1
    invoke-static {p2, p1}, Lcom/android/tools/r8/ir/optimize/H;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)I

    move-result v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/ir/optimize/H;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/Optional;)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/H;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->A()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    add-int/2addr v2, v5

    :goto_2
    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/i0;->k(I)I

    move-result v0

    if-ltz v0, :cond_6

    if-gt v0, v1, :cond_3

    return v3

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/H;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$h;->e:Z

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p2, p1}, Lcom/android/tools/r8/ir/optimize/H;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)I

    move-result v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/ir/optimize/H;->b(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/Optional;)I

    move-result p3

    add-int/2addr p3, v2

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/H;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->A()Z

    move-result v2

    if-eqz v2, :cond_5

    move v4, v3

    :cond_5
    add-int/2addr v4, p3

    :goto_3
    add-int/2addr v1, v4

    if-gt v0, v1, :cond_6

    return v3

    :cond_6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object p2, p2, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/TW;->u()Lcom/android/tools/r8/internal/Xl0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Xl0;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result p1

    return p1
.end method
