.class public Lorg/bouncycastle/cms/Q;
.super Lorg/bouncycastle/cms/t;
.source "SourceFile"


# static fields
.field public static final l:Lorg/bouncycastle/cms/U;

.field public static final m:LQk/j;


# instance fields
.field public c:Luh/W;

.field public d:Loh/x;

.field public e:Lorg/bouncycastle/cms/W;

.field public f:Ljava/util/Map;

.field public g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lhi/b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lorg/bouncycastle/cms/O0;

.field public i:Loh/G;

.field public j:Loh/G;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/U;->a:Lorg/bouncycastle/cms/U;

    sput-object v0, Lorg/bouncycastle/cms/Q;->l:Lorg/bouncycastle/cms/U;

    new-instance v0, LQk/j;

    invoke-direct {v0}, LQk/j;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/Q;->m:LQk/j;

    return-void
.end method

.method public constructor <init>(LQk/q;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/cms/Q;-><init>(LQk/q;Lorg/bouncycastle/cms/W;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(LQk/q;Lorg/bouncycastle/cms/W;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p3}, Lorg/bouncycastle/cms/t;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    iput-object p2, p0, Lorg/bouncycastle/cms/Q;->e:Lorg/bouncycastle/cms/W;

    iget-object p3, p0, Lorg/bouncycastle/cms/t;->a:Luh/p;

    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Luh/p;->a(I)Loh/g;

    move-result-object p3

    invoke-static {p3}, Luh/W;->e(Ljava/lang/Object;)Luh/W;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/cms/Q;->c:Luh/W;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/bouncycastle/cms/Q;->f:Ljava/util/Map;

    iget-object p3, p0, Lorg/bouncycastle/cms/Q;->c:Luh/W;

    invoke-virtual {p3}, Luh/W;->c()Loh/H;

    move-result-object p3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p3}, Loh/H;->readObject()Loh/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p1, v1}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/cms/Q;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_1
    :try_start_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/Q;->g:Ljava/util/Set;

    iget-object p1, p0, Lorg/bouncycastle/cms/Q;->c:Luh/W;

    invoke-virtual {p1}, Luh/W;->d()Luh/p;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Luh/p;->a(I)Loh/g;

    move-result-object p3

    instance-of v0, p3, Loh/z;

    if-eqz v0, :cond_3

    check-cast p3, Loh/z;

    new-instance v0, Lorg/bouncycastle/cms/W;

    invoke-virtual {p1}, Luh/p;->b()Loh/x;

    move-result-object v1

    invoke-interface {p3}, Loh/z;->a()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Lorg/bouncycastle/cms/W;-><init>(Loh/x;Ljava/io/InputStream;)V

    iget-object p3, p0, Lorg/bouncycastle/cms/Q;->e:Lorg/bouncycastle/cms/W;

    if-nez p3, :cond_2

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/cms/Q;->e:Lorg/bouncycastle/cms/W;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/cms/W;->a()V

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_5

    new-instance v0, Lorg/bouncycastle/cms/z0;

    invoke-virtual {p1}, Luh/p;->b()Loh/x;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/bouncycastle/cms/z0;-><init>(Loh/x;Loh/g;)V

    iget-object p3, p0, Lorg/bouncycastle/cms/Q;->e:Lorg/bouncycastle/cms/W;

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/bouncycastle/cms/z0;->a()V

    :cond_5
    :goto_2
    if-nez p2, :cond_6

    invoke-virtual {p1}, Luh/p;->b()Loh/x;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/bouncycastle/cms/Q;->d:Loh/x;

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lorg/bouncycastle/cms/Q;->e:Lorg/bouncycastle/cms/W;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/W;->c()Loh/x;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_4
    return-void

    :goto_5
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "io exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public constructor <init>(LQk/q;Lorg/bouncycastle/cms/W;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/cms/Q;-><init>(LQk/q;Lorg/bouncycastle/cms/W;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(LQk/q;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/Q;-><init>(LQk/q;Ljava/io/InputStream;)V

    return-void
