.class public Lh7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/e$h;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public A:Li7/a;

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj7/b;",
            ">;"
        }
    .end annotation
.end field

.field public C:Lj7/b;

.field public D:Z

.field public E:I

.field public F:I

.field public G:Landroid/view/View;

.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/app/Activity;

.field public c:Landroid/view/LayoutInflater;

.field public d:Ln7/f;

.field public e:Lk7/b;

.field public f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/LinearLayout;

.field public k:I

.field public l:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Lh7/e$h;

.field public p:Lh7/e$h;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Landroid/view/View;

.field public u:Landroid/view/View;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/HorizontalScrollView;

.field public x:Landroidx/recyclerview/widget/RecyclerView;

.field public y:LF7/l;

.field public z:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lh7/e;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 3
    iput-object v0, p0, Lh7/e;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lh7/e;->m:Z

    .line 5
    sget-object v1, Lh7/e$h;->Grid:Lh7/e$h;

    iput-object v1, p0, Lh7/e;->o:Lh7/e$h;

    .line 6
    iput-object v1, p0, Lh7/e;->p:Lh7/e$h;

    .line 7
    iput-boolean v0, p0, Lh7/e;->D:Z

    .line 8
    iput v0, p0, Lh7/e;->E:I

    .line 9
    iput v0, p0, Lh7/e;->F:I

    .line 10
    iput-object p1, p0, Lh7/e;->a:Landroid/widget/LinearLayout;

    .line 11
    iput-object p2, p0, Lh7/e;->b:Landroid/app/Activity;

    .line 12
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600cf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lh7/e;->k:I

    .line 13
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    .line 14
    new-instance p1, Lk7/a;

    invoke-direct {p1}, Lk7/a;-><init>()V

    iput-object p1, p0, Lh7/e;->e:Lk7/b;

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity",
            "layoutInflater"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lh7/e;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 17
    iput-object v0, p0, Lh7/e;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lh7/e;->m:Z

    .line 19
    sget-object v1, Lh7/e$h;->Grid:Lh7/e$h;

    iput-object v1, p0, Lh7/e;->o:Lh7/e$h;

    .line 20
    iput-object v1, p0, Lh7/e;->p:Lh7/e$h;

    .line 21
    iput-boolean v0, p0, Lh7/e;->D:Z

    .line 22
    iput v0, p0, Lh7/e;->E:I

    .line 23
    iput v0, p0, Lh7/e;->F:I

    .line 24
    iput-object p1, p0, Lh7/e;->a:Landroid/widget/LinearLayout;

    .line 25
    iput-object p2, p0, Lh7/e;->b:Landroid/app/Activity;

    .line 26
    iput-object p3, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0600cf

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lh7/e;->k:I

    .line 28
    iget-object p1, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    .line 29
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    .line 30
    :cond_0
    new-instance p1, Lk7/a;

    invoke-direct {p1}, Lk7/a;-><init>()V

    iput-object p1, p0, Lh7/e;->e:Lk7/b;

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;Ln7/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity",
            "layoutInflater",
            "explorerListener"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lh7/e;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 33
    iput-object v0, p0, Lh7/e;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lh7/e;->m:Z

    .line 35
    sget-object v1, Lh7/e$h;->Grid:Lh7/e$h;

    iput-object v1, p0, Lh7/e;->o:Lh7/e$h;

    .line 36
    iput-object v1, p0, Lh7/e;->p:Lh7/e$h;

    .line 37
    iput-boolean v0, p0, Lh7/e;->D:Z

    .line 38
    iput v0, p0, Lh7/e;->E:I

    .line 39
    iput v0, p0, Lh7/e;->F:I

    .line 40
    iput-object p1, p0, Lh7/e;->a:Landroid/widget/LinearLayout;

    .line 41
    iput-object p2, p0, Lh7/e;->b:Landroid/app/Activity;

    .line 42
    iput-object p3, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    .line 43
    iput-object p4, p0, Lh7/e;->d:Ln7/f;

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0600cf

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lh7/e;->k:I

    .line 45
    iget-object p1, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    .line 46
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    .line 47
    :cond_0
    new-instance p1, Lk7/a;

    invoke-direct {p1}, Lk7/a;-><init>()V

    iput-object p1, p0, Lh7/e;->e:Lk7/b;

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;Ln7/f;Lk7/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity",
            "layoutInflater",
            "explorerListener",
            "projectFilter"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lh7/e;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 50
    iput-object v0, p0, Lh7/e;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lh7/e;->m:Z

    .line 52
    sget-object v1, Lh7/e$h;->Grid:Lh7/e$h;

    iput-object v1, p0, Lh7/e;->o:Lh7/e$h;

    .line 53
    iput-object v1, p0, Lh7/e;->p:Lh7/e$h;

    .line 54
    iput-boolean v0, p0, Lh7/e;->D:Z

    .line 55
    iput v0, p0, Lh7/e;->E:I

    .line 56
    iput v0, p0, Lh7/e;->F:I

    .line 57
    iput-object p1, p0, Lh7/e;->a:Landroid/widget/LinearLayout;

    .line 58
    iput-object p2, p0, Lh7/e;->b:Landroid/app/Activity;

    .line 59
    iput-object p3, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    .line 60
    iput-object p4, p0, Lh7/e;->d:Ln7/f;

    .line 61
    iput-object p5, p0, Lh7/e;->e:Lk7/b;

    .line 62
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0600cf

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lh7/e;->k:I

    .line 63
    iget-object p1, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    .line 64
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lh7/e;)LF7/l;
    .locals 0

    iget-object p0, p0, Lh7/e;->y:LF7/l;

    return-object p0
