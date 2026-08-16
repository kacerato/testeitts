.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation

.annotation runtime LIc/q;
.end annotation

.annotation runtime LIc/r;
.end annotation


# instance fields
.field public coloRamp:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public domainWarpFractalType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public domainWrapEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dw_frequency:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dw_gain:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dw_lacunarity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dw_octaves:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public enableDomainWarp:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fractalEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inspectorEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mCellularDistanceFunction:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mCellularJitterModifier:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mCellularReturnType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mDomainWarpAmp:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mDomainWarpType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mFractalBounding:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mFractalType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mFrequency:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mGain:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mLacunarity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mNoiseType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mOctaves:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mPingPongStrength:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mRotationType3D:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mSeed:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mWeightedStrength:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public textureEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->coloRamp:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/16 v0, 0x539

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mSeed:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFrequency:F

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;->OpenSimplex2:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mNoiseType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;->None:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mRotationType3D:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;->Ridged:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFractalType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    const/4 v1, 0x4

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mOctaves:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mLacunarity:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mGain:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mWeightedStrength:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mPingPongStrength:F

    const v3, 0x3f19999a    # 0.6f

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFractalBounding:F

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;->EuclideanSq:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularDistanceFunction:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;->Distance:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularReturnType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularJitterModifier:F

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;->OpenSimplex2Reduced:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mDomainWarpType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    const/high16 v3, 0x447a0000    # 1000.0f

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mDomainWarpAmp:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_octaves:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_lacunarity:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_gain:F

    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_frequency:F

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;->PingPong:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->domainWarpFractalType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->enableDomainWarp:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>(Z)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->inspectorEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>(Z)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->fractalEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>(Z)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->domainWrapEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>(Z)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->MirrorRepeat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->coloRamp:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->n()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCellularDistanceFunction()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularDistanceFunction:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    return-object v0
.end method

.method public getCellularJitterModifier()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularJitterModifier:F

    return v0
.end method

.method public getCellularReturnType()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularReturnType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;

    return-object v0
.end method

.method public getColoRamp()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->coloRamp:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-object v0
.end method

.method public getDomainWarpAmp()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mDomainWarpAmp:F

    return v0
.end method

.method public getDomainWarpFractalType()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->domainWarpFractalType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    return-object v0
.end method

.method public getDomainWarpType()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mDomainWarpType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    return-object v0
.end method

.method public getDw_frequency()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_frequency:F

    return v0
.end method

.method public getDw_gain()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_gain:F

    return v0
.end method

.method public getDw_lacunarity()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_lacunarity:F

    return v0
.end method

.method public getDw_octaves()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_octaves:I

    return v0
.end method

.method public getFractalBounding()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFractalBounding:F

    return v0
.end method

.method public getFractalType()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFractalType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    return-object v0
.end method

.method public getFrequency()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFrequency:F

    return v0
.end method

.method public getGain()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mGain:F

    return v0
.end method

.method public getLacunarity()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mLacunarity:F

    return v0
.end method

.method public getNoiseType()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mNoiseType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    return-object v0
.end method

.method public getOctaves()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mOctaves:I

    return v0
.end method

.method public getPingPongStrength()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mPingPongStrength:F

    return v0
.end method

.method public getRotationType3D()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mRotationType3D:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    return-object v0
.end method

.method public getSeed()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mSeed:I

    return v0
.end method

.method public getWeightedStrength()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mWeightedStrength:F

    return v0
.end method

.method public isEnableDomainWarp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->enableDomainWarp:Z

    return v0
.end method

.method public setCellularDistanceFunction(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCellularDistanceFunction"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularDistanceFunction:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    return-void
.end method

.method public setCellularJitterModifier(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCellularJitterModifier"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularJitterModifier:F

    return-void
.end method

.method public setCellularReturnType(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCellularReturnType"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularReturnType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;

    return-void
.end method

.method public setColoRamp(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coloRamp"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->coloRamp:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-void
.end method

.method public setDomainWarpAmp(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mDomainWarpAmp"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mDomainWarpAmp:F

    return-void
.end method

.method public setDomainWarpFractalType(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "domainWarpFractalType"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->domainWarpFractalType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    return-void
.end method

.method public setDomainWarpType(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mDomainWarpType"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mDomainWarpType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    return-void
.end method

.method public setDw_frequency(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dw_frequency"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_frequency:F

    return-void
.end method

.method public setDw_gain(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dw_gain"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_gain:F

    return-void
.end method

.method public setDw_lacunarity(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dw_lacunarity"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_lacunarity:F

    return-void
.end method

.method public setDw_octaves(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dw_octaves"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_octaves:I

    return-void
.end method

.method public setEnableDomainWarp(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableDomainWarp"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->enableDomainWarp:Z

    return-void
.end method

.method public setFractalBounding(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mFractalBounding"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFractalBounding:F

    return-void
.end method

.method public setFractalType(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mFractalType"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFractalType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    return-void
.end method

.method public setFrequency(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mFrequency"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFrequency:F

    return-void
.end method

.method public setGain(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mGain"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mGain:F

    return-void
.end method

.method public setLacunarity(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mLacunarity"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mLacunarity:F

    return-void
.end method

.method public setNoiseType(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mNoiseType"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mNoiseType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    return-void
.end method

.method public setOctaves(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOctaves"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mOctaves:I

    return-void
.end method

.method public setPingPongStrength(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPingPongStrength"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mPingPongStrength:F

    return-void
.end method

.method public setRotationType3D(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mRotationType3D"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mRotationType3D:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    return-void
.end method

.method public setSeed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mSeed"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mSeed:I

    return-void
.end method

.method public setWeightedStrength(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mWeightedStrength"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mWeightedStrength:F

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
