.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final L:Ljava/lang/String; = "AxisCube"

.field public static final M:F = 100.0f


# instance fields
.field public final E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

.field public final F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public final G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public final H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

.field public I:F

.field public J:F

.field public K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/Material/Material;FFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "editor3DViewer",
            "material",
            "scale",
            "clamp",
            "modelRenderer"
        }
    .end annotation

    const-string v0, "AxisCube"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->I:F

    iput p5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->J:F

    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    return-void
.end method


# virtual methods
.method public parallelUpdate()V
    .locals 4

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    const/high16 v0, 0x40000000    # 2.0f

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v2, "GridOptions"

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->I:F

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getOrtho_diameter()F

    move-result v3

    div-float/2addr v3, v0

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->K:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->J:F

    neg-float v2, v2

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w0()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t3(F)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x0()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u3(F)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getOrtho_diameter()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2D;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageRatio()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    return-void
.end method
