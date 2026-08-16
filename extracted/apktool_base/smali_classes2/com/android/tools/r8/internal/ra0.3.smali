.class public final Lcom/android/tools/r8/internal/ra0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/KD;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/KD;

.field public final b:Lcom/android/tools/r8/internal/La0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/KD;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/ra0;->a:Lcom/android/tools/r8/internal/KD;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Oa0;->h:Lcom/android/tools/r8/internal/La0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ra0;->b:Lcom/android/tools/r8/internal/La0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/H;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/U;
    .locals 9

    move-object v0, p0

    move-object v2, p1

    iget-object v1, v0, Lcom/android/tools/r8/internal/ra0;->b:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v1, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    if-eq v3, v4, :cond_0

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v1, :cond_1

    :cond_0
    instance-of v1, v2, Lcom/android/tools/r8/internal/hK;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/tools/r8/ir/optimize/U;->b:Lcom/android/tools/r8/ir/optimize/U;

    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/ra0;->b:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/tools/r8/internal/ra0;->b:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/La0;->b(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/ra0;->a:Lcom/android/tools/r8/internal/KD;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/tools/r8/internal/KD;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/H;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/U;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/ra0;->b:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/tools/r8/internal/ra0;->b:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->C:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/tools/r8/ir/optimize/U;->f:Lcom/android/tools/r8/ir/optimize/U;

    return-object v1

    :cond_4
    iget-object v1, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/android/tools/r8/ir/optimize/U;->f:Lcom/android/tools/r8/ir/optimize/U;

    return-object v1

    :cond_5
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/tools/r8/internal/Mo0;

    if-nez v2, :cond_6

    sget-object v1, Lcom/android/tools/r8/ir/optimize/U;->f:Lcom/android/tools/r8/ir/optimize/U;

    return-object v1

    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/ra0;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v3, v2, Lcom/android/tools/r8/internal/La0;->u:Lcom/android/tools/r8/internal/Ka0;

    iget-object v4, v3, Lcom/android/tools/r8/internal/Ka0;->b:Lcom/android/tools/r8/graph/l1;

    if-eq v1, v4, :cond_a

    iget-object v4, v3, Lcom/android/tools/r8/internal/Ka0;->c:Lcom/android/tools/r8/graph/l1;

    if-eq v1, v4, :cond_a

    iget-object v4, v3, Lcom/android/tools/r8/internal/Ka0;->e:Lcom/android/tools/r8/graph/l1;

    if-eq v1, v4, :cond_a

    iget-object v4, v3, Lcom/android/tools/r8/internal/Ka0;->f:Lcom/android/tools/r8/graph/l1;

    if-eq v1, v4, :cond_a

    iget-object v4, v3, Lcom/android/tools/r8/internal/Ka0;->g:Lcom/android/tools/r8/graph/l1;

    if-ne v1, v4, :cond_7

    goto :goto_2

    :cond_7
    sget-boolean v4, Lcom/android/tools/r8/internal/ra0;->c:Z

    if-nez v4, :cond_9

    iget-object v4, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v2, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    if-ne v4, v2, :cond_9

    iget-object v2, v3, Lcom/android/tools/r8/internal/Ka0;->a:Lcom/android/tools/r8/graph/l1;

    if-eq v1, v2, :cond_9

    iget-object v2, v3, Lcom/android/tools/r8/internal/Ka0;->d:Lcom/android/tools/r8/graph/l1;

    if-ne v1, v2, :cond_8

    goto :goto_1

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_9
    :goto_1
    sget-object v1, Lcom/android/tools/r8/ir/optimize/U;->f:Lcom/android/tools/r8/ir/optimize/U;

    return-object v1

    :cond_a
    :goto_2
    sget-object v1, Lcom/android/tools/r8/ir/optimize/U;->b:Lcom/android/tools/r8/ir/optimize/U;

    return-object v1
.end method
