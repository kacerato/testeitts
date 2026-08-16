.class public LH4/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final e0:Ljava/lang/String; = "CloudSyncProjectPanel"


# instance fields
.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Le7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/a<",
            "LH4/b;",
            "LH4/c;",
            ">;"
        }
    .end annotation
.end field

.field public Z:F

.field public a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

.field public b0:Landroid/widget/TextView;

.field public c0:Landroid/view/View;

.field public d0:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloudSync"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "Cloud sync"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, LH4/a;->Z:F

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    iput-object p1, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    return-void
.end method

.method public static synthetic p1(LH4/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;
    .locals 0

    iget-object p0, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    return-object p0
.end method

.method public static synthetic q1(LH4/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;
    .locals 0

    iput-object p1, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    return-object p1
.end method

.method public static synthetic r1(LH4/a;)V
    .locals 0

    invoke-direct {p0}, LH4/a;->s1()V

    return-void
.end method

.method private s1()V
    .locals 8

    iget-object v0, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->A()Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    move-result-object v0

    iput-object v0, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    :cond_0
    iget-object v0, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->y()Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings;->enableCloudSync:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, LH4/a;->c0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move v3, v2

    :goto_0
    iget-object v4, p0, LH4/a;->Y:Le7/a;

    invoke-virtual {v4}, Le7/a;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, LH4/a;->Y:Le7/a;

    invoke-virtual {v4, v3}, Le7/a;->m(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LH4/b;

    iget-object v5, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    iget-object v6, v4, LH4/b;->a:LE3/a;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->C(LE3/a;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, LH4/a;->Y:Le7/a;

    invoke-virtual {v3}, Le7/a;->getItemCount()I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_6

    move v3, v2

    :goto_1
    iget-object v5, p0, LH4/a;->Y:Le7/a;

    invoke-virtual {v5}, Le7/a;->getItemCount()I

    move-result v5

    if-ge v3, v5, :cond_6

    iget-object v5, p0, LH4/a;->Y:Le7/a;

    invoke-virtual {v5, v3}, Le7/a;->m(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LH4/b;

    invoke-virtual {v5}, LH4/b;->g()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    invoke-virtual {v5}, LH4/b;->g()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v3, p0, LH4/a;->Y:Le7/a;

    invoke-virtual {v3, v0}, Le7/a;->s(Ljava/util/List;)V

    iget-object v0, p0, LH4/a;->Y:Le7/a;

    invoke-virtual {v0}, Le7/a;->getItemCount()I

    move-result v0

    if-ge v0, v4, :cond_b

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move v3, v2

    :goto_3
    iget-object v4, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->n()I

    move-result v4

    if-ge v3, v4, :cond_a

    iget-object v4, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->m(I)LE3/a;

    move-result-object v4

    move v5, v2

    move v6, v5

    :goto_4
    iget-object v7, p0, LH4/a;->Y:Le7/a;

    invoke-virtual {v7}, Le7/a;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_8

    iget-object v7, p0, LH4/a;->Y:Le7/a;

    invoke-virtual {v7, v5}, Le7/a;->m(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LH4/b;

    iget-object v7, v7, LH4/b;->a:LE3/a;

    if-ne v7, v4, :cond_7

    const/4 v6, 0x1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    if-nez v6, :cond_9

    new-instance v5, LH4/b;

    invoke-direct {v5, v4}, LH4/b;-><init>(LE3/a;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    iget-object v3, p0, LH4/a;->Y:Le7/a;

    invoke-virtual {v3, v0}, Le7/a;->i(Ljava/util/List;)V

    :cond_b
    iget-object v0, p0, LH4/a;->Y:Le7/a;

    new-instance v3, LH4/a$f;

    invoke-direct {v3, p0}, LH4/a$f;-><init>(LH4/a;)V

    invoke-virtual {v0, v3}, Le7/a;->o(Ljava/util/Comparator;)V

    iget-object v0, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->z()I

    move-result v0

    iget-object v3, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->n()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;->z()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v2, p0, LH4/a;->b0:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LH4/a;->d0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_c
    iget-object v0, p0, LH4/a;->b0:Landroid/widget/TextView;

    const-string v1, "Cloud sync"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LH4/a;->d0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void

    :cond_d
    iget-object v0, p0, LH4/a;->c0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LH4/a;->d0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static t1(Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "side"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, LH4/a;->u1(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static u1(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cloudSync",
            "anchor",
            "side"
        }
    .end annotation

    const-string p0, "Cloud sync was disabled!"

    invoke-static {p0}, LN7/c;->v0(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LH4/a$b;

    invoke-direct {v1, p0}, LH4/a$b;-><init>(LH4/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LH4/a;->b0:Landroid/widget/TextView;

    const v1, 0x7f0903df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, LH4/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, LH4/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const v1, 0x7f090369

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LH4/a;->c0:Landroid/view/View;

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LH4/a;->d0:Landroid/view/View;

    iget-object v1, p0, LH4/a;->c0:Landroid/view/View;

    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LH4/a$c;

    invoke-direct {v2, p0}, LH4/a$c;-><init>(LH4/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Le7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LH4/a$d;

    invoke-direct {v3, p0}, LH4/a$d;-><init>(LH4/a;)V

    invoke-direct {v1, v2, v3}, Le7/a;-><init>(Landroid/content/Context;Le7/a$a;)V

    iput-object v1, p0, LH4/a;->Y:Le7/a;

    iget-object v2, p0, LH4/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v1, 0x7f090303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LH4/a$e;

    invoke-direct {v2, p0}, LH4/a$e;-><init>(LH4/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, LH4/a;->s1()V

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, LH4/a;

    iget-object v1, p0, LH4/a;->a0:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;

    invoke-direct {v0, v1}, LH4/a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/a;)V

    return-object v0
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget v0, p0, LH4/a;->Z:F

    invoke-static {}, LK8/d;->d()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, LH4/a;->Z:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, LH4/a;->Y:Le7/a;

    new-instance v1, LH4/a$a;

    invoke-direct {v1, p0}, LH4/a$a;-><init>(LH4/a;)V

    invoke-virtual {v0, v1}, Le7/a;->o(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    iput v0, p0, LH4/a;->Z:F

    :cond_0
    return-void
.end method

.method public o1()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    invoke-direct {p0}, LH4/a;->s1()V

    return-void
.end method
