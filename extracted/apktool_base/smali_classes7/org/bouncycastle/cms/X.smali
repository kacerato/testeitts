.class public Lorg/bouncycastle/cms/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Set;

.field public static final c:Ljava/util/Set;

.field public static final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/X;->a:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/bouncycastle/cms/X;->b:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lorg/bouncycastle/cms/X;->c:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lorg/bouncycastle/cms/X;->d:Ljava/util/Set;

    const-string v4, "DES"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v4, "DESEDE"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, LWh/b;->e:Loh/x;

    invoke-virtual {v4}, Loh/x;->J()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, LXh/t;->n1:Loh/x;

    invoke-virtual {v4}, Loh/x;->J()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, LXh/t;->I2:Loh/x;

    invoke-virtual {v4}, Loh/x;->J()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lki/r;->x6:Loh/x;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->R:Loh/x;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->S:Loh/x;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->T:Loh/x;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->U:Loh/x;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lki/r;->w6:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lki/r;->v6:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->N:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->J:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->O:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->K:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->P:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->L:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->Q:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LZh/d;->M:Loh/x;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lyh/a;->C:Loh/x;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LYh/a;->l:Loh/x;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LYh/a;->m:Loh/x;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lhi/b;Lhi/b;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lhi/b;->x()Loh/g;

    move-result-object p0

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    :cond_4
    if-eqz p1, :cond_5

    sget-object p0, Loh/A0;->c:Loh/A0;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0
.end method

