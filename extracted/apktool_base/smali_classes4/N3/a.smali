.class public LN3/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# instance fields
.field public X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ">;"
        }
    .end annotation
.end field

.field public Y:Landroid/widget/LinearLayout;

.field public Z:LF7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF7/l<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ">;"
        }
    .end annotation
.end field

.field public a0:Landroid/widget/TextView;

.field public b0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic p1(LN3/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LN3/a;->X:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic q1(LN3/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V
    .locals 0

    invoke-virtual {p0, p1}, LN3/a;->t1(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V

    return-void
.end method

.method public static synthetic r1(LN3/a;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, LN3/a;->v1(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LN3/a$a;

    invoke-direct {v1, p0}, LN3/a$a;-><init>(LN3/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090457

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LN3/a;->a0:Landroid/widget/TextView;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LN3/a;->Y:Landroid/widget/LinearLayout;

    const v1, 0x7f0902b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, LF7/l;

    new-instance v3, LN3/a$b;

    invoke-direct {v3, p0}, LN3/a$b;-><init>(LN3/a;)V

    invoke-direct {v2, v1, v3}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v2, p0, LN3/a;->Z:LF7/l;

    return-object v0
.end method

.method public n1()V
    .locals 4

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, LN3/a;->b0:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LN3/a;->Z:LF7/l;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LN3/a;->Z:LF7/l;

    invoke-virtual {v1}, LF7/l;->k()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LN3/a;->Z:LF7/l;

    invoke-virtual {v1, v0}, LF7/l;->j(I)LF7/i;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LN3/a;->b0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, LN3/a;->Z:LF7/l;

    invoke-virtual {v0, v1}, LF7/l;->D(LF7/i;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, LN3/a;->b0:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public s1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jumpTo"
        }
    .end annotation

    iput-object p1, p0, LN3/a;->b0:Ljava/lang/String;

    return-void
.end method

.method public final t1(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, LN3/a;->a0:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, LN3/a;->v1(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN3/a;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LN3/a;->Z:LF7/l;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->x()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-virtual {v0, v1}, LF7/l;->D(LF7/i;)V

    :cond_1
    :goto_0
    iget-object v0, p1, LF7/i;->f:LF7/h;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, LF7/h;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LN3/a;->Z:LF7/l;

    invoke-virtual {v0, p1}, LF7/l;->z(LF7/i;)V

    :cond_2
    new-instance v0, LN3/a$c;

    invoke-direct {v0, p0, p1}, LN3/a$c;-><init>(LN3/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->C(LN3/b;)V

    return-void
.end method

.method public u1(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingsPages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LN3/a;->X:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->x()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, LF7/i;->r(Z)V

    invoke-virtual {v2, v0}, LF7/i;->q(I)V

    iget-object v2, v2, LF7/i;->f:LF7/h;

    iput-boolean v4, v2, LF7/h;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v1(Ljava/util/List;)V
    .locals 9
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

    iget-object v0, p0, LN3/a;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

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

    iget-object v2, p0, LN3/a;->Y:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v5, v0, v4}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_1

    :cond_0
    sget-object v3, LC5/b$a;->Component:LC5/b$a;

    if-ne v2, v3, :cond_1

    iget-object v3, p0, LN3/a;->Y:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v7

    new-instance v8, LN3/a$d;

    invoke-direct {v8, p0, p1}, LN3/a$d;-><init>(LN3/a;Ljava/util/List;)V

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, LN3/a;->Y:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
