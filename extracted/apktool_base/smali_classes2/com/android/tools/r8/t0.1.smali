.class public final Lcom/android/tools/r8/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H2;

.field public final b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/t0;->a:Lcom/android/tools/r8/graph/H2;

    iput-object p2, p0, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/g1;)Ljava/util/stream/Stream;
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u0;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Ljava/util/stream/Stream;
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u0;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    iget-object v2, v1, Lcom/android/tools/r8/t0;->a:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->M0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->startClassVisit(Lcom/android/tools/r8/references/ClassReference;)V

    .line 2
    iget-object v0, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    iget-object v2, v1, Lcom/android/tools/r8/t0;->a:Lcom/android/tools/r8/graph/H2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->w0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->shouldProcess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, v1, Lcom/android/tools/r8/t0;->a:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->K0()Lcom/android/tools/r8/graph/R2;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    const/16 v5, 0xe

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object v2

    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 7
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->N0()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8
    iget-object v6, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/R2$h;->W0()I

    move-result v5

    invoke-interface {v6, v5}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->referencedInt(I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_4
    iget-object v3, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/R2$k;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v2, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->referencedString(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_5
    iget-object v3, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2$h;->W0()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->referencedInt(I)V

    goto :goto_0

    .line 11
    :cond_6
    iget-object v0, v1, Lcom/android/tools/r8/t0;->a:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->A0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 12
    iget-object v4, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->startMethodVisit(Lcom/android/tools/r8/references/MethodReference;)V

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 14
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    const/4 v7, 0x0

    .line 17
    :goto_3
    array-length v8, v4

    if-ge v7, v8, :cond_2a

    .line 18
    aget-object v8, v4, v7

    .line 19
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result v9

    const/16 v10, 0x16

    const/16 v11, 0x15

    const/16 v12, 0x17

    const/16 v13, 0x14

    const/16 v14, 0x13

    const/16 v15, 0x12

    if-eq v9, v15, :cond_23

    if-eq v9, v14, :cond_23

    if-eq v9, v13, :cond_23

    if-eq v9, v12, :cond_23

    if-eq v9, v11, :cond_23

    if-ne v9, v10, :cond_7

    goto/16 :goto_e

    .line 20
    :cond_7
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result v9

    const/16 v10, 0x1b

    const/16 v11, 0x1a

    if-eq v9, v11, :cond_1e

    if-ne v9, v10, :cond_8

    goto/16 :goto_b

    .line 21
    :cond_8
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result v9

    const/16 v10, 0x61

    const/16 v11, 0x66

    const/16 v12, 0x62

    const/16 v13, 0x65

    const/16 v14, 0x64

    const/16 v15, 0x63

    const/16 v3, 0x60

    if-eq v9, v3, :cond_14

    if-eq v9, v15, :cond_14

    if-eq v9, v14, :cond_14

    if-eq v9, v13, :cond_14

    if-eq v9, v12, :cond_14

    if-eq v9, v11, :cond_14

    if-ne v9, v10, :cond_9

    goto/16 :goto_8

    .line 22
    :cond_9
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result v3

    const/16 v9, 0x72

    const/16 v10, 0x71

    const/16 v11, 0x70

    const/16 v12, 0x6f

    const/16 v13, 0x6e

    if-eq v3, v13, :cond_11

    if-eq v3, v12, :cond_11

    if-eq v3, v11, :cond_11

    if-eq v3, v10, :cond_11

    if-ne v3, v9, :cond_a

    goto/16 :goto_6

    .line 23
    :cond_a
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result v3

    const/16 v9, 0x74

    if-eq v3, v9, :cond_e

    const/16 v9, 0x75

    if-eq v3, v9, :cond_e

    const/16 v9, 0x76

    if-eq v3, v9, :cond_e

    const/16 v9, 0x77

    if-eq v3, v9, :cond_e

    const/16 v9, 0x78

    if-ne v3, v9, :cond_b

    goto :goto_4

    .line 24
    :cond_b
    instance-of v3, v8, Lcom/android/tools/r8/internal/Jo;

    if-eqz v3, :cond_d

    .line 25
    aget-object v3, v4, v7

    check-cast v3, Lcom/android/tools/r8/internal/Jo;

    if-lez v7, :cond_c

    add-int/lit8 v8, v7, -0x1

    .line 26
    aget-object v8, v4, v8

    instance-of v9, v8, Lcom/android/tools/r8/internal/hr;

    if-eqz v9, :cond_c

    .line 27
    check-cast v8, Lcom/android/tools/r8/internal/hr;

    .line 28
    iget-object v8, v8, Lcom/android/tools/r8/internal/bp;->h:Lcom/android/tools/r8/graph/J2;

    .line 29
    check-cast v8, Lcom/android/tools/r8/graph/M2;

    .line 30
    iget-object v8, v8, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[I"

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto/16 :goto_11

    .line 31
    :cond_c
    iget v8, v3, Lcom/android/tools/r8/internal/jp;->g:I

    .line 32
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    add-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 33
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 34
    :cond_d
    instance-of v3, v8, Lcom/android/tools/r8/internal/Ko;

    if-eqz v3, :cond_28

    .line 35
    check-cast v8, Lcom/android/tools/r8/internal/Ko;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 36
    :cond_e
    :goto_4
    sget-boolean v3, Lcom/android/tools/r8/t0;->c:Z

    if-nez v3, :cond_10

    .line 37
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result v3

    const/16 v9, 0x74

    if-eq v3, v9, :cond_10

    const/16 v9, 0x75

    if-eq v3, v9, :cond_10

    const/16 v9, 0x76

    if-eq v3, v9, :cond_10

    const/16 v9, 0x77

    if-eq v3, v9, :cond_10

    const/16 v9, 0x78

    if-ne v3, v9, :cond_f

    goto :goto_5

    .line 38
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_10
    :goto_5
    check-cast v8, Lcom/android/tools/r8/internal/mp;

    .line 40
    iget-object v3, v8, Lcom/android/tools/r8/internal/mp;->h:Lcom/android/tools/r8/graph/d4;

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 41
    iget-object v8, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    iget-object v9, v3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 42
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->w0()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 43
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v3, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-interface {v8, v9, v10, v3}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->referencedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 47
    :cond_11
    :goto_6
    sget-boolean v3, Lcom/android/tools/r8/t0;->c:Z

    if-nez v3, :cond_13

    .line 48
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result v3

    if-eq v3, v13, :cond_13

    if-eq v3, v12, :cond_13

    if-eq v3, v11, :cond_13

    if-eq v3, v10, :cond_13

    if-ne v3, v9, :cond_12

    goto :goto_7

    .line 49
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_13
    :goto_7
    check-cast v8, Lcom/android/tools/r8/internal/lp;

    .line 51
    iget-object v3, v8, Lcom/android/tools/r8/internal/lp;->l:Lcom/android/tools/r8/graph/d4;

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 52
    iget-object v8, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    iget-object v9, v3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 53
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->w0()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 54
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v3, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-interface {v8, v9, v10, v3}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->referencedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 58
    :cond_14
    :goto_8
    sget-boolean v9, Lcom/android/tools/r8/t0;->c:Z

    if-nez v9, :cond_16

    .line 59
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result v9

    if-eq v9, v3, :cond_16

    if-eq v9, v15, :cond_16

    if-eq v9, v14, :cond_16

    if-eq v9, v13, :cond_16

    if-eq v9, v12, :cond_16

    if-eq v9, v11, :cond_16

    if-ne v9, v10, :cond_15

    goto :goto_9

    .line 60
    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_16
    :goto_9
    instance-of v3, v8, Lcom/android/tools/r8/internal/Sr;

    if-eqz v3, :cond_17

    .line 62
    check-cast v8, Lcom/android/tools/r8/internal/Sr;

    .line 63
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Xr;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    goto :goto_a

    .line 64
    :cond_17
    instance-of v3, v8, Lcom/android/tools/r8/internal/Tr;

    if-eqz v3, :cond_18

    .line 65
    check-cast v8, Lcom/android/tools/r8/internal/Tr;

    .line 66
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Xr;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    goto :goto_a

    .line 67
    :cond_18
    instance-of v3, v8, Lcom/android/tools/r8/internal/Ur;

    if-eqz v3, :cond_19

    .line 68
    check-cast v8, Lcom/android/tools/r8/internal/Ur;

    .line 69
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Xr;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    goto :goto_a

    .line 70
    :cond_19
    instance-of v3, v8, Lcom/android/tools/r8/internal/Vr;

    if-eqz v3, :cond_1a

    .line 71
    check-cast v8, Lcom/android/tools/r8/internal/Vr;

    .line 72
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Xr;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    goto :goto_a

    .line 73
    :cond_1a
    instance-of v3, v8, Lcom/android/tools/r8/internal/Wr;

    if-eqz v3, :cond_1b

    .line 74
    check-cast v8, Lcom/android/tools/r8/internal/Wr;

    .line 75
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Xr;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    goto :goto_a

    .line 76
    :cond_1b
    instance-of v3, v8, Lcom/android/tools/r8/internal/Yr;

    if-eqz v3, :cond_1c

    .line 77
    check-cast v8, Lcom/android/tools/r8/internal/Yr;

    .line 78
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Xr;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    goto :goto_a

    .line 79
    :cond_1c
    instance-of v3, v8, Lcom/android/tools/r8/internal/Zr;

    if-eqz v3, :cond_1d

    .line 80
    check-cast v8, Lcom/android/tools/r8/internal/Zr;

    .line 81
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Xr;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    .line 82
    :goto_a
    iget-object v8, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    iget-object v9, v3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->w0()Ljava/lang/String;

    move-result-object v9

    iget-object v3, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v9, v3}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->referencedStaticField(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 83
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Not a get static instruction"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 84
    :cond_1e
    :goto_b
    sget-boolean v3, Lcom/android/tools/r8/t0;->c:Z

    if-nez v3, :cond_20

    .line 85
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result v3

    if-eq v3, v11, :cond_20

    if-ne v3, v10, :cond_1f

    goto :goto_c

    .line 86
    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_20
    :goto_c
    instance-of v3, v8, Lcom/android/tools/r8/internal/ko;

    if-eqz v3, :cond_21

    .line 88
    check-cast v8, Lcom/android/tools/r8/internal/ko;

    .line 89
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/ko;->O()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    .line 90
    :cond_21
    instance-of v3, v8, Lcom/android/tools/r8/internal/lo;

    if-eqz v3, :cond_22

    .line 91
    check-cast v8, Lcom/android/tools/r8/internal/lo;

    .line 92
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/lo;->O()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    :goto_d
    iget-object v8, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    invoke-interface {v8, v3}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->referencedString(Ljava/lang/String;)V

    goto :goto_11

    .line 94
    :cond_22
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Not a string constant instruction."

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 95
    :cond_23
    :goto_e
    sget-boolean v3, Lcom/android/tools/r8/t0;->c:Z

    if-nez v3, :cond_25

    .line 96
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result v3

    if-eq v3, v15, :cond_25

    if-eq v3, v14, :cond_25

    if-eq v3, v13, :cond_25

    if-eq v3, v12, :cond_25

    if-eq v3, v11, :cond_25

    if-ne v3, v10, :cond_24

    goto :goto_f

    .line 97
    :cond_24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_25
    :goto_f
    instance-of v3, v8, Lcom/android/tools/r8/internal/Cm0;

    if-eqz v3, :cond_26

    .line 99
    check-cast v8, Lcom/android/tools/r8/internal/Cm0;

    .line 100
    invoke-interface {v8}, Lcom/android/tools/r8/internal/Cm0;->a()I

    move-result v3

    goto :goto_10

    .line 101
    :cond_26
    instance-of v3, v8, Lcom/android/tools/r8/internal/Ex0;

    if-eqz v3, :cond_29

    .line 102
    check-cast v8, Lcom/android/tools/r8/internal/Ex0;

    .line 103
    invoke-interface {v8}, Lcom/android/tools/r8/internal/Ex0;->a()J

    move-result-wide v9

    long-to-int v3, v9

    int-to-long v9, v3

    invoke-interface {v8}, Lcom/android/tools/r8/internal/Ex0;->a()J

    move-result-wide v11

    cmp-long v3, v9, v11

    if-eqz v3, :cond_27

    goto :goto_11

    .line 104
    :cond_27
    invoke-interface {v8}, Lcom/android/tools/r8/internal/Ex0;->a()J

    move-result-wide v8

    long-to-int v3, v8

    .line 105
    :goto_10
    iget-object v8, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    invoke-interface {v8, v3}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->referencedInt(I)V

    :cond_28
    :goto_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 106
    :cond_29
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Not an int const instruction."

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 107
    :cond_2a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2b
    if-ge v4, v3, :cond_2d

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/Ko;

    if-nez v7, :cond_2c

    const/4 v8, 0x0

    goto :goto_12

    .line 108
    :cond_2c
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    :goto_12
    if-eqz v8, :cond_2b

    const/4 v8, 0x0

    .line 109
    :goto_13
    iget-object v9, v7, Lcom/android/tools/r8/internal/Ko;->i:[S

    array-length v10, v9

    div-int/lit8 v10, v10, 0x2

    if-ge v8, v10, :cond_2b

    mul-int/lit8 v10, v8, 0x2

    add-int/lit8 v11, v10, 0x1

    .line 110
    aget-short v11, v9, v11

    shl-int/lit8 v11, v11, 0x10

    aget-short v9, v9, v10

    or-int/2addr v9, v11

    .line 111
    iget-object v10, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    invoke-interface {v10, v9}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->referencedInt(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 112
    :cond_2d
    iget-object v3, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->endMethodVisit(Lcom/android/tools/r8/references/MethodReference;)V

    goto/16 :goto_2

    .line 113
    :cond_2e
    iget-object v0, v1, Lcom/android/tools/r8/t0;->a:Lcom/android/tools/r8/graph/H2;

    .line 114
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, v0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 116
    monitor-enter v2

    .line 117
    :try_start_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/N4;->b()Z

    move-result v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_30

    .line 118
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 119
    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/r3;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_14

    :cond_2f
    const/4 v3, 0x0

    goto :goto_15

    :catchall_0
    move-exception v0

    .line 120
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_30
    :goto_14
    const/4 v3, 0x1

    :goto_15
    if-eqz v3, :cond_31

    .line 121
    iget-object v0, v1, Lcom/android/tools/r8/t0;->a:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 122
    :cond_31
    iget-object v0, v1, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    iget-object v2, v1, Lcom/android/tools/r8/t0;->a:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->M0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->endClassVisit(Lcom/android/tools/r8/references/ClassReference;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    .line 123
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 124
    iget-object v0, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 125
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/e4;

    invoke-direct {v2}, Lcom/android/tools/r8/e4;-><init>()V

    .line 127
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/f4;

    invoke-direct {v2}, Lcom/android/tools/r8/f4;-><init>()V

    .line 128
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/tools/r8/g4;

    invoke-direct {v2}, Lcom/android/tools/r8/g4;-><init>()V

    .line 130
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/tools/r8/h4;

    invoke-direct {v2}, Lcom/android/tools/r8/h4;-><init>()V

    .line 131
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const/4 v2, 0x3

    .line 132
    new-array v2, v2, [Ljava/util/stream/Stream;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/android/tools/r8/internal/ap0;->a([Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/i4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/i4;-><init>(Lcom/android/tools/r8/t0;)V

    .line 133
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/R2;)V
    .locals 3

    .line 139
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->G0()Lcom/android/tools/r8/graph/V2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->m0()Lcom/android/tools/r8/graph/R2$a;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$a;->d:Lcom/android/tools/r8/graph/e1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v1, p1, v2

    .line 141
    iget-object v1, v1, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/t0;->a(Lcom/android/tools/r8/graph/R2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->n0()Lcom/android/tools/r8/graph/R2$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2$b;->W0()[Lcom/android/tools/r8/graph/R2;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, p1, v2

    .line 143
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/t0;->a(Lcom/android/tools/r8/graph/R2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$k;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->referencedString(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/t0;->b:Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/graph/R2$h;->d:I

    invoke-interface {v0, p1}, Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;->referencedInt(I)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/r0;)V
    .locals 3

    .line 136
    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 137
    iget-object v2, v2, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/t0;->a(Lcom/android/tools/r8/graph/R2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
