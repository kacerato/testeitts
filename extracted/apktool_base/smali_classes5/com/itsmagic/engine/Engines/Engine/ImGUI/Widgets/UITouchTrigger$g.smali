.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$g;
.super LR8/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->createRectRef(Landroid/content/Context;Ljava/lang/String;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$g;->a:Landroid/content/Context;

    invoke-direct {p0}, LR8/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$g;->a:Landroid/content/Context;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PLEASE_SELECT_OBJECT_WITH_SUIRECT_COMPONENT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
