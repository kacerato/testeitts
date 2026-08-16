.class public LOi/o;
.super LOi/p;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LOi/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 4

    invoke-super {p0}, LOi/p;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, LXi/M;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, LXi/L;

    new-instance v2, LXi/M;

    invoke-virtual {v1}, LXi/M;->e()Ljk/i;

    move-result-object v3

    invoke-virtual {v3}, Ljk/i;->A()Ljk/i;

    move-result-object v3

    invoke-virtual {v1}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-direct {v2, v3, v1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    new-instance v1, LBi/c;

    invoke-direct {v1, v2, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method
