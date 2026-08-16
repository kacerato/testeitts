.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final U:I = 0x0

.field public static final V:I = 0x1

.field public static final W:I = 0x2

.field public static final X:Ljava/lang/String; = "ChromaticAberration"

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
.field public S:[F

.field public T:LJAVARuntime/Component;

.field private falloff:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private strength:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->Y:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v5, "center"

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v1, "strength"

    const-string v3, "falloff"

    move-object v2, v4

    invoke-static/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/c;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->Z:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->q0:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->Z:Ljava/util/Map;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->q0:Ljava/util/Map;

    const-string v2, "ChromaticAberration"

    const-string v3, "chromatic_aberration"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->strength:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->falloff:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->S:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public static buildShaderCache()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->buildShaderCacheFromDefaults()V

    return-void
.end method

.method public static buildShaderCacheForce()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->buildShaderCacheFromDefaultsForce()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->strength:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->strength:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->falloff:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->falloff:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Chromatic Aberration"

    return-object v0
.end method

.method public getFalloff()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->falloff:F

    return v0
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

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;)V

    sget-object v3, LC5/b$a;->SLFloat01:LC5/b$a;

    const/high16 v4, 0x40a00000    # 5.0f

    const-string v5, "Intensity"

    invoke-direct {v1, v2, v5, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;F)V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v4, "strength"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration$c;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;)V

    const-string v5, "Falloff"

    invoke-direct {v1, v4, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v3, "falloff"

    invoke-virtual {v1, v0, p0, v3, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getStrength()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->strength:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "ChromaticAberration"

    return-object v0
.end method

.method public getTrackedParameterMask()J
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setFalloff(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "falloff"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->falloff:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->T:LJAVARuntime/Component;

    return-void
.end method

.method public setStrength(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strength"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->strength:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public shouldApplyPreUpdatePass(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view",
            "frameBuffer",
            "cacheBuffer"
        }
    .end annotation

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->strength:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->T:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/ChromaticAberration;

    invoke-direct {v0, p0}, LJAVARuntime/ChromaticAberration;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->T:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public uploadDirtyParametersDirect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;J)V
    .locals 2
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
            "writer",
            "unused1",
            "unused2",
            "unused3",
            "frameBuffer",
            "unused4",
            "dirtyMask"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide p3

    and-long/2addr p3, p7

    const-wide/16 p5, 0x0

    cmp-long p3, p3, p5

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->strength:F

    const/high16 p4, 0x41c80000    # 25.0f

    div-float/2addr p3, p4

    const-string p4, "strength"

    invoke-virtual {p1, p4, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v0

    and-long/2addr v0, p7

    cmp-long p4, v0, p5

    if-eqz p4, :cond_1

    const-string p4, "falloff"

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->falloff:F

    invoke-virtual {p1, p4, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_1
    const/4 p4, 0x2

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass;->paramBit(I)J

    move-result-wide v0

    and-long/2addr p7, v0

    cmp-long p4, p7, p5

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ChromaticAberration;->S:[F

    aget p2, p4, p2

    aget p3, p4, p3

    const-string p4, "center"

    invoke-virtual {p1, p4, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/DoublePassPostProcessPass$b;->e(Ljava/lang/String;FF)V

    :cond_2
    return-void
.end method
