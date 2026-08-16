.class public final Lcom/android/tools/r8/kotlin/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;

.field public final b:Lcom/android/tools/r8/internal/hC;

.field public final c:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/C;->a:Lcom/android/tools/r8/internal/hC;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/C;->b:Lcom/android/tools/r8/internal/hC;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/C;->c:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/h0;)Lcom/android/tools/r8/kotlin/B;
    .locals 0

    .line 117
    new-instance p0, Lcom/android/tools/r8/kotlin/B;

    invoke-direct {p0}, Lcom/android/tools/r8/kotlin/B;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/hQ;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Ljava/util/function/Consumer;Lcom/android/tools/r8/kotlin/X;)Lcom/android/tools/r8/kotlin/C;
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 1
    sget v5, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v5, 0x4

    .line 2
    new-array v6, v5, [Ljava/lang/Object;

    .line 3
    invoke-interface/range {p0 .. p0}, Lcom/android/tools/r8/internal/hQ;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/pQ;

    .line 4
    invoke-static {v10}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v12

    if-nez v12, :cond_1

    .line 5
    sget-boolean v10, Lcom/android/tools/r8/kotlin/C;->d:Z

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6
    :cond_1
    invoke-static {v10, v1, v2}, Lcom/android/tools/r8/kotlin/K;->a(Lcom/android/tools/r8/internal/pQ;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/K;

    move-result-object v13

    .line 7
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/graph/j1;

    if-nez v14, :cond_3

    add-int/lit8 v10, v9, 0x1

    .line 8
    array-length v11, v6

    if-ge v11, v10, :cond_2

    .line 9
    array-length v11, v6

    invoke-static {v11, v10}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v11

    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 10
    :cond_2
    aput-object v13, v6, v9

    .line 11
    iget-object v9, v12, Lcom/android/tools/r8/internal/OL;->b:Ljava/lang/String;

    .line 12
    invoke-static {v9}, Lcom/android/tools/r8/kotlin/b0;->a(Ljava/lang/String;)Z

    move v9, v10

    goto :goto_0

    .line 13
    :cond_3
    sget-object v15, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 14
    sget-object v8, Lcom/android/tools/r8/internal/i5;->A:Lcom/android/tools/r8/internal/Y6;

    const/16 v17, 0x19

    aget-object v15, v15, v17

    invoke-virtual {v8, v10, v15}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v11, 0x1

    .line 15
    :goto_1
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v8

    sget-object v10, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    const/16 v10, 0x20

    invoke-static {v8, v10}, Lcom/android/tools/r8/internal/YH;->a(II)I

    move-result v8

    if-gt v11, v8, :cond_5

    .line 16
    invoke-static {v12, v11}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/internal/OL;I)Lcom/android/tools/r8/internal/OL;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j1;

    if-eqz v8, :cond_4

    .line 17
    invoke-interface {v3, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 18
    :cond_5
    invoke-interface {v3, v14}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 19
    :cond_6
    :goto_2
    invoke-virtual {v14, v13}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/kotlin/d0;)V

    .line 20
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/graph/v2;)V

    goto/16 :goto_0

    .line 21
    :cond_7
    new-array v7, v5, [Ljava/lang/Object;

    .line 22
    invoke-interface/range {p0 .. p0}, Lcom/android/tools/r8/internal/hQ;->b()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/vQ;

    .line 23
    invoke-static {v12, v1, v2}, Lcom/android/tools/r8/kotlin/a;->a(Lcom/android/tools/r8/internal/vQ;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/a;

    move-result-object v13

    .line 24
    invoke-static {v12}, Lcom/android/tools/r8/internal/BL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/CL;

    move-result-object v14

    .line 25
    invoke-static {v12}, Lcom/android/tools/r8/internal/BL;->b(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v15

    .line 26
    invoke-static {v12}, Lcom/android/tools/r8/internal/BL;->c(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/OL;

    move-result-object v17

    .line 27
    invoke-static {v12}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/XL;->a()Lcom/android/tools/r8/internal/OL;

    move-result-object v18

    if-eqz v14, :cond_8

    .line 28
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/CL;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v5, p2

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/graph/g1;

    if-eqz v14, :cond_9

    .line 29
    invoke-virtual {v14, v13}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/kotlin/G;)V

    .line 30
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/graph/v2;)V

    const/4 v14, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v5, p2

    :cond_9
    const/4 v14, 0x0

    :goto_4
    const/16 v19, 0x2d

    const-string v11, "<this>"

    if-eqz v15, :cond_b

    .line 31
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/graph/j1;

    if-eqz v15, :cond_b

    .line 32
    iget-object v14, v12, Lcom/android/tools/r8/internal/vQ;->d:Lcom/android/tools/r8/internal/wQ;

    .line 33
    sget-object v20, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 34
    invoke-static {v14, v11}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v5, Lcom/android/tools/r8/internal/i5;->U:Lcom/android/tools/r8/internal/Y6;

    move-object/from16 v21, v8

    aget-object v8, v20, v19

    invoke-virtual {v5, v14, v8}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 36
    invoke-interface {v3, v15}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 37
    :cond_a
    new-instance v5, Lcom/android/tools/r8/kotlin/i0;

    const/4 v8, 0x2

    invoke-direct {v5, v13, v8}, Lcom/android/tools/r8/kotlin/i0;-><init>(Lcom/android/tools/r8/kotlin/a;I)V

    invoke-virtual {v15, v5}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/kotlin/d0;)V

    .line 38
    invoke-virtual {v15}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/graph/v2;)V

    const/4 v14, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v21, v8

    :goto_5
    if-eqz v17, :cond_d

    .line 39
    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    if-eqz v5, :cond_d

    .line 40
    iget-object v8, v12, Lcom/android/tools/r8/internal/vQ;->d:Lcom/android/tools/r8/internal/wQ;

    .line 41
    sget-object v12, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 42
    invoke-static {v8, v11}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v11, Lcom/android/tools/r8/internal/i5;->U:Lcom/android/tools/r8/internal/Y6;

    aget-object v12, v12, v19

    invoke-virtual {v11, v8, v12}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 44
    invoke-interface {v3, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 45
    :cond_c
    new-instance v8, Lcom/android/tools/r8/kotlin/i0;

    const/4 v11, 0x1

    invoke-direct {v8, v13, v11}, Lcom/android/tools/r8/kotlin/i0;-><init>(Lcom/android/tools/r8/kotlin/a;I)V

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/kotlin/d0;)V

    .line 46
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/graph/v2;)V

    move v14, v11

    goto :goto_6

    :cond_d
    const/4 v11, 0x1

    :goto_6
    if-eqz v18, :cond_e

    .line 47
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    if-eqz v5, :cond_e

    .line 49
    new-instance v8, Lcom/android/tools/r8/kotlin/i0;

    const/4 v12, 0x3

    invoke-direct {v8, v13, v12}, Lcom/android/tools/r8/kotlin/i0;-><init>(Lcom/android/tools/r8/kotlin/a;I)V

    invoke-virtual {v5, v8}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/kotlin/d0;)V

    .line 50
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/graph/v2;)V

    move v14, v11

    :cond_e
    if-nez v14, :cond_10

    add-int/lit8 v5, v10, 0x1

    .line 51
    array-length v8, v7

    if-ge v8, v5, :cond_f

    .line 52
    array-length v8, v7

    invoke-static {v8, v5}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    .line 53
    :cond_f
    aput-object v13, v7, v10

    move v10, v5

    :cond_10
    move-object/from16 v8, v21

    const/4 v5, 0x4

    goto/16 :goto_3

    .line 54
    :cond_11
    new-instance v0, Lcom/android/tools/r8/kotlin/C;

    .line 55
    invoke-interface/range {p0 .. p0}, Lcom/android/tools/r8/internal/hQ;->c()Ljava/util/List;

    move-result-object v3

    .line 56
    sget v4, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v4, 0x4

    .line 57
    new-array v4, v4, [Ljava/lang/Object;

    .line 58
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v8, 0x0

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/tools/r8/internal/zQ;

    .line 59
    new-instance v5, Lcom/android/tools/r8/kotlin/o0;

    iget-object v11, v12, Lcom/android/tools/r8/internal/zQ;->d:Lcom/android/tools/r8/internal/yQ;

    .line 60
    invoke-static {v1, v2, v11}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v13

    iget-object v11, v12, Lcom/android/tools/r8/internal/zQ;->e:Lcom/android/tools/r8/internal/yQ;

    .line 61
    invoke-static {v1, v2, v11}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/yQ;)Lcom/android/tools/r8/kotlin/p0;

    move-result-object v14

    .line 62
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zQ;->c()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v1, v2}, Lcom/android/tools/r8/kotlin/q0;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/hC;

    move-result-object v15

    .line 63
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zQ;->a()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v1}, Lcom/android/tools/r8/kotlin/n;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/hC;

    move-result-object v16

    move-object v11, v5

    invoke-direct/range {v11 .. v16}, Lcom/android/tools/r8/kotlin/o0;-><init>(Lcom/android/tools/r8/internal/zQ;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/kotlin/p0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)V

    add-int/lit8 v11, v8, 0x1

    .line 64
    array-length v12, v4

    if-ge v12, v11, :cond_12

    .line 65
    array-length v12, v4

    invoke-static {v12, v11}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v12

    invoke-static {v4, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 66
    :cond_12
    aput-object v5, v4, v8

    move v8, v11

    goto :goto_7

    .line 67
    :cond_13
    invoke-static {v8, v4}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 68
    invoke-static {v9, v6}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 69
    invoke-static {v10, v7}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    .line 70
    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/kotlin/C;-><init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/K;)Ljava/util/function/Consumer;
    .locals 1

    .line 122
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/x0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/x0;-><init>(Lcom/android/tools/r8/kotlin/K;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/o0;)Ljava/util/function/Consumer;
    .locals 1

    .line 118
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/F0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/F0;-><init>(Lcom/android/tools/r8/kotlin/o0;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/android/tools/r8/kotlin/h0;)Lcom/android/tools/r8/kotlin/B;
    .locals 0

    new-instance p0, Lcom/android/tools/r8/kotlin/B;

    invoke-direct {p0}, Lcom/android/tools/r8/kotlin/B;-><init>()V

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/kotlin/h0;)Ljava/util/function/Consumer;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/z0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/z0;-><init>(Lcom/android/tools/r8/kotlin/h0;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/C;->a:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/G0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/G0;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/C;->b:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/H0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/H0;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/C;->c:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/y0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/y0;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/kotlin/X;)Z
    .locals 8

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/C;->a:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/A0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/A0;-><init>()V

    .line 72
    invoke-static {p5, v0, p3, v1}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p3

    .line 73
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 74
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 75
    iget-object v3, v2, Lcom/android/tools/r8/graph/g1;->m:Lcom/android/tools/r8/kotlin/G;

    .line 76
    invoke-interface {v3}, Lcom/android/tools/r8/kotlin/Q;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, v2, Lcom/android/tools/r8/graph/g1;->m:Lcom/android/tools/r8/kotlin/G;

    .line 78
    invoke-interface {v3}, Lcom/android/tools/r8/kotlin/Q;->b()Lcom/android/tools/r8/kotlin/h0;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/kotlin/B0;

    invoke-direct {v4}, Lcom/android/tools/r8/kotlin/B0;-><init>()V

    .line 79
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/kotlin/B;

    .line 80
    sget-boolean v4, Lcom/android/tools/r8/kotlin/B;->e:Z

    if-nez v4, :cond_2

    .line 81
    iget-object v4, v3, Lcom/android/tools/r8/kotlin/B;->a:Lcom/android/tools/r8/graph/g1;

    if-nez v4, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 83
    :cond_2
    :goto_1
    iput-object v2, v3, Lcom/android/tools/r8/kotlin/B;->a:Lcom/android/tools/r8/graph/g1;

    .line 84
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-virtual {p6, v2}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/graph/v2;)V

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 86
    iget-object v2, v1, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    .line 87
    invoke-interface {v2}, Lcom/android/tools/r8/kotlin/Q;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    iget-object v2, v1, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    .line 89
    invoke-interface {v2}, Lcom/android/tools/r8/kotlin/Q;->d()Lcom/android/tools/r8/kotlin/K;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p5}, Lcom/android/tools/r8/kotlin/K;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result v2

    or-int/2addr p3, v2

    .line 90
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/graph/v2;)V

    goto :goto_2

    .line 91
    :cond_4
    iget-object v2, v1, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    .line 92
    invoke-interface {v2}, Lcom/android/tools/r8/kotlin/Q;->b()Lcom/android/tools/r8/kotlin/h0;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 93
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    invoke-virtual {p6, v3}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/graph/v2;)V

    .line 94
    invoke-interface {v2}, Lcom/android/tools/r8/kotlin/h0;->getReference()Lcom/android/tools/r8/kotlin/h0;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/kotlin/C0;

    invoke-direct {v4}, Lcom/android/tools/r8/kotlin/C0;-><init>()V

    .line 95
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/kotlin/B;

    .line 96
    invoke-interface {v2}, Lcom/android/tools/r8/kotlin/h0;->s()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/c;->b(I)I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    goto :goto_2

    .line 97
    :cond_6
    sget-boolean v2, Lcom/android/tools/r8/kotlin/B;->e:Z

    if-nez v2, :cond_8

    .line 98
    iget-object v2, v3, Lcom/android/tools/r8/kotlin/B;->d:Lcom/android/tools/r8/graph/j1;

    if-nez v2, :cond_7

    goto :goto_3

    .line 99
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 100
    :cond_8
    :goto_3
    iput-object v1, v3, Lcom/android/tools/r8/kotlin/B;->d:Lcom/android/tools/r8/graph/j1;

    goto :goto_2

    .line 101
    :cond_9
    sget-boolean v2, Lcom/android/tools/r8/kotlin/B;->e:Z

    if-nez v2, :cond_b

    .line 102
    iget-object v2, v3, Lcom/android/tools/r8/kotlin/B;->c:Lcom/android/tools/r8/graph/j1;

    if-nez v2, :cond_a

    goto :goto_4

    .line 103
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 104
    :cond_b
    :goto_4
    iput-object v1, v3, Lcom/android/tools/r8/kotlin/B;->c:Lcom/android/tools/r8/graph/j1;

    goto :goto_2

    .line 105
    :cond_c
    sget-boolean v2, Lcom/android/tools/r8/kotlin/B;->e:Z

    if-nez v2, :cond_e

    .line 106
    iget-object v2, v3, Lcom/android/tools/r8/kotlin/B;->b:Lcom/android/tools/r8/graph/j1;

    if-nez v2, :cond_d

    goto :goto_5

    .line 107
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 108
    :cond_e
    :goto_5
    iput-object v1, v3, Lcom/android/tools/r8/kotlin/B;->b:Lcom/android/tools/r8/graph/j1;

    goto/16 :goto_2

    .line 109
    :cond_f
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_6
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_10

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    move-object v1, p6

    check-cast v1, Lcom/android/tools/r8/kotlin/h0;

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/tools/r8/kotlin/B;

    .line 111
    iget-object v3, p6, Lcom/android/tools/r8/kotlin/B;->a:Lcom/android/tools/r8/graph/g1;

    iget-object v4, p6, Lcom/android/tools/r8/kotlin/B;->c:Lcom/android/tools/r8/graph/j1;

    iget-object v5, p6, Lcom/android/tools/r8/kotlin/B;->b:Lcom/android/tools/r8/graph/j1;

    iget-object v6, p6, Lcom/android/tools/r8/kotlin/B;->d:Lcom/android/tools/r8/graph/j1;

    move-object v2, p2

    move-object v7, p5

    .line 112
    invoke-interface/range {v1 .. v7}, Lcom/android/tools/r8/kotlin/h0;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result p6

    or-int/2addr p3, p6

    goto :goto_6

    .line 113
    :cond_10
    iget-object p4, p0, Lcom/android/tools/r8/kotlin/C;->b:Lcom/android/tools/r8/internal/hC;

    new-instance p6, Lcom/android/tools/r8/kotlin/D0;

    invoke-direct {p6}, Lcom/android/tools/r8/kotlin/D0;-><init>()V

    .line 114
    invoke-static {p5, p4, p1, p6}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p1

    or-int/2addr p1, p3

    .line 115
    iget-object p3, p0, Lcom/android/tools/r8/kotlin/C;->c:Lcom/android/tools/r8/internal/hC;

    new-instance p4, Lcom/android/tools/r8/kotlin/E0;

    invoke-direct {p4}, Lcom/android/tools/r8/kotlin/E0;-><init>()V

    .line 116
    invoke-static {p5, p3, p2, p4}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1
.end method
