.class public Lti/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LVh/p;

.field public b:Lhi/C;


# direct methods
.method public constructor <init>(LVh/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lti/n;->a:LVh/p;

    invoke-virtual {p1}, LVh/p;->z()Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lti/n;->b:Lhi/C;

    return-void
.end method


# virtual methods
.method public a()Lti/c;
    .locals 2

    new-instance v0, Lti/c;

    iget-object v1, p0, Lti/n;->a:LVh/p;

    invoke-virtual {v1}, LVh/p;->u()LVh/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/c;-><init>(LVh/b;)V

    return-object v0
.end method

.method public b()Lti/d;
    .locals 3

    iget-object v0, p0, Lti/n;->a:LVh/p;

    invoke-virtual {v0}, LVh/p;->v()LVh/c;

    move-result-object v0

    invoke-virtual {v0}, LVh/c;->g()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, LVh/c;->g()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Lti/m;

    invoke-virtual {v0}, LVh/c;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LVh/m;->u(Ljava/lang/Object;)LVh/m;

    move-result-object v0

    invoke-direct {v1, v0}, Lti/m;-><init>(LVh/m;)V

    return-object v1

    :cond_1
    new-instance v0, Lti/o;

    invoke-direct {v0}, Lti/o;-><init>()V

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lti/n;->b:Lhi/C;

    invoke-static {v0}, Lti/i;->b(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lti/n;->b:Lhi/C;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lti/n;->b:Lhi/C;

    invoke-static {v0}, Lti/i;->c(Lhi/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lti/n;->a:LVh/p;

    invoke-virtual {v0}, LVh/p;->y()Loh/n;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lti/n;->a:LVh/p;

    invoke-virtual {v0}, LVh/p;->y()Loh/n;

    move-result-object v0

    invoke-static {v0}, Lti/i;->a(Loh/n;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lti/n;->b:Lhi/C;

    invoke-static {v0}, Lti/i;->d(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lti/n;->a:LVh/p;

    invoke-virtual {v0}, LVh/p;->A()Loh/n;

    move-result-object v0

    invoke-static {v0}, Lti/i;->a(Loh/n;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lti/n;->b:Lhi/C;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