.method public static B(Loh/x;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/X;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static C(Loh/x;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/X;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static D(Loh/x;)Z
    .locals 1

    sget-object v0, LXh/t;->G2:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LXh/t;->O2:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static E(Lorg/bouncycastle/cms/d;LQk/D;)Loh/G;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p0, v0}, Lorg/bouncycastle/cms/d;->a(Ljava/util/Map;)Luh/b;

    move-result-object p0

    new-instance v0, Loh/I0;

    invoke-virtual {p0}, Luh/b;->h()Loh/h;

    move-result-object p0

    invoke-direct {v0, p0}, Loh/I0;-><init>(Loh/h;)V

    invoke-interface {p1}, LQk/a;->c()Ljava/io/OutputStream;

    move-result-object p0

    const-string p1, "DER"

    invoke-virtual {v0, p1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static F(Ljava/io/InputStream;)Luh/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Loh/r;

    invoke-direct {v0, p0}, Loh/r;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/cms/X;->G(Loh/r;)Luh/o;

    move-result-object p0

    return-object p0
.end method

.method public static G(Loh/r;)Luh/o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const-string v0, "Malformed content."

    :try_start_0
    invoke-virtual {p0}, Loh/r;->k()Loh/B;

    move-result-object p0

    invoke-static {p0}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "No content found."

    invoke-direct {p0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_2
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "IOException reading content."

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public static H([B)Luh/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Loh/r;

    invoke-direct {v0, p0}, Loh/r;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/cms/X;->G(Loh/r;)Luh/o;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lfm/d;->e(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/io/InputStream;I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lfm/d;->f(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static K(Luh/M;)V
    .locals 2

    sget-object v0, Luh/l;->y8:Loh/x;

    invoke-virtual {p0}, Luh/M;->v()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Luh/M;->u()Loh/g;

    move-result-object p0

    invoke-static {p0}, LVh/g;->u(Ljava/lang/Object;)LVh/g;

    move-result-object p0

    invoke-virtual {p0}, LVh/g;->y()LVh/h;

    move-result-object p0

    invoke-virtual {p0}, LVh/h;->v()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot add unsuccessful OCSP response to CMS SignedData"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Loh/h0;Lorg/bouncycastle/cms/d;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Loh/K0;

    new-instance v1, Loh/j0;

    invoke-interface {p1, p3}, Lorg/bouncycastle/cms/d;->a(Ljava/util/Map;)Luh/b;

    move-result-object p1

    invoke-virtual {p1}, Luh/b;->h()Loh/h;

    move-result-object p1

    invoke-direct {v1, p1}, Loh/j0;-><init>(Loh/h;)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, p2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p0, v0}, Loh/h0;->f(Loh/B;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/util/Set;Lorg/bouncycastle/cms/N0;LQk/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lhi/b;",
            ">;",
            "Lorg/bouncycastle/cms/N0;",
            "LQk/o;",
            ")V"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/cms/U;->a:Lorg/bouncycastle/cms/U;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/N0;->h()Lhi/b;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/bouncycastle/cms/U;->b(Lhi/b;LQk/o;)Lhi/b;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/bouncycastle/cms/N0;->e()Lorg/bouncycastle/cms/O0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/N0;

    sget-object v1, Lorg/bouncycastle/cms/U;->a:Lorg/bouncycastle/cms/U;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/N0;->h()Lhi/b;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lorg/bouncycastle/cms/U;->b(Lhi/b;LQk/o;)Lhi/b;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Loh/h0;Luh/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p0, v0}, Loh/h0;->f(Loh/B;)V

    :cond_0
    return-void
.end method

.method public static d(Loh/h;Loh/h0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p1

    if-eqz p2, :cond_0

    new-instance p2, Loh/j0;

    invoke-direct {p2, p0}, Loh/j0;-><init>(Loh/h;)V

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    new-instance p2, Loh/I0;

    invoke-direct {p2, p0}, Loh/I0;-><init>(Loh/h;)V

    invoke-virtual {p2}, Loh/v;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public static e(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQk/p;

    new-instance v1, Lfm/e;

    invoke-interface {v0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lfm/e;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object p1, v1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static f(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/L0;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/L0;->f()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/cms/X;->x(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static g(Ljava/util/Set;)Loh/G;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lhi/b;",
            ">;)",
            "Loh/G;"
        }
    .end annotation

    new-instance v0, Loh/X0;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lhi/b;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lhi/b;

    invoke-direct {v0, p0}, Loh/X0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public static h(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/d0;

    invoke-direct {v0, p0, p1, p2}, Loh/d0;-><init>(Ljava/io/OutputStream;IZ)V

    if-eqz p3, :cond_0

    new-array p0, p3, [B

    invoke-virtual {v0, p0}, Loh/d0;->f([B)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Loh/d0;->e()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/List;)Loh/G;
    .locals 2

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    new-instance p0, Loh/j0;

    invoke-direct {p0, v0}, Loh/j0;-><init>(Loh/h;)V

    return-object p0
.end method

.method public static j(Ljava/util/List;)Loh/G;
    .locals 2

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    new-instance p0, Loh/I0;

    invoke-direct {p0, v0}, Loh/I0;-><init>(Loh/h;)V

    return-object p0
.end method

.method public static k(Ljava/util/List;)Loh/G;
    .locals 2

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    new-instance p0, Loh/X0;

    invoke-direct {p0, v0}, Loh/X0;-><init>(Loh/h;)V

    return-object p0
.end method

.method public static l(Loh/g;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Loh/g;->r()Loh/B;

    move-result-object p0

    invoke-virtual {p0}, Loh/v;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Lorg/bouncycastle/cms/d;)Loh/G;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Loh/j0;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p0, v1}, Lorg/bouncycastle/cms/d;->a(Ljava/util/Map;)Luh/b;

    move-result-object p0

    invoke-virtual {p0}, Luh/b;->h()Loh/h;

    move-result-object p0

    invoke-direct {v0, p0}, Loh/j0;-><init>(Loh/h;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static n(Lorg/bouncycastle/cms/d;)Loh/G;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Loh/X0;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p0, v1}, Lorg/bouncycastle/cms/d;->a(Ljava/util/Map;)Luh/b;

    move-result-object p0

    invoke-virtual {p0}, Luh/b;->h()Loh/h;

    move-result-object p0

    invoke-direct {v0, p0}, Loh/X0;-><init>(Loh/h;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static o(Lorg/bouncycastle/util/t;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v1}, Lorg/bouncycastle/util/t;->a(Lorg/bouncycastle/util/r;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lli/e;

    new-instance v2, Loh/K0;

    invoke-virtual {v1}, Lli/e;->x()Lhi/h;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v0

    :goto_1
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "error processing certs"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public static p(Loh/H;)Luh/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    :goto_0
    invoke-interface {p0}, Loh/H;->readObject()Loh/g;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Loh/F;

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    new-instance p0, Luh/b;

    new-instance v1, Loh/I0;

    invoke-direct {v1, v0}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {p0, v1}, Luh/b;-><init>(Loh/G;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q(Lorg/bouncycastle/util/t;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v1}, Lorg/bouncycastle/util/t;->a(Lorg/bouncycastle/util/r;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lli/g;

    if-eqz v2, :cond_1

    check-cast v1, Lli/g;

    invoke-virtual {v1}, Lli/g;->r()Lhi/r;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    instance-of v2, v1, Luh/M;

    if-eqz v2, :cond_2

    invoke-static {v1}, Luh/M;->w(Ljava/lang/Object;)Luh/M;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/cms/X;->K(Luh/M;)V

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, Loh/M;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_3
    return-object v0

    :goto_2
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "error processing certs"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public static r(Lorg/bouncycastle/util/t;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v1}, Lorg/bouncycastle/util/t;->a(Lorg/bouncycastle/util/r;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lli/h;

    invoke-virtual {v1}, Lli/h;->x()Lhi/q;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v0

    :goto_1
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "error processing certs"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public static s(Loh/x;Lhi/b;[B)Luh/r;
    .locals 1

    new-instance v0, Loh/c0;

    invoke-direct {v0, p2}, Loh/c0;-><init>([B)V

    new-instance p2, Luh/r;

    invoke-direct {p2, p0, p1, v0}, Luh/r;-><init>(Loh/x;Lhi/b;Loh/y;)V

    return-object p2
.end method

.method public static t(Lorg/bouncycastle/cms/V;LQk/F;[B)Luh/r;
    .locals 0

    invoke-interface {p0}, Lorg/bouncycastle/cms/V;->a()Loh/x;

    move-result-object p0

    invoke-interface {p1}, LQk/F;->a()Lhi/b;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/cms/X;->s(Loh/x;Lhi/b;[B)Luh/r;

    move-result-object p0

    return-object p0
.end method

.method public static u(Loh/x;Lorg/bouncycastle/util/t;)Ljava/util/Collection;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/t;->a(Lorg/bouncycastle/util/r;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/g;

    new-instance v2, Luh/M;

    invoke-direct {v2, p0, v1}, Luh/M;-><init>(Loh/x;Loh/g;)V

    invoke-static {v2}, Lorg/bouncycastle/cms/X;->K(Luh/M;)V

    new-instance v1, Loh/K0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static v(LQk/r;Ljava/util/List;)Loh/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/cms/G0;

    invoke-interface {v1, p0}, Lorg/bouncycastle/cms/G0;->a(LQk/r;)Luh/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static w(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lorg/bouncycastle/cms/u0;

    invoke-direct {p0}, Lorg/bouncycastle/cms/u0;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static x(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/cms/X;->w(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/cms/X;->w(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lfm/f;

    invoke-direct {v0, p0, p1}, Lfm/f;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static y(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/cms/X;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static z(Loh/x;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/X;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
