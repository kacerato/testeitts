.class public LZm/d;
.super LUm/a;
.source "SourceFile"

# interfaces
.implements LYm/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZm/d$b;
    }
.end annotation


# instance fields
.field public final a:LZm/e;

.field public final b:LZm/h;


# direct methods
.method public constructor <init>(LZm/e;)V
    .locals 0

    invoke-direct {p0}, LUm/a;-><init>()V

    iput-object p1, p0, LZm/d;->a:LZm/e;

    invoke-interface {p1}, LZm/e;->b()LZm/h;

    move-result-object p1

    iput-object p1, p0, LZm/d;->b:LZm/h;

    return-void
.end method


# virtual methods
.method public A(LUm/o;)V
    .locals 1

    iget-object v0, p0, LZm/d;->a:LZm/e;

    invoke-interface {v0}, LZm/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LUm/o;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LZm/h;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LUm/o;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LZm/h;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public B(LUm/z;)V
    .locals 3

    iget-object v0, p0, LZm/d;->b:LZm/h;

    const-string v1, "strong"

    invoke-virtual {p0, p1, v1}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, LZm/d;->i(LUm/v;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    const-string v0, "/strong"

    invoke-virtual {p1, v0}, LZm/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method public D(LUm/m;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LUm/m;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {v1}, LZm/h;->b()V

    iget-object v1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p0, p1, v0}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, LZm/d;->i(LUm/v;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LZm/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LZm/h;->b()V

    return-void
.end method

.method public E()Ljava/util/Set;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "LUm/v;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const-class v19, LUm/y;

    const-class v20, LUm/l;

    const-class v1, LUm/i;

    const-class v2, LUm/m;

    const-class v3, LUm/x;

    const-class v4, LUm/c;

    const-class v5, LUm/d;

    const-class v6, LUm/k;

    const-class v7, LUm/n;

    const-class v8, LUm/B;

    const-class v9, LUm/q;

    const-class v10, LUm/r;

    const-class v11, LUm/u;

    const-class v12, LUm/w;

    const-class v13, LUm/p;

    const-class v14, LUm/j;

    const-class v15, LUm/z;

    const-class v16, LUm/A;

    const-class v17, LUm/e;

    const-class v18, LUm/o;

    filled-new-array/range {v1 .. v20}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public H(LUm/n;)V
    .locals 3

    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {v0}, LZm/h;->b()V

    iget-object v0, p0, LZm/d;->a:LZm/e;

    invoke-interface {v0}, LZm/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZm/d;->b:LZm/h;

    const-string v1, "p"

    invoke-virtual {p0, p1, v1}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LUm/n;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LZm/h;->g(Ljava/lang/String;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    const-string v0, "/p"

    invoke-virtual {p1, v0}, LZm/h;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LUm/n;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LZm/h;->c(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LZm/h;->b()V

    return-void
.end method

.method public I(LUm/l;)V
    .locals 3

    iget-object v0, p0, LZm/d;->b:LZm/h;

    const-string v1, "br"

    invoke-virtual {p0, p1, v1}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, LZm/h;->f(Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LZm/h;->b()V

    return-void
.end method

.method public K(LUm/d;)V
    .locals 2

    const-string v0, "ul"

    invoke-virtual {p0, p1, v0}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, LZm/d;->R(LUm/t;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public L(LUm/q;)V
    .locals 2

    invoke-virtual {p1}, LUm/q;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, LZm/d;->Q(Ljava/lang/String;LUm/v;Ljava/util/Map;)V

    return-void
.end method

.method public M(LUm/B;)V
    .locals 3

    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {v0}, LZm/h;->b()V

    iget-object v0, p0, LZm/d;->b:LZm/h;

    const-string v1, "hr"

    invoke-virtual {p0, p1, v1}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, LZm/h;->f(Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LZm/h;->b()V

    return-void
.end method

.method public final N(LUm/v;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LUm/v;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LZm/d;->O(LUm/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final O(LUm/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LUm/v;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LZm/d;->a:LZm/e;

    invoke-interface {v0, p1, p2, p3}, LZm/e;->f(LUm/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final P(LUm/x;)Z
    .locals 1

    invoke-virtual {p1}, LUm/b;->p()LUm/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LUm/v;->h()LUm/v;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, LUm/t;

    if-eqz v0, :cond_0

    check-cast p1, LUm/t;

    invoke-virtual {p1}, LUm/t;->q()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final Q(Ljava/lang/String;LUm/v;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LUm/v;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {v0}, LZm/h;->b()V

    iget-object v0, p0, LZm/d;->b:LZm/h;

    const-string v1, "pre"

    invoke-virtual {p0, p2, v1}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, LZm/d;->b:LZm/h;

    const-string v1, "code"

    invoke-virtual {p0, p2, v1, p3}, LZm/d;->O(LUm/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p2, p1}, LZm/h;->g(Ljava/lang/String;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    const-string p2, "/code"

    invoke-virtual {p1, p2}, LZm/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    const-string p2, "/pre"

    invoke-virtual {p1, p2}, LZm/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LZm/h;->b()V

    return-void
.end method

.method public final R(LUm/t;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LUm/t;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {v0}, LZm/h;->b()V

    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {v0, p2, p3}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p3, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p3}, LZm/h;->b()V

    invoke-virtual {p0, p1}, LZm/d;->i(LUm/v;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LZm/h;->b()V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, LZm/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LZm/h;->b()V

    return-void
.end method

.method public a(LUm/v;)V
    .locals 0

    invoke-virtual {p1, p0}, LUm/v;->c(LUm/C;)V

    return-void
.end method

.method public c(LUm/k;)V
    .locals 5

    invoke-virtual {p1}, LUm/k;->u()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, LUm/k;->t()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, v0, p1, v1}, LZm/d;->Q(Ljava/lang/String;LUm/v;Ljava/util/Map;)V

    return-void
.end method

.method public e(LUm/e;)V
    .locals 3

    iget-object v0, p0, LZm/d;->b:LZm/h;

    const-string v1, "code"

    invoke-virtual {p0, p1, v1}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LUm/e;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LZm/h;->g(Ljava/lang/String;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    const-string v0, "/code"

    invoke-virtual {p1, v0}, LZm/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method public f(LUm/p;)V
    .locals 4

    iget-object v0, p0, LZm/d;->a:LZm/e;

    invoke-virtual {p1}, LUm/p;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LZm/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LZm/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LZm/d$b;-><init>(LZm/d$a;)V

    invoke-virtual {p1, v1}, LUm/p;->c(LUm/C;)V

    invoke-virtual {v1}, LZm/d$b;->N()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "src"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "alt"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, LUm/p;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "title"

    invoke-virtual {p1}, LUm/p;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LZm/d;->b:LZm/h;

    const-string v1, "img"

    invoke-virtual {p0, p1, v1, v2}, LZm/d;->O(LUm/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, LZm/h;->f(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public g(LUm/y;)V
    .locals 1

    iget-object p1, p0, LZm/d;->b:LZm/h;

    iget-object v0, p0, LZm/d;->a:LZm/e;

    invoke-interface {v0}, LZm/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LZm/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public i(LUm/v;)V
    .locals 2

    invoke-virtual {p1}, LUm/v;->e()LUm/v;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, LUm/v;->g()LUm/v;

    move-result-object v0

    iget-object v1, p0, LZm/d;->a:LZm/e;

    invoke-interface {v1, p1}, LZm/e;->a(LUm/v;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(LUm/u;)V
    .locals 3

    iget-object v0, p0, LZm/d;->b:LZm/h;

    const-string v1, "li"

    invoke-virtual {p0, p1, v1}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, LZm/d;->i(LUm/v;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    const-string v0, "/li"

    invoke-virtual {p1, v0}, LZm/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LZm/h;->b()V

    return-void
.end method

.method public k(LUm/i;)V
    .locals 0

    invoke-virtual {p0, p1}, LZm/d;->i(LUm/v;)V

    return-void
.end method

.method public r(LUm/x;)V
    .locals 4

    invoke-virtual {p0, p1}, LZm/d;->P(LUm/x;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {v1}, LZm/h;->b()V

    iget-object v1, p0, LZm/d;->b:LZm/h;

    const-string v2, "p"

    invoke-virtual {p0, p1, v2}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0, p1}, LZm/d;->i(LUm/v;)V

    if-nez v0, :cond_1

    iget-object p1, p0, LZm/d;->b:LZm/h;

    const-string v0, "/p"

    invoke-virtual {p1, v0}, LZm/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LZm/h;->b()V

    :cond_1
    return-void
.end method

.method public s(LUm/c;)V
    .locals 3

    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {v0}, LZm/h;->b()V

    iget-object v0, p0, LZm/d;->b:LZm/h;

    const-string v1, "blockquote"

    invoke-virtual {p0, p1, v1}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {v0}, LZm/h;->b()V

    invoke-virtual {p0, p1}, LZm/d;->i(LUm/v;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LZm/h;->b()V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    const-string v0, "/blockquote"

    invoke-virtual {p1, v0}, LZm/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LZm/h;->b()V

    return-void
.end method

.method public t(LUm/j;)V
    .locals 3

    iget-object v0, p0, LZm/d;->b:LZm/h;

    const-string v1, "em"

    invoke-virtual {p0, p1, v1}, LZm/d;->N(LUm/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, LZm/d;->i(LUm/v;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    const-string v0, "/em"

    invoke-virtual {p1, v0}, LZm/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method public u(LUm/w;)V
    .locals 3

    invoke-virtual {p1}, LUm/w;->t()I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string v2, "start"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ol"

    invoke-virtual {p0, p1, v0, v1}, LZm/d;->O(LUm/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, LZm/d;->R(LUm/t;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public v(LUm/A;)V
    .locals 1

    iget-object v0, p0, LZm/d;->b:LZm/h;

    invoke-virtual {p1}, LUm/A;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LZm/h;->g(Ljava/lang/String;)V

    return-void
.end method

.method public y(LUm/r;)V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, LZm/d;->a:LZm/e;

    invoke-virtual {p1}, LUm/r;->p()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, LZm/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "href"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, LUm/r;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    invoke-virtual {p1}, LUm/r;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, LZm/d;->b:LZm/h;

    const-string v2, "a"

    invoke-virtual {p0, p1, v2, v0}, LZm/d;->O(LUm/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LZm/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, LZm/d;->i(LUm/v;)V

    iget-object p1, p0, LZm/d;->b:LZm/h;

    const-string v0, "/a"

    invoke-virtual {p1, v0}, LZm/h;->d(Ljava/lang/String;)V

    return-void
.end method
