.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DThermalFlow;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final J:Ljava/lang/String; = "GridVertical2DThermalFlow"

.field public static final K:F = 100.0f


# instance fields
.field public final E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

.field public final F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public final G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public final H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

.field public I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "editor3DViewer",
            "material",
            "modelRenderer"
        }
    .end annotation

    const-string v0, "GridVertical2DThermalFlow"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DThermalFlow;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DThermalFlow;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DThermalFlow;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DThermalFlow;->H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    return-void
.end method


# virtual methods
.method public parallelUpdate()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DThermalFlow;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w0()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t3(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DThermalFlow;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x0()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u3(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DThermalFlow;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getOrtho_diameter()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DThermalFlow;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageRatio()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, LIc/A;->b(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    return-void
.end method
