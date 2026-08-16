.class public LM7/p;
.super LM7/g;
.source "SourceFile"


# instance fields
.field public i:Landroid/content/Context;

.field public j:LM7/q;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field public m:LM7/o;

.field public n:Z

.field public final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LM7/p;->k:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LM7/p;->l:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LM7/p;->m:LM7/o;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LM7/p;->n:Z

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LM7/p;->o:Ljava/util/Set;

    .line 7
    iput-object p1, p0, LM7/p;->i:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LM7/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, LM7/g;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LM7/p;->k:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LM7/p;->l:Ljava/util/List;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, LM7/p;->m:LM7/o;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, LM7/p;->n:Z

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LM7/p;->o:Ljava/util/Set;

    .line 14
    iput-object p1, p0, LM7/p;->i:Landroid/content/Context;

    .line 15
    iput-object p2, p0, LM7/p;->j:LM7/q;

    return-void
.end method

.method public static synthetic q(LM7/p;)LM7/o;
    .locals 0

    iget-object p0, p0, LM7/p;->m:LM7/o;

    return-object p0
.end method

.method public static synthetic r(LM7/p;LM7/o;)LM7/o;
    .locals 0

    iput-object p1, p0, LM7/p;->m:LM7/o;

    return-object p1
.end method


# virtual methods
.method public A(IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "notifyListener",
            "isFromUserAction"
        }
    .end annotation

    iget-object v0, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM7/g;

    instance-of v0, p1, LM7/o;

    if-eqz v0, :cond_1

    check-cast p1, LM7/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, LM7/o;->z0(ZZZ)V

    iget-object p2, p0, LM7/p;->m:LM7/o;

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p3}, LM7/o;->z0(ZZZ)V

    :cond_0
    iput-object p1, p0, LM7/p;->m:LM7/o;

    :cond_1
    return-void
.end method

.method public B(LM7/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbToggle"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LM7/p;->C(LM7/o;Z)V

    return-void
.end method

.method public C(LM7/o;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tbToggle",
            "isFromUserAction"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, LM7/p;->D(LM7/o;ZZ)V

    return-void
.end method

.method public D(LM7/o;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tbToggle",
            "notifyListener",
            "isFromUserAction"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, LM7/p;->m:LM7/o;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v0, p3}, LM7/o;->z0(ZZZ)V

    const/4 p1, 0x0

    iput-object p1, p0, LM7/p;->m:LM7/o;

    goto :goto_0

    :cond_0
    iget-object v1, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2, p3}, LM7/o;->z0(ZZZ)V

    iget-object p2, p0, LM7/p;->m:LM7/o;

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_1

    invoke-virtual {p2, v0, v0, p3}, LM7/o;->z0(ZZZ)V

    :cond_1
    iput-object p1, p0, LM7/p;->m:LM7/o;

    :cond_2
    :goto_0
    return-void
.end method

.method public E(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spaceBetweenElements"
        }
    .end annotation

    iput-boolean p1, p0, LM7/p;->n:Z

    return-void
.end method

.method public F()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, LM7/p;->t()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, LM7/p;->G(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM7/g;

    invoke-virtual {v0}, LM7/g;->p()V

    iget-object v1, p0, LM7/p;->o:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, LM7/p;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LM7/p;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM7/g;

    invoke-virtual {p1}, LM7/g;->p()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LM7/p;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM7/g;

    invoke-virtual {p1}, LM7/g;->g()V

    :goto_0
    return-void
.end method

.method public a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "context",
            "layoutInflater"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM7/g;

    invoke-virtual {v2, p1, p2, p3}, LM7/g;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    invoke-static {p2, p1, p3}, Ld7/a;->s(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)LM7/k;

    move-result-object v2

    iget-object v3, p0, LM7/p;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, LM7/p;->n:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, LM7/g;->g()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LM7/p;->m:LM7/o;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0, v0}, LM7/o;->z0(ZZZ)V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, LM7/p;->t()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, LM7/p;->u(I)LM7/g;

    move-result-object v1

    invoke-virtual {v1}, LM7/g;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LM7/p;->o:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, LM7/g;->g()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, LM7/g;->g()V

    return-void
.end method

.method public i(Ltc/h;Landroid/graphics/Rect;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touch",
            "rect"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM7/g;

    invoke-virtual {v2, p1, p2}, LM7/g;->i(Ltc/h;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public k()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM7/g;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LM7/g;->k()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, LM7/p;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, LM7/p;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM7/g;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LM7/g;->k()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public l(Landroid/widget/LinearLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    invoke-super {p0, p1}, LM7/g;->l(Landroid/widget/LinearLayout;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM7/g;

    invoke-virtual {v2, p1}, LM7/g;->l(Landroid/widget/LinearLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, LM7/p;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LM7/p;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM7/g;

    invoke-virtual {v1, p1}, LM7/g;->l(Landroid/widget/LinearLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, LM7/p;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM7/g;

    invoke-virtual {v1}, LM7/g;->p()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LM7/p;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-super {p0}, LM7/g;->p()V

    return-void
.end method

.method public s(LM7/g;)LM7/p;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, LM7/o;

    if-eqz v0, :cond_1

    check-cast p1, LM7/o;

    iget-object v0, p0, LM7/p;->m:LM7/o;

    if-nez v0, :cond_0

    iput-object p1, p0, LM7/p;->m:LM7/o;

    :cond_0
    invoke-virtual {p1}, LM7/o;->s0()LM7/r;

    move-result-object v0

    new-instance v1, LM7/p$a;

    invoke-direct {v1, p0, v0}, LM7/p$a;-><init>(LM7/p;LM7/r;)V

    invoke-virtual {p1, v1}, LM7/o;->L0(LM7/r;)V

    :cond_1
    return-object p0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public u(I)LM7/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM7/g;

    return-object p1
.end method

.method public v()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, LM7/p;->t()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, LM7/p;->w(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LM7/p;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM7/g;

    invoke-virtual {v0}, LM7/g;->g()V

    iget-object v1, p0, LM7/p;->o:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LM7/p;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM7/g;

    invoke-virtual {p1}, LM7/g;->g()V

    return-void
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, LM7/p;->n:Z

    return v0
.end method

.method public y(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, LM7/p;->A(IZZ)V

    return-void
.end method

.method public z(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "isFromUserAction"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, LM7/p;->A(IZZ)V

    return-void
.end method
