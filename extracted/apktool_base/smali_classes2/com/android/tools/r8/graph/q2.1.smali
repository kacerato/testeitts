.class public final Lcom/android/tools/r8/graph/q2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic w:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Lcom/android/tools/r8/graph/A2;

.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:Lcom/android/tools/r8/graph/A2;

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:Lcom/android/tools/r8/graph/A2;

.field public final g:Lcom/android/tools/r8/graph/A2;

.field public final h:Lcom/android/tools/r8/graph/A2;

.field public final i:Lcom/android/tools/r8/graph/A2;

.field public final j:Lcom/android/tools/r8/graph/A2;

.field public final k:Lcom/android/tools/r8/graph/A2;

.field public final l:Lcom/android/tools/r8/graph/A2;

.field public final m:Lcom/android/tools/r8/graph/A2;

.field public final n:Lcom/android/tools/r8/graph/A2;

.field public final o:Lcom/android/tools/r8/graph/A2;

.field public final p:Lcom/android/tools/r8/graph/A2;

.field public final q:Lcom/android/tools/r8/graph/A2;

.field public final r:Lcom/android/tools/r8/graph/A2;

.field public final s:Lcom/android/tools/r8/internal/QC;

.field public final t:Lcom/android/tools/r8/internal/QC;

.field public final u:Lcom/android/tools/r8/internal/QC;

.field public final synthetic v:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/android/tools/r8/graph/q2;->v:Lcom/android/tools/r8/graph/u1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "append"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    iput-object v4, v0, Lcom/android/tools/r8/graph/q2;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    iput-object v12, v0, Lcom/android/tools/r8/graph/q2;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->P1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/graph/q2;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->P1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    iput-object v8, v0, Lcom/android/tools/r8/graph/q2;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    iput-object v9, v0, Lcom/android/tools/r8/graph/q2;->e:Lcom/android/tools/r8/graph/A2;

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5, v6, v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    iput-object v10, v0, Lcom/android/tools/r8/graph/q2;->f:Lcom/android/tools/r8/graph/A2;

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    iput-object v11, v0, Lcom/android/tools/r8/graph/q2;->g:Lcom/android/tools/r8/graph/A2;

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    iput-object v6, v0, Lcom/android/tools/r8/graph/q2;->h:Lcom/android/tools/r8/graph/A2;

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    iput-object v5, v0, Lcom/android/tools/r8/graph/q2;->i:Lcom/android/tools/r8/graph/A2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v1, v2, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    invoke-virtual {v1, v2, v13, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v15

    iput-object v15, v0, Lcom/android/tools/r8/graph/q2;->j:Lcom/android/tools/r8/graph/A2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v1, v2, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    invoke-virtual {v1, v2, v13, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v14

    iput-object v14, v0, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v1, v2, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    invoke-virtual {v1, v2, v13, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v13

    iput-object v13, v0, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    move-object/from16 v16, v13

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->G2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v1, v2, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    invoke-virtual {v1, v2, v13, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v19

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    const/4 v13, 0x0

    move-object/from16 v17, v14

    new-array v14, v13, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v3, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    const-string v14, "capacity"

    invoke-virtual {v1, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v14

    invoke-virtual {v1, v2, v3, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/graph/q2;->m:Lcom/android/tools/r8/graph/A2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->e2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v14}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    invoke-virtual {v1, v3, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2, v3, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/graph/q2;->n:Lcom/android/tools/r8/graph/A2;

    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v18, v15

    new-array v15, v13, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v14, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v14

    iget-object v15, v1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2, v14, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v15

    iput-object v15, v0, Lcom/android/tools/r8/graph/q2;->o:Lcom/android/tools/r8/graph/A2;

    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v1, v14, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2, v13, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v14

    iput-object v14, v0, Lcom/android/tools/r8/graph/q2;->p:Lcom/android/tools/r8/graph/A2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v21, v14

    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v14}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    iget-object v14, v1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2, v13, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v14

    iput-object v14, v0, Lcom/android/tools/r8/graph/q2;->q:Lcom/android/tools/r8/graph/A2;

    iget-object v13, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v22, v14

    move-object/from16 v20, v15

    const/4 v14, 0x0

    new-array v15, v14, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v13, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    iget-object v15, v1, Lcom/android/tools/r8/graph/u1;->m0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2, v13, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/q2;->r:Lcom/android/tools/r8/graph/A2;

    move v2, v14

    move-object/from16 v1, v16

    move-object v13, v11

    move-object/from16 v15, v21

    move-object/from16 v23, v22

    move-object v14, v6

    move-object/from16 v25, v15

    move-object/from16 v24, v20

    move-object/from16 v20, v18

    move-object v15, v5

    move-object/from16 v16, v20

    move-object/from16 v18, v1

    filled-new-array/range {v13 .. v19}, [Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    move-object v13, v5

    move-object v5, v4

    move-object v6, v12

    move-object v15, v11

    move-object v11, v1

    invoke-static/range {v5 .. v11}, Lcom/android/tools/r8/internal/QC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/q2;->s:Lcom/android/tools/r8/internal/QC;

    new-array v11, v2, [Lcom/android/tools/r8/graph/A2;

    move-object v7, v15

    move-object v8, v14

    move-object v9, v13

    move-object/from16 v10, v20

    invoke-static/range {v5 .. v11}, Lcom/android/tools/r8/internal/QC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/q2;->t:Lcom/android/tools/r8/internal/QC;

    move-object/from16 v4, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    filled-new-array {v3, v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v2, v1}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/q2;->u:Lcom/android/tools/r8/internal/QC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/graph/q2;->o:Lcom/android/tools/r8/graph/A2;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/q2;->n:Lcom/android/tools/r8/graph/A2;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/graph/q2;->v:Lcom/android/tools/r8/graph/u1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/graph/q2;->p:Lcom/android/tools/r8/graph/A2;

    if-ne p1, v0, :cond_4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->G()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->v()Lcom/android/tools/r8/internal/kU;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kU;->b()J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-ltz p1, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/graph/q2;->q:Lcom/android/tools/r8/graph/A2;

    if-ne p1, v0, :cond_5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_5
    sget-boolean p2, Lcom/android/tools/r8/graph/q2;->w:Z

    if-eqz p2, :cond_6

    return v2

    :cond_6
    new-instance p2, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected invoke targeting `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
