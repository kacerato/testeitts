.class public Lj5/b$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/b$i;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj5/b$i;


# direct methods
.method public constructor <init>(Lj5/b$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lj5/b$i$a;->b:Lj5/b$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/high16 v0, 0x3fc00000    # 1.5f

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Laa/e;

    invoke-direct {v2}, Laa/e;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Laa/e;->o(Z)V

    invoke-virtual {v2, v3}, Laa/e;->n(Z)V

    new-instance v3, Laa/c;

    new-instance v4, Laa/d;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v6, v6, Lj5/b$i;->a:Lj5/b;

    invoke-static {v6}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v6

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v6, v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v7, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v7, v7, Lj5/b$i;->a:Lj5/b;

    invoke-static {v7}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    iget-object v8, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v8, v8, Lj5/b$i;->a:Lj5/b;

    invoke-static {v8}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v8

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x0()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v8, v8, Lj5/b$i;->a:Lj5/b;

    invoke-static {v8}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v8

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v8, v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v5, v6, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v6, v1, v7, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v4, v5, v6}, Laa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v3, v4}, Laa/c;-><init>(Laa/d;)V

    invoke-virtual {v2, v3}, Laa/e;->y(Laa/c;)Laa/a;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v4, v4, Lj5/b$i;->a:Lj5/b;

    invoke-static {v4}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {v2}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget-object v5, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v5, v5, Lj5/b$i;->a:Lj5/b;

    invoke-static {v5}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v5

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v3, v4, v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iget-object v2, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v2, v2, Lj5/b$i;->a:Lj5/b;

    invoke-static {v2}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v2

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushSize:F

    mul-float/2addr v2, v0

    invoke-static {v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->y1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    goto/16 :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v2, v2, Lj5/b$i;->a:Lj5/b;

    invoke-static {v2}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->isDataLoaded()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v2, v2, Lj5/b$i;->a:Lj5/b;

    invoke-static {v2}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v2

    iget-object v3, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v3, v3, Lj5/b$i;->a:Lj5/b;

    invoke-static {v3}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v4, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v4, v4, Lj5/b$i;->a:Lj5/b;

    invoke-static {v4}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getWorldY(FF)F

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_1
    move v2, v1

    :goto_0
    :try_start_2
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v4, v4, Lj5/b$i;->a:Lj5/b;

    invoke-static {v4}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v5, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v5, v5, Lj5/b$i;->a:Lj5/b;

    invoke-static {v5}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v5

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v3, v4, v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iget-object v2, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v2, v2, Lj5/b$i;->a:Lj5/b;

    invoke-static {v2}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v2

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushSize:F

    mul-float/2addr v2, v0

    invoke-static {v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->y1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_3
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v3, v3, Lj5/b$i;->a:Lj5/b;

    invoke-static {v3}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v4, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v4, v4, Lj5/b$i;->a:Lj5/b;

    invoke-static {v4}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v2, v3, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iget-object v1, p0, Lj5/b$i$a;->b:Lj5/b$i;

    iget-object v1, v1, Lj5/b$i;->a:Lj5/b;

    invoke-static {v1}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushSize:F

    mul-float/2addr v1, v0

    invoke-static {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->y1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
