.class public LG4/c;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final c0:Ljava/lang/String; = "EntriesClassPanel"


# instance fields
.field public X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation
.end field

.field public Y:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public a0:Landroid/widget/LinearLayout;

.field public b0:LG4/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>(Z)V

    iput-object p1, p0, LG4/c;->Y:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 3
    iput-object p2, p0, LG4/c;->X:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;LG4/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "entries",
            "callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "LG4/d;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>(Z)V

    iput-object p1, p0, LG4/c;->Y:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 6
    iput-object p2, p0, LG4/c;->X:Ljava/util/List;

    .line 7
    iput-object p3, p0, LG4/c;->b0:LG4/d;

    return-void
.end method

.method public static synthetic p1(LG4/c;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LG4/c;->z1(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic q1(LG4/c;)LG4/d;
    .locals 0

    iget-object p0, p0, LG4/c;->b0:LG4/d;

    return-object p0
.end method

.method private r1()V
    .locals 2

    iget-object v0, p0, LG4/c;->X:Ljava/util/List;

    iget-object v1, p0, LG4/c;->a0:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, LG4/c;->z1(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static w1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;FFLjava/util/List;)LG4/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "anchorSide",
            "tittle",
            "w",
            "h",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lr4/a$e;",
            "Ljava/lang/String;",
            "FF",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)",
            "LG4/c;"
        }
    .end annotation

    new-instance v0, LG4/c;

    invoke-direct {v0, p2, p5}, LG4/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    invoke-static {p0, v0, p1, p3, p4}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object v0
.end method

.method public static x1(Ljava/lang/String;IILjava/util/List;)LG4/c;
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
            "wdp",
            "hdp",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)",
            "LG4/c;"
        }
    .end annotation

    new-instance v0, LG4/c;

    invoke-direct {v0, p0, p3}, LG4/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    invoke-static {p1}, LN7/c;->g(I)F

    move-result p0

    invoke-static {p2}, LN7/c;->f(I)F

    move-result p1

    invoke-static {v0, p0, p1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    iput-object p0, v0, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object v0
.end method

.method public static y1(Ljava/lang/String;Ljava/util/List;)LG4/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)",
            "LG4/c;"
        }
    .end annotation

    new-instance v0, LG4/c;

    invoke-direct {v0, p0, p1}, LG4/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    const/16 p0, 0xfa

    invoke-static {p0}, LN7/c;->g(I)F

    move-result p1

    invoke-static {p0}, LN7/c;->f(I)F

    move-result p0

    invoke-static {v0, p1, p0}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    iput-object p0, v0, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object v0
.end method

.method private z1(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 9
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

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, LC5/b;

    iget-object v2, v5, LC5/b;->n:LC5/b$a;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-static {p2, v2, v5, v0, v3}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_1

    :cond_0
    sget-object v3, LC5/b$a;->Component:LC5/b$a;

    if-ne v2, v3, :cond_1

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v7

    new-instance v8, LG4/c$a;

    invoke-direct {v8, p0, p1, p2}, LG4/c$a;-><init>(LG4/c;Ljava/util/List;Landroid/widget/LinearLayout;)V

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    :goto_1
    add-int/lit8 v1, v1, 0x1

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

    new-instance v1, LG4/c$b;

    invoke-direct {v1, p0}, LG4/c$b;-><init>(LG4/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0902b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LG4/c;->a0:Landroid/widget/LinearLayout;

    invoke-direct {p0}, LG4/c;->r1()V

    return-object v0
.end method

.method public G0()V
    .locals 1

    iget-object v0, p0, LG4/c;->b0:LG4/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LG4/d;->a(LG4/c;)V

    :cond_0
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 4

    new-instance v0, LG4/c;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LG4/c;->X:Ljava/util/List;

    iget-object v3, p0, LG4/c;->b0:LG4/d;

    invoke-direct {v0, v1, v2, v3}, LG4/c;-><init>(Ljava/lang/String;Ljava/util/List;LG4/d;)V

    return-object v0
.end method

.method public s1()LG4/d;
    .locals 1

    iget-object v0, p0, LG4/c;->b0:LG4/d;

    return-object v0
.end method

.method public t1()V
    .locals 2

    iget-object v0, p0, LG4/c;->X:Ljava/util/List;

    iget-object v1, p0, LG4/c;->a0:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, LG4/c;->z1(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public u1(LG4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    iput-object p1, p0, LG4/c;->b0:LG4/d;

    return-void
.end method

.method public v1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LG4/c;->X:Ljava/util/List;

    iget-object v0, p0, LG4/c;->a0:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, LG4/c;->z1(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method
