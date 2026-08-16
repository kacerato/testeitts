.class public LI3/a$u$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI3/a$u$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LI3/a$u$a;


# direct methods
.method public constructor <init>(LI3/a$u$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LI3/a$u$a$d;->a:LI3/a$u$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {}, LI3/a;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    const/16 v4, 0xaf

    invoke-direct {v3, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;-><init>(II)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIJoystick;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIJoystick;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;-><init>()V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAxisEventListener;-><init>()V

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;

    aput-object v3, v7, v0

    aput-object v4, v7, p1

    const/4 v0, 0x2

    aput-object v5, v7, v0

    const/4 v0, 0x3

    aput-object v6, v7, v0

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-string v0, "Joystick"

    invoke-static {v0, v1, v2}, LG3/b;->g(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    new-instance v1, LI3/a$u$a$d$a;

    invoke-direct {v1, p0, v0}, LI3/a$u$a$d$a;-><init>(LI3/a$u$a$d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, LI3/a$u$a$d;->a:LI3/a$u$a;

    iget-object v1, v1, LI3/a$u$a;->b:LI3/a$u;

    iget-object v1, v1, LI3/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, LI3/a$u$a$d;->a:LI3/a$u$a;

    iget-object v0, v0, LI3/a$u$a;->b:LI3/a$u;

    iget-object v0, v0, LI3/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "UIController could not be found!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
