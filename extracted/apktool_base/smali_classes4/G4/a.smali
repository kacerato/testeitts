.class public LG4/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final c0:Ljava/lang/String; = "ClassPanel"


# instance fields
.field public X:Ljava/lang/Class;

.field public Y:Ljava/lang/Object;

.field public Z:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public a0:Landroid/widget/LinearLayout;

.field public b0:LG4/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LG4/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "cls",
            "instance",
            "classPanelCallbacks"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>(Z)V

    iput-object p1, p0, LG4/a;->Z:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    iput-object p2, p0, LG4/a;->X:Ljava/lang/Class;

    iput-object p3, p0, LG4/a;->Y:Ljava/lang/Object;

    iput-object p4, p0, LG4/a;->b0:LG4/b;

    return-void
.end method

.method public static synthetic p1(LG4/a;)LG4/b;
    .locals 0

    iget-object p0, p0, LG4/a;->b0:LG4/b;

    return-object p0
.end method

.method public static synthetic q1(LG4/a;)V
    .locals 0

    invoke-virtual {p0}, LG4/a;->r1()V

    return-void
.end method

.method private u1(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries",
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LC5/b;

    iget-object v0, v3, LC5/b;->n:LC5/b$a;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v0, v3, v1, v2}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget-object v1, LC5/b$a;->Component:LC5/b$a;

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    new-instance v6, LG4/a$b;

    invoke-direct {v6, p0}, LG4/a$b;-><init>(LG4/a;)V

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LG4/a;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, LG4/a;->r1()V

    return-object v0
.end method

.method public G0()V
    .locals 1

    iget-object v0, p0, LG4/a;->b0:LG4/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LG4/b;->a(LG4/a;)V

    :cond_0
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 5

    new-instance v0, LG4/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LG4/a;->X:Ljava/lang/Class;

    iget-object v3, p0, LG4/a;->Y:Ljava/lang/Object;

    iget-object v4, p0, LG4/a;->b0:LG4/b;

    invoke-direct {v0, v1, v2, v3, v4}, LG4/a;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LG4/b;)V

    return-object v0
.end method

.method public final r1()V
    .locals 5

    iget-object v0, p0, LG4/a;->X:Ljava/lang/Class;

    iget-object v1, p0, LG4/a;->Y:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LG4/a$a;

    invoke-direct {v3, p0}, LG4/a$a;-><init>(LG4/a;)V

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, LP8/f;->B(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;ZLP8/p;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LG4/a;->a0:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, LG4/a;->u1(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public s1()LG4/b;
    .locals 1

    iget-object v0, p0, LG4/a;->b0:LG4/b;

    return-object v0
.end method

.method public t1(LG4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classPanelCallbacks"
        }
    .end annotation

    iput-object p1, p0, LG4/a;->b0:LG4/b;

    return-void
.end method
