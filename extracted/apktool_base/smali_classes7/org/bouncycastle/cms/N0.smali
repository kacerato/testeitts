.class public Lorg/bouncycastle/cms/N0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/bouncycastle/cms/K0;

.field public final b:Lorg/bouncycastle/cms/F;

.field public final c:[B

.field public final d:Loh/x;

.field public final e:Z

.field public f:Luh/b;

.field public g:Luh/b;

.field public h:[B

.field public final i:Luh/Y;

.field public final j:Lhi/b;

.field public final k:Lhi/b;

.field public final l:Loh/G;

.field public final m:Loh/G;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/N0;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/N0;-><init>(Lorg/bouncycastle/cms/N0;Luh/Y;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/N0;Luh/Y;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    iget-object v0, p1, Lorg/bouncycastle/cms/N0;->d:Loh/x;

    iput-object v0, p0, Lorg/bouncycastle/cms/N0;->d:Loh/x;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/N0;->s()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/N0;->e:Z

    invoke-virtual {p1}, Lorg/bouncycastle/cms/N0;->l()Lorg/bouncycastle/cms/K0;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/N0;->a:Lorg/bouncycastle/cms/K0;

    invoke-virtual {p2}, Luh/Y;->v()Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/N0;->j:Lhi/b;

    invoke-virtual {p2}, Luh/Y;->u()Loh/G;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    invoke-virtual {p2}, Luh/Y;->B()Loh/G;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/N0;->m:Loh/G;

    invoke-virtual {p2}, Luh/Y;->x()Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/N0;->k:Lhi/b;

    invoke-virtual {p2}, Luh/Y;->y()Loh/y;

    move-result-object p2

    invoke-virtual {p2}, Loh/y;->H()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/N0;->c:[B

    iget-object p2, p1, Lorg/bouncycastle/cms/N0;->b:Lorg/bouncycastle/cms/F;

    iput-object p2, p0, Lorg/bouncycastle/cms/N0;->b:Lorg/bouncycastle/cms/F;

    iget-object p1, p1, Lorg/bouncycastle/cms/N0;->h:[B

    iput-object p1, p0, Lorg/bouncycastle/cms/N0;->h:[B

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->n()Luh/b;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/N0;->f:Luh/b;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->q()Luh/b;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/N0;->g:Luh/b;

    return-void
.end method

.method public constructor <init>(Luh/Y;Loh/x;Lorg/bouncycastle/cms/F;[B)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    iput-object p2, p0, Lorg/bouncycastle/cms/N0;->d:Loh/x;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lorg/bouncycastle/cms/N0;->e:Z

    invoke-virtual {p1}, Luh/Y;->A()Luh/X;

    move-result-object p2

    invoke-virtual {p2}, Luh/X;->x()Z

    move-result v0

    invoke-virtual {p2}, Luh/X;->u()Loh/g;

    move-result-object p2

    if-eqz v0, :cond_1

    invoke-static {p2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/cms/K0;

    invoke-virtual {p2}, Loh/y;->H()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/cms/K0;-><init>([B)V

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/cms/N0;->a:Lorg/bouncycastle/cms/K0;

    goto :goto_2

    :cond_1
    invoke-static {p2}, Luh/z;->u(Ljava/lang/Object;)Luh/z;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/cms/K0;

    invoke-virtual {p2}, Luh/z;->v()Lfi/d;

    move-result-object v1

    invoke-virtual {p2}, Luh/z;->x()Loh/s;

    move-result-object p2

    invoke-virtual {p2}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/cms/K0;-><init>(Lfi/d;Ljava/math/BigInteger;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Luh/Y;->v()Lhi/b;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/N0;->j:Lhi/b;

    invoke-virtual {p1}, Luh/Y;->u()Loh/G;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    invoke-virtual {p1}, Luh/Y;->B()Loh/G;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/N0;->m:Loh/G;

    invoke-virtual {p1}, Luh/Y;->x()Lhi/b;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/N0;->k:Lhi/b;

    invoke-virtual {p1}, Luh/Y;->y()Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/N0;->c:[B

    iput-object p3, p0, Lorg/bouncycastle/cms/N0;->b:Lorg/bouncycastle/cms/F;

    iput-object p4, p0, Lorg/bouncycastle/cms/N0;->h:[B

    return-void
.end method

.method public static a(Lorg/bouncycastle/cms/N0;Lorg/bouncycastle/cms/O0;)Lorg/bouncycastle/cms/N0;
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->q()Luh/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Luh/b;->h()Loh/h;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    :goto_0
    new-instance v2, Loh/h;

    invoke-direct {v2}, Loh/h;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/O0;->b()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/N0;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/N0;->u()Luh/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_1
    new-instance p1, Luh/a;

    sget-object v3, Luh/j;->d:Loh/x;

    new-instance v4, Loh/I0;

    invoke-direct {v4, v2}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {p1, v3, v4}, Luh/a;-><init>(Loh/x;Loh/G;)V

    invoke-virtual {v1, p1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Lorg/bouncycastle/cms/N0;

    new-instance v9, Luh/Y;

    invoke-virtual {v0}, Luh/Y;->A()Luh/X;

    move-result-object v3

    invoke-virtual {v0}, Luh/Y;->v()Lhi/b;

    move-result-object v4

    invoke-virtual {v0}, Luh/Y;->u()Loh/G;

    move-result-object v5

    invoke-virtual {v0}, Luh/Y;->x()Lhi/b;

    move-result-object v6

    invoke-virtual {v0}, Luh/Y;->y()Loh/y;

    move-result-object v7

    new-instance v8, Loh/I0;

    invoke-direct {v8, v1}, Loh/I0;-><init>(Loh/h;)V

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Luh/Y;-><init>(Luh/X;Lhi/b;Loh/G;Lhi/b;Loh/y;Loh/G;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->d:Loh/x;

    iget-object p0, p0, Lorg/bouncycastle/cms/N0;->b:Lorg/bouncycastle/cms/F;

    const/4 v1, 0x0

    invoke-direct {p1, v9, v0, p0, v1}, Lorg/bouncycastle/cms/N0;-><init>(Luh/Y;Loh/x;Lorg/bouncycastle/cms/F;[B)V

    return-object p1
.end method

.method public static t(Lorg/bouncycastle/cms/N0;Luh/b;)Lorg/bouncycastle/cms/N0;
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Loh/I0;

    invoke-virtual {p1}, Luh/b;->h()Loh/h;

    move-result-object p1

    invoke-direct {v2, p1}, Loh/I0;-><init>(Loh/h;)V

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, v1

    :goto_0
    new-instance p1, Lorg/bouncycastle/cms/N0;

    new-instance v2, Luh/Y;

    invoke-virtual {v0}, Luh/Y;->A()Luh/X;

    move-result-object v4

    invoke-virtual {v0}, Luh/Y;->v()Lhi/b;

    move-result-object v5

    invoke-virtual {v0}, Luh/Y;->u()Loh/G;

    move-result-object v6

    invoke-virtual {v0}, Luh/Y;->x()Lhi/b;

    move-result-object v7

    invoke-virtual {v0}, Luh/Y;->y()Loh/y;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Luh/Y;-><init>(Luh/X;Lhi/b;Loh/G;Lhi/b;Loh/y;Loh/G;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->d:Loh/x;

    iget-object p0, p0, Lorg/bouncycastle/cms/N0;->b:Lorg/bouncycastle/cms/F;

    invoke-direct {p1, v2, v0, p0, v1}, Lorg/bouncycastle/cms/N0;-><init>(Luh/Y;Loh/x;Lorg/bouncycastle/cms/F;[B)V

    return-object p1
.end method

.method public static v(Lhi/b;Lhi/b;)Lhi/b;
    .locals 1

    sget-object v0, LXh/t;->H0:Loh/x;

    invoke-virtual {p0}, Lhi/b;->u()Loh/x;

    move-result-object p0

    invoke-virtual {v0, p0}, Loh/B;->A(Loh/B;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, LWh/b;->k:Loh/x;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, LXh/t;->L0:Loh/x;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    new-instance p0, Lhi/b;

    sget-object p1, LWh/b;->i:Loh/x;

    sget-object v0, Loh/A0;->c:Loh/A0;

    invoke-direct {p0, p1, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final A()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Luh/j;->b:Loh/x;

    const-string v1, "message-digest"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/cms/N0;->p(Loh/x;Ljava/lang/String;)Loh/B;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "the message-digest signed attribute type MUST be present when there are any signed attributes present"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v1, v0, Loh/y;

    if-eqz v1, :cond_3

    check-cast v0, Loh/y;

    iget-object v1, p0, Lorg/bouncycastle/cms/N0;->h:[B

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lorg/bouncycastle/cms/CMSSignerDigestMismatchException;

    const-string v1, "message-digest attribute value does not match calculated value"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSSignerDigestMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "message-digest attribute value not of ASN.1 type \'OCTET STRING\'"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lorg/bouncycastle/cms/P0;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const-string v0, "can\'t process mime object to create signature."

    sget-object v1, Lorg/bouncycastle/cms/U;->a:Lorg/bouncycastle/cms/U;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/U;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    invoke-virtual {v2}, Luh/Y;->v()Lhi/b;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/cms/N0;->k:Lhi/b;

    iget-object v3, p0, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    invoke-virtual {v3}, Luh/Y;->v()Lhi/b;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/cms/N0;->v(Lhi/b;Lhi/b;)Lhi/b;

    move-result-object v2

    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/bouncycastle/cms/N0;->k:Lhi/b;

    invoke-virtual {p1, v3, v2}, Lorg/bouncycastle/cms/P0;->b(Lhi/b;Lhi/b;)LQk/g;

    move-result-object v3
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-interface {v3}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/cms/N0;->h:[B

    if-nez v5, :cond_5

    invoke-virtual {p1, v2}, Lorg/bouncycastle/cms/P0;->c(Lhi/b;)LQk/p;

    move-result-object p1

    iget-object v5, p0, Lorg/bouncycastle/cms/N0;->b:Lorg/bouncycastle/cms/F;

    if-eqz v5, :cond_3

    invoke-interface {p1}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    if-nez v6, :cond_2

    instance-of v6, v3, LQk/H;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/cms/N0;->b:Lorg/bouncycastle/cms/F;

    invoke-interface {v6, v5}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :cond_1
    new-instance v6, Lfm/f;

    invoke-direct {v6, v5, v4}, Lfm/f;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iget-object v7, p0, Lorg/bouncycastle/cms/N0;->b:Lorg/bouncycastle/cms/F;

    invoke-interface {v7, v6}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/bouncycastle/cms/N0;->b:Lorg/bouncycastle/cms/F;

    invoke-interface {v6, v5}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->i()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    :goto_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->i()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    invoke-interface {p1}, LQk/p;->b()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/N0;->h:[B

    goto :goto_3

    :cond_4
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "data not encapsulated in signature - use detached constructor."

    invoke-direct {p1, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/bouncycastle/cms/N0;->b:Lorg/bouncycastle/cms/F;

    if-eqz p1, :cond_7

    invoke-interface {p1, v4}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->i()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_7
    :goto_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->y()V

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->n()Luh/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/N0;->x(Luh/b;)V

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->A()V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/N0;->z(Luh/b;)V

    :try_start_2
    iget-object p1, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/bouncycastle/cms/N0;->h:[B

    if-eqz p1, :cond_9

    instance-of p1, v3, LQk/H;

    if-eqz p1, :cond_9

    check-cast v3, LQk/H;

    const-string p1, "RSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lhi/w;

    new-instance v1, Lhi/b;

    invoke-virtual {v2}, Lhi/b;->u()Loh/x;

    move-result-object v2

    sget-object v4, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iget-object v2, p0, Lorg/bouncycastle/cms/N0;->h:[B

    invoke-direct {p1, v1, v2}, Lhi/w;-><init>(Lhi/b;[B)V

    const-string v1, "DER"

    invoke-virtual {p1, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->m()[B

    move-result-object v1

    invoke-interface {v3, p1, v1}, LQk/H;->b([B[B)Z

    move-result p1

    return p1

    :catch_2
    move-exception p1

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lorg/bouncycastle/cms/N0;->h:[B

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->m()[B

    move-result-object v1

    invoke-interface {v3, p1, v1}, LQk/H;->b([B[B)Z

    move-result p1

    return p1

    :cond_9
    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->m()[B

    move-result-object p1

    invoke-interface {v3, p1}, LQk/g;->verify([B)Z

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    :goto_4
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_5
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create digest calculator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :goto_6
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t create content verifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public c()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->h:[B

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "method can only be called after verify."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->d:Loh/x;

    return-object v0
.end method

.method public e()Lorg/bouncycastle/cms/O0;
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->q()Luh/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/O0;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v2}, Lorg/bouncycastle/cms/O0;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Luh/j;->d:Loh/x;

    invoke-virtual {v0, v3}, Luh/b;->e(Loh/x;)Loh/h;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Loh/h;->i()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Loh/h;->g(I)Loh/g;

    move-result-object v3

    check-cast v3, Luh/a;

    invoke-virtual {v3}, Luh/a;->v()Loh/G;

    move-result-object v3

    invoke-virtual {v3}, Loh/G;->size()I

    invoke-virtual {v3}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Luh/Y;->z(Ljava/lang/Object;)Luh/Y;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/cms/N0;

    new-instance v6, Lorg/bouncycastle/cms/G;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->m()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/cms/G;-><init>([B)V

    const/4 v7, 0x0

    invoke-direct {v5, v4, v7, v6, v7}, Lorg/bouncycastle/cms/N0;-><init>(Luh/Y;Loh/x;Lorg/bouncycastle/cms/F;[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/cms/O0;

    invoke-direct {v0, v2}, Lorg/bouncycastle/cms/O0;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->j:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->j:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/X;->l(Loh/g;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting digest parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public h()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->j:Lhi/b;

    return-object v0
.end method

.method public i()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    if-eqz v0, :cond_0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->k:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->k:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/X;->l(Loh/g;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting encryption parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public l()Lorg/bouncycastle/cms/K0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->a:Lorg/bouncycastle/cms/K0;

    return-object v0
.end method

.method public m()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public n()Luh/b;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cms/N0;->f:Luh/b;

    if-nez v1, :cond_0

    new-instance v1, Luh/b;

    invoke-direct {v1, v0}, Luh/b;-><init>(Loh/G;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/N0;->f:Luh/b;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->f:Luh/b;

    return-object v0
.end method

.method public final o()Luh/Z;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Luh/j;->c:Loh/x;

    const-string v1, "signing-time"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/cms/N0;->p(Loh/x;Ljava/lang/String;)Loh/B;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Luh/Z;->v(Ljava/lang/Object;)Luh/Z;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "signing-time attribute value not a valid \'Time\' structure"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p(Loh/x;Ljava/lang/String;)Loh/B;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->q()Luh/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Luh/b;->e(Loh/x;)Loh/h;

    move-result-object v0

    invoke-virtual {v0}, Loh/h;->i()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute MUST NOT be an unsigned attribute"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->n()Luh/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0, p1}, Luh/b;->e(Loh/x;)Loh/h;

    move-result-object p1

    invoke-virtual {p1}, Loh/h;->i()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/h;->g(I)Loh/g;

    move-result-object p1

    check-cast p1, Luh/a;

    invoke-virtual {p1}, Luh/a;->v()Loh/G;

    move-result-object p1

    invoke-virtual {p1}, Loh/G;->size()I

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-virtual {p1, v0}, Loh/G;->H(I)Loh/g;

    move-result-object p1

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute MUST have a single attribute value"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The SignedAttributes in a signerInfo MUST NOT include multiple instances of the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " attribute"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v1
.end method

.method public q()Luh/b;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->m:Loh/G;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cms/N0;->g:Luh/b;

    if-nez v1, :cond_0

    new-instance v1, Luh/b;

    invoke-direct {v1, v0}, Luh/b;-><init>(Loh/G;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/N0;->g:Luh/b;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->g:Luh/b;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    invoke-virtual {v0}, Luh/Y;->C()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/N0;->e:Z

    return v0
.end method

.method public u()Luh/Y;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    return-object v0
.end method

.method public w(Lorg/bouncycastle/cms/P0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->o()Luh/Z;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/P0;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/P0;->a()Lli/h;

    move-result-object v1

    invoke-virtual {v0}, Luh/Z;->u()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lli/h;->u(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSVerifierCertificateNotValidException;

    const-string v0, "verifier not valid at signingTime"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSVerifierCertificateNotValidException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/N0;->b(Lorg/bouncycastle/cms/P0;)Z

    move-result p1

    return p1
.end method

.method public final x(Luh/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->q()Luh/b;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Luh/j;->g:Loh/x;

    invoke-virtual {v0, v1}, Luh/b;->e(Loh/x;)Loh/h;

    move-result-object v0

    invoke-virtual {v0}, Loh/h;->i()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "A cmsAlgorithmProtect attribute MUST be a signed attribute"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    sget-object v0, Luh/j;->g:Loh/x;

    invoke-virtual {p1, v0}, Luh/b;->e(Loh/x;)Loh/h;

    move-result-object p1

    invoke-virtual {p1}, Loh/h;->i()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    invoke-virtual {p1}, Loh/h;->i()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/h;->g(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/a;->y(Ljava/lang/Object;)Luh/a;

    move-result-object p1

    invoke-virtual {p1}, Luh/a;->v()Loh/G;

    move-result-object v2

    invoke-virtual {v2}, Loh/G;->size()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-virtual {p1}, Luh/a;->x()[Loh/g;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Luh/i;->v(Ljava/lang/Object;)Luh/i;

    move-result-object p1

    invoke-virtual {p1}, Luh/i;->u()Lhi/b;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    invoke-virtual {v1}, Luh/Y;->v()Lhi/b;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/X;->A(Lhi/b;Lhi/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Luh/i;->y()Lhi/b;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->i:Luh/Y;

    invoke-virtual {v0}, Luh/Y;->x()Lhi/b;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/cms/X;->A(Lhi/b;Lhi/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "CMS Algorithm Identifier Protection check failed for signatureAlgorithm"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method public final y()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Luh/j;->a:Loh/x;

    const-string v1, "content-type"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/cms/N0;->p(Loh/x;Ljava/lang/String;)Loh/B;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/N0;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/cms/N0;->l:Loh/G;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "The content-type attribute type MUST be present whenever signed attributes are present in signed-data"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v1, p0, Lorg/bouncycastle/cms/N0;->e:Z

    if-nez v1, :cond_5

    instance-of v1, v0, Loh/x;

    if-eqz v1, :cond_4

    check-cast v0, Loh/x;

    iget-object v1, p0, Lorg/bouncycastle/cms/N0;->d:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "content-type attribute value does not match eContentType"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "content-type attribute value not of ASN.1 type \'OBJECT IDENTIFIER\'"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z(Luh/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    if-eqz p1, :cond_1

    sget-object v0, Luh/j;->d:Loh/x;

    invoke-virtual {p1, v0}, Luh/b;->e(Loh/x;)Loh/h;

    move-result-object p1

    invoke-virtual {p1}, Loh/h;->i()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "A countersignature attribute MUST NOT be a signed attribute"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->q()Luh/b;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Luh/j;->d:Loh/x;

    invoke-virtual {p1, v0}, Luh/b;->e(Loh/x;)Loh/h;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Loh/h;->i()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Loh/h;->g(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Luh/a;->y(Ljava/lang/Object;)Luh/a;

    move-result-object v1

    invoke-virtual {v1}, Luh/a;->v()Loh/G;

    move-result-object v1

    invoke-virtual {v1}, Loh/G;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "A countersignature attribute MUST contain at least one AttributeValue"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method
