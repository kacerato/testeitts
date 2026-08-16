.class public LEj/c;
.super LDj/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(LGj/d;LEk/K$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LDj/l;-><init>(LGj/d;LEk/K$a;)V

    return-void
.end method


# virtual methods
.method public j(LEk/d;LXi/M;)LDj/j;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LEj/c;->k(LEk/d;LXi/M;LXi/M;)LDj/j;

    move-result-object p1

    return-object p1
.end method

.method public k(LEk/d;LXi/M;LXi/M;)LDj/j;
    .locals 1

    if-eqz p3, :cond_0

    new-instance v0, LEj/e;

    invoke-direct {v0, p3}, LEj/e;-><init>(LXi/c;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p3, LEj/f;

    invoke-direct {p3, p2}, LEj/f;-><init>(LXi/c;)V

    invoke-super {p0, p1, p3, v0}, LDj/l;->i(LEk/d;LDj/o;LDj/n;)LDj/j;

    move-result-object p1

    return-object p1
.end method
