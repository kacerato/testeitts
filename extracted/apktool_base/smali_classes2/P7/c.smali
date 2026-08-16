.class public abstract LP7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:LP7/d;

.field public final d:Landroid/app/Activity;

.field public final e:Landroid/view/LayoutInflater;

.field public final f:LV7/d;

.field public final g:LV7/c;

.field public h:Landroid/widget/FrameLayout;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/view/View;

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/widget/EditText;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/HorizontalScrollView;

.field public volatile r:Z

.field public s:Z

.field public t:Z

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "LP7/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;LV7/d;LV7/c;)V
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

    iput-boolean v0, p0, LP7/c;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LP7/c;->s:Z

    iput-boolean v0, p0, LP7/c;->t:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LP7/c;->u:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    iput-object p1, p0, LP7/c;->d:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, LP7/c;->e:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600af

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LP7/c;->a:I

    iput p1, p0, LP7/c;->b:I

    iput-object p2, p0, LP7/c;->f:LV7/d;

    iput-object p3, p0, LP7/c;->g:LV7/c;

    return-void
.end method

.method public static synthetic a(LP7/c;)V
    .locals 0

    invoke-virtual {p0}, LP7/c;->C()V

    return-void
.end method

.method public static synthetic b(LP7/c;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, LP7/c;->v:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic c(LP7/c;)Landroid/widget/HorizontalScrollView;
    .locals 0

    iget-object p0, p0, LP7/c;->q:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method public static synthetic d(LP7/c;Landroid/view/View;LR7/b;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LP7/c;->v(Landroid/view/View;LR7/b;Z)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iput-boolean p1, p0, LP7/c;->t:Z

    invoke-virtual {p0}, LP7/c;->G()V

    return-void
.end method

.method public B(Z)V
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

    iget-object p1, p0, LP7/c;->n:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LP7/c;->o:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LP7/c;->q:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LP7/c;->p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LP7/c;->l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LP7/c;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LP7/c;->g(Z)LP7/b;

    iget-object p1, p0, LP7/c;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final C()V
    .locals 3

    iget-object v0, p0, LP7/c;->n:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LP7/c;->n:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LP7/c;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LP7/c;->q:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LP7/c;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LP7/c;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LP7/c;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, LP7/c;->m()V

    return-void
.end method

.method public D()V
    .locals 2

    iget-boolean v0, p0, LP7/c;->r:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, LP7/c;->r:Z

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP7/b;

    invoke-virtual {p0, v1}, LP7/c;->F(LP7/b;)V

    invoke-virtual {v1}, LP7/b;->D()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final E()V
    .locals 3

    invoke-virtual {p0}, LP7/c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LP7/c;->m:Landroid/widget/ImageView;

    const v1, 0x7f070150

    iget-object v2, p0, LP7/c;->d:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LP7/c;->m:Landroid/widget/ImageView;

    const v1, 0x7f07025a

    iget-object v2, p0, LP7/c;->d:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public final F(LP7/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stack"
        }
    .end annotation

    iget-boolean v0, p0, LP7/c;->r:Z

    invoke-virtual {p1, v0}, LP7/b;->X(Z)V

    iget-boolean v0, p0, LP7/c;->s:Z

    invoke-virtual {p1, v0}, LP7/b;->W(Z)V

    iget-boolean v0, p0, LP7/c;->r:Z

    if-eqz v0, :cond_0

    iget v0, p0, LP7/c;->b:I

    invoke-virtual {p1, v0}, LP7/b;->Z(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LP7/c;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, LP7/b;->Z(I)V

    :goto_0
    return-void
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, LP7/c;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, LP7/c;->t:Z

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

.method public H()V
    .locals 1

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP7/b;

    invoke-virtual {v0}, LP7/b;->f0()V

    :cond_0
    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
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
    iget-object v0, p0, LP7/c;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP7/b;

    invoke-virtual {v1, p1}, LP7/b;->z(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()LP7/b;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LP7/c;->g(Z)LP7/b;

    move-result-object v0

    return-object v0
.end method

.method public final g(Z)LP7/b;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "search"
        }
    .end annotation

    new-instance v7, LP7/c$i;

    iget-object v2, p0, LP7/c;->d:Landroid/app/Activity;

    iget-object v3, p0, LP7/c;->f:LV7/d;

    iget-object v4, p0, LP7/c;->g:LV7/c;

    new-instance v6, LP7/c$h;

    invoke-direct {v6, p0}, LP7/c$h;-><init>(LP7/c;)V

    move-object v0, v7

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, LP7/c$i;-><init>(LP7/c;Landroid/app/Activity;LV7/d;LV7/c;ZLP7/b$i;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, LP7/c;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LP7/c;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v7, v0}, LP7/b;->z(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v7}, LP7/c;->F(LP7/b;)V

    iget-object p1, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LP7/b;

    invoke-virtual {p1}, LP7/b;->G()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {p1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, LP7/b;->C()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, LP7/c;->h:Landroid/widget/FrameLayout;

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

.method public h(Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    iget-object v0, p0, LP7/c;->e:Landroid/view/LayoutInflater;

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

    const p1, 0x7f090556

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LP7/c;->i:Landroid/view/View;

    const p1, 0x7f090293

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, LP7/c;->h:Landroid/widget/FrameLayout;

    const p1, 0x7f090244

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LP7/c;->j:Landroid/view/View;

    const p1, 0x7f090569

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LP7/c;->k:Landroid/widget/TextView;

    const p1, 0x7f090304

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LP7/c;->l:Landroid/view/View;

    const p1, 0x7f09024a

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, LP7/c;->m:Landroid/widget/ImageView;

    const p1, 0x7f090432

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, LP7/c;->n:Landroid/widget/EditText;

    const p1, 0x7f09056a

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, LP7/c;->q:Landroid/widget/HorizontalScrollView;

    const p1, 0x7f09042f

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LP7/c;->p:Landroid/view/View;

    const p1, 0x7f0904cc

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LP7/c;->o:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LP7/c;->j:Landroid/view/View;

    new-instance v1, LP7/c$a;

    invoke-direct {v1, p0}, LP7/c$a;-><init>(LP7/c;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LP7/c;->m:Landroid/widget/ImageView;

    new-instance v1, LP7/c$b;

    invoke-direct {v1, p0}, LP7/c$b;-><init>(LP7/c;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, LP7/c;->E()V

    iget-object p1, p0, LP7/c;->p:Landroid/view/View;

    new-instance v1, LP7/c$c;

    invoke-direct {v1, p0}, LP7/c$c;-><init>(LP7/c;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LP7/c;->o:Landroid/view/View;

    new-instance v1, LP7/c$d;

    invoke-direct {v1, p0}, LP7/c$d;-><init>(LP7/c;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, LP7/c;->n:Landroid/widget/EditText;

    new-instance v1, LP7/c$e;

    invoke-direct {v1, p0}, LP7/c$e;-><init>(LP7/c;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, LP7/c;->n:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LP7/c;->n:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LP7/c;->o:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LP7/c;->q:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LP7/c;->p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LP7/c;->l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, LP7/c;->j:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, LP7/c;->G()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP7/b;

    invoke-virtual {v0}, LP7/b;->D()V

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, LP7/c;->b:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP7/b;

    invoke-virtual {v0}, LP7/b;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/io/File;
    .locals 1

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP7/b;

    invoke-virtual {v0}, LP7/b;->I()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP7/b;

    iget-object v1, p0, LP7/c;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, LP7/b;->G()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP7/b;

    invoke-virtual {v0}, LP7/b;->G()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP7/b;

    invoke-virtual {v0}, LP7/b;->K()V

    :cond_1
    :goto_0
    iget-object v0, p0, LP7/c;->k:Landroid/widget/TextView;

    iget-object v1, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP7/b;

    invoke-virtual {v1}, LP7/b;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LP7/c;->k:Landroid/widget/TextView;

    new-instance v1, LP7/c$g;

    invoke-direct {v1, p0}, LP7/c$g;-><init>(LP7/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP7/b;

    invoke-virtual {v0}, LP7/b;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LP7/c;->r(Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openFolder"
        }
    .end annotation

    invoke-virtual {p0}, LP7/c;->f()LP7/b;

    move-result-object v0

    invoke-virtual {v0, p1}, LP7/b;->L(Ljava/lang/String;)V

    iget-object p1, p0, LP7/c;->k:Landroid/widget/TextView;

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP7/b;

    invoke-virtual {v0}, LP7/b;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LP7/c;->k:Landroid/widget/TextView;

    new-instance v0, LP7/c$f;

    invoke-direct {v0, p0}, LP7/c$f;-><init>(LP7/c;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LP7/b;

    invoke-virtual {p1}, LP7/b;->F()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LP7/c;->r(Ljava/lang/String;)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, LP7/c;->s:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, LP7/c;->r:Z

    return v0
.end method

.method public abstract q(Ljava/lang/String;Landroid/view/View;)V
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

.method public r(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openFolder"
        }
    .end annotation

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

.method public abstract t(Ljava/io/File;Landroid/view/View;)V
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

.method public final v(Landroid/view/View;LR7/b;Z)V
    .locals 4
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

    instance-of p3, p2, LR7/f;

    if-eqz p3, :cond_2

    move-object p3, p2

    check-cast p3, LR7/f;

    invoke-virtual {p3}, LR7/b;->u()Ljava/io/File;

    move-result-object p3

    iget-object v0, p0, LP7/c;->f:LV7/d;

    invoke-virtual {v0}, LV7/d;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, LP7/c;->n(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, LR7/b;->u()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, LP7/c;->t(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

.method public w(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowAsyncUpdate"
        }
    .end annotation

    iput-boolean p1, p0, LP7/c;->s:Z

    return-void
.end method

.method public x(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "grid"
        }
    .end annotation

    iput-boolean p1, p0, LP7/c;->r:Z

    iget-object p1, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP7/b;

    invoke-virtual {p0, v0}, LP7/c;->F(LP7/b;)V

    invoke-virtual {v0}, LP7/b;->D()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LP7/c;->E()V

    return-void
.end method

.method public y(I)V
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
    iget v0, p0, LP7/c;->b:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, LP7/c;->b:I

    iget-object v0, p0, LP7/c;->v:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP7/b;

    invoke-virtual {v1}, LP7/b;->N()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, LP7/b;->Z(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LP7/c;->c:LP7/d;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, LP7/d;->a(I)V

    :cond_4
    return-void
.end method

.method public z(LP7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, LP7/c;->c:LP7/d;

    return-void
.end method
