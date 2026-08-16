.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;
    }
.end annotation


# static fields
.field public static final D0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/filament/filamat/MaterialBuilder$m;",
            ">;"
        }
    .end annotation
.end field

.field public static final U:I = 0x0

.field public static final V:I = 0x1

.field public static final W:I = 0x2

.field public static final X:I = 0x3

.field public static final Y:I = 0x4

.field public static final Z:Ljava/lang/String; = "UILensDistortion"

.field public static final q0:Ljava/lang/Class;

.field public static final v0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/filament/filamat/MaterialBuilder$r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final S:[F

.field public T:LJAVARuntime/Component;

.field private border:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private centerV2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
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

.field private mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->q0:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v10, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v9, "kvalues"

    const-string v1, "strength"

    const-string v3, "radius"

    const-string v5, "aspect"

    const-string v7, "center"

    move-object v2, v6

    move-object v4, v6

    move-object v8, v10

    invoke-static/range {v1 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/k;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->v0:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->D0:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->v0:Ljava/util/Map;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->D0:Ljava/util/Map;

    const-string v2, "UILensDistortion"

    const-string v3, "lens_distortion"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;->Barrel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->intensity:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->border:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v1, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->centerV2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->S:[F

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3d4ccccd    # 0.05f
    .end array-data
.end method

.method public static buildShaderCache()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->buildShaderCacheFromDefaults()V

    return-void
.end method

.method public static buildShaderCacheForce()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->buildShaderCacheFromDefaultsForce()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->intensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->intensity:F

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->border:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->border:F

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->centerV2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->centerV2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->border:F

    return v0
.end method

.method public getCenter()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->centerV2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Lens Distortion"

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

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MODE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;)V

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;

    invoke-static {v1, v4, v2, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INTENSITY:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v3, "intensity"

    invoke-virtual {v1, v0, p0, v3, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$d;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BORDER:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v3, "border"

    invoke-virtual {v1, v0, p0, v3, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CENTER:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->centerV2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v3, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-static {v1, v2, v3}, LF5/c;->y(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;

    move-result-object v1

    const-string v2, "centerV2"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC2:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, v0, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getIntensity()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->intensity:F

    return v0
.end method

.method public getMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;

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

    const-string v0, "UI Lens Distortion"

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

    const/4 v2, 0x4

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

.method public setBorder(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "border"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->border:F

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setCenter(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->centerV2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 p1, 0x3

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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->intensity:F

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->markParameterDirty(I)V

    return-void
.end method

.method public setMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;

    const/4 p1, 0x0

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->T:LJAVARuntime/Component;

    return-void
.end method

.method public shouldApplyPreUpdatePass(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;LTb/a;LTb/a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uIController",
            "frameBuffer",
            "cacheBuffer"
        }
    .end annotation

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->intensity:F

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->T:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UILensDistortion;

    invoke-direct {v0, p0}, LJAVARuntime/UILensDistortion;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->T:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public uploadDirtyParametersDirect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;LTb/a;LTb/a;J)V
    .locals 14
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

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v2

    and-long v2, p5, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->S:[F

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->intensity:F

    const v10, 0x3ea8f5c3    # 0.33f

    mul-float v11, v9, v10

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->border:F

    sub-float v13, v7, v12

    mul-float/2addr v11, v13

    aput v11, v8, v3

    mul-float/2addr v9, v10

    mul-float/2addr v9, v12

    aput v9, v8, v6

    :cond_1
    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v8

    and-long v8, p5, v8

    cmp-long v8, v8, v4

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->mode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;

    sget-object v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;->Barrel:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion$e;

    if-ne v8, v9, :cond_2

    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    const-string v9, "strength"

    invoke-virtual {p1, v9, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_3
    invoke-virtual {p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v8

    and-long v8, p5, v8

    cmp-long v8, v8, v4

    if-eqz v8, :cond_4

    const-string v8, "radius"

    invoke-virtual {p1, v8, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_4
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v7

    and-long v7, p5, v7

    cmp-long v7, v7, v4

    if-eqz v7, :cond_5

    const-string v7, "center"

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->centerV2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->h(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :cond_5
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->paramBit(I)J

    move-result-wide v7

    and-long v7, p5, v7

    cmp-long v4, v7, v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p3 .. p3}, LTb/a;->i()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p3 .. p3}, LTb/a;->h()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const-string v5, "aspect"

    invoke-virtual {p1, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->d(Ljava/lang/String;F)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UILensDistortion;->S:[F

    aget v3, v2, v3

    aget v2, v2, v6

    const-string v4, "kvalues"

    invoke-virtual {p1, v4, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->e(Ljava/lang/String;FF)V

    :cond_7
    return-void
.end method
