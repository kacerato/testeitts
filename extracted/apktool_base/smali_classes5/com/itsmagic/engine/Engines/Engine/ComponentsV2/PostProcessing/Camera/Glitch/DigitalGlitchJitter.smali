.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final L1:Ljava/lang/String; = "DigitalGlitchJitter"

.field public static final M1:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;->M1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const-string v0, "DG: Jitter"

    const/high16 v1, 0x40800000    # 4.0f

    const-string v2, "DigitalGlitchJitter"

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3fd9999a    # 1.7f

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e19999a    # 0.15f

    const v10, 0x3dcccccd    # 0.1f

    const/high16 v11, 0x41000000    # 8.0f

    move-object v3, p0

    invoke-virtual/range {v3 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->setDefaults(FFFFFFFFFF)V

    return-void
.end method

.method public static buildShaderCache()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->buildShaderCacheFromDefaults()V

    return-void
.end method

.method public static buildShaderCacheForce()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->buildShaderCacheFromDefaultsForce()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;->newInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;-><init>()V

    return-object v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->V:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/DigitalGlitchJitter;

    invoke-direct {v0, p0}, LJAVARuntime/DigitalGlitchJitter;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->V:LJAVARuntime/Component;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/AbstractDigitalGlitchEffect;->V:LJAVARuntime/Component;

    return-object v0
.end method
