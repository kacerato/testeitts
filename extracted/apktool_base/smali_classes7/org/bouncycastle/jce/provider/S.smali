.class public Lorg/bouncycastle/jce/provider/S;
.super Lorg/bouncycastle/x509/v;
.source "SourceFile"


# static fields
.field public static final d:Lorg/bouncycastle/jce/provider/z;


# instance fields
.field public a:Loh/G;

.field public b:I

.field public c:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jce/provider/z;

    const-string v1, "ATTRIBUTE CERTIFICATE"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/S;->d:Lorg/bouncycastle/jce/provider/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/x509/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/S;->a:Loh/G;

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/jce/provider/S;->b:I

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/S;->c:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/S;->c:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/S;->a:Loh/G;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jce/provider/S;->b:I

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/S;->c:Ljava/io/InputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/S;->c:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/util/StreamParsingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/S;->a:Loh/G;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lorg/bouncycastle/jce/provider/S;->b:I

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/S;->d()Lorg/bouncycastle/x509/l;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/bouncycastle/jce/provider/S;->a:Loh/G;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jce/provider/S;->b:I

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/S;->c:Ljava/io/InputStream;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/S;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return-object v1

    :cond_2
    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/S;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/S;->c:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/S;->f(Ljava/io/InputStream;)Lorg/bouncycastle/x509/l;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/S;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/S;->c:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/S;->e(Ljava/io/InputStream;)Lorg/bouncycastle/x509/l;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    new-instance v1, Lorg/bouncycastle/x509/util/StreamParsingException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/x509/util/StreamParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/util/StreamParsingException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/S;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/x509/l;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final d()Lorg/bouncycastle/x509/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/S;->a:Loh/G;

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/jce/provider/S;->b:I

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/S;->a:Loh/G;

    invoke-virtual {v1}, Loh/G;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/S;->a:Loh/G;

    iget v1, p0, Lorg/bouncycastle/jce/provider/S;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/jce/provider/S;->b:I

    invoke-virtual {v0, v1}, Loh/G;->H(I)Loh/g;

    move-result-object v0

    instance-of v1, v0, Loh/M;

    if-eqz v1, :cond_0

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/x509/y;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/x509/y;-><init>([B)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e(Ljava/io/InputStream;)Lorg/bouncycastle/x509/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/r;

    invoke-direct {v0, p1}, Loh/r;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Loh/r;->k()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/x;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    sget-object v2, LXh/t;->I1:Loh/x;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LXh/D;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p1

    invoke-direct {v0, p1}, LXh/D;-><init>(Loh/E;)V

    invoke-virtual {v0}, LXh/D;->v()Loh/G;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/S;->a:Loh/G;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/S;->d()Lorg/bouncycastle/x509/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/x509/y;

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/x509/y;-><init>([B)V

    return-object v0
.end method

.method public final f(Ljava/io/InputStream;)Lorg/bouncycastle/x509/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/jce/provider/S;->d:Lorg/bouncycastle/jce/provider/z;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/z;->b(Ljava/io/InputStream;)Loh/E;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/x509/y;

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/x509/y;-><init>([B)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
