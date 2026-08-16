.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$b;,
        Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$a;
    }
.end annotation


# instance fields
.field public allowAnimFiles:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allowMaterialFiles:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allowObjectFiles:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allowTextureFiles:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public allowVertexFiles:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public bakeOptions:Lorg/ITsMagic/Atlas/BakeOptions;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public boneCorrectionMode:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public buildAtlas:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public deleteIdentityObjects:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public explodePack:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final filterEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public generateCollision:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public generateNormalMaps:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public ignoreUnusedFiles:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public importSkinningData:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxBonesPerChunk:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxBonesPerVertice:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxResolutionID:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public normalMapBias:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public scale:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public setStatic:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transparencyMode:Lec/a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->maxResolutionID:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->generateNormalMaps:Z

    const/16 v1, 0x50

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->normalMapBias:I

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->generateCollision:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->setStatic:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->buildAtlas:Z

    new-instance v1, Lorg/ITsMagic/Atlas/BakeOptions;

    invoke-direct {v1}, Lorg/ITsMagic/Atlas/BakeOptions;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->bakeOptions:Lorg/ITsMagic/Atlas/BakeOptions;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->optionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->filterEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowMaterialFiles:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowTextureFiles:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowVertexFiles:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowObjectFiles:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->allowAnimFiles:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->importSkinningData:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->ignoreUnusedFiles:Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$b;->Max4:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$b;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->maxBonesPerVertice:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$a;->Smart:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$a;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->boneCorrectionMode:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions$a;

    const/16 v1, 0x19

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->maxBonesPerChunk:I

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->explodePack:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->deleteIdentityObjects:Z

    sget-object v0, Lec/a;->TRANSPARENT:Lec/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->transparencyMode:Lec/a;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->scale:F

    return-void
.end method