.end method

.method public static b(Loh/H;)Loh/G;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Loh/g;->r()Loh/B;

    move-result-object p0

    invoke-static {p0}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static l(Luh/p;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Luh/p;->a(I)Loh/g;

    move-result-object p0

    check-cast p0, Loh/z;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/cms/Q;->m(Loh/z;Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method

.method public static m(Loh/z;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lorg/bouncycastle/cms/X;->h(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object p1

    invoke-interface {p0}, Loh/z;->a()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p1}, Lfm/d;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static o(Ljava/io/InputStream;Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/I;

    invoke-direct {v0, p0}, Loh/I;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Luh/p;

    invoke-virtual {v0}, Loh/I;->j()Loh/g;

    move-result-object v0

    check-cast v0, Loh/F;

    invoke-direct {p0, v0}, Luh/p;-><init>(Loh/F;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Luh/p;->a(I)Loh/g;

    move-result-object p0

    invoke-static {p0}, Luh/W;->e(Ljava/lang/Object;)Luh/W;

    move-result-object p0

    new-instance v0, Loh/h0;

    invoke-direct {v0, p4}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    sget-object v1, Luh/l;->n8:Loh/x;

    invoke-virtual {v0, v1}, Loh/h0;->f(Loh/B;)V

    new-instance v1, Loh/h0;

    invoke-virtual {v0}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Loh/h0;-><init>(Ljava/io/OutputStream;IZ)V

    invoke-virtual {p0}, Luh/W;->g()Loh/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Loh/h0;->f(Loh/B;)V

    invoke-virtual {v1}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p0}, Luh/W;->c()Loh/H;

    move-result-object v5

    invoke-interface {v5}, Loh/g;->r()Loh/B;

    move-result-object v5

    invoke-virtual {v5}, Loh/v;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Luh/W;->d()Luh/p;

    move-result-object v2

    new-instance v5, Loh/h0;

    invoke-virtual {v1}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Luh/p;->b()Loh/x;

    move-result-object v6

    invoke-virtual {v5, v6}, Loh/h0;->f(Loh/B;)V

    invoke-virtual {v5}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/bouncycastle/cms/Q;->l(Luh/p;Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Loh/h0;->g()V

    invoke-virtual {p0}, Luh/W;->a()Loh/H;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/cms/Q;->b(Loh/H;)Loh/G;

    invoke-virtual {p0}, Luh/W;->b()Loh/H;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/cms/Q;->b(Loh/H;)Loh/G;

    if-nez p1, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/cms/X;->r(Lorg/bouncycastle/util/t;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lorg/bouncycastle/cms/X;->o(Lorg/bouncycastle/util/t;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/cms/X;->i(Ljava/util/List;)Loh/G;

    move-result-object p1

    invoke-virtual {p1}, Loh/G;->size()I

    move-result p3

    if-lez p3, :cond_3

    invoke-virtual {v1}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p3

    new-instance v2, Loh/K0;

    invoke-direct {v2, v3, v3, p1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v2}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p2}, Lorg/bouncycastle/cms/X;->q(Lorg/bouncycastle/util/t;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/cms/X;->i(Ljava/util/List;)Loh/G;

    move-result-object p1

    invoke-virtual {p1}, Loh/G;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {v1}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p2

    new-instance p3, Loh/K0;

    invoke-direct {p3, v3, v4, p1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p3}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_4
    invoke-virtual {v1}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0}, Luh/W;->f()Loh/H;

    move-result-object p0

    invoke-interface {p0}, Loh/g;->r()Loh/B;

    move-result-object p0

    invoke-virtual {p0}, Loh/v;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Loh/h0;->g()V

    invoke-virtual {v0}, Loh/h0;->g()V

    return-object p4
.end method

.method public static p(Ljava/io/InputStream;Lorg/bouncycastle/cms/O0;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/I;

    invoke-direct {v0, p0}, Loh/I;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Luh/p;

    invoke-virtual {v0}, Loh/I;->j()Loh/g;

    move-result-object v0

    check-cast v0, Loh/F;

    invoke-direct {p0, v0}, Luh/p;-><init>(Loh/F;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Luh/p;->a(I)Loh/g;

    move-result-object p0

    invoke-static {p0}, Luh/W;->e(Ljava/lang/Object;)Luh/W;

    move-result-object p0

    new-instance v0, Loh/h0;

    invoke-direct {v0, p2}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    sget-object v1, Luh/l;->n8:Loh/x;

    invoke-virtual {v0, v1}, Loh/h0;->f(Loh/B;)V

    new-instance v1, Loh/h0;

    invoke-virtual {v0}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Loh/h0;-><init>(Ljava/io/OutputStream;IZ)V

    invoke-virtual {p0}, Luh/W;->g()Loh/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Loh/h0;->f(Loh/B;)V

    invoke-virtual {p0}, Luh/W;->c()Loh/H;

    move-result-object v2

    invoke-interface {v2}, Loh/g;->r()Loh/B;

    new-instance v2, Loh/h;

    invoke-direct {v2}, Loh/h;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O0;->b()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/cms/N0;

    sget-object v7, Lorg/bouncycastle/cms/Q;->l:Lorg/bouncycastle/cms/U;

    invoke-virtual {v6}, Lorg/bouncycastle/cms/N0;->h()Lhi/b;

    move-result-object v6

    sget-object v8, Lorg/bouncycastle/cms/Q;->m:LQk/j;

    invoke-virtual {v7, v6, v8}, Lorg/bouncycastle/cms/U;->b(Lhi/b;LQk/o;)Lhi/b;

    move-result-object v6

    invoke-virtual {v2, v6}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v5

    new-instance v6, Loh/I0;

    invoke-direct {v6, v2}, Loh/I0;-><init>(Loh/h;)V

    invoke-virtual {v6}, Loh/v;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Luh/W;->d()Luh/p;

    move-result-object v2

    new-instance v5, Loh/h0;

    invoke-virtual {v1}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Loh/h0;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Luh/p;->b()Loh/x;

    move-result-object v6

    invoke-virtual {v5, v6}, Loh/h0;->f(Loh/B;)V

    invoke-virtual {v5}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/bouncycastle/cms/Q;->l(Luh/p;Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Loh/h0;->g()V

    invoke-virtual {p0}, Luh/W;->a()Loh/H;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/cms/Q;->q(Loh/o;Loh/H;I)V

    invoke-virtual {p0}, Luh/W;->b()Loh/H;

    move-result-object p0

    invoke-static {v1, p0, v4}, Lorg/bouncycastle/cms/Q;->q(Loh/o;Loh/H;I)V

    new-instance p0, Loh/h;

    invoke-direct {p0}, Loh/h;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O0;->b()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cms/N0;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/N0;->u()Luh/Y;

    move-result-object v2

    invoke-virtual {p0, v2}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Loh/b0;->a()Ljava/io/OutputStream;

    move-result-object p1

    new-instance v2, Loh/I0;

    invoke-direct {v2, p0}, Loh/I0;-><init>(Loh/h;)V

    invoke-virtual {v2}, Loh/v;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Loh/h0;->g()V

    invoke-virtual {v0}, Loh/h0;->g()V

    return-object p2
.end method

.method public static q(Loh/o;Loh/H;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/cms/Q;->b(Loh/H;)Loh/G;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of p1, p1, Loh/k0;

    const/4 v1, 0x0

    invoke-virtual {p0}, Loh/o;->a()Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p1, :cond_0

    new-instance p1, Loh/l0;

    invoke-direct {p1, v1, p2, v0}, Loh/l0;-><init>(ZILoh/g;)V

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    new-instance p1, Loh/K0;

    invoke-direct {p1, v1, p2, v0}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public c()Lorg/bouncycastle/util/t;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/Q;->n()V

    sget-object v0, Lorg/bouncycastle/cms/Q;->l:Lorg/bouncycastle/cms/U;

    iget-object v1, p0, Lorg/bouncycastle/cms/Q;->i:Loh/G;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/U;->c(Loh/G;)Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/bouncycastle/util/t;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/Q;->n()V

    sget-object v0, Lorg/bouncycastle/cms/Q;->l:Lorg/bouncycastle/cms/U;

    iget-object v1, p0, Lorg/bouncycastle/cms/Q;->j:Loh/G;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/U;->d(Loh/G;)Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/bouncycastle/util/t;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/Q;->n()V

    sget-object v0, Lorg/bouncycastle/cms/Q;->l:Lorg/bouncycastle/cms/U;

    iget-object v1, p0, Lorg/bouncycastle/cms/Q;->i:Loh/G;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/U;->e(Loh/G;)Lorg/bouncycastle/util/t;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lhi/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/Q;->g:Ljava/util/Set;

    return-object v0
.end method

.method public g(Loh/x;)Lorg/bouncycastle/util/t;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/Q;->n()V

    sget-object v0, Lorg/bouncycastle/cms/Q;->l:Lorg/bouncycastle/cms/U;

    iget-object v1, p0, Lorg/bouncycastle/cms/Q;->j:Loh/G;

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/cms/U;->g(Loh/x;Loh/G;)Lorg/bouncycastle/util/t;

    move-result-object p1

    return-object p1
.end method

.method public h()Lorg/bouncycastle/cms/W;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cms/Q;->e:Lorg/bouncycastle/cms/W;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/Q;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/Q;->e:Lorg/bouncycastle/cms/W;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/W;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/X;->e(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/W;

    iget-object v2, p0, Lorg/bouncycastle/cms/Q;->e:Lorg/bouncycastle/cms/W;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/W;->c()Loh/x;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/W;-><init>(Loh/x;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/Q;->d:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lorg/bouncycastle/cms/O0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/Q;->h:Lorg/bouncycastle/cms/O0;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/cms/Q;->n()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/cms/Q;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/Q;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQk/p;

    invoke-interface {v4}, LQk/p;->b()[B

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/cms/Q;->c:Luh/W;

    invoke-virtual {v2}, Luh/W;->f()Loh/H;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Loh/H;->readObject()Loh/g;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Loh/g;->r()Loh/B;

    move-result-object v3

    invoke-static {v3}, Luh/Y;->z(Ljava/lang/Object;)Luh/Y;

    move-result-object v3

    invoke-virtual {v3}, Luh/Y;->v()Lhi/b;

    move-result-object v4

    invoke-virtual {v4}, Lhi/b;->u()Loh/x;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    new-instance v5, Lorg/bouncycastle/cms/N0;

    iget-object v6, p0, Lorg/bouncycastle/cms/Q;->d:Loh/x;

    const/4 v7, 0x0

    invoke-direct {v5, v3, v6, v7, v4}, Lorg/bouncycastle/cms/N0;-><init>(Luh/Y;Loh/x;Lorg/bouncycastle/cms/F;[B)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    new-instance v1, Lorg/bouncycastle/cms/O0;

    invoke-direct {v1, v0}, Lorg/bouncycastle/cms/O0;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/Q;->h:Lorg/bouncycastle/cms/O0;

    goto :goto_3

    :goto_2
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "io exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/cms/Q;->h:Lorg/bouncycastle/cms/O0;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/Q;->c:Luh/W;

    invoke-virtual {v0}, Luh/W;->g()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    return v0
.end method

.method public final n()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/cms/Q;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/cms/Q;->k:Z

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/Q;->c:Luh/W;

    invoke-virtual {v0}, Luh/W;->a()Loh/H;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/Q;->b(Loh/H;)Loh/G;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/Q;->i:Loh/G;

    iget-object v0, p0, Lorg/bouncycastle/cms/Q;->c:Luh/W;

    invoke-virtual {v0}, Luh/W;->b()Loh/H;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/Q;->b(Loh/H;)Loh/G;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/Q;->j:Loh/G;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "problem parsing cert/crl sets"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
