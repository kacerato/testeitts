.class public final Lcom/android/tools/r8/internal/Nl0;
.super Lcom/android/tools/r8/internal/Ru;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/H2;

.field public final c:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Ru;-><init>(Lcom/android/tools/r8/graph/H2;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nl0;->b:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Nl0;->c:Lcom/android/tools/r8/graph/H5;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Lu;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->i:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/M;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 9
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 10
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 11
    iput-object p0, p2, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 12
    iput-object p0, p2, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 13
    iput-object p1, p2, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 14
    sget-object p0, Lcom/android/tools/r8/internal/Ib;->g:Lcom/android/tools/r8/internal/Ib;

    .line 15
    iput-object p0, p2, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 20

    move-object/from16 v0, p0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 7
    new-instance v8, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 8
    new-instance v11, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 9
    new-instance v19, Lcom/android/tools/r8/graph/G;

    move-object/from16 v2, p1

    iget-object v13, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/O9;

    sget-object v7, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v6, v7, v4, v8}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v4, Lcom/android/tools/r8/internal/wa;

    .line 10
    const-string v7, "Ljava/lang/NullPointerException;"

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v9, Lcom/android/tools/r8/internal/kb;

    sget-object v10, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v9, v10}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v10, Lcom/android/tools/r8/internal/ga;

    .line 11
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    iget-object v12, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v14, v5, [Lcom/android/tools/r8/graph/M2;

    .line 12
    invoke-virtual {v0, v12, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v12

    .line 13
    const-string v14, "<init>"

    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v14

    .line 14
    invoke-virtual {v0, v7, v12, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/16 v7, 0xb7

    invoke-direct {v10, v7, v0, v5}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v7, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    new-instance v12, Lcom/android/tools/r8/internal/G9;

    new-instance v0, Lcom/android/tools/r8/internal/zF;

    filled-new-array {v5}, [I

    move-result-object v14

    .line 15
    sget v15, Lcom/android/tools/r8/internal/jy;->a:I

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/android/tools/r8/internal/jy;

    sget-object v16, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    aput-object v16, v15, v5

    invoke-direct {v0, v14, v15}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v12, v0}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v14, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/bb;-><init>()V

    new-array v15, v5, [Lcom/android/tools/r8/internal/W9;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    move-object v5, v9

    move-object v6, v10

    move-object v9, v12

    move-object v10, v14

    move-object v12, v15

    .line 16
    invoke-static/range {v0 .. v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v16

    .line 17
    sget-object v18, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v14, 0x2

    const/4 v15, 0x1

    move-object/from16 v12, v19

    move-object/from16 v17, v18

    .line 18
    invoke-direct/range {v12 .. v18}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public static c(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 20

    move-object/from16 v0, p0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 7
    new-instance v9, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 9
    new-instance v17, Lcom/android/tools/r8/graph/G;

    move-object/from16 v4, p1

    iget-object v13, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v4, Lcom/android/tools/r8/internal/pa;

    sget-object v5, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v7, Lcom/android/tools/r8/internal/O9;

    sget-object v8, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v7, v8, v5, v9}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v5, Lcom/android/tools/r8/internal/wa;

    .line 10
    const-string v8, "Ljava/lang/NullPointerException;"

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v10, Lcom/android/tools/r8/internal/kb;

    sget-object v11, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v10, v11}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v11, Lcom/android/tools/r8/internal/pa;

    sget-object v12, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v14, 0x1

    invoke-direct {v11, v12, v14}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v12, Lcom/android/tools/r8/internal/ga;

    .line 11
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v15, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v14, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v14}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    .line 12
    invoke-virtual {v0, v15, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v14

    .line 13
    const-string v15, "<init>"

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    .line 14
    invoke-virtual {v0, v8, v14, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    const/16 v14, 0xb7

    invoke-direct {v12, v14, v8, v6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v8, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    new-instance v14, Lcom/android/tools/r8/internal/G9;

    new-instance v15, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v18, v9

    move-object/from16 v16, v13

    const/4 v13, 0x1

    filled-new-array {v6, v13}, [I

    move-result-object v9

    .line 15
    sget v19, Lcom/android/tools/r8/internal/jy;->a:I

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v0

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/android/tools/r8/internal/jy;

    sget-object v19, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    aput-object v19, v13, v6

    const/4 v6, 0x1

    aput-object v0, v13, v6

    invoke-direct {v15, v9, v13}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v14, v15}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v13, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/bb;-><init>()V

    new-array v15, v6, [Lcom/android/tools/r8/internal/W9;

    const/4 v0, 0x0

    aput-object v2, v15, v0

    move-object v0, v1

    move-object v1, v4

    move-object v2, v7

    move-object v4, v5

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v9, v18

    move-object v10, v14

    move-object v11, v13

    move-object v12, v15

    .line 16
    invoke-static/range {v0 .. v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v14

    .line 17
    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v12, 0x3

    const/4 v13, 0x2

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    move-object v15, v0

    move-object/from16 v16, v0

    .line 18
    invoke-direct/range {v10 .. v16}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v17
.end method

.method public static d(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 2
    new-instance v5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 3
    new-instance v11, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 4
    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 5
    new-instance v19, Lcom/android/tools/r8/graph/G;

    move-object/from16 v3, p1

    iget-object v13, v3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v7, Lcom/android/tools/r8/internal/O9;

    sget-object v8, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v7, v8, v4, v5}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v8, Lcom/android/tools/r8/internal/pa;

    const/4 v9, 0x1

    invoke-direct {v8, v4, v9}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v10, Lcom/android/tools/r8/internal/O9;

    sget-object v12, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v10, v12, v4, v11}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v12, Lcom/android/tools/r8/internal/G9;

    new-instance v14, Lcom/android/tools/r8/internal/zF;

    filled-new-array {v6, v9}, [I

    move-result-object v15

    .line 6
    sget v16, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object v16, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    const/4 v9, 0x2

    move-object/from16 v17, v13

    new-array v13, v9, [Lcom/android/tools/r8/internal/jy;

    aput-object v16, v13, v6

    const/16 v18, 0x1

    aput-object v16, v13, v18

    invoke-direct {v14, v15, v13}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v12, v14}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v13, Lcom/android/tools/r8/internal/wa;

    .line 7
    const-string v14, "Ljava/lang/NullPointerException;"

    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v15, Lcom/android/tools/r8/internal/kb;

    sget-object v9, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v15, v9}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v9, Lcom/android/tools/r8/internal/ga;

    .line 8
    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    move-object/from16 v20, v11

    iget-object v11, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v21, v15

    new-array v15, v6, [Lcom/android/tools/r8/graph/M2;

    .line 9
    invoke-virtual {v0, v11, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v11

    .line 10
    const-string v15, "<init>"

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    .line 11
    invoke-virtual {v0, v14, v11, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/16 v11, 0xb7

    invoke-direct {v9, v11, v0, v6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v11, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/G9;

    new-instance v14, Lcom/android/tools/r8/internal/zF;

    move-object/from16 p0, v11

    const/4 v15, 0x1

    filled-new-array {v6, v15}, [I

    move-result-object v11

    move-object/from16 v22, v9

    const/4 v15, 0x2

    .line 12
    new-array v9, v15, [Lcom/android/tools/r8/internal/jy;

    aput-object v16, v9, v6

    const/4 v15, 0x1

    aput-object v16, v9, v15

    invoke-direct {v14, v11, v9}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v0, v14}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v9, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v9, v4, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v11, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v11, v4, v15}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v14, Lcom/android/tools/r8/internal/V8;

    sget-object v15, Lcom/android/tools/r8/internal/V8$a;->c:Lcom/android/tools/r8/internal/V8$a;

    sget-object v6, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v14, v15, v6}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    new-instance v6, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v6, v4}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    const/4 v4, 0x6

    new-array v15, v4, [Lcom/android/tools/r8/internal/W9;

    const/4 v4, 0x0

    aput-object v0, v15, v4

    const/4 v0, 0x1

    aput-object v9, v15, v0

    const/4 v0, 0x2

    aput-object v11, v15, v0

    const/4 v0, 0x3

    aput-object v14, v15, v0

    const/4 v0, 0x4

    aput-object v6, v15, v0

    const/4 v0, 0x5

    aput-object v2, v15, v0

    move-object v0, v1

    move-object v1, v3

    move-object v2, v7

    move-object v3, v8

    move-object v4, v10

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, p0

    move-object/from16 v11, v20

    move-object v12, v15

    .line 13
    invoke-static/range {v0 .. v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v16

    .line 14
    sget-object v18, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v14, 0x2

    const/4 v15, 0x2

    move-object/from16 v12, v19

    move-object/from16 v13, v17

    move-object/from16 v17, v18

    .line 15
    invoke-direct/range {v12 .. v18}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public static synthetic e(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Lu;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/android/tools/r8/internal/Lu;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 20

    move-object/from16 v0, p0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 7
    new-instance v8, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 9
    new-instance v16, Lcom/android/tools/r8/graph/G;

    move-object/from16 v4, p1

    iget-object v13, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v4, Lcom/android/tools/r8/internal/pa;

    sget-object v5, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v7, Lcom/android/tools/r8/internal/O9;

    sget-object v9, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v7, v9, v5, v8}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v9, Lcom/android/tools/r8/internal/wa;

    .line 10
    const-string v10, "Ljava/lang/NullPointerException;"

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v11, Lcom/android/tools/r8/internal/kb;

    sget-object v12, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v11, v12}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v12, Lcom/android/tools/r8/internal/ga;

    .line 11
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    iget-object v14, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v15, v6, [Lcom/android/tools/r8/graph/M2;

    .line 12
    invoke-virtual {v0, v14, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v14

    .line 13
    const-string v15, "<init>"

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    .line 14
    invoke-virtual {v0, v10, v14, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/16 v10, 0xb7

    invoke-direct {v12, v10, v0, v6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v10, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    new-instance v14, Lcom/android/tools/r8/internal/G9;

    new-instance v0, Lcom/android/tools/r8/internal/zF;

    filled-new-array {v6}, [I

    move-result-object v15

    .line 15
    sget v17, Lcom/android/tools/r8/internal/jy;->a:I

    const/4 v6, 0x1

    move-object/from16 v17, v13

    new-array v13, v6, [Lcom/android/tools/r8/internal/jy;

    sget-object v18, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    const/4 v6, 0x0

    aput-object v18, v13, v6

    invoke-direct {v0, v15, v13}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v14, v0}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v13, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v13, v5, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v15, Lcom/android/tools/r8/internal/z9;

    move-object/from16 v19, v13

    move-object/from16 v18, v14

    const-wide/16 v13, 0x1

    invoke-direct {v15, v13, v14, v5}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v0, Lcom/android/tools/r8/internal/V8;

    sget-object v6, Lcom/android/tools/r8/internal/V8$a;->c:Lcom/android/tools/r8/internal/V8$a;

    sget-object v13, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v0, v6, v13}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    new-instance v6, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    const/4 v5, 0x3

    new-array v13, v5, [Lcom/android/tools/r8/internal/W9;

    const/4 v5, 0x0

    aput-object v0, v13, v5

    const/4 v0, 0x1

    aput-object v6, v13, v0

    const/4 v0, 0x2

    aput-object v2, v13, v0

    move-object v0, v1

    move-object v1, v4

    move-object v2, v7

    move-object v4, v9

    move-object v5, v11

    move-object v6, v12

    move-object v7, v10

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object v11, v15

    move-object v12, v13

    .line 16
    invoke-static/range {v0 .. v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v13

    .line 17
    sget-object v15, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object v14, v15

    .line 18
    invoke-direct/range {v9 .. v15}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v16
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nl0;->b:Lcom/android/tools/r8/graph/H2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;
    .locals 10

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 20
    new-instance v4, Lcom/android/tools/r8/internal/AO0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/AO0;-><init>()V

    .line 21
    iget-object v5, p0, Lcom/android/tools/r8/internal/Ru;->a:Lcom/android/tools/r8/graph/H2;

    .line 22
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v7

    new-instance v8, Lcom/android/tools/r8/internal/BO0;

    invoke-direct {v8, p1, p4}, Lcom/android/tools/r8/internal/BO0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/M;)V

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v9

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    .line 25
    invoke-virtual/range {v1 .. v9}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/J5;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Nl0;->c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Nl0;->d(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Nl0;->e(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Nl0;->f(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Nl0;->g(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Nl0;->h(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Nl0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    const-string v1, "boxedOrdinalOrNull"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->a2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/xO0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/xO0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 4
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/tools/r8/internal/Nl0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    const-string v1, "checkNotZero"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/wO0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/wO0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 4
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/tools/r8/internal/Nl0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;
    .locals 5

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 17
    const-string v1, "checkNotZero"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/CO0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/CO0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 19
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/tools/r8/internal/Nl0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/J1;->g:Lcom/android/tools/r8/graph/A2;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/zO0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/zO0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 5
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/tools/r8/internal/Nl0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/J1;->i:Lcom/android/tools/r8/graph/A2;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/vO0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/vO0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 5
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/tools/r8/internal/Nl0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    const-string v1, "objects$equals"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/uO0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/uO0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 4
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/tools/r8/internal/Nl0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;
    .locals 4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/J1;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/yO0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/yO0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/tools/r8/internal/Nl0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/M;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method
