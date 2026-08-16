.class public Li5/b$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LO8/a;

.field public final synthetic c:Li5/b;


# direct methods
.method public constructor <init>(Li5/b;LO8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$brush"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Li5/b$k;->c:Li5/b;

    iput-object p2, p0, Li5/b$k;->b:LO8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v1}, Li5/b;->Y(Li5/b;)LIb/c;

    move-result-object v1

    new-instance v2, Laa/c;

    iget-object v3, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v3}, Li5/b;->I(Li5/b;)Laa/d;

    move-result-object v3

    invoke-direct {v2, v3}, Laa/c;-><init>(Laa/d;)V

    sget-object v3, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {v1, v2, v3}, LIb/c;->a(Laa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v4, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v4}, Li5/b;->b0(Li5/b;)LBb/b;

    move-result-object v4

    invoke-virtual {v4}, LBb/b;->p()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget-object v5, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v5}, Li5/b;->b0(Li5/b;)LBb/b;

    move-result-object v5

    invoke-virtual {v5}, LBb/b;->l()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v5}, Li5/b;->b0(Li5/b;)LBb/b;

    move-result-object v5

    invoke-virtual {v5}, LBb/b;->l()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v4, 0x1

    sub-int/2addr v5, v4

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-static {v6}, LNc/b;->d0(F)F

    move-result v7

    invoke-static {v6}, LNc/b;->m1(F)F

    move-result v6

    iget-object v8, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v8}, Li5/b;->d0(Li5/b;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v9}, Li5/b;->f0(Li5/b;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget-object v9, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v9}, Li5/b;->h0(Li5/b;)LBb/b;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-eqz v9, :cond_2

    iget-object v9, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v9}, Li5/b;->Y(Li5/b;)LIb/c;

    move-result-object v9

    new-instance v13, Laa/c;

    iget-object v14, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v14}, Li5/b;->j0(Li5/b;)Laa/d;

    move-result-object v14

    invoke-direct {v13, v14}, Laa/c;-><init>(Laa/d;)V

    invoke-virtual {v9, v13, v3}, LIb/c;->a(Laa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v9

    iget v9, v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {v1}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v13

    iget v13, v13, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v9, v13

    invoke-static {v9}, LNc/b;->k(F)F

    move-result v9

    invoke-virtual {v3}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {v1}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v13

    iget v13, v13, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v3, v13

    invoke-static {v3}, LNc/b;->k(F)F

    move-result v3

    cmpl-float v3, v9, v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v12

    :goto_0
    iget-object v3, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v3}, Li5/b;->k0(Li5/b;)Li5/b$p;

    move-result-object v3

    sget-object v9, Li5/b$p;->Grid:Li5/b$p;

    if-ne v3, v9, :cond_1

    invoke-virtual {v1}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {v1}, Laa/a;->p()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget-object v9, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v9}, Li5/b;->b0(Li5/b;)LBb/b;

    move-result-object v9

    invoke-virtual {v9}, LBb/b;->p()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v10}, Li5/b;->f0(Li5/b;)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget-object v10, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v10}, Li5/b;->b0(Li5/b;)LBb/b;

    move-result-object v10

    invoke-virtual {v10}, LBb/b;->l()I

    move-result v10

    int-to-float v10, v10

    iget-object v12, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v12}, Li5/b;->f0(Li5/b;)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v10, v12

    div-float v9, v11, v9

    div-float v10, v11, v10

    div-float/2addr v3, v9

    float-to-int v9, v3

    int-to-float v9, v9

    sub-float/2addr v3, v9

    div-float/2addr v1, v10

    float-to-int v9, v1

    int-to-float v9, v9

    sub-float v10, v1, v9

    move v12, v4

    move v1, v10

    move v10, v3

    goto :goto_1

    :cond_1
    move v12, v4

    :cond_2
    move v1, v10

    :goto_1
    iget-object v3, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v3}, Li5/b;->d0(Li5/b;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v9}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    new-instance v13, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v13}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    sub-int v14, v2, v3

    move v15, v14

    :goto_2
    add-int v11, v2, v3

    if-ge v15, v11, :cond_9

    sub-int v11, v5, v3

    move/from16 v16, v2

    move-object/from16 v17, v4

    move v2, v11

    :goto_3
    add-int v4, v5, v3

    if-ge v2, v4, :cond_8

    if-ltz v15, :cond_7

    iget-object v4, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v4}, Li5/b;->b0(Li5/b;)LBb/b;

    move-result-object v4

    invoke-virtual {v4}, LBb/b;->p()I

    move-result v4

    if-ge v15, v4, :cond_7

    if-ltz v2, :cond_7

    iget-object v4, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v4}, Li5/b;->b0(Li5/b;)LBb/b;

    move-result-object v4

    invoke-virtual {v4}, LBb/b;->l()I

    move-result v4

    if-ge v2, v4, :cond_7

    sub-int v4, v15, v14

    int-to-float v4, v4

    move/from16 v18, v5

    mul-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v19, v3

    sub-int v3, v2, v11

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget-object v5, v0, Li5/b$k;->b:LO8/a;

    invoke-virtual {v5, v4, v3}, LO8/a;->c(FF)F

    move-result v5

    move/from16 v20, v11

    iget-object v11, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v11}, Li5/b;->m0(Li5/b;)F

    move-result v11

    mul-float/2addr v5, v11

    iget-object v11, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v11}, Li5/b;->h0(Li5/b;)LBb/b;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v11, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v11}, Li5/b;->k0(Li5/b;)Li5/b$p;

    move-result-object v11

    move/from16 v21, v14

    sget-object v14, Li5/b$p;->Grid:Li5/b$p;

    if-ne v11, v14, :cond_4

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v4, v11

    mul-float/2addr v4, v8

    add-float/2addr v4, v10

    sub-float/2addr v3, v11

    mul-float/2addr v3, v8

    sub-float v3, v1, v3

    if-eqz v12, :cond_3

    mul-float v11, v4, v7

    mul-float v14, v3, v6

    sub-float/2addr v11, v14

    mul-float/2addr v4, v6

    mul-float/2addr v3, v7

    add-float/2addr v3, v4

    move v4, v11

    :cond_3
    iget-object v11, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v11}, Li5/b;->h0(Li5/b;)LBb/b;

    move-result-object v11

    invoke-virtual {v11, v4, v3, v13}, LBb/b;->m(FFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_4

    :cond_4
    if-eqz v12, :cond_5

    mul-float v11, v4, v7

    mul-float v14, v3, v6

    sub-float/2addr v11, v14

    mul-float/2addr v4, v6

    mul-float/2addr v3, v7

    add-float/2addr v3, v4

    move v4, v11

    :cond_5
    iget-object v11, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v11}, Li5/b;->h0(Li5/b;)LBb/b;

    move-result-object v11

    invoke-virtual {v11, v4, v3, v13}, LBb/b;->m(FFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_4

    :cond_6
    move/from16 v21, v14

    :goto_4
    iget-object v3, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v3}, Li5/b;->b0(Li5/b;)LBb/b;

    move-result-object v3

    invoke-virtual {v3, v15, v2, v9}, LBb/b;->h(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v3, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v3}, Li5/b;->J(Li5/b;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v3

    move-object/from16 v4, v17

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v4, v13}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->H(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v11, v3, v5

    invoke-virtual {v4, v9, v11}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->i(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)V

    iget-object v5, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v5}, Li5/b;->b0(Li5/b;)LBb/b;

    move-result-object v5

    invoke-virtual {v5, v15, v2, v4}, LBb/b;->t(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_5

    :cond_7
    move/from16 v19, v3

    move/from16 v18, v5

    move/from16 v20, v11

    move/from16 v21, v14

    move-object/from16 v4, v17

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v17, v4

    move/from16 v5, v18

    move/from16 v3, v19

    move/from16 v11, v20

    move/from16 v14, v21

    goto/16 :goto_3

    :cond_8
    move/from16 v19, v3

    move/from16 v18, v5

    move/from16 v21, v14

    move-object/from16 v4, v17

    const/high16 v3, 0x3f800000    # 1.0f

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v16

    move/from16 v3, v19

    goto/16 :goto_2

    :cond_9
    iget-object v1, v0, Li5/b$k;->c:Li5/b;

    invoke-static {v1}, Li5/b;->b0(Li5/b;)LBb/b;

    move-result-object v1

    invoke-virtual {v1}, LBb/b;->c()V

    :cond_a
    return-void
.end method
