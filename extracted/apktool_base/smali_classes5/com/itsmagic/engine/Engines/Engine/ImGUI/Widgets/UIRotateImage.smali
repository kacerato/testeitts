.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;
.source "SourceFile"


# static fields
.field public static final T:Ljava/lang/String; = "UIRotateImage"

.field public static final U:Ljava/lang/Class;


# instance fields
.field public P:LU9/g;

.field public Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

.field public R:Ljava/lang/String;

.field public S:LJAVARuntime/Component;

.field private angle:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private flipX:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private flipY:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private styleFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tilling:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->U:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$b;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "UIRotateImage"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->angle:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipX:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipY:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->tilling:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipX:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipY:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->angle:F

    return p0
.end method

.method private updateUIStyleInstance()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->styleFile:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->R:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->styleFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->styleFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LX7/a;->x(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->O(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->styleFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->R:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->R:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method


# virtual methods
.method public calculateInternalSizeEnd(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    return-void
.end method

.method public calculateInternalSizeStart(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v0

    int-to-float v0, v0

    float-to-int v6, p1

    float-to-int v7, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v6

    move v5, v7

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->setInternalWidgetRect(IIIIII)V

    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->angle:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->angle:F

    .line 6
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipX:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipX:Z

    .line 7
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipY:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipY:Z

    .line 8
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getOffset()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 9
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getTilling()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->tilling:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public countAsync()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAngle()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->angle:F

    return v0
.end method

.method public getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance v0, LIc/k;

    invoke-direct {v0}, LIc/k;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->g(LIc/h;)LIc/k;

    move-result-object p1

    iget-object v1, v0, LIc/k;->a:Ljava/util/List;

    iget-object p1, p1, LIc/k;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07022d

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 10
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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V

    const-string v3, "Color"

    sget-object v4, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "color"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, v2, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v4, "Image"

    invoke-virtual {v1, v4, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->j(Ljava/lang/String;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, LC5/b;

    new-instance v1, LC5/a;

    const-string v2, "Other"

    invoke-direct {v1, v2, v3}, LC5/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p1, v1}, LC5/b;-><init>(LC5/a;)V

    iget-object v1, p1, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$f;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v5, "Flip x"

    invoke-direct {v2, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$g;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V

    const-string v5, "Flip y"

    invoke-direct {v2, v3, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getOffset()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$h;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V

    const-string v5, "Offset"

    invoke-static {v5, v2, v3, v4}, LF5/c;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LF5/c$u0;)LC5/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getTilling()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$i;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V

    const-string v5, "Tilling"

    invoke-static {v5, v2, v3, v4}, LF5/c;->z(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LF5/c$u0;)LC5/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$j;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V

    sget-object v6, LC5/b$a;->SLFloatSlider:LC5/b$a;

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    const-string v5, "Angle"

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "angle"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V

    sget-object v2, LC5/b$a;->UIStyle:LC5/b$a;

    const-string v3, ".usy"

    const-string v4, "Style"

    invoke-direct {p1, v1, v4, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getOffset()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public getSpriteIndex()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->l()I

    move-result v0

    return v0
.end method

.method public getStyleFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->styleFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTexture()Lub/p;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->n()Lub/p;

    move-result-object v0

    return-object v0
.end method

.method public getTilling()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->tilling:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->tilling:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->tilling:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "RotateImage"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRotateImage:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isFlipX()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipX:Z

    return v0
.end method

.method public isFlipY()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipY:Z

    return v0
.end method

.method public loadAsync(LLb/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "),(RotateImage),(Loading),(texture)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LLb/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->q()V

    invoke-interface {p1}, LLb/a;->e()V

    return-void
.end method

.method public onAttach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->updateUIStyleInstance()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->onDetach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LU9/g;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    :cond_0
    return-void
.end method

.method public onDrawFrame()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDrawFrame()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LU9/g;->s()V

    :cond_0
    return-void
.end method

.method public onGuiEnd(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    return-void
.end method

.method public onGuiStart(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeSetCursorPos(FF)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->n()Lub/p;

    move-result-object p1

    invoke-static {}, LP9/a;->j()LV9/q;

    move-result-object v0

    invoke-virtual {v0}, LV9/q;->i()Lub/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->or(Lub/p;Lub/p;)Lub/p;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LU9/g;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    invoke-virtual {p1}, LU9/g;->n()Lub/p;

    move-result-object p1

    :cond_1
    move-object v1, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result p1

    int-to-float v3, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result p1

    int-to-float v4, p1

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->angle:F

    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipX:Z

    iget-boolean v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipY:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getOffset()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getOffset()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getTilling()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getTilling()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v11

    iget-object v12, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-static/range {v1 .. v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->s(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFZZFFFFLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->onHierarchyActiveChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LU9/g;->r()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    :cond_0
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getRequestUIDirtyRunnable()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->f(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    if-nez v0, :cond_1

    new-instance v0, LU9/g;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V

    invoke-direct {v0, p1, p2, v1, v2}, LU9/g;-><init>(IILU9/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, LU9/g;->y(II)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {p1, p2}, LU9/g;->z(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->n()Lub/p;

    move-result-object p2

    invoke-virtual {p1, p2}, LU9/g;->w(Lub/p;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    invoke-virtual {p1}, LU9/g;->j()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, LU9/g;->i()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->P:LU9/g;

    :cond_4
    :goto_1
    return-void
.end method

.method public receiveEvent(LLb/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(LLb/c;)V

    instance-of v0, p1, LU9/f;

    if-eqz v0, :cond_0

    check-cast p1, LU9/f;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getStyleFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getStyleFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LU9/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->R:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->updateUIStyleInstance()V

    :cond_0
    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->s(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    return-void
.end method

.method public setAngle(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->angle:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->angle:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setFlipX(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flipX"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipX:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipX:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setFlipY(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flipY"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipY:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->flipY:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setOffset(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getOffset()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->S:LJAVARuntime/Component;

    return-void
.end method

.method public setSpriteIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteIndex"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->l()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->w(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setStyleFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styleFile"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->styleFile:Ljava/lang/String;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->updateUIStyleInstance()V

    return-void
.end method

.method public setTexture(Lub/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->n()Lub/p;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->normalImgH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->x(Lub/p;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setTilling(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tilling"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->getTilling()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->S:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIRotateImage;

    invoke-direct {v0, p0}, LJAVARuntime/UIRotateImage;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRotateImage;->S:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
