.class public LI3/a$u$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI3/a$u$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LI3/a$u$d;


# direct methods
.method public constructor <init>(LI3/a$u$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LI3/a$u$d$a;->a:LI3/a$u$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedList;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;-><init>()V

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-string v0, "UI"

    invoke-static {v0, p1}, LG3/b;->r(Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q1()V

    new-instance v0, LI3/a$u$d$a$a;

    invoke-direct {v0, p0, p1}, LI3/a$u$d$a$a;-><init>(LI3/a$u$d$a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    iget-object v0, p0, LI3/a$u$d$a;->a:LI3/a$u$d;

    iget-object v0, v0, LI3/a$u$d;->b:LI3/a$u;

    iget-object v0, v0, LI3/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, LI3/a$u$d$a;->a:LI3/a$u$d;

    iget-object p1, p1, LI3/a$u$d;->b:LI3/a$u;

    iget-object p1, p1, LI3/a$u;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    :cond_0
    return-void
.end method
