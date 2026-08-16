.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$f;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final J:Ljava/lang/String; = "Vignette"

.field public static final K:Ljava/lang/Class;


# instance fields
.field public final H:[F

.field public I:LJAVARuntime/Component;

.field private colorINT:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private feather:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private midPoint:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private roundness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->K:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Vignette"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->midPoint:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->roundness:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->feather:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->colorINT:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->H:[F

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->colorINT:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method


# virtual methods
.method public applyBeforeRender(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;)V
    .locals 1
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
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->H:[F

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->colorINT:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result p2

    const/4 p4, 0x0

    aput p2, p1, p4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->H:[F

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->colorINT:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result p2

    const/4 p4, 0x1

    aput p2, p1, p4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->H:[F

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->colorINT:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p2

    const/4 v0, 0x2

    aput p2, p1, v0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->H:[F

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->colorINT:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p2

    const/4 v0, 0x3

    aput p2, p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/View;->G()Lcom/google/android/filament/View$w;

    move-result-object p1

    iput-boolean p4, p1, Lcom/google/android/filament/View$w;->e:Z

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->midPoint:F

    iput p2, p1, Lcom/google/android/filament/View$w;->a:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->feather:F

    iput p2, p1, Lcom/google/android/filament/View$w;->c:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->roundness:F

    iput p2, p1, Lcom/google/android/filament/View$w;->b:F

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->H:[F

    iput-object p2, p1, Lcom/google/android/filament/View$w;->d:[F

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/filament/View;->F0(Lcom/google/android/filament/View$w;)V

    return-void
.end method

.method public applyInPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;)V
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

    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->colorINT:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->colorINT:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->feather:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->feather:F

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->midPoint:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->midPoint:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->roundness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->roundness:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

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

.method public getColorINT()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->colorINT:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Vignette"

    return-object v0
.end method

.method public getFeather()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->feather:F

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

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;)V

    sget-object v3, LC5/b$a;->SLFloat01:LC5/b$a;

    const-string v4, "Midpoint"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v4, "midPoint"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$c;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;)V

    const-string v5, "Roundness"

    invoke-direct {v1, v4, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v4, "roundness"

    invoke-virtual {v1, v0, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$d;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;)V

    const-string v5, "Feather"

    invoke-direct {v1, v4, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v3, "feather"

    invoke-virtual {v1, v0, p0, v3, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;)V

    const-string v3, "Color"

    sget-object v4, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v2, "colorINT"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, v0, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getMidPoint()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->midPoint:F

    return v0
.end method

.method public getRoundness()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->roundness:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Vignette"

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

.method public newCacheInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$f;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$f;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newCacheInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->newCacheInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette$f;

    move-result-object v0

    return-object v0
.end method

.method public setColorINT(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorINT"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->colorINT:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public setFeather(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "feather"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->feather:F

    return-void
.end method

.method public setMidPoint(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "midPoint"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->midPoint:F

    return-void
.end method

.method public setRoundness(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roundness"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->roundness:F

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->I:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->I:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Vignette;

    invoke-direct {v0, p0}, LJAVARuntime/Vignette;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/Vignette;->I:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
