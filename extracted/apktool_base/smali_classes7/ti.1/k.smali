.class public Lti/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LVh/l;


# direct methods
.method public constructor <init>(LVh/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lti/k;->a:LVh/l;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lti/k;->a:LVh/l;

    invoke-virtual {v0}, LVh/l;->x()Loh/n;

    move-result-object v0

    invoke-static {v0}, Lti/i;->a(Loh/n;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public b()Lti/l;
    .locals 2

    new-instance v0, Lti/l;

    iget-object v1, p0, Lti/k;->a:LVh/l;

    invoke-virtual {v1}, LVh/l;->y()LVh/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/l;-><init>(LVh/j;)V

    return-object v0
.end method

.method public c()Lhi/C;
    .locals 1

    iget-object v0, p0, Lti/k;->a:LVh/l;

    invoke-virtual {v0}, LVh/l;->z()Lhi/C;

    move-result-object v0

    return-object v0
.end method

.method public d()[Lti/n;
    .locals 6

    iget-object v0, p0, Lti/k;->a:LVh/l;

    invoke-virtual {v0}, LVh/l;->A()Loh/E;

    move-result-object v0

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v1

    new-array v2, v1, [Lti/n;

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_0

    new-instance v4, Lti/n;

    invoke-virtual {v0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, LVh/p;->w(Ljava/lang/Object;)LVh/p;

    move-result-object v5

    invoke-direct {v4, v5}, Lti/n;-><init>(LVh/p;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lti/k;->a:LVh/l;

    invoke-virtual {v0}, LVh/l;->B()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
