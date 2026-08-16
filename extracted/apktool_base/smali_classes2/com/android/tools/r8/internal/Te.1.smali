.class public abstract Lcom/android/tools/r8/internal/Te;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/G;
    .locals 14

    move-object v0, p0

    move/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v2, 0x4

    sget v4, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v4, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/eC;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/z9;

    int-to-long v6, v3

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v6, Lcom/android/tools/r8/internal/xa;

    iget-object v7, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/xa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    const/4 v7, 0x2

    new-array v8, v7, [Lcom/android/tools/r8/internal/W9;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v6, v8, v5

    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    move v6, v9

    :goto_0
    if-ge v6, v3, :cond_0

    new-instance v8, Lcom/android/tools/r8/internal/kb;

    sget-object v10, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v8, v10}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v10, Lcom/android/tools/r8/internal/z9;

    int-to-long v11, v6

    sget-object v13, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v10, v11, v12, v13}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v11, Lcom/android/tools/r8/internal/pa;

    sget-object v12, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v11, v12, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v12, Lcom/android/tools/r8/internal/Z8;

    sget-object v13, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    invoke-direct {v12, v13}, Lcom/android/tools/r8/internal/Z8;-><init>(Lcom/android/tools/r8/internal/YV;)V

    new-array v13, v2, [Lcom/android/tools/r8/internal/W9;

    aput-object v8, v13, v9

    aput-object v10, v13, v5

    aput-object v11, v13, v7

    const/4 v8, 0x3

    aput-object v12, v13, v8

    invoke-static {v2, v13}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v4, v2, v13}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    add-int/2addr v6, v5

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/ga;

    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->Q:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p0, v1, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/16 v1, 0xb8

    invoke-direct {v2, v1, v0, v9}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v0, Lcom/android/tools/r8/internal/ab;

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    new-array v1, v7, [Lcom/android/tools/r8/internal/W9;

    aput-object v2, v1, v9

    aput-object v0, v1, v5

    invoke-static {v7, v1}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v4, v7, v1}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    new-instance v7, Lcom/android/tools/r8/graph/G;

    move-object v0, p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v4

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x4

    move-object v0, v7

    move/from16 v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method
