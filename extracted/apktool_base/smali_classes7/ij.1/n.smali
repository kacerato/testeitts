.class public Lij/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "/cacerts"

.field public static final d:Ljava/lang/String; = "/simpleenroll"

.field public static final e:Ljava/lang/String; = "/simplereenroll"

.field public static final f:Ljava/lang/String; = "/fullcmc"

.field public static final g:Ljava/lang/String; = "/serverkeygen"

.field public static final h:Ljava/lang/String; = "/csrattrs"

.field public static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lij/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lij/n;->i:Ljava/util/Set;

    const-string v1, "cacerts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "simpleenroll"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "simplereenroll"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "fullcmc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "serverkeygen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "csrattrs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "^[0-9a-zA-Z_\\-.~!$&\'()*+,;:=]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lij/n;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lij/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lij/n;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://"

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lij/n;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/.well-known/est/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lij/n;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/.well-known/est"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object p3, p0, Lij/n;->b:Lij/h;

    return-void
.end method

.method public static synthetic a(Lij/n;[B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lij/n;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lorg/bouncycastle/util/t;)[Lli/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/t<",
            "Lli/h;",
            ">;)[",
            "Lli/h;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lij/n;->o(Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/r;)[Lli/h;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/r;)[Lli/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/t<",
            "Lli/h;",
            ">;",
            "Lorg/bouncycastle/util/r<",
            "Lli/h;",
            ">;)[",
            "Lli/h;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lorg/bouncycastle/util/t;->a(Lorg/bouncycastle/util/r;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lli/h;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lli/h;

    return-object p0
.end method


# virtual methods
.method public final b([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v3, v2, 0x30

    array-length v4, p1

    if-ge v3, v4, :cond_1

    const/16 v4, 0x30

    invoke-static {p1, v2, v4}, Lem/c;->j([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_1
    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {p1, v2, v3}, Lem/c;->j([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v2, p1

    :goto_0
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    array-length v3, p1

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(ZLSk/e;Lij/f;Z)Lij/q;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lij/n;->b:Lij/h;

    invoke-interface {v0}, Lij/h;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, LSk/e;->c()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lij/n;->b([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lij/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p1, "/serverkeygen"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "/simplereenroll"

    goto :goto_0

    :cond_1
    const-string p1, "/simpleenroll"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lij/n;->b:Lij/h;

    invoke-interface {p1}, Lij/h;->b()Lij/g;

    move-result-object p1

    new-instance p4, Lij/l;

    const-string v2, "POST"

    invoke-direct {p4, v2, v1}, Lij/l;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {p4, p2}, Lij/l;->f([B)Lij/l;

    move-result-object p4

    invoke-virtual {p4, p1}, Lij/l;->d(Lij/g;)Lij/l;

    move-result-object p4

    const-string v1, "Content-Type"

    const-string v2, "application/pkcs10"

    invoke-virtual {p4, v1, v2}, Lij/l;->a(Ljava/lang/String;Ljava/lang/String;)Lij/l;

    const-string v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v1, p2}, Lij/l;->a(Ljava/lang/String;Ljava/lang/String;)Lij/l;

    const-string p2, "Content-Transfer-Encoding"

    const-string v1, "base64"

    invoke-virtual {p4, p2, v1}, Lij/l;->a(Ljava/lang/String;Ljava/lang/String;)Lij/l;

    if-eqz p3, :cond_2

    invoke-interface {p3, p4}, Lij/f;->a(Lij/l;)V

    :cond_2
    invoke-virtual {p4}, Lij/l;->b()Lij/k;

    move-result-object p2

    invoke-interface {p1, p2}, Lij/g;->a(Lij/k;)Lij/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lij/n;->h(Lij/m;)Lij/q;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lij/m;->d()V

    :cond_3
    return-object p1

    :goto_1
    :try_start_1
    instance-of p2, p1, Lorg/bouncycastle/est/ESTException;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/bouncycastle/est/ESTException;

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    new-instance p2, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lij/m;->d()V

    :cond_5
    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No trust anchors."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(ZLSk/f;LQk/f;Lij/f;Z)Lij/q;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p5, p0, Lij/n;->b:Lij/h;

    invoke-interface {p5}, Lij/h;->a()Z

    move-result p5

    if-eqz p5, :cond_5

    const/4 p5, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lij/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "/simplereenroll"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "/simpleenroll"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lij/n;->b:Lij/h;

    invoke-interface {p1}, Lij/h;->b()Lij/g;

    move-result-object p1

    new-instance v1, Lij/l;

    const-string v2, "POST"

    invoke-direct {v1, v2, v0}, Lij/l;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v1, p1}, Lij/l;->d(Lij/g;)Lij/l;

    move-result-object v0

    new-instance v1, Lij/n$a;

    invoke-direct {v1, p0, p2, p3}, Lij/n$a;-><init>(Lij/n;LSk/f;LQk/f;)V

    invoke-virtual {v0, v1}, Lij/l;->e(Lij/p;)Lij/l;

    move-result-object p2

    if-eqz p4, :cond_1

    invoke-interface {p4, p2}, Lij/f;->a(Lij/l;)V

    :cond_1
    invoke-virtual {p2}, Lij/l;->b()Lij/k;

    move-result-object p2

    invoke-interface {p1, p2}, Lij/g;->a(Lij/k;)Lij/m;

    move-result-object p5

    invoke-virtual {p0, p5}, Lij/n;->h(Lij/m;)Lij/q;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lij/m;->d()V

    :cond_2
    return-object p1

    :goto_1
    :try_start_1
    instance-of p2, p1, Lorg/bouncycastle/est/ESTException;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/bouncycastle/est/ESTException;

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    new-instance p2, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lij/m;->d()V

    :cond_4
    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No trust anchors."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ljava/io/InputStream;Ljava/lang/Long;)Loh/r;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Loh/r;

    invoke-direct {p2, p1}, Loh/r;-><init>(Ljava/io/InputStream;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Loh/r;

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    invoke-direct {v0, p1, p2}, Loh/r;-><init>(Ljava/io/InputStream;I)V

    return-object v0

    :cond_1
    new-instance p2, Loh/r;

    invoke-direct {p2, p1}, Loh/r;-><init>(Ljava/io/InputStream;)V

    return-object p2
.end method

.method public f()Lij/a;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/est/ESTException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lij/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/cacerts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lij/n;->b:Lij/h;

    invoke-interface {v2}, Lij/h;->b()Lij/g;

    move-result-object v2

    new-instance v3, Lij/l;

    const-string v4, "GET"

    invoke-direct {v3, v4, v1}, Lij/l;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v3, v2}, Lij/l;->d(Lij/g;)Lij/l;

    move-result-object v3

    invoke-virtual {v3}, Lij/l;->b()Lij/k;

    move-result-object v7

    invoke-interface {v2, v7}, Lij/g;->a(Lij/k;)Lij/m;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v2}, Lij/m;->n()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v4, 0xc8

    const-string v10, "Get CACerts: "

    if-ne v3, v4, :cond_3

    :try_start_2
    invoke-virtual {v2}, Lij/m;->i()Lij/s$a;

    move-result-object v3

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lij/s$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "application/pkcs7-mime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Lij/m;->k()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2}, Lij/m;->f()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lij/n;->e(Ljava/io/InputStream;Ljava/lang/Long;)Loh/r;

    move-result-object v3

    new-instance v4, Lzi/a;

    invoke-virtual {v3}, Loh/r;->k()Loh/B;

    move-result-object v3

    invoke-static {v3}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object v3

    invoke-direct {v4, v3}, Lzi/a;-><init>(Luh/o;)V

    invoke-virtual {v4}, Lzi/a;->b()Lorg/bouncycastle/util/t;

    move-result-object v3

    invoke-virtual {v4}, Lzi/a;->a()Lorg/bouncycastle/util/t;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v3

    move-object v6, v4

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    new-instance v3, Lorg/bouncycastle/est/ESTException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoding CACerts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lij/m;->n()I

    move-result v4

    invoke-virtual {v2}, Lij/m;->k()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v1, v0, v4, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v3

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, " but was not present."

    :goto_1
    new-instance v4, Lorg/bouncycastle/est/ESTException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Expecting application/pkcs7-mime "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lij/m;->n()I

    move-result v3

    invoke-virtual {v2}, Lij/m;->k()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v1, v0, v3, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v4

    :cond_3
    invoke-virtual {v2}, Lij/m;->n()I

    move-result v3

    const/16 v4, 0xcc

    if-ne v3, v4, :cond_6

    move-object v5, v0

    move-object v6, v5

    :goto_2
    new-instance v3, Lij/a;

    invoke-virtual {v2}, Lij/m;->m()Lij/u;

    move-result-object v8

    iget-object v4, p0, Lij/n;->b:Lij/h;

    invoke-interface {v4}, Lij/h;->a()Z

    move-result v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lij/a;-><init>(Lorg/bouncycastle/util/t;Lorg/bouncycastle/util/t;Lij/k;Lij/u;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Lij/m;->d()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v4, v0

    goto :goto_3

    :catch_0
    move-exception v4

    :goto_3
    if-eqz v4, :cond_5

    instance-of v3, v4, Lorg/bouncycastle/est/ESTException;

    if-eqz v3, :cond_4

    check-cast v4, Lorg/bouncycastle/est/ESTException;

    throw v4

    :cond_4
    new-instance v3, Lorg/bouncycastle/est/ESTException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lij/m;->n()I

    move-result v2

    invoke-direct {v3, v1, v4, v2, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v3

    :cond_5
    return-object v3

    :cond_6
    :try_start_6
    new-instance v3, Lorg/bouncycastle/est/ESTException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lij/m;->n()I

    move-result v4

    invoke-virtual {v2}, Lij/m;->k()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v1, v0, v4, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    :try_start_7
    nop

    instance-of v1, v0, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_7

    check-cast v0, Lorg/bouncycastle/est/ESTException;

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_7
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_5
    if-eqz v2, :cond_8

    :try_start_8
    invoke-virtual {v2}, Lij/m;->d()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    :cond_8
    throw v0
.end method

.method public g()Lij/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/est/ESTException;
        }
    .end annotation

    iget-object v0, p0, Lij/n;->b:Lij/h;

    invoke-interface {v0}, Lij/h;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lij/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/csrattrs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lij/n;->b:Lij/h;

    invoke-interface {v2}, Lij/h;->b()Lij/g;

    move-result-object v2

    new-instance v3, Lij/l;

    const-string v4, "GET"

    invoke-direct {v3, v4, v1}, Lij/l;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v3, v2}, Lij/l;->d(Lij/g;)Lij/l;

    move-result-object v3

    invoke-virtual {v3}, Lij/l;->b()Lij/k;

    move-result-object v3

    invoke-interface {v2, v3}, Lij/g;->a(Lij/k;)Lij/m;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v2}, Lij/m;->n()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    const/16 v1, 0xcc

    if-eq v4, v1, :cond_0

    const/16 v1, 0x194

    if-ne v4, v1, :cond_1

    :cond_0
    move-object v4, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSR Attribute request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lij/k;->f()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lij/m;->n()I

    move-result v4

    invoke-virtual {v2}, Lij/m;->k()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v3, v0, v4, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lij/m;->k()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2}, Lij/m;->f()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lij/n;->e(Ljava/io/InputStream;Ljava/lang/Long;)Loh/r;

    move-result-object v3

    invoke-virtual {v3}, Loh/r;->k()Loh/B;

    move-result-object v3

    invoke-static {v3}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v3

    new-instance v4, Lij/b;

    invoke-static {v3}, LEh/b;->v(Ljava/lang/Object;)LEh/b;

    move-result-object v3

    invoke-direct {v4, v3}, Lij/b;-><init>(LEh/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Lij/m;->d()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v1, :cond_4

    instance-of v3, v1, Lorg/bouncycastle/est/ESTException;

    if-eqz v3, :cond_3

    check-cast v1, Lorg/bouncycastle/est/ESTException;

    throw v1

    :cond_3
    new-instance v3, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lij/m;->n()I

    move-result v2

    invoke-direct {v3, v4, v1, v2, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v3

    :cond_4
    new-instance v0, Lij/c;

    invoke-virtual {v2}, Lij/m;->m()Lij/u;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lij/c;-><init>(Lij/b;Lij/u;)V

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_4
    new-instance v3, Lorg/bouncycastle/est/ESTException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoding CACerts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lij/m;->n()I

    move-result v4

    invoke-virtual {v2}, Lij/m;->k()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v1, v0, v4, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    :try_start_5
    nop

    instance-of v1, v0, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/bouncycastle/est/ESTException;

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3

    :cond_5
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_3
    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Lij/m;->d()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :cond_6
    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No trust anchors."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Lij/m;)Lij/q;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lij/m;->l()Lij/k;

    move-result-object v4

    invoke-virtual {p1}, Lij/m;->n()I

    move-result v0

    const/16 v1, 0xca

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lij/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr v5, v0

    move-wide v2, v5

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v2, v0

    :goto_0
    new-instance v6, Lij/q;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lij/m;->m()Lij/u;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lij/q;-><init>(Lorg/bouncycastle/util/t;JLij/k;Lij/u;)V

    return-object v6

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse Retry-After header:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lij/k;->f()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lij/m;->n()I

    move-result v3

    invoke-virtual {p1}, Lij/m;->k()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1

    :cond_0
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got Status 202 but not Retry-After header from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lij/k;->f()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lij/m;->n()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    const-string v0, "content-type"

    invoke-virtual {p1, v0}, Lij/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "multipart/mixed"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Ltk/e;

    invoke-virtual {p1, v0}, Lij/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "base64"

    invoke-direct {v1, v0, v2}, Ltk/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ltk/a;

    invoke-virtual {p1}, Lij/m;->k()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltk/a;-><init>(Ltk/e;Ljava/io/InputStream;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lij/n$b;

    invoke-direct {v2, p0, v1}, Lij/n$b;-><init>(Lij/n;[Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ltk/i;->a(Ltk/k;)V

    const/4 v0, 0x0

    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    aget-object v2, v1, v2

    if-eqz v2, :cond_2

    check-cast v2, Lzi/a;

    invoke-virtual {v2}, Lzi/a;->b()Lorg/bouncycastle/util/t;

    move-result-object v4

    new-instance v2, Lij/q;

    invoke-virtual {p1}, Lij/m;->m()Lij/u;

    move-result-object v8

    aget-object p1, v1, v0

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v9

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lij/q;-><init>(Lorg/bouncycastle/util/t;JLij/k;Lij/u;LXh/v;)V

    return-object v2

    :cond_2
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    const-string v0, "received neither private key info and certificates"

    invoke-direct {p1, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lij/m;->n()I

    move-result v0

    if-ne v0, v1, :cond_4

    new-instance v0, Loh/r;

    invoke-virtual {p1}, Lij/m;->k()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/r;-><init>(Ljava/io/InputStream;)V

    :try_start_2
    new-instance v1, Lzi/a;

    invoke-virtual {v0}, Loh/r;->k()Loh/B;

    move-result-object v0

    invoke-static {v0}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object v0

    invoke-direct {v1, v0}, Lzi/a;-><init>(Luh/o;)V
    :try_end_2
    .catch Lorg/bouncycastle/cmc/CMCException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v1}, Lzi/a;->b()Lorg/bouncycastle/util/t;

    move-result-object v3

    new-instance v0, Lij/q;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lij/m;->m()Lij/u;

    move-result-object v7

    const-wide/16 v4, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lij/q;-><init>(Lorg/bouncycastle/util/t;JLij/k;Lij/u;)V

    return-object v0

    :catch_2
    move-exception p1

    new-instance v0, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cmc/CMCException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simple Enroll: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lij/k;->f()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lij/m;->n()I

    move-result v3

    invoke-virtual {p1}, Lij/m;->k()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0
.end method

.method public i(Lij/q;)Lij/q;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lij/n;->b:Lij/h;

    invoke-interface {v0}, Lij/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lij/n;->b:Lij/h;

    invoke-interface {v1}, Lij/h;->b()Lij/g;

    move-result-object v1

    new-instance v2, Lij/l;

    invoke-virtual {p1}, Lij/q;->d()Lij/k;

    move-result-object p1

    invoke-direct {v2, p1}, Lij/l;-><init>(Lij/k;)V

    invoke-virtual {v2, v1}, Lij/l;->d(Lij/g;)Lij/l;

    move-result-object p1

    invoke-virtual {p1}, Lij/l;->b()Lij/k;

    move-result-object p1

    invoke-interface {v1, p1}, Lij/g;->a(Lij/k;)Lij/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lij/n;->h(Lij/m;)Lij/q;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lij/m;->d()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    instance-of v1, p1, Lorg/bouncycastle/est/ESTException;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/bouncycastle/est/ESTException;

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lij/m;->d()V

    :cond_2
    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No trust anchors."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(ZLSk/e;Lij/f;)Lij/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lij/n;->c(ZLSk/e;Lij/f;Z)Lij/q;

    move-result-object p1

    return-object p1
.end method

.method public k(ZLSk/f;LQk/f;Lij/f;)Lij/q;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lij/n;->d(ZLSk/f;LQk/f;Lij/f;Z)Lij/q;

    move-result-object p1

    return-object p1
.end method

.method public l(LSk/f;LQk/f;Lij/f;)Lij/q;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lij/n;->d(ZLSk/f;LQk/f;Lij/f;Z)Lij/q;

    move-result-object p1

    return-object p1
.end method

.method public m(LSk/e;Lij/f;)Lij/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lij/n;->c(ZLSk/e;Lij/f;Z)Lij/q;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :goto_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lij/n;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lij/n;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a reserved path segment."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " contains invalid characters"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Label set but after trimming \'/\' is not zero length string."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "/"

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Server contains path, must only be <dnsname/ipaddress>:port, a path of \'/.well-known/est/<label>\' will be added arbitrarily."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Server contains scheme, must only be <dnsname/ipaddress>:port, https:// will be added arbitrarily."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/IllegalArgumentException;

    throw p1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheme and host is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
