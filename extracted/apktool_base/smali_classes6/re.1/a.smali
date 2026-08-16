.class public Lre/a;
.super Lqe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lre/a$p;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lre/a$p;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lqe/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lre/a;->a:Ljava/util/List;

    return-void
.end method

.method public static A(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$m;

    invoke-direct {v0}, Lre/a$m;-><init>()V

    const-class v1, LUm/q;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static B(LUm/x;)Z
    .locals 1
    .param p0    # LUm/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, LUm/b;->p()LUm/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LUm/v;->h()LUm/v;

    move-result-object p0

    instance-of v0, p0, LUm/t;

    if-eqz v0, :cond_0

    check-cast p0, LUm/t;

    invoke-virtual {p0}, LUm/t;->q()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static C(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$f;

    invoke-direct {v0}, Lre/a$f;-><init>()V

    const-class v1, LUm/r;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static D(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$o;

    invoke-direct {v0}, Lre/a$o;-><init>()V

    const-class v1, LUm/u;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static E(LUm/v;)I
    .locals 2
    .param p0    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, LUm/v;->h()LUm/v;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    instance-of v1, p0, LUm/u;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p0}, LUm/v;->h()LUm/v;

    move-result-object p0

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static F(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/d;

    invoke-direct {v0}, Lre/d;-><init>()V

    const-class v1, LUm/w;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static G(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$e;

    invoke-direct {v0}, Lre/a$e;-><init>()V

    const-class v1, LUm/x;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static H(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$c;

    invoke-direct {v0}, Lre/a$c;-><init>()V

    const-class v1, LUm/y;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static I(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$h;

    invoke-direct {v0}, Lre/a$h;-><init>()V

    const-class v1, LUm/z;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static K(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$a;

    invoke-direct {v0}, Lre/a$a;-><init>()V

    const-class v1, LUm/B;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static L(Lqe/m;Ljava/lang/String;Ljava/lang/String;LUm/v;)V
    .locals 4
    .param p0    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-interface {p0, p3}, Lqe/m;->q(LUm/v;)V

    invoke-interface {p0}, Lqe/m;->length()I

    move-result v0

    invoke-interface {p0}, Lqe/m;->w()Lqe/z;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lqe/z;->a(C)Lqe/z;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lqe/z;->a(C)Lqe/z;

    move-result-object v1

    invoke-interface {p0}, Lqe/m;->o()Lqe/g;

    move-result-object v3

    invoke-virtual {v3}, Lqe/g;->g()Lze/a;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lze/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Lqe/z;->b(Ljava/lang/CharSequence;)Lqe/z;

    invoke-interface {p0}, Lqe/m;->p()V

    invoke-interface {p0}, Lqe/m;->w()Lqe/z;

    move-result-object p2

    invoke-virtual {p2, v2}, Lqe/z;->a(C)Lqe/z;

    sget-object p2, Lre/b;->g:Lqe/s;

    invoke-interface {p0}, Lqe/m;->h()Lqe/v;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lqe/s;->h(Lqe/v;Ljava/lang/Object;)V

    invoke-interface {p0, p3, v0}, Lqe/m;->n(LUm/v;I)V

    invoke-interface {p0, p3}, Lqe/m;->C(LUm/v;)V

    return-void
.end method

.method public static synthetic l(Lre/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lre/a;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic m(LUm/v;)I
    .locals 0

    invoke-static {p0}, Lre/a;->E(LUm/v;)I

    move-result p0

    return p0
.end method

.method public static synthetic n(LUm/x;)Z
    .locals 0

    invoke-static {p0}, Lre/a;->B(LUm/x;)Z

    move-result p0

    return p0
.end method

.method public static p(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$j;

    invoke-direct {v0}, Lre/a$j;-><init>()V

    const-class v1, LUm/c;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static q(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/d;

    invoke-direct {v0}, Lre/d;-><init>()V

    const-class v1, LUm/d;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static r(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$k;

    invoke-direct {v0}, Lre/a$k;-><init>()V

    const-class v1, LUm/e;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static s()Lre/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lre/a;

    invoke-direct {v0}, Lre/a;-><init>()V

    return-object v0
.end method

.method public static t(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$i;

    invoke-direct {v0}, Lre/a$i;-><init>()V

    const-class v1, LUm/j;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static u()Ljava/util/Set;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "LUm/b;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const-class v6, LUm/t;

    const-class v7, LUm/q;

    const-class v1, LUm/c;

    const-class v2, LUm/m;

    const-class v3, LUm/k;

    const-class v4, LUm/n;

    const-class v5, LUm/B;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static v(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$l;

    invoke-direct {v0}, Lre/a$l;-><init>()V

    const-class v1, LUm/k;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static w(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$d;

    invoke-direct {v0}, Lre/a$d;-><init>()V

    const-class v1, LUm/l;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static y(Lqe/m$b;)V
    .locals 2
    .param p0    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$b;

    invoke-direct {v0}, Lre/a$b;-><init>()V

    const-class v1, LUm/m;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public static z(Lqe/m$b;)V
    .locals 2

    new-instance v0, Lre/a$n;

    invoke-direct {v0}, Lre/a$n;-><init>()V

    const-class v1, LUm/p;

    invoke-interface {p0, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method


# virtual methods
.method public final J(Lqe/m$b;)V
    .locals 2
    .param p1    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lre/a$g;

    invoke-direct {v0, p0}, Lre/a$g;-><init>(Lre/a;)V

    const-class v1, LUm/A;

    invoke-interface {p1, v1, v0}, Lqe/m$b;->b(Ljava/lang/Class;Lqe/m$c;)Lqe/m$b;

    return-void
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lre/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public h(Lqe/k$a;)V
    .locals 3
    .param p1    # Lqe/k$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lse/b;

    invoke-direct {v0}, Lse/b;-><init>()V

    new-instance v1, Lse/h;

    invoke-direct {v1}, Lse/h;-><init>()V

    const-class v2, LUm/z;

    invoke-interface {p1, v2, v1}, Lqe/k$a;->f(Ljava/lang/Class;Lqe/y;)Lqe/k$a;

    move-result-object p1

    new-instance v1, Lse/d;

    invoke-direct {v1}, Lse/d;-><init>()V

    const-class v2, LUm/j;

    invoke-interface {p1, v2, v1}, Lqe/k$a;->f(Ljava/lang/Class;Lqe/y;)Lqe/k$a;

    move-result-object p1

    new-instance v1, Lse/a;

    invoke-direct {v1}, Lse/a;-><init>()V

    const-class v2, LUm/c;

    invoke-interface {p1, v2, v1}, Lqe/k$a;->f(Ljava/lang/Class;Lqe/y;)Lqe/k$a;

    move-result-object p1

    new-instance v1, Lse/c;

    invoke-direct {v1}, Lse/c;-><init>()V

    const-class v2, LUm/e;

    invoke-interface {p1, v2, v1}, Lqe/k$a;->f(Ljava/lang/Class;Lqe/y;)Lqe/k$a;

    move-result-object p1

    const-class v1, LUm/k;

    invoke-interface {p1, v1, v0}, Lqe/k$a;->f(Ljava/lang/Class;Lqe/y;)Lqe/k$a;

    move-result-object p1

    const-class v1, LUm/q;

    invoke-interface {p1, v1, v0}, Lqe/k$a;->f(Ljava/lang/Class;Lqe/y;)Lqe/k$a;

    move-result-object p1

    new-instance v0, Lse/g;

    invoke-direct {v0}, Lse/g;-><init>()V

    const-class v1, LUm/u;

    invoke-interface {p1, v1, v0}, Lqe/k$a;->f(Ljava/lang/Class;Lqe/y;)Lqe/k$a;

    move-result-object p1

    new-instance v0, Lse/e;

    invoke-direct {v0}, Lse/e;-><init>()V

    const-class v1, LUm/m;

    invoke-interface {p1, v1, v0}, Lqe/k$a;->f(Ljava/lang/Class;Lqe/y;)Lqe/k$a;

    move-result-object p1

    new-instance v0, Lse/f;

    invoke-direct {v0}, Lse/f;-><init>()V

    const-class v1, LUm/r;

    invoke-interface {p1, v1, v0}, Lqe/k$a;->f(Ljava/lang/Class;Lqe/y;)Lqe/k$a;

    move-result-object p1

    new-instance v0, Lse/i;

    invoke-direct {v0}, Lse/i;-><init>()V

    const-class v1, LUm/B;

    invoke-interface {p1, v1, v0}, Lqe/k$a;->f(Ljava/lang/Class;Lqe/y;)Lqe/k$a;

    return-void
.end method

.method public j(Lqe/m$b;)V
    .locals 0
    .param p1    # Lqe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lre/a;->J(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->I(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->t(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->p(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->r(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->v(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->A(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->z(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->q(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->F(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->D(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->K(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->y(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->H(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->w(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->G(Lqe/m$b;)V

    invoke-static {p1}, Lre/a;->C(Lqe/m$b;)V

    return-void
.end method

.method public k(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lte/k;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    instance-of v0, p2, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/text/Spannable;

    invoke-static {p2, p1}, Lte/n;->a(Landroid/text/Spannable;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public o(Lre/a$p;)Lre/a;
    .locals 1
    .param p1    # Lre/a$p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lre/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public x(Z)Lre/a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lre/a;->b:Z

    return-object p0
.end method
