.class public final Lokhttp3/c$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lokhttp3/u;

.field public final c:Ljava/lang/String;

.field public final d:Lokhttp3/A;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Lokhttp3/u;

.field public final h:Lokhttp3/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final i:J

.field public final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LPg/f;->k()LPg/f;

    move-result-object v1

    invoke-virtual {v1}, LPg/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/c$e;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LPg/f;->k()LPg/f;

    move-result-object v1

    invoke-virtual {v1}, LPg/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/c$e;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LTg/y;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, LTg/p;->d(LTg/y;)LTg/e;

    move-result-object v0

    .line 3
    invoke-interface {v0}, LTg/e;->L1()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/c$e;->a:Ljava/lang/String;

    .line 4
    invoke-interface {v0}, LTg/e;->L1()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/c$e;->c:Ljava/lang/String;

    .line 5
    new-instance v1, Lokhttp3/u$a;

    invoke-direct {v1}, Lokhttp3/u$a;-><init>()V

    .line 6
    invoke-static {v0}, Lokhttp3/c;->n(LTg/e;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 7
    invoke-interface {v0}, LTg/e;->L1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lokhttp3/u$a;->e(Ljava/lang/String;)Lokhttp3/u$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 8
    :cond_0
    invoke-virtual {v1}, Lokhttp3/u$a;->h()Lokhttp3/u;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/c$e;->b:Lokhttp3/u;

    .line 9
    invoke-interface {v0}, LTg/e;->L1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LLg/k;->b(Ljava/lang/String;)LLg/k;

    move-result-object v1

    .line 10
    iget-object v2, v1, LLg/k;->a:Lokhttp3/A;

    iput-object v2, p0, Lokhttp3/c$e;->d:Lokhttp3/A;

    .line 11
    iget v2, v1, LLg/k;->b:I

    iput v2, p0, Lokhttp3/c$e;->e:I

    .line 12
    iget-object v1, v1, LLg/k;->c:Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/c$e;->f:Ljava/lang/String;

    .line 13
    new-instance v1, Lokhttp3/u$a;

    invoke-direct {v1}, Lokhttp3/u$a;-><init>()V

    .line 14
    invoke-static {v0}, Lokhttp3/c;->n(LTg/e;)I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    .line 15
    invoke-interface {v0}, LTg/e;->L1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/u$a;->e(Ljava/lang/String;)Lokhttp3/u$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_1
    sget-object v2, Lokhttp3/c$e;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/u$a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    sget-object v4, Lokhttp3/c$e;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lokhttp3/u$a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {v1, v2}, Lokhttp3/u$a;->j(Ljava/lang/String;)Lokhttp3/u$a;

    .line 19
    invoke-virtual {v1, v4}, Lokhttp3/u$a;->j(Ljava/lang/String;)Lokhttp3/u$a;

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_2

    .line 20
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_2

    :cond_2
    move-wide v2, v6

    .line 21
    :goto_2
    iput-wide v2, p0, Lokhttp3/c$e;->i:J

    if-eqz v5, :cond_3

    .line 22
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 23
    :cond_3
    iput-wide v6, p0, Lokhttp3/c$e;->j:J

    .line 24
    invoke-virtual {v1}, Lokhttp3/u$a;->h()Lokhttp3/u;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/c$e;->g:Lokhttp3/u;

    .line 25
    invoke-virtual {p0}, Lokhttp3/c$e;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-interface {v0}, LTg/e;->L1()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 28
    invoke-interface {v0}, LTg/e;->L1()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lokhttp3/i;->a(Ljava/lang/String;)Lokhttp3/i;

    move-result-object v1

    .line 30
    invoke-virtual {p0, v0}, Lokhttp3/c$e;->c(LTg/e;)Ljava/util/List;

    move-result-object v2

    .line 31
    invoke-virtual {p0, v0}, Lokhttp3/c$e;->c(LTg/e;)Ljava/util/List;

    move-result-object v3

    .line 32
    invoke-interface {v0}, LTg/e;->b2()Z

    move-result v4

    if-nez v4, :cond_4

    .line 33
    invoke-interface {v0}, LTg/e;->L1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/H;->a(Ljava/lang/String;)Lokhttp3/H;

    move-result-object v0

    goto :goto_3

    .line 34
    :cond_4
    sget-object v0, Lokhttp3/H;->SSL_3_0:Lokhttp3/H;

    .line 35
    :goto_3
    invoke-static {v0, v1, v2, v3}, Lokhttp3/t;->c(Lokhttp3/H;Lokhttp3/i;Ljava/util/List;Ljava/util/List;)Lokhttp3/t;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$e;->h:Lokhttp3/t;

    goto :goto_4

    .line 36
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lokhttp3/c$e;->h:Lokhttp3/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_4
    invoke-interface {p1}, LTg/y;->close()V

    return-void

    :goto_5
    invoke-interface {p1}, LTg/y;->close()V

    throw v0
.end method

.method public constructor <init>(Lokhttp3/E;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/v;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$e;->a:Ljava/lang/String;

    .line 41
    invoke-static {p1}, LLg/e;->u(Lokhttp3/E;)Lokhttp3/u;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$e;->b:Lokhttp3/u;

    .line 42
    invoke-virtual {p1}, Lokhttp3/E;->w()Lokhttp3/C;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/C;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$e;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lokhttp3/E;->u()Lokhttp3/A;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$e;->d:Lokhttp3/A;

    .line 44
    invoke-virtual {p1}, Lokhttp3/E;->g()I

    move-result v0

    iput v0, p0, Lokhttp3/c$e;->e:I

    .line 45
    invoke-virtual {p1}, Lokhttp3/E;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$e;->f:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lokhttp3/E;->m()Lokhttp3/u;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$e;->g:Lokhttp3/u;

    .line 47
    invoke-virtual {p1}, Lokhttp3/E;->h()Lokhttp3/t;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c$e;->h:Lokhttp3/t;

    .line 48
    invoke-virtual {p1}, Lokhttp3/E;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/c$e;->i:J

    .line 49
    invoke-virtual {p1}, Lokhttp3/E;->v()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/c$e;->j:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lokhttp3/c$e;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Lokhttp3/C;Lokhttp3/E;)Z
    .locals 2

    iget-object v0, p0, Lokhttp3/c$e;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/c$e;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/C;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/c$e;->b:Lokhttp3/u;

    invoke-static {p2, v0, p1}, LLg/e;->v(Lokhttp3/E;Lokhttp3/u;Lokhttp3/C;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(LTg/e;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTg/e;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lokhttp3/c;->n(LTg/e;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {p1}, LTg/e;->L1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, LTg/c;

    invoke-direct {v5}, LTg/c;-><init>()V

    invoke-static {v4}, LTg/f;->g(Ljava/lang/String;)LTg/f;

    move-result-object v4

    invoke-virtual {v5, v4}, LTg/c;->Y(LTg/f;)LTg/c;

    invoke-virtual {v5}, LTg/c;->j2()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    return-object v2

    :goto_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(LIg/d$f;)Lokhttp3/E;
    .locals 5

    iget-object v0, p0, Lokhttp3/c$e;->g:Lokhttp3/u;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/c$e;->g:Lokhttp3/u;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp3/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lokhttp3/C$a;

    invoke-direct {v2}, Lokhttp3/C$a;-><init>()V

    iget-object v3, p0, Lokhttp3/c$e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/C$a;->q(Ljava/lang/String;)Lokhttp3/C$a;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/c$e;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp3/C$a;->j(Ljava/lang/String;Lokhttp3/D;)Lokhttp3/C$a;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/c$e;->b:Lokhttp3/u;

    invoke-virtual {v2, v3}, Lokhttp3/C$a;->i(Lokhttp3/u;)Lokhttp3/C$a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/C$a;->b()Lokhttp3/C;

    move-result-object v2

    new-instance v3, Lokhttp3/E$a;

    invoke-direct {v3}, Lokhttp3/E$a;-><init>()V

    invoke-virtual {v3, v2}, Lokhttp3/E$a;->q(Lokhttp3/C;)Lokhttp3/E$a;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/c$e;->d:Lokhttp3/A;

    invoke-virtual {v2, v3}, Lokhttp3/E$a;->n(Lokhttp3/A;)Lokhttp3/E$a;

    move-result-object v2

    iget v3, p0, Lokhttp3/c$e;->e:I

    invoke-virtual {v2, v3}, Lokhttp3/E$a;->g(I)Lokhttp3/E$a;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/c$e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/E$a;->k(Ljava/lang/String;)Lokhttp3/E$a;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/c$e;->g:Lokhttp3/u;

    invoke-virtual {v2, v3}, Lokhttp3/E$a;->j(Lokhttp3/u;)Lokhttp3/E$a;

    move-result-object v2

    new-instance v3, Lokhttp3/c$d;

    invoke-direct {v3, p1, v0, v1}, Lokhttp3/c$d;-><init>(LIg/d$f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lokhttp3/E$a;->b(Lokhttp3/F;)Lokhttp3/E$a;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/c$e;->h:Lokhttp3/t;

    invoke-virtual {p1, v0}, Lokhttp3/E$a;->h(Lokhttp3/t;)Lokhttp3/E$a;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/c$e;->i:J

    invoke-virtual {p1, v0, v1}, Lokhttp3/E$a;->r(J)Lokhttp3/E$a;

    move-result-object p1

    iget-wide v0, p0, Lokhttp3/c$e;->j:J

    invoke-virtual {p1, v0, v1}, Lokhttp3/E$a;->o(J)Lokhttp3/E$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/E$a;->c()Lokhttp3/E;

    move-result-object p1

    return-object p1
.end method

.method public final e(LTg/d;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTg/d;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LTg/d;->J(J)LTg/d;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, LTg/d;->writeByte(I)LTg/d;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, LTg/f;->J([B)LTg/f;

    move-result-object v3

    invoke-virtual {v3}, LTg/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v3

    invoke-interface {v3, v1}, LTg/d;->writeByte(I)LTg/d;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public f(LIg/d$d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LIg/d$d;->e(I)LTg/x;

    move-result-object p1

    invoke-static {p1}, LTg/p;->c(LTg/x;)LTg/d;

    move-result-object p1

    iget-object v1, p0, Lokhttp3/c$e;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, LTg/d;->writeByte(I)LTg/d;

    iget-object v1, p0, Lokhttp3/c$e;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v1

    invoke-interface {v1, v2}, LTg/d;->writeByte(I)LTg/d;

    iget-object v1, p0, Lokhttp3/c$e;->b:Lokhttp3/u;

    invoke-virtual {v1}, Lokhttp3/u;->l()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, LTg/d;->J(J)LTg/d;

    move-result-object v1

    invoke-interface {v1, v2}, LTg/d;->writeByte(I)LTg/d;

    iget-object v1, p0, Lokhttp3/c$e;->b:Lokhttp3/u;

    invoke-virtual {v1}, Lokhttp3/u;->l()I

    move-result v1

    move v3, v0

    :goto_0
    const-string v4, ": "

    if-ge v3, v1, :cond_0

    iget-object v5, p0, Lokhttp3/c$e;->b:Lokhttp3/u;

    invoke-virtual {v5, v3}, Lokhttp3/u;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v5

    invoke-interface {v5, v4}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/c$e;->b:Lokhttp3/u;

    invoke-virtual {v5, v3}, Lokhttp3/u;->n(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v4

    invoke-interface {v4, v2}, LTg/d;->writeByte(I)LTg/d;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, LLg/k;

    iget-object v3, p0, Lokhttp3/c$e;->d:Lokhttp3/A;

    iget v5, p0, Lokhttp3/c$e;->e:I

    iget-object v6, p0, Lokhttp3/c$e;->f:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, LLg/k;-><init>(Lokhttp3/A;ILjava/lang/String;)V

    invoke-virtual {v1}, LLg/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v1

    invoke-interface {v1, v2}, LTg/d;->writeByte(I)LTg/d;

    iget-object v1, p0, Lokhttp3/c$e;->g:Lokhttp3/u;

    invoke-virtual {v1}, Lokhttp3/u;->l()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, LTg/d;->J(J)LTg/d;

    move-result-object v1

    invoke-interface {v1, v2}, LTg/d;->writeByte(I)LTg/d;

    iget-object v1, p0, Lokhttp3/c$e;->g:Lokhttp3/u;

    invoke-virtual {v1}, Lokhttp3/u;->l()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lokhttp3/c$e;->g:Lokhttp3/u;

    invoke-virtual {v3, v0}, Lokhttp3/u;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v3

    invoke-interface {v3, v4}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v3

    iget-object v5, p0, Lokhttp3/c$e;->g:Lokhttp3/u;

    invoke-virtual {v5, v0}, Lokhttp3/u;->n(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v3

    invoke-interface {v3, v2}, LTg/d;->writeByte(I)LTg/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lokhttp3/c$e;->k:Ljava/lang/String;

    invoke-interface {p1, v0}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v0

    invoke-interface {v0, v4}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v0

    iget-wide v5, p0, Lokhttp3/c$e;->i:J

    invoke-interface {v0, v5, v6}, LTg/d;->J(J)LTg/d;

    move-result-object v0

    invoke-interface {v0, v2}, LTg/d;->writeByte(I)LTg/d;

    sget-object v0, Lokhttp3/c$e;->l:Ljava/lang/String;

    invoke-interface {p1, v0}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v0

    invoke-interface {v0, v4}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v0

    iget-wide v3, p0, Lokhttp3/c$e;->j:J

    invoke-interface {v0, v3, v4}, LTg/d;->J(J)LTg/d;

    move-result-object v0

    invoke-interface {v0, v2}, LTg/d;->writeByte(I)LTg/d;

    invoke-virtual {p0}, Lokhttp3/c$e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v2}, LTg/d;->writeByte(I)LTg/d;

    iget-object v0, p0, Lokhttp3/c$e;->h:Lokhttp3/t;

    invoke-virtual {v0}, Lokhttp3/t;->a()Lokhttp3/i;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v0

    invoke-interface {v0, v2}, LTg/d;->writeByte(I)LTg/d;

    iget-object v0, p0, Lokhttp3/c$e;->h:Lokhttp3/t;

    invoke-virtual {v0}, Lokhttp3/t;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lokhttp3/c$e;->e(LTg/d;Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/c$e;->h:Lokhttp3/t;

    invoke-virtual {v0}, Lokhttp3/t;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lokhttp3/c$e;->e(LTg/d;Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/c$e;->h:Lokhttp3/t;

    invoke-virtual {v0}, Lokhttp3/t;->h()Lokhttp3/H;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/H;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LTg/d;->X(Ljava/lang/String;)LTg/d;

    move-result-object v0

    invoke-interface {v0, v2}, LTg/d;->writeByte(I)LTg/d;

    :cond_2
    invoke-interface {p1}, LTg/x;->close()V

    return-void
.end method
