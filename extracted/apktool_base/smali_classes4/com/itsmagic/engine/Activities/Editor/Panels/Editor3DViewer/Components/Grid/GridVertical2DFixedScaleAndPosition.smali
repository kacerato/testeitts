.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final M:Ljava/lang/String; = "AxisCube"

.field public static final N:F = 100.0f


# instance fields
.field public final E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

.field public final F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public final G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public final H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

.field public I:F

.field public J:F

.field public K:F

.field public L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/Material/Material;FFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "gridScale",
            "clamp",
            "objectSize",
            "modelRenderer"
        }
    .end annotation

    const-string v0, "AxisCube"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->E:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->F:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->I:F

    iput p5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->J:F

    iput p6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->K:F

    iput-object p7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->H:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    return-void
.end method


# virtual methods
.method public parallelUpdate()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const-string v1, "GridOptions"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->x(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->L:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->I:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->J:F

    neg-float v1, v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " missing \"GridOptions\" entry at material"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/Grid/GridVertical2DFixedScaleAndPosition;->K:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    return-void
.end method
