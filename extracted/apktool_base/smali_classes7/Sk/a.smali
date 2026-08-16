.class public LSk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LSk/e;LQk/h;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    new-instance v0, Loh/x;

    const-string v1, "2.16.840.1.114027.80.6.2"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LSk/e;->b(Loh/x;)[LXh/a;

    move-result-object v0

    new-instance v1, LSk/b;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, LSk/b;-><init>(LXh/a;)V

    new-instance v0, Loh/x;

    const-string v3, "2.16.840.1.114027.80.6.3"

    invoke-direct {v0, v3}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LSk/e;->b(Loh/x;)[LXh/a;

    move-result-object v0

    invoke-virtual {p0}, LSk/e;->n()LXh/e;

    move-result-object p0

    invoke-virtual {p0}, LXh/e;->u()LXh/f;

    move-result-object p0

    new-instance v4, Loh/h;

    invoke-direct {v4}, Loh/h;-><init>()V

    invoke-virtual {p0}, LXh/f;->z()Loh/s;

    move-result-object v5

    invoke-virtual {v4, v5}, Loh/h;->a(Loh/g;)V

    invoke-virtual {p0}, LXh/f;->x()Lfi/d;

    move-result-object v5

    invoke-virtual {v4, v5}, Loh/h;->a(Loh/g;)V

    invoke-virtual {p0}, LXh/f;->y()Lhi/h0;

    move-result-object v5

    invoke-virtual {v4, v5}, Loh/h;->a(Loh/g;)V

    new-instance v5, Loh/h;

    invoke-direct {v5}, Loh/h;-><init>()V

    invoke-virtual {p0}, LXh/f;->u()Loh/G;

    move-result-object p0

    invoke-virtual {p0}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LXh/a;->y(Ljava/lang/Object;)LXh/a;

    move-result-object v6

    invoke-virtual {v6}, LXh/a;->u()Loh/x;

    move-result-object v7

    new-instance v8, Loh/x;

    invoke-direct {v8, v3}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Loh/B;->A(Loh/B;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v6}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_1
    new-instance p0, Loh/K0;

    new-instance v3, Loh/I0;

    invoke-direct {v3, v5}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {p0, v2, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v4, p0}, Loh/h;->a(Loh/g;)V

    new-instance p0, Loh/h;

    invoke-direct {p0}, Loh/h;-><init>()V

    new-instance v3, Loh/G0;

    invoke-direct {v3, v4}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {p0, v3}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v1}, LSk/b;->e()Lhi/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Loh/h;->a(Loh/g;)V

    aget-object v0, v0, v2

    invoke-virtual {v0}, LXh/a;->x()[Loh/g;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Loh/h;->a(Loh/g;)V

    new-instance v0, LSk/e;

    new-instance v1, Loh/G0;

    invoke-direct {v1, p0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v1}, LXh/e;->v(Ljava/lang/Object;)LXh/e;

    move-result-object p0

    invoke-direct {v0, p0}, LSk/e;-><init>(LXh/e;)V

    invoke-virtual {v0, p1}, LSk/e;->l(LQk/h;)Z

    move-result p0

    return p0
.end method
