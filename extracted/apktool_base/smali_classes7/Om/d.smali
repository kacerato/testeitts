.class public LOm/d;
.super LOm/c;
.source "SourceFile"


# instance fields
.field public final a:Lan/e;

.field public final b:Lan/b;


# direct methods
.method public constructor <init>(Lan/b;)V
    .locals 1

    invoke-direct {p0}, LOm/c;-><init>()V

    invoke-interface {p1}, Lan/b;->b()Lan/e;

    move-result-object v0

    iput-object v0, p0, LOm/d;->a:Lan/e;

    iput-object p1, p0, LOm/d;->b:Lan/b;

    return-void
.end method

.method private g(LUm/v;)V
    .locals 2

    invoke-virtual {p1}, LUm/v;->e()LUm/v;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, LUm/v;->g()LUm/v;

    move-result-object v0

    instance-of v1, p1, LNm/c;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    check-cast p1, LNm/c;

    invoke-virtual {p0, p1}, LOm/d;->h(LNm/c;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, LOm/d;->b:Lan/b;

    invoke-interface {v1, p1}, Lan/b;->a(LUm/v;)V

    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic E()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, LOm/c;->E()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(LUm/v;)V
    .locals 0

    invoke-super {p0, p1}, LOm/c;->a(LUm/v;)V

    return-void
.end method

.method public b(LNm/a;)V
    .locals 1

    invoke-direct {p0, p1}, LOm/d;->g(LUm/v;)V

    invoke-virtual {p1}, LUm/v;->g()LUm/v;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LOm/d;->a:Lan/e;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Lan/e;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(LNm/b;)V
    .locals 0

    invoke-direct {p0, p1}, LOm/d;->g(LUm/v;)V

    return-void
.end method

.method public d(LNm/c;)V
    .locals 1

    invoke-direct {p0, p1}, LOm/d;->g(LUm/v;)V

    iget-object p1, p0, LOm/d;->a:Lan/e;

    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Lan/e;->f(C)V

    iget-object p1, p0, LOm/d;->a:Lan/e;

    invoke-virtual {p1}, Lan/e;->e()V

    return-void
.end method

.method public e(LNm/d;)V
    .locals 0

    invoke-direct {p0, p1}, LOm/d;->g(LUm/v;)V

    return-void
.end method

.method public f(LNm/e;)V
    .locals 1

    iget-object v0, p0, LOm/d;->a:Lan/e;

    invoke-virtual {v0}, Lan/e;->d()V

    invoke-direct {p0, p1}, LOm/d;->g(LUm/v;)V

    iget-object p1, p0, LOm/d;->a:Lan/e;

    invoke-virtual {p1}, Lan/e;->d()V

    return-void
.end method

.method public final h(LNm/c;)V
    .locals 0

    invoke-direct {p0, p1}, LOm/d;->g(LUm/v;)V

    return-void
.end method
