.class public LI3/a$u$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI3/a$u$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LI3/a$u$b;


# direct methods
.method public constructor <init>(LI3/a$u$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LI3/a$u$b$a;->a:LI3/a$u$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {}, LI3/a;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v4, Ljava/util/LinkedList;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;-><init>()V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIVerticalScrollView;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIVerticalScrollView;-><init>()V

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage;-><init>()V

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setEnabled(Z)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v7

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRectangularMask;

    invoke-direct {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIRectangularMask;-><init>()V

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    aput-object v5, v9, v3

    aput-object v6, v9, v1

    aput-object v7, v9, v0

    aput-object v8, v9, p1

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-string v5, "VScrollView"

    invoke-static {v5, v2, v4}, LG3/b;->g(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    new-instance v5, Ljava/util/LinkedList;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-direct {v6, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;-><init>(ZZ)V

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;-><init>()V

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;

    invoke-direct {v8, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;-><init>(ZZ)V

    new-array p1, p1, [Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;

    aput-object v6, p1, v3

    aput-object v7, p1, v1

    aput-object v8, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-string p1, "Layout"

    invoke-static {p1, v2, v5}, LG3/b;->g(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance p1, LI3/a$u$b$a$a;

    invoke-direct {p1, p0, v4}, LI3/a$u$b$a$a;-><init>(LI3/a$u$b$a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    iget-object p1, p0, LI3/a$u$b$a;->a:LI3/a$u$b;

    iget-object p1, p1, LI3/a$u$b;->b:LI3/a$u;

    iget-object p1, p1, LI3/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_1

    invoke-virtual {v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, LI3/a$u$b$a;->a:LI3/a$u$b;

    iget-object p1, p1, LI3/a$u$b;->b:LI3/a$u;

    iget-object p1, p1, LI3/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "UIController could not be found!"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

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
