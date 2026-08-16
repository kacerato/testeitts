.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final L1:Ljava/lang/String; = "DigitalGlitchVoronoiDistortion"

.field public static final M1:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;->M1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const-string v0, "DG: Voronoi Distortion"

    const/high16 v1, 0x41880000    # 17.0f

    const-string v2, "DigitalGlitchVoronoiDistortion"

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    const v12, 0x3ecccccd    # 0.4f

    const/4 v13, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3f59999a    # 0.85f

    const/high16 v7, 0x42080000    # 34.0f

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3e800000    # 0.25f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x41000000    # 8.0f

    move-object v3, p0

    invoke-virtual/range {v3 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->setDefaults(FFFFFFFFFF)V

    return-void
.end method

.method public static buildShaderCache()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->buildShaderCacheFromDefaults()V

    return-void
.end method

.method public static buildShaderCacheForce()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->buildShaderCacheFromDefaultsForce()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;->newInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;-><init>()V

    return-object v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->V:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/DigitalGlitchVoronoiDistortion;

    invoke-direct {v0, p0}, LJAVARuntime/DigitalGlitchVoronoiDistortion;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->V:LJAVARuntime/Component;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->V:LJAVARuntime/Component;

    return-object v0
.end method