.end method

.method public static synthetic b(Lh7/e;Landroid/view/View;Lj7/b;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lh7/e;->z(Landroid/view/View;Lj7/b;Z)V

    return-void
.end method

.method public static synthetic c(Lh7/e;)Landroid/widget/HorizontalScrollView;
    .locals 0

    iget-object p0, p0, Lh7/e;->w:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method public static synthetic d(Lh7/e;Lj7/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lh7/e;->x(Lj7/b;)V

    return-void
.end method


# virtual methods
.method public A(Lj7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LF7/l;->z(LF7/i;)V

    :cond_0
    return-void
.end method

.method public B(Lj7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v0, p1}, LF7/l;->u(LF7/i;)V

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lh7/e;->U(Lj7/b;)V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Lh7/e;->d:Ln7/f;

    invoke-interface {v0}, Ln7/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh7/e;->H(Ljava/util/List;)V

    return-void
.end method

.method public D(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableImportFilesButton"
        }
    .end annotation

    iput-boolean p1, p0, Lh7/e;->m:Z

    return-void
.end method

.method public E(Ln7/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "explorerListener"
        }
    .end annotation

    iput-object p1, p0, Lh7/e;->d:Ln7/f;

    return-void
.end method

.method public F()V
    .locals 5

    iget-object v0, p0, Lh7/e;->d:Ln7/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ln7/f;->d(Lj7/b;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj7/b;

    iget-object v4, p0, Lh7/e;->e:Lk7/b;

    invoke-interface {v4, v3}, Lk7/b;->a(Lj7/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lh7/e;->B:Ljava/util/List;

    iget-object v0, p0, Lh7/e;->A:Li7/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Li7/a;->v(Ljava/util/List;Z)V

    return-void
.end method

.method public G(Landroid/view/LayoutInflater;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutInflater"
        }
    .end annotation

    iput-object p1, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method public H(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj7/b;

    iget-object v3, p0, Lh7/e;->e:Lk7/b;

    invoke-interface {v3, v2}, Lk7/b;->a(Lj7/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {p1, v0}, LF7/l;->C(Ljava/util/List;)V

    return-void
.end method

.method public I(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftPanelColor"
        }
    .end annotation

    iput-object p1, p0, Lh7/e;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh7/e;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh7/e;->b:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, LVc/e;->q(Landroid/view/View;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_0
    return-void
.end method

.method public J(Lk7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectFilter"
        }
    .end annotation

    iput-object p1, p0, Lh7/e;->e:Lk7/b;

    return-void
.end method

.method public K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightPanelColor"
        }
    .end annotation

    iput-object p1, p0, Lh7/e;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh7/e;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh7/e;->b:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, LVc/e;->q(Landroid/view/View;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_0
    return-void
.end method

.method public L(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedContentElementColor"
        }
    .end annotation

    iput-object p1, p0, Lh7/e;->l:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v0, p0, Lh7/e;->A:Li7/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Li7/a;->y(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_0
    return-void
.end method

.method public M(Lj7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LF7/l;->D(LF7/i;)V

    :cond_0
    invoke-virtual {p0, p1}, Lh7/e;->x(Lj7/b;)V

    return-void
.end method

.method public N(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewContentSize"
        }
    .end annotation

    iput p1, p0, Lh7/e;->k:I

    return-void
.end method

.method public O()Z
    .locals 2

    iget-object v0, p0, Lh7/e;->p:Lh7/e$h;

    sget-object v1, Lh7/e$h;->List:Lh7/e$h;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lh7/e;->D:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public P(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showFilePath"
        }
    .end annotation

    iput-object p1, p0, Lh7/e;->n:Ljava/lang/String;

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lh7/e;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lh7/e;->n:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public Q(Lj7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    iget-object v0, p1, LF7/i;->f:LF7/h;

    iget-boolean v0, v0, LF7/h;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lh7/e;->f(Lj7/b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lh7/e;->A(Lj7/b;)V

    :goto_0
    return-void
.end method

.method public R()V
    .locals 4

    iget-boolean v0, p0, Lh7/e;->D:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lh7/e;->o:Lh7/e$h;

    sget-object v2, Lh7/e$h;->Grid:Lh7/e$h;

    if-ne v1, v2, :cond_0

    sget-object v2, Lh7/e$h;->List:Lh7/e$h;

    :cond_0
    iput-object v2, p0, Lh7/e;->o:Lh7/e$h;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lh7/e;->p:Lh7/e$h;

    sget-object v2, Lh7/e$h;->Grid:Lh7/e$h;

    if-ne v1, v2, :cond_2

    sget-object v2, Lh7/e$h;->List:Lh7/e$h;

    :cond_2
    iput-object v2, p0, Lh7/e;->p:Lh7/e$h;

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lh7/e;->o:Lh7/e$h;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lh7/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/e;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/e;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lh7/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/e;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/e;->u:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lh7/e;->p:Lh7/e$h;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lh7/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/e;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/e;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lh7/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/e;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/e;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0}, Lh7/e;->C()V

    :goto_2
    return-void
.end method

.method public final S()V
    .locals 3

    iget-object v0, p0, Lh7/e;->A:Li7/a;

    invoke-virtual {v0}, Li7/a;->getItemCount()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lh7/e;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/e;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh7/e;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/e;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public T()V
    .locals 6

    iget-boolean v0, p0, Lh7/e;->D:Z

    iget-object v1, p0, Lh7/e;->G:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lh7/e;->F:I

    iget-object v2, p0, Lh7/e;->G:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iput v3, p0, Lh7/e;->E:I

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lh7/e;->F:I

    return-void

    :cond_0
    iget v1, p0, Lh7/e;->E:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lh7/e;->E:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    iget-object v1, p0, Lh7/e;->G:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, LNc/b;->f1(F)I

    move-result v1

    const/16 v4, 0x118

    const/16 v5, 0x8

    if-ge v1, v4, :cond_3

    iget-object v1, p0, Lh7/e;->o:Lh7/e$h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lh7/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lh7/e;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lh7/e;->u:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lh7/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lh7/e;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lh7/e;->u:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iput-boolean v2, p0, Lh7/e;->D:Z

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lh7/e;->p:Lh7/e$h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lh7/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lh7/e;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lh7/e;->u:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lh7/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lh7/e;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lh7/e;->u:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iput-boolean v3, p0, Lh7/e;->D:Z

    :cond_6
    :goto_2
    iget-boolean v1, p0, Lh7/e;->D:Z

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lh7/e;->C()V

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    check-cast v0, Lj7/b;

    invoke-virtual {p0, v0}, Lh7/e;->U(Lj7/b;)V

    :cond_7
    return-void
.end method

.method public final U(Lj7/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedLeftElement"
        }
    .end annotation

    iget-object v0, p0, Lh7/e;->B:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lh7/e;->C:Lj7/b;

    if-eqz v1, :cond_1

    iget-object v1, v1, LF7/i;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lh7/e;->d:Ln7/f;

    iget-object v3, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v3}, LF7/l;->o()LF7/i;

    move-result-object v3

    check-cast v3, Lj7/b;

    invoke-interface {v2, v3}, Ln7/f;->d(Lj7/b;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj7/b;

    iget-object v5, p0, Lh7/e;->e:Lk7/b;

    invoke-interface {v5, v4}, Lk7/b;->a(Lj7/b;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p0, Lh7/e;->B:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_5

    move v2, v5

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj7/b;

    iget-object v6, p0, Lh7/e;->B:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj7/b;

    invoke-virtual {v4, v6}, LF7/i;->d(LF7/i;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iput-object v3, p0, Lh7/e;->B:Ljava/util/List;

    iget-object v2, p0, Lh7/e;->A:Li7/a;

    invoke-virtual {v2, v3}, Li7/a;->u(Ljava/util/List;)V

    iget-object v2, p0, Lh7/e;->A:Li7/a;

    invoke-virtual {v2, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    iget-object v0, p0, Lh7/e;->A:Li7/a;

    iget-object v2, p0, Lh7/e;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    if-eqz v1, :cond_7

    iget-object v0, p0, Lh7/e;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj7/b;

    iget-object v3, v2, LF7/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lh7/e;->A:Li7/a;

    invoke-virtual {v0, v2}, Li7/a;->x(Lj7/b;)V

    iput-object v2, p0, Lh7/e;->C:Lj7/b;

    :cond_7
    invoke-virtual {p0}, Lh7/e;->S()V

    iget-object v0, p0, Lh7/e;->C:Lj7/b;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lh7/e;->V(Lj7/b;)V

    :cond_8
    if-eqz p1, :cond_a

    instance-of v0, p1, Lx5/d;

    if-eqz v0, :cond_9

    iget-object p1, p1, LF7/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lh7/e;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lj7/b;->u()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

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

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lh7/e;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, p0, Lh7/e;->s:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lh7/e;->v:Landroid/widget/TextView;

    const-string v0, "Project"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lh7/e;->s:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object p1, p0, Lh7/e;->v:Landroid/widget/TextView;

    new-instance v0, Lh7/e$f;

    invoke-direct {v0, p0}, Lh7/e$f;-><init>(Lh7/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public V(Lj7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lh7/e;->A:Li7/a;

    invoke-virtual {v0, p1}, Li7/a;->o(Lj7/b;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lh7/e;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public e(Lj7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lh7/e;->A:Li7/a;

    invoke-virtual {v0, p1}, Li7/a;->h(Lj7/b;)V

    invoke-virtual {p0}, Lh7/e;->S()V

    return-void
.end method

.method public f(Lj7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LF7/l;->x(LF7/i;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh7/e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh7/e;->G:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View already deflated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Ln7/f;
    .locals 1

    iget-object v0, p0, Lh7/e;->d:Ln7/f;

    return-object v0
.end method

.method public i()LF7/l;
    .locals 1

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    return-object v0
.end method

.method public j()Lk7/b;
    .locals 1

    iget-object v0, p0, Lh7/e;->e:Lk7/b;

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lh7/e;->l:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh7/e;->C:Lj7/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, LF7/i;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh7/e;->B:Ljava/util/List;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lh7/e;->k:I

    return v0
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    check-cast v0, Lj7/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj7/b;->u()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    iget-object v1, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v1, v0}, LF7/l;->n(LF7/i;)LF7/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v1, v0}, LF7/l;->D(LF7/i;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh7/e;->y:LF7/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LF7/l;->D(LF7/i;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "prefixRemoval"
        }
    .end annotation

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_8

    aget-object v4, p1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v1, :cond_3

    move v4, v2

    :goto_1
    iget-object v5, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v5}, LF7/l;->k()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v5, v4}, LF7/l;->j(I)LF7/i;

    move-result-object v5

    iget-object v6, v5, LF7/i;->a:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, p2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v1, v5, LF7/i;->f:LF7/h;

    iget-boolean v1, v1, LF7/h;->c:Z

    if-nez v1, :cond_1

    move-object v1, v5

    check-cast v1, Lj7/b;

    invoke-virtual {p0, v1}, Lh7/e;->A(Lj7/b;)V

    :cond_1
    move-object v1, v5

    check-cast v1, Lj7/b;

    invoke-virtual {p0, v1}, Lh7/e;->M(Lj7/b;)V

    move-object v1, v5

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v5, v1, LF7/i;->f:LF7/h;

    iget-object v5, v5, LF7/h;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v1, LF7/i;->f:LF7/h;

    iget-object v6, v6, LF7/h;->b:Ljava/util/List;

    if-eqz v6, :cond_4

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LF7/i;

    iget-object v7, v6, LF7/i;->a:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, p2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v1, v6, LF7/i;->f:LF7/h;

    iget-boolean v1, v1, LF7/h;->c:Z

    if-nez v1, :cond_5

    move-object v1, v6

    check-cast v1, Lj7/b;

    invoke-virtual {p0, v1}, Lh7/e;->A(Lj7/b;)V

    :cond_5
    move-object v1, v6

    check-cast v1, Lj7/b;

    invoke-virtual {p0, v1}, Lh7/e;->M(Lj7/b;)V

    move-object v1, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :goto_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    return-void
.end method

.method public q()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lh7/e;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh7/e;->G:Landroid/view/View;

    iget-object v1, p0, Lh7/e;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lh7/e;->G:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    const v1, 0x7f0902b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lh7/e;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lh7/e;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    const v2, 0x7f090403

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lh7/e;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lh7/e;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0, v0}, Lh7/e;->I(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v0, p0, Lh7/e;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0, v0}, Lh7/e;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh7/e;->q:Landroid/view/View;

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    const v1, 0x7f0900d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh7/e;->r:Landroid/view/View;

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    const v1, 0x7f090244

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh7/e;->s:Landroid/view/View;

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    const v1, 0x7f090569

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh7/e;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    const v1, 0x7f09056a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lh7/e;->w:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    const v1, 0x7f09028f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh7/e;->t:Landroid/view/View;

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    const v1, 0x7f090566

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lh7/e;->u:Landroid/view/View;

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    invoke-virtual {p0, v0}, Lh7/e;->v(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View already inflated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lh7/e;->m:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lh7/e;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lh7/e;->D:Z

    return v0
.end method

.method public final u(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showFilePath"
        }
    .end annotation

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v0, p1}, LF7/l;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh7/e;->y:LF7/l;

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v1

    invoke-virtual {v0, v1}, LF7/l;->B(LF7/i;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lh7/e;->A:Li7/a;

    invoke-virtual {v2}, Li7/a;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lh7/e;->A:Li7/a;

    invoke-virtual {v2, v1}, Li7/a;->m(I)Lj7/b;

    move-result-object v2

    iget-object v3, v2, LF7/i;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lh7/e;->x:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3, v2, v0}, Lh7/e;->z(Landroid/view/View;Lj7/b;Z)V

    iget-object v2, p0, Lh7/e;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final v(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0x7f0902b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lh7/e;->x:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lh7/e;->z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lh7/e;->x:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lh7/e;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lh7/e;->w()V

    invoke-virtual {p0}, Lh7/e;->y()V

    iget-object p1, p0, Lh7/e;->r:Landroid/view/View;

    new-instance v1, Lh7/e$a;

    invoke-direct {v1, p0}, Lh7/e$a;-><init>(Lh7/e;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lh7/e;->n:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lh7/e;->u(Ljava/lang/String;)V

    iput-object v0, p0, Lh7/e;->n:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lh7/e;->S()V

    return-void
.end method

.method public final w()V
    .locals 3

    new-instance v0, LF7/l;

    iget-object v1, p0, Lh7/e;->x:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lh7/e$g;

    invoke-direct {v2, p0}, Lh7/e$g;-><init>(Lh7/e;)V

    invoke-direct {v0, v1, v2}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v0, p0, Lh7/e;->y:LF7/l;

    return-void
.end method

.method public final x(Lj7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lh7/e;->U(Lj7/b;)V

    iget-object v0, p0, Lh7/e;->d:Ln7/f;

    invoke-interface {v0, p1}, Ln7/f;->c(Lj7/b;)V

    return-void
.end method

.method public final y()V
    .locals 4

    iget-object v0, p0, Lh7/e;->d:Ln7/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ln7/f;->d(Lj7/b;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj7/b;

    iget-object v3, p0, Lh7/e;->e:Lk7/b;

    invoke-interface {v3, v2}, Lk7/b;->a(Lj7/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lh7/e;->B:Ljava/util/List;

    iget-object v0, p0, Lh7/e;->z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/FileExplorer/Utils/GridAutofitLayoutManager;

    iget-object v2, p0, Lh7/e;->b:Landroid/app/Activity;

    iget v3, p0, Lh7/e;->k:I

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/FileExplorer/Utils/GridAutofitLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Li7/a;

    iget-object v1, p0, Lh7/e;->B:Ljava/util/List;

    iget-object v2, p0, Lh7/e;->b:Landroid/app/Activity;

    new-instance v3, Lh7/e$b;

    invoke-direct {v3, p0}, Lh7/e$b;-><init>(Lh7/e;)V

    invoke-direct {v0, v1, v2, v3}, Li7/a;-><init>(Ljava/util/List;Landroid/content/Context;Li7/b;)V

    iput-object v0, p0, Lh7/e;->A:Li7/a;

    iget-object v1, p0, Lh7/e;->l:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, v1}, Li7/a;->y(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v0, p0, Lh7/e;->z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lh7/e;->A:Li7/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lh7/e;->z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lh7/e$c;

    invoke-direct {v1, p0}, Lh7/e$c;-><init>(Lh7/e;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lh7/e;->s:Landroid/view/View;

    new-instance v1, Lh7/e$d;

    invoke-direct {v1, p0}, Lh7/e$d;-><init>(Lh7/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lh7/e;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh7/e;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh7/e;->t:Landroid/view/View;

    new-instance v1, Lh7/e$e;

    invoke-direct {v1, p0}, Lh7/e$e;-><init>(Lh7/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lh7/e;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final z(Landroid/view/View;Lj7/b;Z)V
    .locals 1
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

    iput-object p2, p0, Lh7/e;->C:Lj7/b;

    iget-object v0, p0, Lh7/e;->A:Li7/a;

    invoke-virtual {v0, p2}, Li7/a;->x(Lj7/b;)V

    if-eqz p3, :cond_2

    instance-of p3, p2, Lj7/f;

    if-eqz p3, :cond_0

    iget-object p1, p0, Lh7/e;->y:LF7/l;

    iget-object p2, p2, LF7/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, LF7/l;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of p3, p2, Lx5/d;

    if-eqz p3, :cond_1

    iget-object p1, p0, Lh7/e;->y:LF7/l;

    iget-object p2, p2, LF7/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, LF7/l;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lh7/e;->d:Ln7/f;

    invoke-interface {p3, p1, p2}, Ln7/f;->i(Landroid/view/View;Lj7/b;)V

    :cond_2
    :goto_0
    return-void
.end method
