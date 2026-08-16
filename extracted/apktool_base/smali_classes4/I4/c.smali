.class public LI4/c;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI4/c$e;
    }
.end annotation


# static fields
.field public static final c0:Ljava/lang/String; = "ChangePlan"


# instance fields
.field public X:LI4/d;

.field public final Y:Ljava/lang/String;

.field public final Z:Ljava/lang/String;

.field public a0:Landroidx/recyclerview/widget/RecyclerView;

.field public b0:Le7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/a<",
            "LI4/a;",
            "LI4/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LI4/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cloudSyncPlans",
            "title",
            "productID"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "Cloud sync"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, LI4/c;->X:LI4/d;

    iput-object p2, p0, LI4/c;->Y:Ljava/lang/String;

    iput-object p3, p0, LI4/c;->Z:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic p1(LI4/c;)LI4/d;
    .locals 0

    iget-object p0, p0, LI4/c;->X:LI4/d;

    return-object p0
.end method

.method public static synthetic q1(LI4/c;)Le7/a;
    .locals 0

    iget-object p0, p0, LI4/c;->b0:Le7/a;

    return-object p0
.end method

.method public static synthetic r1(LI4/c;Ljava/lang/String;LI4/c$e;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LI4/c;->s1(Ljava/lang/String;LI4/c$e;)V

    return-void
.end method

.method public static t1(LI4/d;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cloudSyncPlans",
            "title",
            "productID",
            "anchor",
            "side"
        }
    .end annotation

    new-instance p3, LI4/c;

    invoke-direct {p3, p0, p1, p2}, LI4/c;-><init>(LI4/d;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x188

    invoke-static {p0}, LN7/c;->g(I)F

    move-result p0

    const/16 p1, 0xe6

    invoke-static {p1}, LN7/c;->f(I)F

    move-result p1

    invoke-static {p3, p0, p1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LI4/c$a;

    invoke-direct {v1, p0}, LI4/c$a;-><init>(LI4/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, LI4/c$b;

    invoke-direct {v3, p0}, LI4/c$b;-><init>(LI4/c;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09053c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, LI4/c;->Y:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0903df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, LI4/c;->a0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, LI4/c;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Le7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LI4/c$c;

    invoke-direct {v3, p0}, LI4/c$c;-><init>(LI4/c;)V

    invoke-direct {v1, v2, v3}, Le7/a;-><init>(Landroid/content/Context;Le7/a$a;)V

    iput-object v1, p0, LI4/c;->b0:Le7/a;

    iget-object v2, p0, LI4/c;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    new-instance v2, LI4/c$d;

    invoke-direct {v2, p0}, LI4/c$d;-><init>(LI4/c;)V

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->d(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/a;)V

    return-object v0
.end method

.method public final s1(Ljava/lang/String;LI4/c$e;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "period",
            "listener"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Core/Components/GIAP/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/GIAP/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/GIAP/c;->a(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/GIAP/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/GIAP/d;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CLOUD_SYNC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/GIAP/d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LI4/c;->Z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/GIAP/b;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Core/Components/GIAP/b$a;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/GIAP/b$a;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/GIAP/b$a;->c()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/GIAP/b;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v4, v1, v3}, LI4/c$e;->a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/GIAP/b$b;Lcom/itsmagic/engine/Core/Components/GIAP/b;Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)V

    :cond_2
    return-void
.end method
