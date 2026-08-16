.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$d;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final I:Ljava/lang/String; = "PCSSShadow"

.field public static final J:Ljava/lang/Class;

.field public static final K:F = 1.0f

.field public static final L:F = 1.0f


# instance fields
.field public H:LJAVARuntime/Component;

.field private penumbraRatioScale:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private penumbraScale:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->J:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "PCSSShadow"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraScale:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraRatioScale:F

    return-void
.end method


# virtual methods
.method public applyBeforeRender(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view",
            "frameBuffer"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderPostProcessing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object p1

    sget-object p2, Lcom/google/android/filament/View$q;->PCSS:Lcom/google/android/filament/View$q;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/View;->w0(Lcom/google/android/filament/View$q;)V

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/View;->B()Lcom/google/android/filament/View$r;

    move-result-object p1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraScale:F

    const/4 p4, 0x0

    invoke-static {p4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lcom/google/android/filament/View$r;->a:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraRatioScale:F

    invoke-static {p4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lcom/google/android/filament/View$r;->b:F

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/filament/View;->y0(Lcom/google/android/filament/View$r;)V

    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraScale:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraScale:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraRatioScale:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraRatioScale:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disableFor(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view"
        }
    .end annotation

    return-void
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "PCSS Shadow"

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
    .locals 4
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

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;)V

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v3, "Penumbra Scale"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;)V

    const-string v3, "Penumbra Ratio Scale"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getPenumbraRatioScale()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraRatioScale:F

    return v0
.end method

.method public getPenumbraScale()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraScale:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "PCSSShadow"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAdvancedRendererRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newCacheInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$d;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$d;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$d;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newCacheInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->newCacheInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow$d;

    move-result-object v0

    return-object v0
.end method

.method public setPenumbraRatioScale(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "penumbraRatioScale"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraRatioScale:F

    return-void
.end method

.method public setPenumbraScale(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "penumbraScale"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->penumbraScale:F

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->H:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->H:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/PCSSShadow;

    invoke-direct {v0, p0}, LJAVARuntime/PCSSShadow;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PCSSShadow;->H:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
