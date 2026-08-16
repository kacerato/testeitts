.class public final Lcom/android/tools/r8/graph/G1;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field public final o:Lcom/android/tools/r8/internal/QC;

.field public final p:Lcom/android/tools/r8/internal/QC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->y2:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v3, "getClassLoader"

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/G1;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->x2:Lcom/android/tools/r8/graph/M2;

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "getPackage"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/G1;->m:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->y0:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->w:Lcom/android/tools/r8/graph/L2;

    sget-object v3, Lcom/android/tools/r8/graph/L2;->g:[Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/G1;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->z0:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/G1;->b:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->z0:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->w:Lcom/android/tools/r8/graph/L2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->T0:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v2, v4, v5}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/G1;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->A0:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/G1;->e:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->B0:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v1, v2, v4, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/graph/G1;->f:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->C0:Lcom/android/tools/r8/graph/L2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/graph/G1;->g:Lcom/android/tools/r8/graph/A2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->D0:Lcom/android/tools/r8/graph/L2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v4, v5, v6, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    iput-object v4, p0, Lcom/android/tools/r8/graph/G1;->h:Lcom/android/tools/r8/graph/A2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->z2:Lcom/android/tools/r8/graph/M2;

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->m2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    const-string v7, "getConstructor"

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    iput-object v5, p0, Lcom/android/tools/r8/graph/G1;->i:Lcom/android/tools/r8/graph/A2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->E0:Lcom/android/tools/r8/graph/L2;

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->V0:Lcom/android/tools/r8/graph/L2;

    iget-object v8, p1, Lcom/android/tools/r8/graph/u1;->U0:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v8}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    iput-object v5, p0, Lcom/android/tools/r8/graph/G1;->j:Lcom/android/tools/r8/graph/A2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->F0:Lcom/android/tools/r8/graph/L2;

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->W0:Lcom/android/tools/r8/graph/L2;

    iget-object v8, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v8}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->G0:Lcom/android/tools/r8/graph/L2;

    iget-object v8, p1, Lcom/android/tools/r8/graph/u1;->W0:Lcom/android/tools/r8/graph/L2;

    iget-object v9, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v9}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    iget-object v7, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v8, p1, Lcom/android/tools/r8/graph/u1;->H0:Lcom/android/tools/r8/graph/L2;

    iget-object v9, p1, Lcom/android/tools/r8/graph/u1;->X0:Lcom/android/tools/r8/graph/L2;

    iget-object v10, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    iget-object v11, p1, Lcom/android/tools/r8/graph/u1;->U0:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v10, v11}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    iput-object v7, p0, Lcom/android/tools/r8/graph/G1;->k:Lcom/android/tools/r8/graph/A2;

    iget-object v8, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v9, p1, Lcom/android/tools/r8/graph/u1;->I0:Lcom/android/tools/r8/graph/L2;

    iget-object v10, p1, Lcom/android/tools/r8/graph/u1;->X0:Lcom/android/tools/r8/graph/L2;

    iget-object v11, p1, Lcom/android/tools/r8/graph/u1;->P0:Lcom/android/tools/r8/graph/L2;

    iget-object v12, p1, Lcom/android/tools/r8/graph/u1;->U0:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v11, v12}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    invoke-virtual {p1, v8, v9, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    iput-object v8, p0, Lcom/android/tools/r8/graph/G1;->l:Lcom/android/tools/r8/graph/A2;

    iget-object v9, p1, Lcom/android/tools/r8/graph/u1;->S0:Lcom/android/tools/r8/graph/L2;

    iget-object v10, p1, Lcom/android/tools/r8/graph/u1;->J0:Lcom/android/tools/r8/graph/L2;

    iget-object v11, p1, Lcom/android/tools/r8/graph/u1;->Q0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, v9, v10, v11, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/G1;->n:Lcom/android/tools/r8/graph/A2;

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x4

    invoke-static {v3, v3, p1}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/G1;->o:Lcom/android/tools/r8/internal/QC;

    filled-new-array {v0, v1, v2, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v3, p1}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/G1;->p:Lcom/android/tools/r8/internal/QC;

    return-void
.end method
