.class public LI3/a$u$a$j;
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

    iput-object p1, p0, LI3/a$u$a$j;->a:LI3/a$u$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, LI3/a;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/util/LinkedList;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    const/16 v5, 0x96

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;-><init>(II)V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;-><init>()V

    new-array v6, p1, [Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-string v4, "Slide bar"

    invoke-static {v4, v2, v3}, LG3/b;->g(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedList;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    const/16 v6, 0x14

    invoke-direct {v5, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;-><init>(II)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;-><init>()V

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage;

    const/high16 v8, 0x43000000    # 128.0f

    invoke-direct {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage;-><init>(F)V

    const/4 v8, 0x3

    new-array v8, v8, [Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;

    aput-object v5, v8, v1

    aput-object v6, v8, v0

    aput-object v7, v8, p1

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-string p1, "Handler"

    invoke-static {p1, v2, v4}, LG3/b;->g(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance p1, LI3/a$u$a$j$a;

    invoke-direct {p1, p0, v3}, LI3/a$u$a$j$a;-><init>(LI3/a$u$a$j;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    iget-object p1, p0, LI3/a$u$a$j;->a:LI3/a$u$a;

    iget-object p1, p1, LI3/a$u$a;->b:LI3/a$u;

    iget-object p1, p1, LI3/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_1

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, LI3/a$u$a$j;->a:LI3/a$u$a;

    iget-object p1, p1, LI3/a$u$a;->b:LI3/a$u;

    iget-object p1, p1, LI3/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "UIController could not be found!"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

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
