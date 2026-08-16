.class public LG4/e;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final d0:Ljava/lang/String; = "EntriesClassPanel"


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

.field public Z:Landroid/widget/LinearLayout;

.field public a0:LG4/f;

.field public b0:Z

.field public c0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;


# direct methods
.method public constructor <init>(Ljava/lang/String;LG4/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "callbacks"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>(Z)V

    iput-object p1, p0, LG4/e;->Y:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, LG4/e;->b0:Z

    .line 4
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, LG4/e;->X:Ljava/util/List;

    .line 5
    iput-object p2, p0, LG4/e;->a0:LG4/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;LG4/f;)V
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
            "LG4/f;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>(Z)V

    iput-object p1, p0, LG4/e;->Y:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, LG4/e;->b0:Z

    .line 9
    iput-object p2, p0, LG4/e;->X:Ljava/util/List;

    .line 10
    iput-object p3, p0, LG4/e;->a0:LG4/f;

    return-void
.end method

.method public static synthetic p1(LG4/e;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LG4/e;->w1(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic q1(LG4/e;)LG4/f;
    .locals 0

    iget-object p0, p0, LG4/e;->a0:LG4/f;

    return-object p0
.end method

.method private r1()V
    .locals 2

    iget-object v0, p0, LG4/e;->X:Ljava/util/List;

    iget-object v1, p0, LG4/e;->Z:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, LG4/e;->w1(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private w1(Ljava/util/List;Landroid/widget/LinearLayout;)V
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

    new-instance v8, LG4/e$a;

    invoke-direct {v8, p0, p1, p2}, LG4/e$a;-><init>(LG4/e;Ljava/util/List;Landroid/widget/LinearLayout;)V

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

.method public static x1(Ljava/lang/String;IILG4/f;)LG4/e;
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
            "w",
            "h",
            "callbacks"
        }
    .end annotation

    new-instance v0, LG4/e;

    invoke-direct {v0, p0, p3}, LG4/e;-><init>(Ljava/lang/String;LG4/f;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    invoke-static {p1}, LN7/c;->g(I)F

    move-result p0

    invoke-static {p2}, LN7/c;->f(I)F

    move-result p3

    invoke-static {v0, p0, p3}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput-object p0, v0, LG4/e;->c0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object v0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c012e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LG4/e;->Z:Landroid/widget/LinearLayout;

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LG4/e$b;

    invoke-direct {v2, p0}, LG4/e$b;-><init>(LG4/e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, LG4/e$c;

    invoke-direct {v2, p0}, LG4/e$c;-><init>(LG4/e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CANCEL:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090350

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, LG4/e$d;

    invoke-direct {v3, p0}, LG4/e$d;-><init>(LG4/e;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_NEXT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, LG4/e;->a0:LG4/f;

    if-eqz v3, :cond_0

    invoke-interface {v3}, LG4/f;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, LG4/e;->r1()V

    iget-object v1, p0, LG4/e;->a0:LG4/f;

    invoke-interface {v1, p0}, LG4/f;->b(LG4/e;)V

    return-object v0
.end method

.method public G0()V
    .locals 1

    iget-object v0, p0, LG4/e;->a0:LG4/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LG4/f;->e(LG4/e;)V

    :cond_0
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 4

    new-instance v0, LG4/e;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LG4/e;->X:Ljava/util/List;

    iget-object v3, p0, LG4/e;->a0:LG4/f;

    invoke-direct {v0, v1, v2, v3}, LG4/e;-><init>(Ljava/lang/String;Ljava/util/List;LG4/f;)V

    return-object v0
.end method

.method public n1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-boolean v0, p0, LG4/e;->b0:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lrc/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public s1()LG4/f;
    .locals 1

    iget-object v0, p0, LG4/e;->a0:LG4/f;

    return-object v0
.end method

.method public t1()V
    .locals 2

    iget-object v0, p0, LG4/e;->X:Ljava/util/List;

    iget-object v1, p0, LG4/e;->Z:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, LG4/e;->w1(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public u1(LG4/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    iput-object p1, p0, LG4/e;->a0:LG4/f;

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

    iput-object p1, p0, LG4/e;->X:Ljava/util/List;

    iget-object v0, p0, LG4/e;->Z:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, LG4/e;->w1(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method
