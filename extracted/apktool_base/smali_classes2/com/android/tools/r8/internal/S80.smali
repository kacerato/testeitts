.class public final Lcom/android/tools/r8/internal/S80;
.super Lcom/android/tools/r8/internal/Ty;
.source "SourceFile"


# static fields
.field public static final K:Lcom/android/tools/r8/internal/S80;

.field public static final L:Lcom/android/tools/r8/internal/P80;


# instance fields
.field public A:Ljava/util/List;

.field public B:I

.field public C:Ljava/util/List;

.field public D:Ljava/util/List;

.field public E:I

.field public F:Lcom/android/tools/r8/internal/W90;

.field public G:Ljava/util/List;

.field public H:Lcom/android/tools/r8/internal/ha0;

.field public I:B

.field public J:I

.field public final c:Lcom/android/tools/r8/internal/l8;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:I

.field public l:Ljava/util/List;

.field public m:I

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:I

.field public q:Ljava/util/List;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Ljava/util/List;

.field public u:Ljava/util/List;

.field public v:Ljava/util/List;

.field public w:I

.field public x:I

.field public y:Lcom/android/tools/r8/internal/M90;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/P80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/P80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/S80;->L:Lcom/android/tools/r8/internal/P80;

    new-instance v0, Lcom/android/tools/r8/internal/S80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/S80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/S80;->K:Lcom/android/tools/r8/internal/S80;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S80;->f()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->k:I

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->m:I

    .line 15
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->p:I

    .line 16
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->w:I

    .line 17
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->B:I

    .line 18
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->E:I

    .line 19
    iput-byte v0, p0, Lcom/android/tools/r8/internal/S80;->I:B

    .line 20
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->J:I

    .line 21
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/S80;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 22
    invoke-direct/range {p0 .. p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v4, -0x1

    .line 23
    iput v4, v1, Lcom/android/tools/r8/internal/S80;->k:I

    .line 24
    iput v4, v1, Lcom/android/tools/r8/internal/S80;->m:I

    .line 25
    iput v4, v1, Lcom/android/tools/r8/internal/S80;->p:I

    .line 26
    iput v4, v1, Lcom/android/tools/r8/internal/S80;->w:I

    .line 27
    iput v4, v1, Lcom/android/tools/r8/internal/S80;->B:I

    .line 28
    iput v4, v1, Lcom/android/tools/r8/internal/S80;->E:I

    .line 29
    iput-byte v4, v1, Lcom/android/tools/r8/internal/S80;->I:B

    .line 30
    iput v4, v1, Lcom/android/tools/r8/internal/S80;->J:I

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/S80;->f()V

    .line 32
    invoke-static {}, Lcom/android/tools/r8/internal/l8;->d()Lcom/android/tools/r8/internal/j8;

    move-result-object v4

    .line 33
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/j8;)Lcom/android/tools/r8/internal/He;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :cond_0
    :goto_0
    const/high16 v13, 0x80000

    const/high16 v10, 0x40000

    const/high16 v11, 0x100000

    const/high16 v12, 0x400000

    const/16 v15, 0x80

    const/16 v8, 0x40

    if-nez v6, :cond_36

    .line 34
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v14

    const/16 v16, 0x1

    const/16 v17, 0x0

    sparse-switch v14, :sswitch_data_0

    .line 35
    invoke-virtual {v1, v2, v5, v3, v14}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/yv;I)Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_a

    .line 36
    :sswitch_0
    iget v14, v1, Lcom/android/tools/r8/internal/S80;->d:I

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_1

    .line 37
    iget-object v14, v1, Lcom/android/tools/r8/internal/S80;->H:Lcom/android/tools/r8/internal/ha0;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/ha0;->d()Lcom/android/tools/r8/internal/ga0;

    move-result-object v17

    :cond_1
    move-object/from16 v14, v17

    .line 38
    sget-object v9, Lcom/android/tools/r8/internal/ha0;->g:Lcom/android/tools/r8/internal/fa0;

    invoke-virtual {v2, v9, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/ha0;

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->H:Lcom/android/tools/r8/internal/ha0;

    if-eqz v14, :cond_2

    .line 39
    invoke-virtual {v14, v9}, Lcom/android/tools/r8/internal/ga0;->a(Lcom/android/tools/r8/internal/ha0;)Lcom/android/tools/r8/internal/ga0;

    .line 40
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/ga0;->c()Lcom/android/tools/r8/internal/ha0;

    move-result-object v9

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->H:Lcom/android/tools/r8/internal/ha0;

    .line 41
    :cond_2
    iget v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    or-int/2addr v9, v15

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    goto :goto_0

    .line 42
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 43
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v9

    and-int v14, v7, v12

    if-eq v14, v12, :cond_3

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_3

    .line 45
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    or-int/2addr v7, v12

    .line 46
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_4

    .line 47
    iget-object v14, v1, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v15, 0x80

    goto :goto_1

    .line 48
    :cond_4
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->a(I)V

    goto/16 :goto_0

    :sswitch_2
    and-int v9, v7, v12

    if-eq v9, v12, :cond_5

    .line 49
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    or-int/2addr v7, v12

    .line 50
    :cond_5
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 51
    :sswitch_3
    iget v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_6

    .line 52
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->F:Lcom/android/tools/r8/internal/W90;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W90;->d()Lcom/android/tools/r8/internal/V90;

    move-result-object v17

    :cond_6
    move-object/from16 v9, v17

    .line 53
    sget-object v14, Lcom/android/tools/r8/internal/W90;->i:Lcom/android/tools/r8/internal/U90;

    invoke-virtual {v2, v14, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/W90;

    iput-object v14, v1, Lcom/android/tools/r8/internal/S80;->F:Lcom/android/tools/r8/internal/W90;

    if-eqz v9, :cond_7

    .line 54
    invoke-virtual {v9, v14}, Lcom/android/tools/r8/internal/V90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    .line 55
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/V90;->c()Lcom/android/tools/r8/internal/W90;

    move-result-object v9

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->F:Lcom/android/tools/r8/internal/W90;

    .line 56
    :cond_7
    iget v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    or-int/2addr v9, v8

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    goto/16 :goto_0

    .line 57
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 58
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v9

    and-int v14, v7, v11

    if-eq v14, v11, :cond_8

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_8

    .line 60
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    or-int/2addr v7, v11

    .line 61
    :cond_8
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_9

    .line 62
    iget-object v14, v1, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 63
    :cond_9
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->a(I)V

    goto/16 :goto_0

    :sswitch_5
    and-int v9, v7, v11

    if-eq v9, v11, :cond_a

    .line 64
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    or-int/2addr v7, v11

    .line 65
    :cond_a
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    and-int v9, v7, v13

    if-eq v9, v13, :cond_b

    .line 66
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    or-int/2addr v7, v13

    .line 67
    :cond_b
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    sget-object v14, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {v2, v14, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 69
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v9

    and-int v14, v7, v10

    if-eq v14, v10, :cond_c

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_c

    .line 71
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    or-int/2addr v7, v10

    .line 72
    :cond_c
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_d

    .line 73
    iget-object v14, v1, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 74
    :cond_d
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->a(I)V

    goto/16 :goto_0

    :sswitch_8
    and-int v9, v7, v10

    if-eq v9, v10, :cond_e

    .line 75
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    or-int/2addr v7, v10

    .line 76
    :cond_e
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 77
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 78
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v9

    and-int/lit16 v14, v7, 0x100

    const/16 v15, 0x100

    if-eq v14, v15, :cond_f

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_f

    .line 80
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    or-int/lit16 v7, v7, 0x100

    .line 81
    :cond_f
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_10

    .line 82
    iget-object v14, v1, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 83
    :cond_10
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->a(I)V

    goto/16 :goto_0

    :sswitch_a
    and-int/lit16 v9, v7, 0x100

    const/16 v14, 0x100

    if-eq v9, v14, :cond_11

    .line 84
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    or-int/lit16 v7, v7, 0x100

    .line 85
    :cond_11
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_b
    and-int/lit16 v9, v7, 0x80

    const/16 v14, 0x80

    if-eq v9, v14, :cond_12

    .line 86
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    or-int/lit16 v7, v7, 0x80

    .line 87
    :cond_12
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    sget-object v14, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {v2, v14, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 88
    :sswitch_c
    iget v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v14, 0x20

    or-int/2addr v9, v14

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v9

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->z:I

    goto/16 :goto_0

    .line 90
    :sswitch_d
    iget v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v14, 0x10

    and-int/2addr v9, v14

    if-ne v9, v14, :cond_13

    .line 91
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->y:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/M90;->g()Lcom/android/tools/r8/internal/L90;

    move-result-object v17

    :cond_13
    move-object/from16 v9, v17

    .line 92
    sget-object v14, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {v2, v14, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/M90;

    iput-object v14, v1, Lcom/android/tools/r8/internal/S80;->y:Lcom/android/tools/r8/internal/M90;

    if-eqz v9, :cond_14

    .line 93
    invoke-virtual {v9, v14}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 94
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v9

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->y:Lcom/android/tools/r8/internal/M90;

    .line 95
    :cond_14
    iget v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v14, 0x10

    or-int/2addr v9, v14

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    goto/16 :goto_0

    .line 96
    :sswitch_e
    iget v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v14, 0x8

    or-int/2addr v9, v14

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v9

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->x:I

    goto/16 :goto_0

    .line 98
    :sswitch_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 99
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v9

    and-int/lit16 v14, v7, 0x4000

    const/16 v15, 0x4000

    if-eq v14, v15, :cond_15

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_15

    .line 101
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    or-int/lit16 v7, v7, 0x4000

    .line 102
    :cond_15
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_16

    .line 103
    iget-object v14, v1, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 104
    :cond_16
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->a(I)V

    goto/16 :goto_0

    :sswitch_10
    and-int/lit16 v9, v7, 0x4000

    const/16 v14, 0x4000

    if-eq v9, v14, :cond_17

    .line 105
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    or-int/lit16 v7, v7, 0x4000

    .line 106
    :cond_17
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_11
    and-int/lit16 v9, v7, 0x2000

    const/16 v14, 0x2000

    if-eq v9, v14, :cond_18

    .line 107
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    or-int/lit16 v7, v7, 0x2000

    .line 108
    :cond_18
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    sget-object v14, Lcom/android/tools/r8/internal/g90;->i:Lcom/android/tools/r8/internal/e90;

    invoke-virtual {v2, v14, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_12
    and-int/lit16 v9, v7, 0x1000

    const/16 v14, 0x1000

    if-eq v9, v14, :cond_19

    .line 109
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    or-int/lit16 v7, v7, 0x1000

    .line 110
    :cond_19
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    sget-object v14, Lcom/android/tools/r8/internal/P90;->q:Lcom/android/tools/r8/internal/N90;

    invoke-virtual {v2, v14, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_13
    and-int/lit16 v9, v7, 0x800

    const/16 v14, 0x800

    if-eq v9, v14, :cond_1a

    .line 111
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    or-int/lit16 v7, v7, 0x800

    .line 112
    :cond_1a
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    sget-object v14, Lcom/android/tools/r8/internal/v90;->w:Lcom/android/tools/r8/internal/t90;

    invoke-virtual {v2, v14, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_14
    and-int/lit16 v9, v7, 0x400

    const/16 v14, 0x400

    if-eq v9, v14, :cond_1b

    .line 113
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    or-int/lit16 v7, v7, 0x400

    .line 114
    :cond_1b
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    sget-object v14, Lcom/android/tools/r8/internal/n90;->w:Lcom/android/tools/r8/internal/l90;

    invoke-virtual {v2, v14, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_15
    and-int/lit16 v9, v7, 0x200

    const/16 v14, 0x200

    if-eq v9, v14, :cond_1c

    .line 115
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    or-int/lit16 v7, v7, 0x200

    .line 116
    :cond_1c
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    sget-object v14, Lcom/android/tools/r8/internal/V80;->k:Lcom/android/tools/r8/internal/T80;

    invoke-virtual {v2, v14, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 117
    :sswitch_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 118
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v9

    and-int/lit8 v14, v7, 0x40

    if-eq v14, v8, :cond_1d

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_1d

    .line 120
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    or-int/lit8 v7, v7, 0x40

    .line 121
    :cond_1d
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_1e

    .line 122
    iget-object v14, v1, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 123
    :cond_1e
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->a(I)V

    goto/16 :goto_0

    :sswitch_17
    and-int/lit8 v9, v7, 0x40

    if-eq v9, v8, :cond_1f

    .line 124
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    or-int/lit8 v7, v7, 0x40

    .line 125
    :cond_1f
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_18
    and-int/lit8 v9, v7, 0x10

    const/16 v14, 0x10

    if-eq v9, v14, :cond_20

    .line 126
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    or-int/lit8 v7, v7, 0x10

    .line 127
    :cond_20
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    sget-object v14, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {v2, v14, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_19
    and-int/lit8 v9, v7, 0x8

    const/16 v14, 0x8

    if-eq v9, v14, :cond_21

    .line 128
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    or-int/lit8 v7, v7, 0x8

    .line 129
    :cond_21
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    sget-object v14, Lcom/android/tools/r8/internal/T90;->o:Lcom/android/tools/r8/internal/Q90;

    invoke-virtual {v2, v14, v3}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 130
    :sswitch_1a
    iget v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v9

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->g:I

    goto/16 :goto_0

    .line 132
    :sswitch_1b
    iget v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v9

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->f:I

    goto/16 :goto_0

    .line 134
    :sswitch_1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v9

    .line 135
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v9

    and-int/lit8 v14, v7, 0x20

    const/16 v15, 0x20

    if-eq v14, v15, :cond_22

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_22

    .line 137
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    or-int/lit8 v7, v7, 0x20

    .line 138
    :cond_22
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v14

    if-lez v14, :cond_23

    .line 139
    iget-object v14, v1, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 140
    :cond_23
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/Ae;->a(I)V

    goto/16 :goto_0

    :sswitch_1d
    and-int/lit8 v9, v7, 0x20

    const/16 v14, 0x20

    if-eq v9, v14, :cond_24

    .line 141
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    or-int/lit8 v7, v7, 0x20

    .line 142
    :cond_24
    iget-object v9, v1, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 143
    :sswitch_1e
    iget v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->d:I

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/Ae;->c()I

    move-result v9

    iput v9, v1, Lcom/android/tools/r8/internal/S80;->e:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_8
    :sswitch_1f
    move/from16 v6, v16

    goto/16 :goto_0

    .line 145
    :goto_9
    :try_start_1
    new-instance v3, Lcom/android/tools/r8/internal/LJ;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 147
    iput-object v1, v3, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 148
    throw v3

    .line 149
    :goto_a
    iput-object v1, v2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 150
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_b
    and-int/lit8 v3, v7, 0x20

    const/16 v6, 0x20

    if-ne v3, v6, :cond_25

    .line 151
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    :cond_25
    and-int/lit8 v3, v7, 0x8

    const/16 v6, 0x8

    if-ne v3, v6, :cond_26

    .line 152
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    :cond_26
    and-int/lit8 v3, v7, 0x10

    const/16 v6, 0x10

    if-ne v3, v6, :cond_27

    .line 153
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    :cond_27
    and-int/lit8 v3, v7, 0x40

    if-ne v3, v8, :cond_28

    .line 154
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    :cond_28
    and-int/lit16 v3, v7, 0x200

    const/16 v6, 0x200

    if-ne v3, v6, :cond_29

    .line 155
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    :cond_29
    and-int/lit16 v3, v7, 0x400

    const/16 v6, 0x400

    if-ne v3, v6, :cond_2a

    .line 156
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    :cond_2a
    and-int/lit16 v3, v7, 0x800

    const/16 v6, 0x800

    if-ne v3, v6, :cond_2b

    .line 157
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    :cond_2b
    and-int/lit16 v3, v7, 0x1000

    const/16 v6, 0x1000

    if-ne v3, v6, :cond_2c

    .line 158
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    :cond_2c
    and-int/lit16 v3, v7, 0x2000

    const/16 v6, 0x2000

    if-ne v3, v6, :cond_2d

    .line 159
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    :cond_2d
    and-int/lit16 v3, v7, 0x4000

    const/16 v6, 0x4000

    if-ne v3, v6, :cond_2e

    .line 160
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    :cond_2e
    and-int/lit16 v3, v7, 0x80

    const/16 v6, 0x80

    if-ne v3, v6, :cond_2f

    .line 161
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    :cond_2f
    and-int/lit16 v3, v7, 0x100

    const/16 v6, 0x100

    if-ne v3, v6, :cond_30

    .line 162
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    :cond_30
    and-int v3, v7, v10

    if-ne v3, v10, :cond_31

    .line 163
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    :cond_31
    and-int v3, v7, v13

    if-ne v3, v13, :cond_32

    .line 164
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    :cond_32
    and-int v3, v7, v11

    if-ne v3, v11, :cond_33

    .line 165
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    :cond_33
    and-int v3, v7, v12

    if-ne v3, v12, :cond_34

    .line 166
    iget-object v3, v1, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    .line 167
    :cond_34
    :try_start_2
    iget-object v3, v5, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz v3, :cond_35

    .line 168
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 169
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->c:Lcom/android/tools/r8/internal/l8;

    .line 170
    throw v2

    .line 171
    :catch_2
    :cond_35
    :goto_c
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->c:Lcom/android/tools/r8/internal/l8;

    .line 172
    iget-object v3, v1, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Jw;->a()V

    .line 173
    throw v2

    :cond_36
    and-int/lit8 v2, v7, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_37

    .line 174
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    :cond_37
    and-int/lit8 v2, v7, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_38

    .line 175
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    :cond_38
    and-int/lit8 v2, v7, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_39

    .line 176
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    :cond_39
    and-int/lit8 v2, v7, 0x40

    if-ne v2, v8, :cond_3a

    .line 177
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    :cond_3a
    and-int/lit16 v2, v7, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_3b

    .line 178
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    :cond_3b
    and-int/lit16 v2, v7, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_3c

    .line 179
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    :cond_3c
    and-int/lit16 v2, v7, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_3d

    .line 180
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    :cond_3d
    and-int/lit16 v2, v7, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_3e

    .line 181
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    :cond_3e
    and-int/lit16 v2, v7, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_3f

    .line 182
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    :cond_3f
    and-int/lit16 v2, v7, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_40

    .line 183
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    :cond_40
    and-int/lit16 v2, v7, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_41

    .line 184
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    :cond_41
    and-int/lit16 v2, v7, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_42

    .line 185
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    :cond_42
    and-int v2, v7, v10

    if-ne v2, v10, :cond_43

    .line 186
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    :cond_43
    and-int v2, v7, v13

    if-ne v2, v13, :cond_44

    .line 187
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    :cond_44
    and-int v2, v7, v11

    if-ne v2, v11, :cond_45

    .line 188
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    :cond_45
    and-int v2, v7, v12

    if-ne v2, v12, :cond_46

    .line 189
    iget-object v2, v1, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    .line 190
    :cond_46
    :try_start_3
    iget-object v2, v5, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz v2, :cond_47

    .line 191
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 192
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v3

    iput-object v3, v1, Lcom/android/tools/r8/internal/S80;->c:Lcom/android/tools/r8/internal/l8;

    .line 193
    throw v2

    .line 194
    :catch_3
    :cond_47
    :goto_d
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object v2

    iput-object v2, v1, Lcom/android/tools/r8/internal/S80;->c:Lcom/android/tools/r8/internal/l8;

    .line 195
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Jw;->a()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1f
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_1d
        0x12 -> :sswitch_1c
        0x18 -> :sswitch_1b
        0x20 -> :sswitch_1a
        0x2a -> :sswitch_19
        0x32 -> :sswitch_18
        0x38 -> :sswitch_17
        0x3a -> :sswitch_16
        0x42 -> :sswitch_15
        0x4a -> :sswitch_14
        0x52 -> :sswitch_13
        0x5a -> :sswitch_12
        0x6a -> :sswitch_11
        0x80 -> :sswitch_10
        0x82 -> :sswitch_f
        0x88 -> :sswitch_e
        0x92 -> :sswitch_d
        0x98 -> :sswitch_c
        0xa2 -> :sswitch_b
        0xa8 -> :sswitch_a
        0xaa -> :sswitch_9
        0xb0 -> :sswitch_8
        0xb2 -> :sswitch_7
        0xba -> :sswitch_6
        0xc0 -> :sswitch_5
        0xc2 -> :sswitch_4
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Q80;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ty;-><init>(Lcom/android/tools/r8/internal/Ry;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->k:I

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->m:I

    .line 4
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->p:I

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->w:I

    .line 6
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->B:I

    .line 7
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->E:I

    .line 8
    iput-byte v0, p0, Lcom/android/tools/r8/internal/S80;->I:B

    .line 9
    iput v0, p0, Lcom/android/tools/r8/internal/S80;->J:I

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 11
    iput-object p1, p0, Lcom/android/tools/r8/internal/S80;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 8

    .line 89
    iget v0, p0, Lcom/android/tools/r8/internal/S80;->J:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 90
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 91
    iget v0, p0, Lcom/android/tools/r8/internal/S80;->e:I

    .line 92
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v1, v2

    move v3, v1

    .line 93
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    if-ge v1, v4, :cond_3

    .line 94
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    .line 95
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_2

    .line 96
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v5

    :cond_2
    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v3

    .line 97
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    .line 98
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    if-ltz v3, :cond_4

    .line 99
    invoke-static {v3}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_2
    add-int/2addr v0, v1

    .line 100
    :cond_5
    iput v3, p0, Lcom/android/tools/r8/internal/S80;->k:I

    .line 101
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    .line 102
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->f:I

    const/4 v4, 0x3

    .line 103
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_7

    .line 105
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->g:I

    .line 106
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    move v1, v2

    .line 107
    :goto_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 108
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    .line 109
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/4 v6, 0x5

    invoke-static {v6, v4}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    move v1, v2

    .line 110
    :goto_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 111
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    .line 112
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/4 v6, 0x6

    invoke-static {v6, v4}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    move v1, v2

    move v4, v1

    .line 113
    :goto_5
    iget-object v6, p0, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_b

    .line 114
    iget-object v6, p0, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    .line 115
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_a

    .line 116
    invoke-static {v6}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v6

    goto :goto_6

    :cond_a
    move v6, v5

    :goto_6
    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    add-int/2addr v0, v4

    .line 117
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    .line 118
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    if-ltz v4, :cond_c

    .line 119
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v1

    goto :goto_7

    :cond_c
    move v1, v5

    :goto_7
    add-int/2addr v0, v1

    .line 120
    :cond_d
    iput v4, p0, Lcom/android/tools/r8/internal/S80;->m:I

    move v1, v2

    .line 121
    :goto_8
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x8

    if-ge v1, v4, :cond_e

    .line 122
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    .line 123
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    invoke-static {v6, v4}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_e
    move v1, v2

    .line 124
    :goto_9
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    .line 125
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    .line 126
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/16 v7, 0x9

    invoke-static {v7, v4}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    move v1, v2

    .line 127
    :goto_a
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_10

    .line 128
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    .line 129
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    move v1, v2

    .line 130
    :goto_b
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_11

    .line 131
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    .line 132
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/16 v7, 0xb

    invoke-static {v7, v4}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_11
    move v1, v2

    .line 133
    :goto_c
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_12

    .line 134
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    .line 135
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/16 v7, 0xd

    invoke-static {v7, v4}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_12
    move v1, v2

    move v4, v1

    .line 136
    :goto_d
    iget-object v7, p0, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_14

    .line 137
    iget-object v7, p0, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    .line 138
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_13

    .line 139
    invoke-static {v7}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v7

    goto :goto_e

    :cond_13
    move v7, v5

    :goto_e
    add-int/2addr v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_14
    add-int/2addr v0, v4

    .line 140
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    .line 141
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    add-int/lit8 v0, v0, 0x2

    if-ltz v4, :cond_15

    .line 142
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v1

    goto :goto_f

    :cond_15
    move v1, v5

    :goto_f
    add-int/2addr v0, v1

    .line 143
    :cond_16
    iput v4, p0, Lcom/android/tools/r8/internal/S80;->w:I

    .line 144
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_17

    .line 145
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->x:I

    const/16 v4, 0x11

    .line 146
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    :cond_17
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_18

    .line 148
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->y:Lcom/android/tools/r8/internal/M90;

    const/16 v4, 0x12

    .line 149
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_18
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_19

    .line 151
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->z:I

    const/16 v6, 0x13

    .line 152
    invoke-static {v6, v1}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    move v1, v2

    .line 153
    :goto_10
    iget-object v6, p0, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1a

    .line 154
    iget-object v6, p0, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    .line 155
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/O0;

    const/16 v7, 0x14

    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    move v1, v2

    move v6, v1

    .line 156
    :goto_11
    iget-object v7, p0, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1c

    .line 157
    iget-object v7, p0, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    .line 158
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_1b

    .line 159
    invoke-static {v7}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v7

    goto :goto_12

    :cond_1b
    move v7, v5

    :goto_12
    add-int/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    add-int/2addr v0, v6

    .line 160
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    .line 161
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    add-int/lit8 v0, v0, 0x2

    if-ltz v6, :cond_1d

    .line 162
    invoke-static {v6}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v1

    goto :goto_13

    :cond_1d
    move v1, v5

    :goto_13
    add-int/2addr v0, v1

    .line 163
    :cond_1e
    iput v6, p0, Lcom/android/tools/r8/internal/S80;->p:I

    move v1, v2

    move v6, v1

    .line 164
    :goto_14
    iget-object v7, p0, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_20

    .line 165
    iget-object v7, p0, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    .line 166
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_1f

    .line 167
    invoke-static {v7}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v7

    goto :goto_15

    :cond_1f
    move v7, v5

    :goto_15
    add-int/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_20
    add-int/2addr v0, v6

    .line 168
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    .line 169
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    add-int/lit8 v0, v0, 0x2

    if-ltz v6, :cond_21

    .line 170
    invoke-static {v6}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v1

    goto :goto_16

    :cond_21
    move v1, v5

    :goto_16
    add-int/2addr v0, v1

    .line 171
    :cond_22
    iput v6, p0, Lcom/android/tools/r8/internal/S80;->B:I

    move v1, v2

    .line 172
    :goto_17
    iget-object v6, p0, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_23

    .line 173
    iget-object v6, p0, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    .line 174
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/O0;

    const/16 v7, 0x17

    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_23
    move v1, v2

    move v6, v1

    .line 175
    :goto_18
    iget-object v7, p0, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_25

    .line 176
    iget-object v7, p0, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    .line 177
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_24

    .line 178
    invoke-static {v7}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v7

    goto :goto_19

    :cond_24
    move v7, v5

    :goto_19
    add-int/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_25
    add-int/2addr v0, v6

    .line 179
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    .line 180
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    add-int/lit8 v0, v0, 0x2

    if-ltz v6, :cond_26

    .line 181
    invoke-static {v6}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v1

    goto :goto_1a

    :cond_26
    move v1, v5

    :goto_1a
    add-int/2addr v0, v1

    .line 182
    :cond_27
    iput v6, p0, Lcom/android/tools/r8/internal/S80;->E:I

    .line 183
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v6, 0x40

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_28

    .line 184
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->F:Lcom/android/tools/r8/internal/W90;

    const/16 v6, 0x1e

    .line 185
    invoke-static {v6, v1}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    move v1, v2

    .line 186
    :goto_1b
    iget-object v6, p0, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2a

    .line 187
    iget-object v6, p0, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    .line 188
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_29

    .line 189
    invoke-static {v6}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v6

    goto :goto_1c

    :cond_29
    move v6, v5

    :goto_1c
    add-int/2addr v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2a
    add-int/2addr v0, v1

    .line 190
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    .line 191
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    .line 192
    iget v0, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2b

    .line 193
    iget-object v0, p0, Lcom/android/tools/r8/internal/S80;->H:Lcom/android/tools/r8/internal/ha0;

    .line 194
    invoke-static {v4, v0}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v0

    add-int/2addr v1, v0

    .line 195
    :cond_2b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->e()I

    move-result v0

    add-int/2addr v0, v1

    .line 196
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 197
    iput v1, p0, Lcom/android/tools/r8/internal/S80;->J:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/S80;->a()I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Sy;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sy;-><init>(Lcom/android/tools/r8/internal/Ty;)V

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->e:I

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x12

    if-lez v1, :cond_1

    .line 9
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 10
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->k:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    :cond_1
    move v1, v3

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 12
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/4 v4, 0x2

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    .line 14
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->f:I

    const/4 v4, 0x3

    .line 15
    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 16
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 17
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 18
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->g:I

    .line 19
    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 20
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_4
    move v1, v3

    .line 21
    :goto_1
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 22
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v3

    .line 23
    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 24
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/16 v1, 0x3a

    .line 27
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 28
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->m:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    :cond_7
    move v1, v3

    .line 29
    :goto_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 30
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    move v1, v3

    .line 31
    :goto_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_9

    .line 32
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    move v1, v3

    .line 33
    :goto_5
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 34
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/16 v6, 0x9

    invoke-virtual {p1, v6, v4}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    move v1, v3

    .line 35
    :goto_6
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 36
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/16 v6, 0xa

    invoke-virtual {p1, v6, v4}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v3

    .line 37
    :goto_7
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 38
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/16 v6, 0xb

    invoke-virtual {p1, v6, v4}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    move v1, v3

    .line 39
    :goto_8
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 40
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/16 v6, 0xd

    invoke-virtual {p1, v6, v4}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 41
    :cond_d
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    const/16 v1, 0x82

    .line 43
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 44
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->w:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    :cond_e
    move v1, v3

    .line 45
    :goto_9
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    .line 46
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 47
    :cond_f
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_10

    .line 48
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->x:I

    const/16 v4, 0x11

    .line 49
    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 50
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 51
    :cond_10
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_11

    .line 52
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->y:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    .line 53
    :cond_11
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    .line 54
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->z:I

    const/16 v4, 0x13

    .line 55
    invoke-virtual {p1, v4, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 56
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_12
    move v1, v3

    .line 57
    :goto_a
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_13

    .line 58
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/16 v5, 0x14

    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 59
    :cond_13
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    const/16 v1, 0xaa

    .line 61
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 62
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->p:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    :cond_14
    move v1, v3

    .line 63
    :goto_b
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_15

    .line 64
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 65
    :cond_15
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    const/16 v1, 0xb2

    .line 67
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 68
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->B:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    :cond_16
    move v1, v3

    .line 69
    :goto_c
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_17

    .line 70
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    move v1, v3

    .line 71
    :goto_d
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_18

    .line 72
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    const/16 v5, 0x17

    invoke-virtual {p1, v5, v4}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 73
    :cond_18
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19

    const/16 v1, 0xc2

    .line 75
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 76
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->E:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    :cond_19
    move v1, v3

    .line 77
    :goto_e
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1a

    .line 78
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 79
    :cond_1a
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v4, 0x40

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1b

    .line 80
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->F:Lcom/android/tools/r8/internal/W90;

    const/16 v4, 0x1e

    invoke-virtual {p1, v4, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    :cond_1b
    move v1, v3

    .line 81
    :goto_f
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1c

    .line 82
    iget-object v4, p0, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f

    .line 83
    invoke-virtual {p1, v5, v3}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 84
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 85
    :cond_1c
    iget v1, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1d

    .line 86
    iget-object v1, p0, Lcom/android/tools/r8/internal/S80;->H:Lcom/android/tools/r8/internal/ha0;

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    :cond_1d
    const/16 v1, 0x4a38

    .line 87
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Sy;->a(ILcom/android/tools/r8/internal/He;)V

    .line 88
    iget-object v0, p0, Lcom/android/tools/r8/internal/S80;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Q80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Q80;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Q80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Q80;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Q80;->a(Lcom/android/tools/r8/internal/S80;)Lcom/android/tools/r8/internal/Q80;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/tools/r8/internal/S80;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/S80;->f:I

    iput v0, p0, Lcom/android/tools/r8/internal/S80;->g:I

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    iput v0, p0, Lcom/android/tools/r8/internal/S80;->x:I

    sget-object v2, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v2, p0, Lcom/android/tools/r8/internal/S80;->y:Lcom/android/tools/r8/internal/M90;

    iput v0, p0, Lcom/android/tools/r8/internal/S80;->z:I

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->A:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->D:Ljava/util/List;

    sget-object v0, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/S80;->F:Lcom/android/tools/r8/internal/W90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    sget-object v0, Lcom/android/tools/r8/internal/ha0;->f:Lcom/android/tools/r8/internal/ha0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/S80;->H:Lcom/android/tools/r8/internal/ha0;

    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/S80;->K:Lcom/android/tools/r8/internal/S80;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcom/android/tools/r8/internal/S80;->I:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_17

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/T90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/T90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/V80;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/V80;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/n90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/n90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/v90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/v90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_c

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    move v0, v2

    :goto_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/P90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/P90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_e

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v0, v2

    :goto_7
    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/g90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/g90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_10

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    iget v0, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Lcom/android/tools/r8/internal/S80;->y:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_12
    move v0, v2

    :goto_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_14

    iget-object v3, p0, Lcom/android/tools/r8/internal/S80;->C:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_13

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    iget v0, p0, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v3, 0x40

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_15

    iget-object v0, p0, Lcom/android/tools/r8/internal/S80;->F:Lcom/android/tools/r8/internal/W90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_15

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->d()Z

    move-result v0

    if-nez v0, :cond_16

    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2

    :cond_16
    iput-byte v1, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v1

    :cond_17
    iput-byte v2, p0, Lcom/android/tools/r8/internal/S80;->I:B

    return v2
.end method
