.class public abstract Lh7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I

.field public c:Lh7/f;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final e:Landroid/content/Context;

.field public final f:Landroid/app/Activity;

.field public final g:Landroid/view/LayoutInflater;

.field public final h:Ln7/e;

.field public final i:Ln7/d;

.field public j:Landroid/widget/FrameLayout;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/view/View;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/EditText;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/widget/HorizontalScrollView;

.field public volatile t:Z

.field public u:Z

.field public v:Z

.field public final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lh7/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ln7/e;Ln7/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "explorerDataProvider",
            "filter"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh7/d;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh7/d;->u:Z

    iput-boolean v0, p0, Lh7/d;->v:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lh7/d;->w:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    iput-object p1, p0, Lh7/d;->e:Landroid/content/Context;

    iput-object p1, p0, Lh7/d;->f:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lh7/d;->g:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600af

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lh7/d;->a:I

    iput p1, p0, Lh7/d;->b:I

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object p1, p0, Lh7/d;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput-object p2, p0, Lh7/d;->h:Ln7/e;

    iput-object p3, p0, Lh7/d;->i:Ln7/d;

    return-void
.end method

.method public static synthetic a(Lh7/d;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic b(Lh7/d;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lh7/d;->j:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic c(Lh7/d;)V
    .locals 0

    invoke-virtual {p0}, Lh7/d;->F()V

    return-void
.end method

.method public static synthetic d(Lh7/d;)Landroid/widget/HorizontalScrollView;
    .locals 0

    iget-object p0, p0, Lh7/d;->s:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method public static synthetic e(Lh7/d;Landroid/view/View;Lj7/b;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lh7/d;->w(Landroid/view/View;Lj7/b;Z)V

    return-void
.end method


# virtual methods
.method public A(Lh7/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lh7/d;->c:Lh7/f;

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {v0, p1}, Lh7/b;->Y(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public C(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {v0, p1}, Lh7/b;->Z(Ljava/io/File;)V

    return-void
.end method

.method public D(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iput-boolean p1, p0, Lh7/d;->v:Z

    invoke-virtual {p0}, Lh7/d;->J()V

    return-void
.end method

.method public E(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showUi"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lh7/d;->p:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh7/d;->q:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh7/d;->s:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh7/d;->r:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh7/d;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh7/d;->l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lh7/d;->h(Z)Lh7/b;

    iget-object p1, p0, Lh7/d;->p:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final F()V
    .locals 3

    iget-object v0, p0, Lh7/d;->p:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh7/d;->p:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/d;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/d;->s:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/d;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/d;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/d;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lh7/d;->n()V

    return-void
.end method

.method public G()V
    .locals 2

    iget-boolean v0, p0, Lh7/d;->t:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lh7/d;->t:Z

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh7/b;

    invoke-virtual {p0, v1}, Lh7/d;->I(Lh7/b;)V

    invoke-virtual {v1}, Lh7/b;->D()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    invoke-virtual {p0}, Lh7/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh7/d;->o:Landroid/widget/ImageView;

    const v1, 0x7f070150

    invoke-static {v0, v1}, LVc/e;->U(Landroid/widget/ImageView;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh7/d;->o:Landroid/widget/ImageView;

    const v1, 0x7f07025a

    invoke-static {v0, v1}, LVc/e;->U(Landroid/widget/ImageView;I)V

    :goto_0
    return-void
.end method

.method public final I(Lh7/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stack"
        }
    .end annotation

    iget-boolean v0, p0, Lh7/d;->t:Z

    invoke-virtual {p1, v0}, Lh7/b;->X(Z)V

    iget-boolean v0, p0, Lh7/d;->u:Z

    invoke-virtual {p1, v0}, Lh7/b;->W(Z)V

    iget-boolean v0, p0, Lh7/d;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lh7/d;->b:I

    invoke-virtual {p1, v0}, Lh7/b;->a0(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh7/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lh7/b;->a0(I)V

    :goto_0
    return-void
.end method

.method public final J()V
    .locals 2

    iget-object v0, p0, Lh7/d;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lh7/d;->v:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public K()V
    .locals 1

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {v0}, Lh7/b;->g0()V

    :cond_0
    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh7/d;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh7/b;

    invoke-virtual {v1, p1}, Lh7/b;->z(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()Lh7/b;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lh7/d;->h(Z)Lh7/b;

    move-result-object v0

    return-object v0
.end method

.method public final h(Z)Lh7/b;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "search"
        }
    .end annotation

    new-instance v7, Lh7/d$a;

    iget-object v2, p0, Lh7/d;->f:Landroid/app/Activity;

    iget-object v3, p0, Lh7/d;->h:Ln7/e;

    iget-object v4, p0, Lh7/d;->i:Ln7/d;

    new-instance v6, Lh7/d$j;

    invoke-direct {v6, p0}, Lh7/d$j;-><init>(Lh7/d;)V

    move-object v0, v7

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lh7/d$a;-><init>(Lh7/d;Landroid/app/Activity;Ln7/e;Ln7/d;ZLh7/b$i;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lh7/d;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lh7/d;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v7, v0}, Lh7/b;->z(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v7}, Lh7/d;->I(Lh7/b;)V

    iget-object p1, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh7/b;

    invoke-virtual {p1}, Lh7/b;->G()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {p1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lh7/b;->C()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lh7/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7
.end method

.method public i(Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    iget-object v0, p0, Lh7/d;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f090566

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lh7/d;->k:Landroid/view/View;

    const p1, 0x7f090293

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lh7/d;->j:Landroid/widget/FrameLayout;

    const p1, 0x7f090244

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lh7/d;->l:Landroid/view/View;

    const p1, 0x7f090569

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lh7/d;->m:Landroid/widget/TextView;

    const p1, 0x7f090304

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lh7/d;->n:Landroid/view/View;

    const p1, 0x7f09024a

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lh7/d;->o:Landroid/widget/ImageView;

    const p1, 0x7f090432

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lh7/d;->p:Landroid/widget/EditText;

    const p1, 0x7f09056a

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lh7/d;->s:Landroid/widget/HorizontalScrollView;

    const p1, 0x7f09042f

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lh7/d;->r:Landroid/view/View;

    const p1, 0x7f0904cc

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lh7/d;->q:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh7/d;->l:Landroid/view/View;

    new-instance v1, Lh7/d$b;

    invoke-direct {v1, p0}, Lh7/d$b;-><init>(Lh7/d;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lh7/d;->n:Landroid/view/View;

    new-instance v1, Lh7/d$c;

    invoke-direct {v1, p0}, Lh7/d$c;-><init>(Lh7/d;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lh7/d;->o:Landroid/widget/ImageView;

    new-instance v1, Lh7/d$d;

    invoke-direct {v1, p0}, Lh7/d$d;-><init>(Lh7/d;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lh7/d;->H()V

    iget-object p1, p0, Lh7/d;->r:Landroid/view/View;

    new-instance v1, Lh7/d$e;

    invoke-direct {v1, p0}, Lh7/d$e;-><init>(Lh7/d;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lh7/d;->q:Landroid/view/View;

    new-instance v1, Lh7/d$f;

    invoke-direct {v1, p0}, Lh7/d$f;-><init>(Lh7/d;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lh7/d;->p:Landroid/widget/EditText;

    new-instance v1, Lh7/d$g;

    invoke-direct {v1, p0}, Lh7/d$g;-><init>(Lh7/d;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lh7/d;->p:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lh7/d;->p:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh7/d;->q:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh7/d;->s:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh7/d;->r:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh7/d;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lh7/d;->l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lh7/d;->J()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {v0}, Lh7/b;->D()V

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lh7/d;->b:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {v0}, Lh7/b;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {v0}, Lh7/b;->I()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    iget-object v1, p0, Lh7/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lh7/b;->G()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {v0}, Lh7/b;->G()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {v0}, Lh7/b;->K()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {v0}, Lh7/b;->F()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh7/d;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh7/d;->m:Landroid/widget/TextView;

    new-instance v1, Lh7/d$i;

    invoke-direct {v1, p0}, Lh7/d$i;-><init>(Lh7/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lh7/d;->r()V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openFolder"
        }
    .end annotation

    invoke-virtual {p0}, Lh7/d;->g()Lh7/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh7/b;->L(Ljava/lang/String;)V

    iget-object p1, p0, Lh7/d;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {v0}, Lh7/b;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lh7/d;->m:Landroid/widget/TextView;

    new-instance v0, Lh7/d$h;

    invoke-direct {v0, p0}, Lh7/d$h;-><init>(Lh7/d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lh7/d;->u:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lh7/d;->t:Z

    return v0
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public abstract s(Ljava/lang/String;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation
.end method

.method public abstract t(Ljava/lang/String;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation
.end method

.method public abstract u(Ljava/io/File;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation
.end method

.method public abstract v(Ljava/io/File;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation
.end method

.method public final w(Landroid/view/View;Lj7/b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "element",
            "fromUserAction"
        }
    .end annotation

    instance-of p3, p2, Lj7/f;

    if-eqz p3, :cond_0

    move-object p3, p2

    check-cast p3, Lj7/f;

    invoke-virtual {p3}, Lj7/b;->u()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lh7/d;->o(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lj7/b;->u()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lh7/d;->u(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method public x(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowAsyncUpdate"
        }
    .end annotation

    iput-boolean p1, p0, Lh7/d;->u:Z

    return-void
.end method

.method public y(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grid"
        }
    .end annotation

    iput-boolean p1, p0, Lh7/d;->t:Z

    iget-object p1, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh7/b;

    invoke-virtual {p0, v0}, Lh7/d;->I(Lh7/b;)V

    invoke-virtual {v0}, Lh7/b;->D()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lh7/d;->H()V

    return-void
.end method

.method public z(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lh7/d;->b:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lh7/d;->b:I

    iget-object v0, p0, Lh7/d;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh7/b;

    invoke-virtual {v1}, Lh7/b;->N()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Lh7/b;->a0(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lh7/d;->c:Lh7/f;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lh7/f;->a(I)V

    :cond_4
    return-void
.end method
