.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LF7/k<",
        "Lg6/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)LF7/l;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    instance-of v0, v0, Lg6/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)LF7/l;

    move-result-object v0

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    check-cast v0, Lg6/a;

    invoke-virtual {v0}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    sget-object v1, LW7/b;->i:La8/a;

    iget-object v1, v1, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->u1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V

    goto :goto_0

    :cond_0
    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->u1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic b(LF7/i;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    check-cast p1, Lg6/a;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->h(Lg6/a;Landroid/view/View;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg6/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->s1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(LF7/i;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    check-cast p1, Lg6/a;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->i(Lg6/a;Z)V

    return-void
.end method

.method public bridge synthetic e(LF7/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    check-cast p1, Lg6/a;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->j(Lg6/a;)V

    return-void
.end method

.method public bridge synthetic f(LF7/i;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "eElement"
        }
    .end annotation

    check-cast p1, Lg6/a;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->g(Lg6/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg6/a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg6/a;",
            ")",
            "Ljava/util/List<",
            "Lg6/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->r1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;Lg6/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(Lg6/a;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lr4/a$e;->Right:Lr4/a$e;

    invoke-static {p1, p2, v0}, Lgb/e;->M(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/view/View;Lr4/a$e;)V

    :cond_0
    return-void
.end method

.method public i(Lg6/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    :cond_0
    return-void
.end method

.method public j(Lg6/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    sget-object v0, LW7/b;->h:Lb8/f;

    invoke-virtual {v0, p1}, Lb8/f;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-void
.end method
