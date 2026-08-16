.class public Lmc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmc/f$c;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Z = false

.field public static d:Z = false

.field public static e:Z = false

.field public static final f:I = 0x13

.field public static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()I
    .locals 2

    sget v0, Lmc/f;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmc/f;->g:I

    return v0
.end method

.method public static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lmc/f;->a:Z

    return p0
.end method

.method public static c(Ljava/io/File;Lmc/f$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputFolder",
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Lec/b;->n(Ljava/io/File;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x4b

    :try_start_0
    invoke-interface {p1, v0}, Lmc/f$c;->a(I)V

    invoke-static {}, Lu9/d;->l()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lu9/d;->n()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lu9/d;->p()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Ln9/c;->e()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GaussianBlur;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDistortion;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/LensDirt;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Outline;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/NightVision;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PostVignette;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Sharpen;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/VHSFilter;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/FilmGrainScratch;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Posterize;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Pixelate;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/OrderedDither;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Halftone;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GodRaysLightShafts;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchPeriodicDisturbance;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchImageBlockDamage;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchBlockDistortionColorShift;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchJitter;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchLineDisplacement;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchOrganicNoiseDistortion;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchCircleBlockDamage;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchLineBlockDamage;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchRandomDistortionFeed;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchPixelDifferenceCompare;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchRetroCorruptedScreen;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchBrokenPixelDistortion;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchHorizontalSliceDistortion;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchSwirlFragments;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchPixelatedRgbInterlace;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchChaoticSmoothBlend;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchVoronoiDistortion;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchSmoothColorShiftMask;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchRandomRgbShift;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchSineChannelDistortion;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Glitch/DigitalGlitchDistortionBars;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBloom;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIChromaticAberration;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIContrastBrightnessSaturation;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIFadeOut;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIOutline;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostVignette;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIPostTransform;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UISharpen;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIVHSFilter;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lo9/a;->g()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, LU9/g;->e()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lfc/d;->d()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SpriteRenderer/SpriteRenderer;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->buildShaderCacheForce()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    invoke-static {}, Lorg/ITsMagic/Atlas/c;->b()V

    invoke-interface {p1}, Lmc/f$c;->b()V

    new-instance v0, Lmc/f$a;

    invoke-direct {v0, p1}, Lmc/f$a;-><init>(Lmc/f$c;)V

    invoke-static {v0}, LUb/d;->c(LUb/d$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-static {}, Lec/b;->b()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    invoke-static {}, Lec/b;->b()V

    :cond_2
    throw p1
.end method

.method public static d(Lmc/f$c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    const/16 v0, 0x13

    invoke-interface {p0, v0}, Lmc/f$c;->a(I)V

    sget-boolean v0, Lmc/f;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lmc/f$b;

    invoke-direct {v0, p0}, Lmc/f$b;-><init>(Lmc/f$c;)V

    invoke-static {v0}, LUb/d;->b(LK5/b$b;)V

    sget p0, Lmc/f;->g:I

    add-int/2addr p0, v1

    sput p0, Lmc/f;->g:I

    return v1

    :cond_0
    sget-boolean v0, Lmc/f;->b:Z

    if-nez v0, :cond_1

    invoke-static {}, Lu9/d;->b()V

    sput-boolean v1, Lmc/f;->b:Z

    sget v0, Lmc/f;->g:I

    add-int/2addr v0, v1

    sput v0, Lmc/f;->g:I

    invoke-interface {p0}, Lmc/f$c;->b()V

    return v1

    :cond_1
    sget-boolean v0, Lmc/f;->c:Z

    if-nez v0, :cond_2

    invoke-static {}, Lu9/d;->c()V

    sput-boolean v1, Lmc/f;->c:Z

    sget v0, Lmc/f;->g:I

    add-int/2addr v0, v1

    sput v0, Lmc/f;->g:I

    invoke-interface {p0}, Lmc/f$c;->b()V

    return v1

    :cond_2
    sget-boolean v0, Lmc/f;->d:Z

    if-nez v0, :cond_3

    invoke-static {}, Lu9/d;->a()V

    sput-boolean v1, Lmc/f;->d:Z

    sget v0, Lmc/f;->g:I

    add-int/2addr v0, v1

    sput v0, Lmc/f;->g:I

    invoke-interface {p0}, Lmc/f$c;->b()V

    return v1

    :cond_3
    sget-boolean v0, Lmc/f;->e:Z

    if-nez v0, :cond_4

    invoke-static {}, Ln9/c;->a()V

    sput-boolean v1, Lmc/f;->e:Z

    sget v0, Lmc/f;->g:I

    add-int/2addr v0, v1

    sput v0, Lmc/f;->g:I

    invoke-interface {p0}, Lmc/f$c;->b()V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
