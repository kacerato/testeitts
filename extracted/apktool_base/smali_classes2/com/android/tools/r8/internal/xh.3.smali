.class public final Lcom/android/tools/r8/internal/xh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/Ah;

.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:I

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:Lcom/android/tools/r8/graph/A2;

.field public final g:Z

.field public h:Lcom/android/tools/r8/graph/H2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/u9;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/tools/r8/internal/xh;->h:Lcom/android/tools/r8/graph/H2;

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    iput-object v2, v0, Lcom/android/tools/r8/internal/xh;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, v3, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    iput-object v5, v0, Lcom/android/tools/r8/internal/xh;->b:Lcom/android/tools/r8/internal/Ah;

    iget-object v6, v1, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v7, v5, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    const-string v8, "CONST"

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v6

    iget-object v7, v1, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v4, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    const-string v9, "INITIALIZED"

    invoke-virtual {v4, v9}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    iget-object v8, v1, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v3, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    const/4 v9, 0x0

    new-array v10, v9, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v3, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    const-string v10, "get"

    invoke-virtual {v4, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v4, v8, v3, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/xh;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v8, v5, Lcom/android/tools/r8/internal/Ah;->e:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    iput-object v10, v0, Lcom/android/tools/r8/internal/xh;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v11

    iget-boolean v12, v8, Lcom/android/tools/r8/graph/C2;->g:Z

    invoke-virtual {v11, v10, v12}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v12

    iget-boolean v13, v8, Lcom/android/tools/r8/graph/C2;->g:Z

    if-eqz v13, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/nJ;->Q()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v10, v8, v4}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    iput-object v8, v0, Lcom/android/tools/r8/internal/xh;->e:Lcom/android/tools/r8/graph/A2;

    iput-boolean v9, v0, Lcom/android/tools/r8/internal/xh;->g:Z

    goto :goto_1

    :cond_0
    sget-boolean v13, Lcom/android/tools/r8/internal/xh;->i:Z

    if-nez v13, :cond_2

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/Z4;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    if-ne v10, v11, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    :goto_0
    iget-boolean v8, v8, Lcom/android/tools/r8/graph/C2;->g:Z

    iput-boolean v8, v0, Lcom/android/tools/r8/internal/xh;->g:Z

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    sget-object v8, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v2, v8}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/tools/r8/internal/xh;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v8, v0, Lcom/android/tools/r8/internal/xh;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v10, v4, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v11, v4, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v12, v4, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v10, v11, v12}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    iget-object v10, v0, Lcom/android/tools/r8/internal/xh;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v4, v2, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/internal/xh;->f:Lcom/android/tools/r8/graph/A2;

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/android/tools/r8/internal/xh;->e:Lcom/android/tools/r8/graph/A2;

    iput-object v2, v0, Lcom/android/tools/r8/internal/xh;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->A()V

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->w()V

    :goto_2
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/tools/r8/internal/xh;->d:I

    sget-object v4, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    new-instance v4, Lcom/android/tools/r8/graph/g1$a;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v4

    const/16 v8, 0x100a

    invoke-static {v8}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v10

    iput-object v10, v4, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v4

    new-instance v10, Lcom/android/tools/r8/graph/g1$a;

    invoke-direct {v10, v2}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    invoke-virtual {v10, v6}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v10

    invoke-static {v8}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v8

    iput-object v8, v10, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v4

    iget-object v8, v1, Lcom/android/tools/r8/synthesis/m;->m:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, v1, Lcom/android/tools/r8/synthesis/m;->m:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    const/16 v4, 0x1009

    invoke-static {v4, v9}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    sget-object v16, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    new-instance v4, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/eC;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v11, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v12, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v13, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v14, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v15, Lcom/android/tools/r8/internal/vb;

    invoke-direct {v15, v7}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v4, v15}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v15, Lcom/android/tools/r8/internal/O9;

    sget-object v2, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    sget-object v9, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v15, v2, v9, v8}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v4, v15}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v15, Lcom/android/tools/r8/internal/t9;

    move-object/from16 p3, v3

    iget-object v3, v1, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v17, v14

    const/4 v14, 0x0

    invoke-direct {v15, v3, v14}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    invoke-virtual {v4, v15}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v3, Lcom/android/tools/r8/internal/kb;

    sget-object v15, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v3, v15}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v3, Lcom/android/tools/r8/internal/yb;

    sget-object v15, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v3, v15, v14}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v3, Lcom/android/tools/r8/internal/sa;

    sget-object v14, Lcom/android/tools/r8/internal/XX;->b:Lcom/android/tools/r8/internal/XX;

    invoke-direct {v3, v14}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v4, v11}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v3, Lcom/android/tools/r8/internal/vb;

    invoke-direct {v3, v7}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v3, Lcom/android/tools/r8/internal/O9;

    invoke-direct {v3, v2, v9, v10}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    sget-boolean v2, Lcom/android/tools/r8/internal/xh;->i:Z

    if-nez v2, :cond_5

    iget-object v2, v5, Lcom/android/tools/r8/internal/Ah;->e:Lcom/android/tools/r8/graph/C2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    :goto_3
    new-instance v2, Lcom/android/tools/r8/internal/x9;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/x9;-><init>()V

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v2, Lcom/android/tools/r8/internal/A9;

    iget-object v3, v5, Lcom/android/tools/r8/internal/Ah;->c:Lcom/android/tools/r8/graph/L2;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v2, Lcom/android/tools/r8/internal/t9;

    iget-object v3, v5, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    const/4 v14, 0x0

    invoke-direct {v2, v3, v14}, Lcom/android/tools/r8/internal/t9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v2, Lcom/android/tools/r8/internal/ga;

    iget-object v3, v0, Lcom/android/tools/r8/internal/xh;->f:Lcom/android/tools/r8/graph/A2;

    iget-boolean v14, v0, Lcom/android/tools/r8/internal/xh;->g:Z

    const/16 v0, 0xb8

    invoke-direct {v2, v0, v3, v14}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v0, Lcom/android/tools/r8/internal/i9;

    iget-object v2, v5, Lcom/android/tools/r8/internal/Ah;->d:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v0, Lcom/android/tools/r8/internal/wb;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/internal/wb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v0, Lcom/android/tools/r8/internal/z9;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, v9}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v0, Lcom/android/tools/r8/internal/wb;

    invoke-direct {v0, v7}, Lcom/android/tools/r8/internal/wb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v4, v10}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v0

    iget-object v2, v1, Lcom/android/tools/r8/synthesis/m;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v2}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v0, Lcom/android/tools/r8/internal/pa;

    const/4 v2, 0x0

    invoke-direct {v0, v15, v2}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v0, Lcom/android/tools/r8/internal/sa;

    sget-object v2, Lcom/android/tools/r8/internal/XX;->c:Lcom/android/tools/r8/internal/XX;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v4, v12}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v0, Lcom/android/tools/r8/internal/M9;

    invoke-direct {v0, v8}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v4, v13}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-static {}, Lcom/android/tools/r8/internal/G9;->V()Lcom/android/tools/r8/internal/G9$a;

    move-result-object v0

    iget-object v3, v1, Lcom/android/tools/r8/synthesis/m;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/jy;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v0

    iget-object v3, v1, Lcom/android/tools/r8/synthesis/m;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/G9$a;->a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/G9$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v0, Lcom/android/tools/r8/internal/yb;

    const/4 v3, 0x1

    invoke-direct {v0, v15, v3}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v0, Lcom/android/tools/r8/internal/pa;

    const/4 v5, 0x0

    invoke-direct {v0, v15, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v0, Lcom/android/tools/r8/internal/sa;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v2, v15, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v2, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v2, Lcom/android/tools/r8/internal/G9;

    sget-object v3, Lcom/android/tools/r8/internal/lG;->a:Lcom/android/tools/r8/internal/kG;

    sget-object v5, Lcom/android/tools/r8/internal/G9;->e:Lcom/android/tools/r8/internal/YB;

    invoke-direct {v2, v3, v5}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/jG;Ljava/util/Deque;)V

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v2, Lcom/android/tools/r8/internal/vb;

    invoke-direct {v2, v6}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v2, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v2, v15}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    new-instance v2, Lcom/android/tools/r8/internal/Db;

    iget-object v3, v1, Lcom/android/tools/r8/synthesis/m;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    new-instance v5, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, v13}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v11, v12, v5, v3}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    new-instance v3, Lcom/android/tools/r8/internal/Db;

    iget-object v5, v1, Lcom/android/tools/r8/synthesis/m;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    new-instance v6, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v5, v13}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v13, v0, v6, v5}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v15

    new-instance v0, Lcom/android/tools/r8/graph/G;

    iget-object v11, v1, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v14

    const/4 v12, 0x3

    const/4 v13, 0x2

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/synthesis/m;

    return-void

    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    invoke-virtual {v11, v0, v2, v1}, Lcom/android/tools/r8/graph/Z4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    :goto_4
    move-object/from16 v1, p0

    goto :goto_5

    :cond_7
    const/4 v0, 0x3

    goto :goto_4

    :goto_5
    iput v0, v1, Lcom/android/tools/r8/internal/xh;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/internal/xh;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->T5:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/xh;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/i0;
    .locals 10

    .line 36
    sget-boolean v0, Lcom/android/tools/r8/internal/xh;->i:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/xh;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1

    .line 39
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/Hy1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Hy1;-><init>(Lcom/android/tools/r8/internal/xh;)V

    .line 41
    invoke-static {v1, v2, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v1

    if-eq v1, v7, :cond_3

    .line 43
    new-instance v1, Lcom/android/tools/r8/graph/G;

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 45
    iget v5, v0, Lcom/android/tools/r8/graph/G;->g:I

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->G0()I

    move-result v6

    .line 47
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object v8

    .line 48
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->F0()Ljava/util/List;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_3
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/u9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/Sm0;
    .locals 3

    .line 20
    sget-boolean v0, Lcom/android/tools/r8/internal/xh;->i:Z

    if-nez v0, :cond_1

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/u9;->c:Lcom/android/tools/r8/internal/Ah;

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/xh;->b:Lcom/android/tools/r8/internal/Ah;

    .line 23
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/internal/xh;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xb8

    if-ne p1, v0, :cond_2

    .line 26
    new-instance p1, Lcom/android/tools/r8/internal/ga;

    iget-object p2, p0, Lcom/android/tools/r8/internal/xh;->c:Lcom/android/tools/r8/graph/A2;

    invoke-direct {p1, v2, p2, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    sget p2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 27
    new-instance p2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p2

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 28
    new-instance p1, Lcom/android/tools/r8/internal/Cj1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Cj1;-><init>()V

    goto :goto_1

    .line 29
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Dj1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Dj1;-><init>()V

    .line 30
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/xh;->a:Lcom/android/tools/r8/graph/y;

    .line 31
    invoke-interface {p1, v0, p2, p3}, Lcom/android/tools/r8/ir/optimize/K0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/N0;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;

    move-result-object p1

    .line 32
    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/L0;->a:Lcom/android/tools/r8/graph/H5;

    .line 33
    new-instance p2, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-direct {p2, v2, p1, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    sget p1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 34
    new-instance p1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/W9;
    .locals 1

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->g()Lcom/android/tools/r8/internal/G9;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Iy1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Iy1;-><init>(Lcom/android/tools/r8/internal/xh;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/G9;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/G9;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yh;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/xh;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/internal/xh;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/xh;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xh;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xh;->e:Lcom/android/tools/r8/graph/A2;

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/xh;->e:Lcom/android/tools/r8/graph/A2;

    new-instance v3, Lcom/android/tools/r8/internal/Jy1;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/Jy1;-><init>(Lcom/android/tools/r8/internal/xh;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v4, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v4, v1, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 10
    sget-boolean v2, Lcom/android/tools/r8/internal/xh;->i:Z

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/xh;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 11
    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 12
    instance-of v3, v3, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v2, :cond_4

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/xh;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/xh;->e:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/internal/yh;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_2

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/xh;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 18
    :goto_2
    sget-boolean p1, Lcom/android/tools/r8/internal/xh;->i:Z

    if-nez p1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez p1, :cond_9

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->p1()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 3

    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    new-instance v1, Lcom/android/tools/r8/graph/L4;

    iget v2, v0, Lcom/android/tools/r8/graph/g;->b:I

    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->A()V

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->w()V

    new-instance v0, Lcom/android/tools/r8/graph/j1$a;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/xh;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->g:Lcom/android/tools/r8/graph/z5;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xh;->a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    iget-object v1, p1, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/xh;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method
