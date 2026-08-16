.class public LAh/c;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final f:I = 0x1

.field public static final g:I = 0x2


# instance fields
.field public final b:Loh/M;

.field public c:LAh/d;

.field public d:[B

.field public e:[B


# direct methods
.method public constructor <init>(Loh/M;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LAh/c;->d:[B

    iput-object v0, p0, LAh/c;->e:[B

    iput-object p1, p0, LAh/c;->b:Loh/M;

    const/4 v0, 0x7

    const/16 v1, 0x40

    invoke-virtual {p1, v1, v0}, Loh/M;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Loh/M;->M(ZI)Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object v0

    invoke-virtual {p0, v0}, LAh/c;->A(Loh/M;)V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v2, v0}, Loh/M;->M(ZI)Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, LAh/c;->e:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LAh/c;->A(Loh/M;)V

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/Object;)LAh/c;
    .locals 3

    instance-of v0, p0, LAh/c;

    if-eqz v0, :cond_0

    check-cast p0, LAh/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    new-instance v0, LAh/c;

    const/16 v1, 0x40

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LAh/c;-><init>(Loh/M;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final A(Loh/M;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x21

    const/16 v1, 0x40

    invoke-virtual {p1, v1, v0}, Loh/M;->m(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Loh/M;->M(ZI)Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-virtual {v0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object v4

    invoke-virtual {v4}, Loh/M;->g()I

    move-result v5

    const/16 v6, 0x37

    if-eq v5, v6, :cond_1

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_0

    invoke-static {v4}, LAh/d;->C(Ljava/lang/Object;)LAh/d;

    move-result-object v4

    iput-object v4, p0, LAh/c;->c:LAh/d;

    or-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid tag, not an CV Certificate Request element:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v4, v2, v5}, Loh/M;->M(ZI)Loh/B;

    move-result-object v4

    invoke-static {v4}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v4

    invoke-virtual {v4}, Loh/y;->H()[B

    move-result-object v4

    iput-object v4, p0, LAh/c;->d:[B

    or-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v3, 0x3

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CARDHOLDER_CERTIFICATE in request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a CARDHOLDER_CERTIFICATE in request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()Loh/B;
    .locals 3

    iget-object v0, p0, LAh/c;->b:Loh/M;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LAh/c;->c:LAh/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    const/16 v1, 0x37

    iget-object v2, p0, LAh/c;->d:[B

    invoke-static {v1, v2}, LAh/i;->c(I[B)Loh/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    const/16 v0, 0x21

    invoke-static {v0, v1}, LAh/i;->b(ILoh/E;)Loh/M;

    move-result-object v0

    return-object v0
.end method

.method public u()LAh/d;
    .locals 1

    iget-object v0, p0, LAh/c;->c:LAh/d;

    return-object v0
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, LAh/c;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, LAh/c;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public y()LAh/n;
    .locals 1

    iget-object v0, p0, LAh/c;->c:LAh/d;

    invoke-virtual {v0}, LAh/d;->D()LAh/n;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, LAh/c;->e:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
