.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;
    }
.end annotation


# static fields
.field public static final T:I = 0x0

.field public static final U:I = 0x1

.field public static final V:I = 0x2

.field public static final W:I = 0x3

.field public static final X:Ljava/lang/String; = "UIGaussianBlur"

.field public static final Y:Ljava/lang/Class;

.field public static final Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/filament/filamat/MaterialBuilder$r;",
            ">;"
        }
    .end annotation
.end field

.field public static final q0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/filament/filamat/MaterialBuilder$m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public S:LJAVARuntime/Component;

.field private blurRadius:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private intensity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->Y:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    sget-object v8, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v7, "quality"

    const-string v1, "intensity"

    const-string v3, "blurRadius"

    const-string v5, "texelSize"

    move-object v2, v8

    move-object v4, v8

    invoke-static/range {v1 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/j;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->Z:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->q0:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->Z:Ljava/util/Map;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->q0:Ljava/util/Map;

    const-string v2, "UIGaussianBlur"

    const-string v3, "ui_gaussian_blur"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->intensity:F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->blurRadius:F

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;->HIGH:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;

    return-void
.end method

.method public static buildShaderCache()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->buildShaderCacheFromDefaults()V

    return-void
.end method

.method public static buildShaderCacheForce()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->buildShaderCacheFromDefaultsForce()V

    return-void
.end method

.method private getQualityValue()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->intensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->intensity:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->blurRadius:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->blurRadius:F

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getBlurRadius()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->blurRadius:F

    return v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "UI Gaussian Blur"

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070261

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f05009d

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;)V

    sget-object v3, LC5/b$a;->SLFloat01:LC5/b$a;

    const-string v4, "Intensity"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v4, "intensity"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$c;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BLUR_RADIUS:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v3, "blurRadius"

    invoke-virtual {v1, v0, p0, v3, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->QUALITY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;)V

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;

    invoke-static {v0, v3, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getIntensity()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->intensity:F

    return v0
.end method

.method public getQuality()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;

    return-object v0
.end method

.method public getResolutionDependentParameterMask()J
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "UI Gaussian Blur"

    return-object v0
.end method

.method public getTrackedParameterMask()J
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBlurRadius(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blurRadius"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->blurRadius:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setIntensity(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intensity"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->intensity:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setQuality(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->quality:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur$e;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->S:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->S:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIGaussianBlur;

    invoke-direct {v0, p0}, LJAVARuntime/UIGaussianBlur;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->S:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public uploadDirtyParametersDirect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;LTb/a;LTb/a;J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "writer",
            "uIController",
            "frameBuffer",
            "cacheBuffer",
            "dirtyMask"
        }
    .end annotation

    invoke-virtual {p3}, LTb/a;->i()I

    move-result p2

    const/4 p4, 0x1

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p3}, LTb/a;->h()I

    move-result p3

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v0

    and-long/2addr v0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "intensity"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->intensity:F

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_0
    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v0

    and-long/2addr v0, p5

    cmp-long p4, v0, v2

    if-eqz p4, :cond_1

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->blurRadius:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p4, v0

    const-string v0, "blurRadius"

    invoke-virtual {p1, v0, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_1
    const/4 p4, 0x2

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v0

    and-long/2addr v0, p5

    cmp-long p4, v0, v2

    if-eqz p4, :cond_2

    int-to-float p2, p2

    const/high16 p4, 0x3f800000    # 1.0f

    div-float p2, p4, p2

    int-to-float p3, p3

    div-float/2addr p4, p3

    const-string p3, "texelSize"

    invoke-virtual {p1, p3, p2, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->e(Ljava/lang/String;FF)V

    :cond_2
    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide p2

    and-long/2addr p2, p5

    cmp-long p2, p2, v2

    if-eqz p2, :cond_3

    const-string p2, "quality"

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIGaussianBlur;->getQualityValue()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_3
    return-void
.end method
