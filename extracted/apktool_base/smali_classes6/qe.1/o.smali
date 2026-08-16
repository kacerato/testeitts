.class public Lqe/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqe/o$a;
    }
.end annotation


# instance fields
.field public final a:Lqe/g;

.field public final b:Lqe/v;

.field public final c:Lqe/z;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "LUm/v;",
            ">;",
            "Lqe/m$c<",
            "+",
            "LUm/v;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lqe/m$a;


# direct methods
.method public constructor <init>(Lqe/g;Lqe/v;Lqe/z;Ljava/util/Map;Lqe/m$a;)V
    .locals 0
    .param p1    # Lqe/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqe/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lqe/z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lqe/m$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqe/g;",
            "Lqe/v;",
            "Lqe/z;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "LUm/v;",
            ">;",
            "Lqe/m$c<",
            "+",
            "LUm/v;",
            ">;>;",
            "Lqe/m$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqe/o;->a:Lqe/g;

    iput-object p2, p0, Lqe/o;->b:Lqe/v;

    iput-object p3, p0, Lqe/o;->c:Lqe/z;

    iput-object p4, p0, Lqe/o;->d:Ljava/util/Map;

    iput-object p5, p0, Lqe/o;->e:Lqe/m$a;

    return-void
.end method


# virtual methods
.method public A(LUm/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public B(LUm/z;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public C(LUm/v;)V
    .locals 1
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lqe/o;->e:Lqe/m$a;

    invoke-interface {v0, p0, p1}, Lqe/m$a;->b(Lqe/m;LUm/v;)V

    return-void
.end method

.method public D(LUm/m;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public F()V
    .locals 2

    iget-object v0, p0, Lqe/o;->c:Lqe/z;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lqe/z;->a(C)Lqe/z;

    return-void
.end method

.method public G(LUm/v;I)V
    .locals 0
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "LUm/v;",
            ">(TN;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lqe/o;->m(Ljava/lang/Class;I)V

    return-void
.end method

.method public H(LUm/n;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public I(LUm/l;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public J(LUm/g;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public K(LUm/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public L(LUm/q;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public M(LUm/B;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public final a(LUm/v;)V
    .locals 2
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lqe/o;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqe/m$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lqe/m$c;->a(Lqe/m;LUm/v;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lqe/o;->i(LUm/v;)V

    :goto_0
    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lqe/o;->c:Lqe/z;

    invoke-virtual {v0}, Lqe/z;->length()I

    move-result v1

    invoke-static {v0, p2, p1, v1}, Lqe/z;->o(Lqe/z;Ljava/lang/Object;II)V

    return-void
.end method

.method public c(LUm/k;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lqe/v;

    invoke-interface {v0}, Lqe/v;->e()V

    iget-object v0, p0, Lqe/o;->c:Lqe/z;

    invoke-virtual {v0}, Lqe/z;->clear()V

    return-void
.end method

.method public d(Ljava/lang/Class;I)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "LUm/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lqe/o;->a:Lqe/g;

    invoke-virtual {v0}, Lqe/g;->f()Lqe/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lqe/k;->a(Ljava/lang/Class;)Lqe/y;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lqe/o;->a:Lqe/g;

    iget-object v1, p0, Lqe/o;->b:Lqe/v;

    invoke-interface {p1, v0, v1}, Lqe/y;->a(Lqe/g;Lqe/v;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lqe/o;->b(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(LUm/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public f(LUm/p;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public g(LUm/y;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public h()Lqe/v;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/o;->b:Lqe/v;

    return-object v0
.end method

.method public i(LUm/v;)V
    .locals 1
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, LUm/v;->e()LUm/v;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, LUm/v;->g()LUm/v;

    move-result-object v0

    invoke-virtual {p1, p0}, LUm/v;->c(LUm/C;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(LUm/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public k(LUm/i;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public l(LUm/s;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lqe/o;->c:Lqe/z;

    invoke-virtual {v0}, Lqe/z;->length()I

    move-result v0

    return v0
.end method

.method public m(Ljava/lang/Class;I)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "LUm/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lqe/o;->a:Lqe/g;

    invoke-virtual {v0}, Lqe/g;->f()Lqe/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lqe/k;->b(Ljava/lang/Class;)Lqe/y;

    move-result-object p1

    iget-object v0, p0, Lqe/o;->a:Lqe/g;

    iget-object v1, p0, Lqe/o;->b:Lqe/v;

    invoke-interface {p1, v0, v1}, Lqe/y;->a(Lqe/g;Lqe/v;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lqe/o;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public n(LUm/v;I)V
    .locals 0
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "LUm/v;",
            ">(TN;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lqe/o;->d(Ljava/lang/Class;I)V

    return-void
.end method

.method public o()Lqe/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/o;->a:Lqe/g;

    return-object v0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lqe/o;->c:Lqe/z;

    invoke-virtual {v0}, Lqe/z;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lqe/o;->c:Lqe/z;

    invoke-virtual {v0}, Lqe/z;->j()C

    move-result v0

    const/16 v1, 0xa

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lqe/o;->c:Lqe/z;

    invoke-virtual {v0, v1}, Lqe/z;->a(C)Lqe/z;

    :cond_0
    return-void
.end method

.method public q(LUm/v;)V
    .locals 1
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lqe/o;->e:Lqe/m$a;

    invoke-interface {v0, p0, p1}, Lqe/m$a;->a(Lqe/m;LUm/v;)V

    return-void
.end method

.method public r(LUm/x;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public s(LUm/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public t(LUm/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public u(LUm/w;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public v(LUm/A;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public w()Lqe/z;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/o;->c:Lqe/z;

    return-object v0
.end method

.method public x(LUm/v;)Z
    .locals 0
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, LUm/v;->g()LUm/v;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y(LUm/r;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method

.method public z(LUm/f;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqe/o;->a(LUm/v;)V

    return-void
.end method
