.class public LAh/b;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static e:I = 0x1

.field public static f:I = 0x2


# instance fields
.field public b:LAh/d;

.field public c:[B

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(LAh/d;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LAh/b;->b:LAh/d;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LAh/b;->c:[B

    iget p1, p0, LAh/b;->d:I

    sget p2, LAh/b;->e:I

    or-int/2addr p1, p2

    sget p2, LAh/b;->f:I

    or-int/2addr p1, p2

    iput p1, p0, LAh/b;->d:I

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p0, p1}, LAh/b;->I(Loh/M;)V

    return-void
.end method

.method public constructor <init>(Loh/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p0, p1}, LAh/b;->H(Loh/r;)V

    return-void
.end method

.method public static E(Ljava/lang/Object;)LAh/b;
    .locals 3

    instance-of v0, p0, LAh/b;

    if-eqz v0, :cond_0

    check-cast p0, LAh/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    new-instance v0, LAh/b;

    const/16 v1, 0x40

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LAh/b;-><init>(Loh/M;)V
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
.method public A()Loh/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAh/b;->b:LAh/d;

    invoke-virtual {v0}, LAh/d;->x()LAh/e;

    move-result-object v0

    invoke-virtual {v0}, LAh/e;->x()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public B()LAh/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LAh/l;

    iget-object v1, p0, LAh/b;->b:LAh/d;

    invoke-virtual {v1}, LAh/d;->x()LAh/e;

    move-result-object v1

    invoke-virtual {v1}, LAh/e;->u()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {v0, v1}, LAh/l;-><init>(I)V

    return-object v0
.end method

.method public C()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAh/b;->b:LAh/d;

    invoke-virtual {v0}, LAh/d;->x()LAh/e;

    move-result-object v0

    invoke-virtual {v0}, LAh/e;->u()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method public D()LAh/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAh/b;->b:LAh/d;

    invoke-virtual {v0}, LAh/d;->y()LAh/f;

    move-result-object v0

    return-object v0
.end method

.method public F()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAh/b;->b:LAh/d;

    invoke-virtual {v0}, LAh/d;->x()LAh/e;

    move-result-object v0

    invoke-virtual {v0}, LAh/e;->u()I

    move-result v0

    return v0
.end method

.method public G()[B
    .locals 1

    iget-object v0, p0, LAh/b;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final H(Loh/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Loh/r;->k()Loh/B;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Loh/M;

    if-eqz v1, :cond_0

    check-cast v0, Loh/M;

    invoke-virtual {p0, v0}, LAh/b;->I(Loh/M;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Input Stream for creating an Iso7816CertificateStructure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final I(Loh/M;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, LAh/b;->d:I

    const/16 v1, 0x21

    const/16 v2, 0x40

    invoke-virtual {p1, v2, v1}, Loh/M;->m(II)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Loh/M;->M(ZI)Loh/B;

    move-result-object v1

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v1

    invoke-virtual {v1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Loh/M;

    if-eqz v4, :cond_2

    invoke-static {v3, v2}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object v3

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v4

    const/16 v5, 0x37

    if-eq v4, v5, :cond_1

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_0

    invoke-static {v3}, LAh/d;->C(Ljava/lang/Object;)LAh/d;

    move-result-object v3

    iput-object v3, p0, LAh/b;->b:LAh/d;

    iget v3, p0, LAh/b;->d:I

    sget v4, LAh/b;->e:I

    :goto_1
    or-int/2addr v3, v4

    iput v3, p0, LAh/b;->d:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid tag, not an Iso7816CertificateStructure :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4}, Loh/M;->M(ZI)Loh/B;

    move-result-object v3

    invoke-static {v3}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v3

    invoke-virtual {v3}, Loh/y;->H()[B

    move-result-object v3

    iput-object v3, p0, LAh/b;->c:[B

    iget v3, p0, LAh/b;->d:I

    sget v4, LAh/b;->f:I

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Object, not an Iso7816CertificateStructure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget v0, p0, LAh/b;->d:I

    sget v1, LAh/b;->f:I

    sget v2, LAh/b;->e:I

    or-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid CARDHOLDER_CERTIFICATE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a CARDHOLDER_CERTIFICATE :"

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

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LAh/b;->b:LAh/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    const/16 v1, 0x37

    iget-object v2, p0, LAh/b;->c:[B

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

.method public u()LAh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAh/b;->b:LAh/d;

    invoke-virtual {v0}, LAh/d;->B()LAh/g;

    move-result-object v0

    return-object v0
.end method

.method public v()LAh/d;
    .locals 1

    iget-object v0, p0, LAh/b;->b:LAh/d;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, LAh/b;->b:LAh/d;

    invoke-virtual {v0}, LAh/d;->A()I

    move-result v0

    return v0
.end method

.method public y()LAh/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAh/b;->b:LAh/d;

    invoke-virtual {v0}, LAh/d;->u()LAh/m;

    move-result-object v0

    return-object v0
.end method

.method public z()LAh/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LAh/b;->b:LAh/d;

    invoke-virtual {v0}, LAh/d;->v()LAh/m;

    move-result-object v0

    return-object v0
.end method
