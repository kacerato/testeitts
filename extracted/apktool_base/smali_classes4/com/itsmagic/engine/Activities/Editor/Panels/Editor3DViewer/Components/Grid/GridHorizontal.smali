.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final K:Ljava/lang/String; = "AxisCube"

.field public static final L:F = 100.0f


# instance fields
.field public final E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

.field public final F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public final G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

.field public final H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final J:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "editor3DViewer",
            "modelRenderer"
        }
    .end annotation

    const-string v0, "AxisCube"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x96

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->J:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    return-void
.end method


# virtual methods
.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    :try_start_0
    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u3(F)V

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t3(F)V

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w3(F)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v1, "diffuse"

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->J:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->b0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->G:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string p2, "options"

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->B0(F)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridHorizontal;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->C0(F)V

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    :cond_1
    :goto_0
    return-void
.end method
