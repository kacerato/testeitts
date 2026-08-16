.class public final Lcom/android/tools/r8/internal/yu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/graph/I2;

.field public final d:Lcom/android/tools/r8/graph/M2;

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yu0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/yu0;->f:Lcom/android/tools/r8/graph/u1;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1, v0, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/yu0;->c:Lcom/android/tools/r8/graph/I2;

    const-string v0, "Ljava/lang/MatchException;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/yu0;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/yu0;->e:Lcom/android/tools/r8/graph/A2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->t:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->z:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 64

    move-object/from16 v0, p0

    .line 64
    iget-object v1, v0, Lcom/android/tools/r8/internal/yu0;->f:Lcom/android/tools/r8/graph/u1;

    .line 65
    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 66
    new-instance v5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 67
    new-instance v8, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 68
    new-instance v12, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 69
    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 70
    new-instance v4, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 71
    new-instance v6, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 72
    new-instance v7, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 73
    new-instance v9, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 74
    new-instance v10, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 75
    new-instance v11, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 76
    new-instance v13, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 77
    new-instance v14, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 78
    new-instance v22, Lcom/android/tools/r8/graph/G;

    move-object/from16 v15, p2

    iget-object v0, v15, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v15, Lcom/android/tools/r8/internal/pa;

    move-object/from16 v16, v0

    sget-object v0, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    move-object/from16 v17, v5

    const/4 v5, 0x0

    invoke-direct {v15, v0, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v5, Lcom/android/tools/r8/internal/O9;

    move-object/from16 v19, v15

    sget-object v15, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v5, v15, v0, v8}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v15, Lcom/android/tools/r8/internal/z9;

    move-object/from16 v20, v8

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    move-object/from16 v23, v5

    move-object/from16 v21, v6

    const-wide/16 v5, -0x1

    invoke-direct {v15, v5, v6, v8}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v6, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v6, v8}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    new-instance v5, Lcom/android/tools/r8/internal/G9;

    move-object/from16 v24, v6

    new-instance v6, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v25, v15

    const/4 v15, 0x1

    move-object/from16 v26, v2

    const/4 v2, 0x2

    move-object/from16 v28, v10

    move-object/from16 v27, v14

    const/4 v14, 0x0

    filled-new-array {v14, v15, v2}, [I

    move-result-object v10

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 79
    invoke-static {v2}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v2

    .line 80
    sget-object v30, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    .line 81
    const-string v15, "[Ljava/lang/Object;"

    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v18

    .line 82
    invoke-static/range {v18 .. v18}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v18

    move-object/from16 v31, v7

    const/4 v7, 0x3

    move-object/from16 v32, v4

    new-array v4, v7, [Lcom/android/tools/r8/internal/jy;

    aput-object v2, v4, v14

    const/4 v2, 0x1

    aput-object v30, v4, v2

    const/4 v14, 0x2

    aput-object v18, v4, v14

    invoke-direct {v6, v10, v4}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v10, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v10, v8, v2}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/yb;

    invoke-direct {v6, v8, v7}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/G9;

    move-object/from16 v33, v5

    new-instance v5, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v34, v6

    move-object/from16 v35, v10

    const/4 v6, 0x0

    filled-new-array {v6, v2, v14, v7}, [I

    move-result-object v10

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 83
    invoke-static {v7}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v7

    .line 84
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v18

    .line 85
    invoke-static/range {v18 .. v18}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v29

    const/4 v14, 0x4

    move-object/from16 v36, v3

    .line 86
    new-array v3, v14, [Lcom/android/tools/r8/internal/jy;

    aput-object v7, v3, v6

    aput-object v30, v3, v2

    const/4 v2, 0x2

    aput-object v29, v3, v2

    const/4 v6, 0x3

    aput-object v30, v3, v6

    invoke-direct {v5, v10, v3}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v3, v8, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v5, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v5, v0, v2}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v7, Lcom/android/tools/r8/internal/W8;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/W8;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/Q9;

    sget-object v14, Lcom/android/tools/r8/internal/NB;->c:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v10, v14, v8, v13}, Lcom/android/tools/r8/internal/Q9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v14, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v14, v0, v2}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v2, v8, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/X8;

    move-object/from16 v37, v4

    sget-object v4, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    invoke-direct {v6, v4}, Lcom/android/tools/r8/internal/X8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    new-instance v4, Lcom/android/tools/r8/internal/yb;

    move-object/from16 v38, v13

    const/4 v13, 0x4

    invoke-direct {v4, v0, v13}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    move-object/from16 v39, v4

    new-instance v4, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v4, v0, v13}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v13, Lcom/android/tools/r8/internal/V9;

    move-object/from16 v40, v4

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v13, v4}, Lcom/android/tools/r8/internal/V9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v4, Lcom/android/tools/r8/internal/O9;

    move-object/from16 v41, v13

    sget-object v13, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v4, v13, v8, v9}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    move-object/from16 v42, v9

    new-instance v9, Lcom/android/tools/r8/internal/pa;

    move-object/from16 v43, v4

    const/4 v4, 0x4

    invoke-direct {v9, v0, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/i9;

    move-object/from16 v44, v9

    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v4, v9}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v9, Lcom/android/tools/r8/internal/pa;

    move-object/from16 v45, v4

    const/4 v4, 0x0

    invoke-direct {v9, v0, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/ga;

    move-object/from16 v46, v9

    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v47, v6

    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v48, v2

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 87
    invoke-virtual {v1, v6, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 88
    const-string v6, "isInstance"

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    .line 89
    invoke-virtual {v1, v9, v2, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    const/16 v6, 0xb6

    const/4 v9, 0x0

    invoke-direct {v4, v6, v2, v9}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v2, Lcom/android/tools/r8/internal/O9;

    invoke-direct {v2, v13, v8, v11}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v9, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    move-object/from16 v50, v9

    new-instance v9, Lcom/android/tools/r8/internal/G9;

    move-object/from16 v51, v6

    new-instance v6, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v52, v2

    move-object/from16 v49, v4

    move-object/from16 v56, v5

    move-object/from16 v55, v7

    move-object/from16 v54, v10

    move-object/from16 v53, v14

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x4

    const/4 v10, 0x3

    const/4 v14, 0x2

    filled-new-array {v2, v4, v14, v10, v7}, [I

    move-result-object v5

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 90
    invoke-static {v7}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v7

    .line 91
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 92
    invoke-static {v10}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v10

    .line 93
    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 94
    invoke-static {v14}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v14

    const/4 v4, 0x5

    move-object/from16 v57, v3

    new-array v3, v4, [Lcom/android/tools/r8/internal/jy;

    aput-object v7, v3, v2

    const/4 v7, 0x1

    aput-object v30, v3, v7

    const/4 v7, 0x2

    aput-object v10, v3, v7

    const/4 v7, 0x3

    aput-object v30, v3, v7

    const/4 v7, 0x4

    aput-object v14, v3, v7

    invoke-direct {v6, v5, v3}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v9, v6}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v3, v0, v2}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v5, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v5, v0, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v0, Lcom/android/tools/r8/internal/ga;

    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 95
    invoke-virtual {v1, v7, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 96
    const-string v10, "equals"

    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 97
    invoke-virtual {v1, v6, v7, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    const/16 v7, 0xb6

    invoke-direct {v0, v7, v6, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v6, Lcom/android/tools/r8/internal/O9;

    invoke-direct {v6, v13, v8, v11}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v7, Lcom/android/tools/r8/internal/pa;

    const/4 v10, 0x3

    invoke-direct {v7, v8, v10}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v13, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v13, v8}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    new-instance v14, Lcom/android/tools/r8/internal/G9;

    new-instance v4, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v60, v7

    move-object/from16 v58, v11

    move-object/from16 v59, v13

    const/4 v11, 0x1

    const/4 v13, 0x2

    filled-new-array {v2, v11, v13, v10}, [I

    move-result-object v7

    iget-object v10, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 98
    invoke-static {v10}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v10

    .line 99
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v18

    .line 100
    invoke-static/range {v18 .. v18}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v29

    move-object/from16 v62, v6

    const/4 v13, 0x4

    .line 101
    new-array v6, v13, [Lcom/android/tools/r8/internal/jy;

    aput-object v10, v6, v2

    aput-object v30, v6, v11

    const/4 v2, 0x2

    aput-object v29, v6, v2

    const/4 v10, 0x3

    aput-object v30, v6, v10

    invoke-direct {v4, v7, v6}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v14, v4}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v4, Lcom/android/tools/r8/internal/R9;

    invoke-direct {v4, v10, v11}, Lcom/android/tools/r8/internal/R9;-><init>(II)V

    new-instance v6, Lcom/android/tools/r8/internal/M9;

    invoke-direct {v6, v12}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    new-instance v7, Lcom/android/tools/r8/internal/G9;

    new-instance v13, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v61, v12

    const/4 v10, 0x0

    filled-new-array {v10, v11, v2}, [I

    move-result-object v12

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 102
    invoke-static {v2}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v1

    move-object/from16 v63, v6

    const/4 v15, 0x3

    new-array v6, v15, [Lcom/android/tools/r8/internal/jy;

    aput-object v2, v6, v10

    aput-object v30, v6, v11

    const/4 v2, 0x2

    aput-object v1, v6, v2

    invoke-direct {v13, v12, v6}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v7, v13}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v1, Lcom/android/tools/r8/internal/z9;

    const-wide/16 v10, -0x2

    invoke-direct {v1, v10, v11, v8}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v2, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v2, v8}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    const/16 v6, 0x28

    new-array v15, v6, [Lcom/android/tools/r8/internal/W9;

    const/4 v6, 0x0

    aput-object v57, v15, v6

    const/4 v6, 0x1

    aput-object v56, v15, v6

    const/4 v6, 0x2

    aput-object v55, v15, v6

    const/4 v6, 0x3

    aput-object v54, v15, v6

    const/4 v6, 0x4

    aput-object v36, v15, v6

    const/4 v6, 0x5

    aput-object v53, v15, v6

    const/4 v6, 0x6

    aput-object v48, v15, v6

    const/4 v6, 0x7

    aput-object v47, v15, v6

    const/16 v6, 0x8

    aput-object v39, v15, v6

    const/16 v6, 0x9

    aput-object v32, v15, v6

    const/16 v6, 0xa

    aput-object v40, v15, v6

    const/16 v6, 0xb

    aput-object v41, v15, v6

    const/16 v6, 0xc

    aput-object v43, v15, v6

    const/16 v6, 0xd

    aput-object v21, v15, v6

    const/16 v6, 0xe

    aput-object v44, v15, v6

    const/16 v6, 0xf

    aput-object v45, v15, v6

    const/16 v6, 0x10

    aput-object v46, v15, v6

    const/16 v6, 0x11

    aput-object v49, v15, v6

    const/16 v6, 0x12

    aput-object v52, v15, v6

    const/16 v6, 0x13

    aput-object v31, v15, v6

    const/16 v6, 0x14

    aput-object v51, v15, v6

    const/16 v6, 0x15

    aput-object v50, v15, v6

    const/16 v6, 0x16

    aput-object v42, v15, v6

    const/16 v6, 0x17

    aput-object v9, v15, v6

    const/16 v6, 0x18

    aput-object v3, v15, v6

    const/16 v3, 0x19

    aput-object v5, v15, v3

    const/16 v3, 0x1a

    aput-object v0, v15, v3

    const/16 v0, 0x1b

    aput-object v62, v15, v0

    const/16 v0, 0x1c

    aput-object v28, v15, v0

    const/16 v0, 0x1d

    aput-object v60, v15, v0

    const/16 v0, 0x1e

    aput-object v59, v15, v0

    const/16 v0, 0x1f

    aput-object v58, v15, v0

    const/16 v0, 0x20

    aput-object v14, v15, v0

    const/16 v0, 0x21

    aput-object v4, v15, v0

    const/16 v0, 0x22

    aput-object v63, v15, v0

    const/16 v0, 0x23

    aput-object v38, v15, v0

    const/16 v0, 0x24

    aput-object v7, v15, v0

    const/16 v0, 0x25

    aput-object v1, v15, v0

    const/16 v0, 0x26

    aput-object v2, v15, v0

    const/16 v0, 0x27

    aput-object v27, v15, v0

    move-object/from16 v2, v26

    move-object/from16 v3, v19

    move-object/from16 v0, v37

    move-object/from16 v4, v23

    move-object/from16 v1, v33

    move-object/from16 v5, v17

    move-object/from16 v7, v24

    move-object/from16 v11, v34

    move-object/from16 v6, v25

    move-object/from16 v8, v20

    move-object v9, v1

    move-object/from16 v10, v35

    move-object/from16 v12, v61

    move-object v13, v0

    move-object v14, v15

    .line 105
    invoke-static/range {v2 .. v14}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v19

    .line 106
    sget-object v21, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/16 v17, 0x2

    const/16 v18, 0x5

    move-object/from16 v15, v22

    move-object/from16 v20, v21

    .line 107
    invoke-direct/range {v15 .. v21}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    .line 108
    iget-object v1, v0, Lcom/android/tools/r8/internal/yu0;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/tools/r8/graph/A2;

    iget-object v1, v0, Lcom/android/tools/r8/internal/yu0;->f:Lcom/android/tools/r8/graph/u1;

    const/16 v17, 0x1

    const/16 v19, 0x0

    move-object/from16 v15, v22

    move-object/from16 v16, p2

    move-object/from16 v20, v1

    .line 110
    invoke-virtual/range {v15 .. v20}, Lcom/android/tools/r8/graph/G;->b(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/G;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v22
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v0, p2, Lcom/android/tools/r8/internal/ha;

    if-nez v0, :cond_2

    .line 6
    instance-of p1, p2, Lcom/android/tools/r8/internal/wa;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->p()Lcom/android/tools/r8/internal/wa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/wa;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yu0;->d:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/CB1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/CB1;-><init>(Lcom/android/tools/r8/internal/yu0;)V

    .line 9
    invoke-static {p1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->N()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/yu0;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    new-instance p1, Lcom/android/tools/r8/internal/DB1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/DB1;-><init>(Lcom/android/tools/r8/internal/yu0;)V

    .line 14
    invoke-static {p1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 15
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 16
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 17
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object p2

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/yu0;->f:Lcom/android/tools/r8/graph/u1;

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/Au0;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/EB1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/EB1;-><init>(Lcom/android/tools/r8/internal/yu0;Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)V

    .line 20
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 21
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/yu0;->f:Lcom/android/tools/r8/graph/u1;

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/Au0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    iget-object v0, p2, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    .line 25
    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 26
    new-instance v1, Lcom/android/tools/r8/internal/FB1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/tools/r8/internal/FB1;-><init>(Lcom/android/tools/r8/internal/yu0;Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;)V

    .line 27
    invoke-static {v1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 28
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 29
    :cond_4
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Ljava/util/function/Consumer;)Ljava/util/ArrayList;
    .locals 4

    const/4 v0, 0x3

    .line 41
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 42
    iget-object p1, p0, Lcom/android/tools/r8/internal/yu0;->b:Lcom/android/tools/r8/graph/y;

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 45
    new-instance v0, Lcom/android/tools/r8/internal/wB1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wB1;-><init>()V

    .line 46
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/yu0;->b:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/xB1;

    invoke-direct {v3, p0, p5}, Lcom/android/tools/r8/internal/xB1;-><init>(Lcom/android/tools/r8/internal/yu0;Ljava/util/function/Consumer;)V

    .line 47
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 48
    invoke-interface {p2, p1, p3}, Lcom/android/tools/r8/internal/zu0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    .line 49
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    const/16 v2, 0xb8

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-boolean v0, Lcom/android/tools/r8/internal/yu0;->g:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0, p5, p4, p3, p2}, Lcom/android/tools/r8/internal/yu0;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    return-object p5
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 7

    .line 40
    new-instance v5, Lcom/android/tools/r8/internal/yB1;

    move-object v6, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/yB1;-><init>(Lcom/android/tools/r8/internal/yu0;Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;)V

    move-object v0, p0

    move-object v1, p6

    move-object v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/yu0;->a(Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Ljava/util/function/Consumer;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 7

    .line 32
    new-instance v5, Lcom/android/tools/r8/internal/GB1;

    move-object v6, p0

    move-object v0, p1

    move-object v1, p2

    invoke-direct {v5, p0, p1, p2}, Lcom/android/tools/r8/internal/GB1;-><init>(Lcom/android/tools/r8/internal/yu0;Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)V

    move-object v0, p0

    move-object v1, p5

    move-object v2, p7

    move-object v3, p8

    move-object/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/yu0;->a(Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Ljava/util/function/Consumer;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 30
    new-instance p1, Lcom/android/tools/r8/internal/wa;

    iget-object p2, p0, Lcom/android/tools/r8/internal/yu0;->f:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->t3:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 31
    new-instance p2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 1

    .line 111
    new-instance v0, Lcom/android/tools/r8/internal/AB1;

    invoke-direct {v0, p0, p4, p3, p2}, Lcom/android/tools/r8/internal/AB1;-><init>(Lcom/android/tools/r8/internal/yu0;Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0, p4, p1, v0}, Lcom/android/tools/r8/internal/yu0;->a(Ljava/util/List;Lcom/android/tools/r8/graph/D0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Ljava/util/List;)V
    .locals 1

    .line 128
    new-instance v0, Lcom/android/tools/r8/internal/HB1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/tools/r8/internal/HB1;-><init>(Lcom/android/tools/r8/internal/yu0;Ljava/util/List;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0, p3, p1, v0}, Lcom/android/tools/r8/internal/yu0;->a(Ljava/util/List;Lcom/android/tools/r8/graph/D0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p2, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 34
    iget-object v1, p0, Lcom/android/tools/r8/internal/yu0;->c:Lcom/android/tools/r8/graph/I2;

    .line 35
    iput-object v1, p2, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 v1, 0x1009

    .line 36
    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 37
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 38
    new-instance v0, Lcom/android/tools/r8/internal/BB1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/BB1;-><init>(Lcom/android/tools/r8/internal/yu0;Lcom/android/tools/r8/graph/H5;)V

    .line 39
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/yu0;->b:Lcom/android/tools/r8/graph/y;

    .line 57
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/android/tools/r8/internal/vB1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/vB1;-><init>()V

    .line 60
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object p2

    iget-object v2, p0, Lcom/android/tools/r8/internal/yu0;->b:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/internal/zB1;

    invoke-direct {v3, p0, p3}, Lcom/android/tools/r8/internal/zB1;-><init>(Lcom/android/tools/r8/internal/yu0;Lcom/android/tools/r8/graph/H5;)V

    .line 61
    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 62
    invoke-interface {p4, p2, p3}, Lcom/android/tools/r8/internal/zu0;->c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 63
    new-instance p3, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    const/16 p4, 0xb8

    const/4 v0, 0x0

    invoke-direct {p3, p4, p2, v0}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/D0;Ljava/util/function/Consumer;)V
    .locals 6

    .line 149
    new-instance v0, Lcom/android/tools/r8/internal/z9;

    iget-object v1, p2, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/android/tools/r8/internal/xa;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yu0;->f:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 151
    :goto_0
    iget-object v1, p2, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p2, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/R2;

    .line 153
    new-instance v2, Lcom/android/tools/r8/internal/kb;

    sget-object v3, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v2, Lcom/android/tools/r8/internal/z9;

    int-to-long v3, v0

    sget-object v5, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 156
    new-instance v1, Lcom/android/tools/r8/internal/Z8;

    sget-object v2, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Z8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/R2;)V
    .locals 4

    .line 129
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->S0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    new-instance p2, Lcom/android/tools/r8/internal/t9;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2$l;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/M2;

    .line 131
    invoke-direct {p2, p3, v1}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    .line 132
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 133
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->N0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    new-instance p2, Lcom/android/tools/r8/internal/z9;

    .line 135
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2$h;->W0()I

    move-result p3

    int-to-long v2, p3

    sget-object p3, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p2, v2, v3, p3}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    .line 136
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance p2, Lcom/android/tools/r8/internal/ga;

    iget-object p3, p0, Lcom/android/tools/r8/internal/yu0;->f:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->B4:Lcom/android/tools/r8/graph/N1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/N1;->d:Lcom/android/tools/r8/graph/A2;

    const/16 v0, 0xb8

    invoke-direct {p2, v0, p3, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 138
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    new-instance p2, Lcom/android/tools/r8/internal/A9;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/L2;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 140
    :cond_2
    instance-of v0, p3, Lcom/android/tools/r8/graph/S2;

    if-eqz v0, :cond_4

    .line 141
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->r0()Lcom/android/tools/r8/graph/S2;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/yu0;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {p3, p2, v0}, Lcom/android/tools/r8/internal/Au0;->a(Lcom/android/tools/r8/graph/S2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    if-nez p2, :cond_3

    .line 142
    new-instance p2, Lcom/android/tools/r8/internal/x9;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/x9;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_3
    new-instance p3, Lcom/android/tools/r8/internal/vb;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 144
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/If;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bootstrap arg for type switch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 145
    iget-object p2, p2, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 146
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    const/4 v0, 0x0

    .line 147
    invoke-direct {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    throw p1
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/R2;)V
    .locals 2

    .line 112
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/R2;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance p2, Lcom/android/tools/r8/internal/t9;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2$l;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/M2;

    const/4 p4, 0x0

    .line 114
    invoke-direct {p2, p3, p4}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    .line 115
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 116
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 117
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/L2;

    iget-object p4, p0, Lcom/android/tools/r8/internal/yu0;->b:Lcom/android/tools/r8/graph/y;

    .line 118
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/g1;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    :goto_0
    if-nez v1, :cond_3

    .line 121
    new-instance p2, Lcom/android/tools/r8/internal/x9;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/x9;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_3
    new-instance p2, Lcom/android/tools/r8/internal/vb;

    invoke-direct {p2, v1}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    .line 123
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/If;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid bootstrap arg for enum switch "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 124
    iget-object p3, p3, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 125
    iget-object p3, p3, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 126
    invoke-direct {p1, p3, p2, v1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    throw p1
.end method

.method public final synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/W;)V
    .locals 2

    .line 55
    new-instance v0, Lcom/android/tools/r8/internal/dr0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yu0;->b:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, p2, v1, p1}, Lcom/android/tools/r8/internal/dr0;-><init>(Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/16 v0, 0xba

    .line 1
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    const/16 v0, 0xb7

    .line 2
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    const/16 v0, 0xbb

    .line 3
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/ga;

    iget-object p2, p0, Lcom/android/tools/r8/internal/yu0;->f:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p2, Lcom/android/tools/r8/graph/u1;->t3:Lcom/android/tools/r8/graph/M2;

    iget-object p4, p2, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object p5, p2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {p4, p5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    .line 2
    iget-object p5, p2, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {p2, p5, p4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p4

    iget-object p5, p2, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p2, p3, p4, p5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    const/4 p3, 0x0

    const/16 p4, 0xb7

    .line 4
    invoke-direct {p1, p4, p2, p3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/yu0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Ljava/util/List;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/yu0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Ljava/util/List;)V

    return-void
.end method
