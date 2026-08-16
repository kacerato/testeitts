.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;
.source "SourceFile"


# static fields
.field public static final F:Ljava/lang/String; = "UIWeight"

.field public static final G:Ljava/lang/Class;


# instance fields
.field public E:LJAVARuntime/Component;

.field private weight:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->G:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UIWeight"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->weight:F

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->weight:F

    return p0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->weight:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->weight:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070231

    return v0
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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;)V

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v3, "weight"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v3, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Weight"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIWeight:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getWeight()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->weight:F

    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x4

    return v0
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->E:LJAVARuntime/Component;

    return-void
.end method

.method public setWeight(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weight"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->weight:F

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->E:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIWeight;

    invoke-direct {v0, p0}, LJAVARuntime/UIWeight;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->E:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
