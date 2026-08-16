.class public final LDl/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LDl/a;LWl/g;)[LWl/g;
    .locals 6

    invoke-virtual {p0}, LDl/a;->d()I

    move-result v0

    invoke-virtual {p0}, LDl/a;->i()LWl/x;

    move-result-object v1

    invoke-virtual {p0}, LDl/a;->a()LWl/h;

    move-result-object v2

    invoke-virtual {p0}, LDl/a;->b()LWl/y;

    move-result-object v3

    invoke-virtual {p0}, LDl/a;->c()LWl/e;

    move-result-object v4

    invoke-virtual {p0}, LDl/a;->j()[LWl/y;

    move-result-object p0

    invoke-virtual {v1}, LWl/x;->a()LWl/x;

    move-result-object v5

    invoke-virtual {p1, v5}, LWl/g;->e(LWl/x;)LWl/C;

    move-result-object p1

    check-cast p1, LWl/g;

    invoke-virtual {v4, p1}, LWl/e;->i(LWl/C;)LWl/C;

    move-result-object v4

    check-cast v4, LWl/g;

    invoke-static {v4, v2, v3, p0}, LWl/s;->c(LWl/g;LWl/h;LWl/y;[LWl/y;)LWl/g;

    move-result-object p0

    invoke-virtual {p1, p0}, LWl/g;->a(LWl/C;)LWl/C;

    move-result-object p1

    check-cast p1, LWl/g;

    invoke-virtual {p1, v1}, LWl/g;->e(LWl/x;)LWl/C;

    move-result-object p1

    check-cast p1, LWl/g;

    invoke-virtual {p0, v1}, LWl/g;->e(LWl/x;)LWl/C;

    move-result-object p0

    check-cast p0, LWl/g;

    invoke-virtual {p1, v0}, LWl/g;->h(I)LWl/g;

    move-result-object p1

    filled-new-array {p1, p0}, [LWl/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(LRl/g;LWl/g;)[LWl/g;
    .locals 6

    invoke-virtual {p0}, LRl/g;->h()I

    move-result v0

    invoke-virtual {p0}, LRl/g;->j()LWl/x;

    move-result-object v1

    invoke-virtual {p0}, LRl/g;->e()LWl/h;

    move-result-object v2

    invoke-virtual {p0}, LRl/g;->f()LWl/y;

    move-result-object v3

    invoke-virtual {p0}, LRl/g;->g()LWl/e;

    move-result-object v4

    invoke-virtual {p0}, LRl/g;->k()[LWl/y;

    move-result-object p0

    invoke-virtual {v1}, LWl/x;->a()LWl/x;

    move-result-object v5

    invoke-virtual {p1, v5}, LWl/g;->e(LWl/x;)LWl/C;

    move-result-object p1

    check-cast p1, LWl/g;

    invoke-virtual {v4, p1}, LWl/e;->i(LWl/C;)LWl/C;

    move-result-object v4

    check-cast v4, LWl/g;

    invoke-static {v4, v2, v3, p0}, LWl/s;->c(LWl/g;LWl/h;LWl/y;[LWl/y;)LWl/g;

    move-result-object p0

    invoke-virtual {p1, p0}, LWl/g;->a(LWl/C;)LWl/C;

    move-result-object p1

    check-cast p1, LWl/g;

    invoke-virtual {p1, v1}, LWl/g;->e(LWl/x;)LWl/C;

    move-result-object p1

    check-cast p1, LWl/g;

    invoke-virtual {p0, v1}, LWl/g;->e(LWl/x;)LWl/C;

    move-result-object p0

    check-cast p0, LWl/g;

    invoke-virtual {p1, v0}, LWl/g;->h(I)LWl/g;

    move-result-object p1

    filled-new-array {p1, p0}, [LWl/g;

    move-result-object p0

    return-object p0
.end method

.method public static c(LDl/b;LWl/g;LWl/g;)LWl/g;
    .locals 0

    invoke-virtual {p0}, LDl/b;->a()LWl/e;

    move-result-object p0

    invoke-virtual {p0, p1}, LWl/e;->A(LWl/C;)LWl/C;

    move-result-object p0

    invoke-virtual {p0, p2}, LWl/C;->a(LWl/C;)LWl/C;

    move-result-object p0

    check-cast p0, LWl/g;

    return-object p0
.end method

.method public static d(LRl/h;LWl/g;LWl/g;)LWl/g;
    .locals 0

    invoke-virtual {p0}, LRl/h;->e()LWl/e;

    move-result-object p0

    invoke-virtual {p0, p1}, LWl/e;->A(LWl/C;)LWl/C;

    move-result-object p0

    invoke-virtual {p0, p2}, LWl/C;->a(LWl/C;)LWl/C;

    move-result-object p0

    check-cast p0, LWl/g;

    return-object p0
.end method
