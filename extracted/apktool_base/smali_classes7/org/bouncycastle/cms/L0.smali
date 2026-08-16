.class public Lorg/bouncycastle/cms/L0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Luh/X;

.field public final b:Lorg/bouncycastle/cms/d;

.field public final c:Lorg/bouncycastle/cms/d;

.field public final d:LQk/f;

.field public final e:LQk/p;

.field public final f:Lhi/b;

.field public final g:Lorg/bouncycastle/cms/N;

.field public h:[B

.field public i:Lli/h;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/L0;Lorg/bouncycastle/cms/d;Lorg/bouncycastle/cms/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/L0;->h:[B

    iget-object v0, p1, Lorg/bouncycastle/cms/L0;->a:Luh/X;

    iput-object v0, p0, Lorg/bouncycastle/cms/L0;->a:Luh/X;

    iget-object v0, p1, Lorg/bouncycastle/cms/L0;->d:LQk/f;

    iput-object v0, p0, Lorg/bouncycastle/cms/L0;->d:LQk/f;

    iget-object v0, p1, Lorg/bouncycastle/cms/L0;->f:Lhi/b;

    iput-object v0, p0, Lorg/bouncycastle/cms/L0;->f:Lhi/b;

    iget-object v0, p1, Lorg/bouncycastle/cms/L0;->e:LQk/p;

    iput-object v0, p0, Lorg/bouncycastle/cms/L0;->e:LQk/p;

    iget-object p1, p1, Lorg/bouncycastle/cms/L0;->g:Lorg/bouncycastle/cms/N;

    iput-object p1, p0, Lorg/bouncycastle/cms/L0;->g:Lorg/bouncycastle/cms/N;

    iput-object p2, p0, Lorg/bouncycastle/cms/L0;->b:Lorg/bouncycastle/cms/d;

    iput-object p3, p0, Lorg/bouncycastle/cms/L0;->c:Lorg/bouncycastle/cms/d;

    return-void
.end method

.method public constructor <init>(Luh/X;LQk/f;LQk/p;Lorg/bouncycastle/cms/N;Lorg/bouncycastle/cms/d;Lorg/bouncycastle/cms/d;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/L0;->h:[B

    iput-object p1, p0, Lorg/bouncycastle/cms/L0;->a:Luh/X;

    iput-object p2, p0, Lorg/bouncycastle/cms/L0;->d:LQk/f;

    invoke-interface {p3}, LQk/p;->a()Lhi/b;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/L0;->f:Lhi/b;

    iput-object p3, p0, Lorg/bouncycastle/cms/L0;->e:LQk/p;

    iput-object p5, p0, Lorg/bouncycastle/cms/L0;->b:Lorg/bouncycastle/cms/d;

    iput-object p6, p0, Lorg/bouncycastle/cms/L0;->c:Lorg/bouncycastle/cms/d;

    iput-object p4, p0, Lorg/bouncycastle/cms/L0;->g:Lorg/bouncycastle/cms/N;

    return-void
.end method

.method public constructor <init>(Luh/X;LQk/f;Lhi/b;Lorg/bouncycastle/cms/N;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/L0;->h:[B

    iput-object p1, p0, Lorg/bouncycastle/cms/L0;->a:Luh/X;

    iput-object p2, p0, Lorg/bouncycastle/cms/L0;->d:LQk/f;

    iput-object p3, p0, Lorg/bouncycastle/cms/L0;->f:Lhi/b;

    iput-object v0, p0, Lorg/bouncycastle/cms/L0;->e:LQk/p;

    iput-object v0, p0, Lorg/bouncycastle/cms/L0;->b:Lorg/bouncycastle/cms/d;

    iput-object v0, p0, Lorg/bouncycastle/cms/L0;->c:Lorg/bouncycastle/cms/d;

    iput-object p4, p0, Lorg/bouncycastle/cms/L0;->g:Lorg/bouncycastle/cms/N;

    return-void
.end method


# virtual methods
.method public a(Loh/x;)Luh/Y;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->g:Lorg/bouncycastle/cms/N;

    iget-object v1, p0, Lorg/bouncycastle/cms/L0;->d:LQk/f;

    invoke-interface {v1}, LQk/f;->a()Lhi/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/N;->a(Lhi/b;)Lhi/b;

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->b:Lorg/bouncycastle/cms/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->e:LQk/p;

    invoke-interface {v0}, LQk/p;->a()Lhi/b;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/cms/L0;->e:LQk/p;

    invoke-interface {v2}, LQk/p;->b()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/L0;->h:[B

    iget-object v2, p0, Lorg/bouncycastle/cms/L0;->e:LQk/p;

    invoke-interface {v2}, LQk/p;->a()Lhi/b;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/L0;->h:[B

    invoke-virtual {p0, p1, v2, v6, v3}, Lorg/bouncycastle/cms/L0;->d(Loh/x;Lhi/b;Lhi/b;[B)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/L0;->b:Lorg/bouncycastle/cms/d;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/bouncycastle/cms/d;->a(Ljava/util/Map;)Luh/b;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/cms/L0;->c(Luh/b;)Loh/G;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/L0;->d:LQk/f;

    invoke-interface {v3}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v2, v4}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    move-object v5, v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->f:Lhi/b;

    iget-object v2, p0, Lorg/bouncycastle/cms/L0;->e:LQk/p;

    if-eqz v2, :cond_1

    invoke-interface {v2}, LQk/p;->b()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/L0;->h:[B

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/cms/L0;->h:[B

    :goto_0
    move-object v5, v1

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/cms/L0;->d:LQk/f;

    invoke-interface {v2}, LQk/f;->getSignature()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/L0;->c:Lorg/bouncycastle/cms/d;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/cms/L0;->h:[B

    invoke-virtual {p0, p1, v0, v6, v1}, Lorg/bouncycastle/cms/L0;->d(Loh/x;Lhi/b;Lhi/b;[B)Ljava/util/Map;

    move-result-object p1

    const-string v1, "encryptedDigest"

    invoke-static {v2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/cms/L0;->c:Lorg/bouncycastle/cms/d;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/bouncycastle/cms/d;->a(Ljava/util/Map;)Luh/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/L0;->c(Luh/b;)Loh/G;

    move-result-object p1

    move-object v8, p1

    goto :goto_2

    :cond_2
    move-object v8, v1

    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/cms/L0;->b:Lorg/bouncycastle/cms/d;

    if-nez p1, :cond_3

    sget-object p1, LBh/a;->e:Loh/x;

    invoke-virtual {v6}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual {p1, v1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lhi/b;

    sget-object v0, LSh/d;->n:Loh/x;

    invoke-direct {p1, v0}, Lhi/b;-><init>(Loh/x;)V

    move-object v4, p1

    goto :goto_3

    :cond_3
    move-object v4, v0

    :goto_3
    new-instance p1, Luh/Y;

    iget-object v3, p0, Lorg/bouncycastle/cms/L0;->a:Luh/X;

    new-instance v7, Loh/C0;

    invoke-direct {v7, v2}, Loh/C0;-><init>([B)V

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Luh/Y;-><init>(Luh/X;Lhi/b;Loh/G;Lhi/b;Loh/y;Loh/G;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_4
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "encoding error."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public b()Lli/h;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->i:Lli/h;

    return-object v0
.end method

.method public final c(Luh/b;)Loh/G;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Loh/I0;

    invoke-virtual {p1}, Luh/b;->h()Loh/h;

    move-result-object p1

    invoke-direct {v0, p1}, Loh/I0;-><init>(Loh/h;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Loh/x;Lhi/b;Lhi/b;[B)Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "digestAlgID"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "signatureAlgID"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "digest"

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->h:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/io/OutputStream;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->e:LQk/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/cms/L0;->b:Lorg/bouncycastle/cms/d;

    if-nez v1, :cond_0

    new-instance v0, Lfm/f;

    iget-object v1, p0, Lorg/bouncycastle/cms/L0;->e:LQk/p;

    invoke-interface {v1}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/L0;->d:LQk/f;

    invoke-interface {v2}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfm/f;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    invoke-interface {v0}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->d:LQk/f;

    invoke-interface {v0}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public g()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->f:Lhi/b;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->a:Luh/X;

    invoke-virtual {v0}, Luh/X;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public i()Luh/X;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->a:Luh/X;

    return-object v0
.end method

.method public j()Lorg/bouncycastle/cms/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->b:Lorg/bouncycastle/cms/d;

    return-object v0
.end method

.method public k()Lorg/bouncycastle/cms/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->c:Lorg/bouncycastle/cms/d;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/L0;->i:Lli/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Lli/h;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/L0;->i:Lli/h;

    return-void
.end method
