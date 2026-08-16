.class public Lki/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Vector;Ljava/util/Enumeration;)V
    .locals 1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Lki/l;
    .locals 1

    invoke-static {p0}, Lki/i;->h(Ljava/lang/String;)Lki/l;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, LZh/c;->j(Ljava/lang/String;)Lki/l;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, LSh/c;->b(Ljava/lang/String;)Lki/l;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lbi/a;->h(Ljava/lang/String;)Lki/l;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Lph/a;->h(Ljava/lang/String;)Lki/l;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Lyh/b;->i(Ljava/lang/String;)Lki/l;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0}, LFh/a;->h(Ljava/lang/String;)Lki/l;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lki/m;
    .locals 1

    invoke-static {p0}, Lki/i;->i(Ljava/lang/String;)Lki/m;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, LZh/c;->k(Ljava/lang/String;)Lki/m;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, LSh/c;->c(Ljava/lang/String;)Lki/m;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lbi/a;->i(Ljava/lang/String;)Lki/m;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Lph/a;->i(Ljava/lang/String;)Lki/m;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Lyh/b;->h(Ljava/lang/String;)Lki/m;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0}, LFh/a;->i(Ljava/lang/String;)Lki/m;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static d(Loh/x;)Lki/l;
    .locals 1

    invoke-static {p0}, Lki/i;->j(Loh/x;)Lki/l;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, LZh/c;->l(Loh/x;)Lki/l;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lbi/a;->j(Loh/x;)Lki/l;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lph/a;->j(Loh/x;)Lki/l;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Lyh/b;->k(Loh/x;)Lki/l;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, LFh/a;->j(Loh/x;)Lki/l;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public static e(Loh/x;)Lki/m;
    .locals 1

    invoke-static {p0}, Lki/i;->k(Loh/x;)Lki/m;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, LZh/c;->m(Loh/x;)Lki/m;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lbi/a;->k(Loh/x;)Lki/m;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lph/a;->k(Loh/x;)Lki/m;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Lyh/b;->j(Loh/x;)Lki/m;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, LFh/a;->k(Loh/x;)Lki/m;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public static f(Loh/x;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lki/i;->l(Loh/x;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, LZh/c;->n(Loh/x;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, LSh/c;->f(Loh/x;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lbi/a;->l(Loh/x;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Lph/a;->l(Loh/x;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Lyh/b;->l(Loh/x;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0}, LFh/a;->l(Loh/x;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    invoke-static {p0}, LJi/a;->n(Loh/x;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public static g()Ljava/util/Enumeration;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lki/i;->m()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lki/e;->a(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, LZh/c;->o()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lki/e;->a(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, LSh/c;->g()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lki/e;->a(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, Lbi/a;->m()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lki/e;->a(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, Lph/a;->m()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lki/e;->a(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, Lyh/b;->m()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lki/e;->a(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, LFh/a;->m()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lki/e;->a(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Loh/x;
    .locals 2

    invoke-static {p0}, Lki/i;->n(Ljava/lang/String;)Loh/x;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, LZh/c;->p(Ljava/lang/String;)Loh/x;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, LSh/c;->h(Ljava/lang/String;)Loh/x;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lbi/a;->n(Ljava/lang/String;)Loh/x;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-static {p0}, Lph/a;->n(Ljava/lang/String;)Loh/x;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0}, Lyh/b;->n(Ljava/lang/String;)Loh/x;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-static {p0}, LFh/a;->n(Ljava/lang/String;)Loh/x;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    const-string v1, "curve25519"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object v0, Loj/a;->c:Loh/x;

    :cond_6
    return-object v0
.end method
