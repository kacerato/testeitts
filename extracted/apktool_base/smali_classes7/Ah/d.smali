.class public LAh/d;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x4

.field public static final n:I = 0x8

.field public static final o:I = 0x10

.field public static final p:I = 0x20

.field public static final q:I = 0x40

.field public static final r:I = 0x7f

.field public static final s:I = 0x7f

.field public static final t:I = 0x0

.field public static final u:I = 0xd

.field public static final v:I = 0xd

.field public static final w:I = 0x2


# instance fields
.field public b:Loh/r;

.field public c:Loh/M;

.field public d:Loh/M;

.field public e:LAh/n;

.field public f:Loh/M;

.field public g:LAh/e;

.field public h:Loh/M;

.field public i:Loh/M;

.field public j:I


# direct methods
.method public constructor <init>(Loh/M;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LAh/d;->j:I

    invoke-virtual {p0, p1}, LAh/d;->M(Loh/M;)V

    return-void
.end method

.method public constructor <init>(Loh/M;LAh/g;LAh/n;LAh/f;LAh/e;LAh/m;LAh/m;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LAh/d;->j:I

    invoke-virtual {p0, p1}, LAh/d;->K(Loh/M;)V

    const/4 p1, 0x2

    invoke-virtual {p2}, LAh/f;->b()[B

    move-result-object p2

    invoke-static {p1, p2}, LAh/i;->c(I[B)Loh/M;

    move-result-object p1

    invoke-virtual {p0, p1}, LAh/d;->L(Loh/M;)V

    invoke-virtual {p0, p3}, LAh/d;->N(LAh/n;)V

    const/16 p1, 0x20

    invoke-virtual {p4}, LAh/f;->b()[B

    move-result-object p2

    invoke-static {p1, p2}, LAh/i;->c(I[B)Loh/M;

    move-result-object p1

    invoke-virtual {p0, p1}, LAh/d;->J(Loh/M;)V

    invoke-virtual {p0, p5}, LAh/d;->I(LAh/e;)V

    const/16 p1, 0x25

    invoke-virtual {p6}, LAh/m;->c()[B

    move-result-object p2

    invoke-static {p1, p2}, LAh/i;->c(I[B)Loh/M;

    move-result-object p1

    invoke-virtual {p0, p1}, LAh/d;->G(Loh/M;)V

    const/16 p1, 0x24

    invoke-virtual {p7}, LAh/m;->c()[B

    move-result-object p2

    invoke-static {p1, p2}, LAh/i;->c(I[B)Loh/M;

    move-result-object p1

    invoke-virtual {p0, p1}, LAh/d;->H(Loh/M;)V

    return-void
.end method

.method public static C(Ljava/lang/Object;)LAh/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, LAh/d;

    if-eqz v0, :cond_0

    check-cast p0, LAh/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAh/d;

    const/16 v1, 0x40

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LAh/d;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, LAh/d;->j:I

    return v0
.end method

.method public B()LAh/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LAh/d;->j:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, LAh/g;

    iget-object v1, p0, LAh/d;->d:Loh/M;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Loh/M;->M(ZI)Loh/B;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-direct {v0, v1}, LAh/g;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Certification authority reference not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D()LAh/n;
    .locals 1

    iget-object v0, p0, LAh/d;->e:LAh/n;

    return-object v0
.end method

.method public final E()Loh/B;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LAh/d;->c:Loh/M;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LAh/d;->d:Loh/M;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    const/16 v1, 0x49

    iget-object v2, p0, LAh/d;->e:LAh/n;

    invoke-static {v1, v2}, LAh/i;->a(ILAh/n;)Loh/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LAh/d;->f:Loh/M;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LAh/d;->g:LAh/e;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LAh/d;->h:Loh/M;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LAh/d;->i:Loh/M;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    const/16 v0, 0x4e

    invoke-static {v0, v1}, LAh/i;->b(ILoh/E;)Loh/M;

    move-result-object v0

    return-object v0
.end method

.method public final F()Loh/B;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LAh/d;->c:Loh/M;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LAh/d;->d:Loh/M;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    const/16 v1, 0x49

    iget-object v2, p0, LAh/d;->e:LAh/n;

    invoke-static {v1, v2}, LAh/i;->a(ILAh/n;)Loh/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LAh/d;->f:Loh/M;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    const/16 v0, 0x4e

    invoke-static {v0, v1}, LAh/i;->b(ILoh/E;)Loh/M;

    move-result-object v0

    return-object v0
.end method

.method public final G(Loh/M;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x40

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1}, Loh/M;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LAh/d;->h:Loh/M;

    iget p1, p0, LAh/d;->j:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, LAh/d;->j:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an Iso7816Tags.APPLICATION_EFFECTIVE_DATE tag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H(Loh/M;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x24

    const/16 v1, 0x40

    invoke-virtual {p1, v1, v0}, Loh/M;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LAh/d;->i:Loh/M;

    iget p1, p0, LAh/d;->j:I

    or-int/2addr p1, v1

    iput p1, p0, LAh/d;->j:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.APPLICATION_EXPIRATION_DATE tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I(LAh/e;)V
    .locals 0

    iput-object p1, p0, LAh/d;->g:LAh/e;

    iget p1, p0, LAh/d;->j:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, LAh/d;->j:I

    return-void
.end method

.method public final J(Loh/M;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x40

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Loh/M;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LAh/d;->f:Loh/M;

    iget p1, p0, LAh/d;->j:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, LAh/d;->j:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.CARDHOLDER_NAME tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final K(Loh/M;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x40

    const/16 v1, 0x29

    invoke-virtual {p1, v0, v1}, Loh/M;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LAh/d;->c:Loh/M;

    iget p1, p0, LAh/d;->j:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, LAh/d;->j:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an Iso7816Tags.INTERCHANGE_PROFILE tag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L(Loh/M;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x40

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Loh/M;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LAh/d;->d:Loh/M;

    iget p1, p0, LAh/d;->j:I

    or-int/2addr p1, v1

    iput p1, p0, LAh/d;->j:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.ISSUER_IDENTIFICATION_NUMBER tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final M(Loh/M;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4e

    const/16 v1, 0x40

    invoke-virtual {p1, v1, v0}, Loh/M;->m(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2}, Loh/M;->M(ZI)Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_7

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object v5

    invoke-virtual {v5}, Loh/M;->g()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_5

    const/16 v7, 0x29

    if-eq v6, v7, :cond_4

    const/16 v7, 0x49

    if-eq v6, v7, :cond_3

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_2

    const/16 v7, 0x24

    if-eq v6, v7, :cond_1

    const/16 v7, 0x25

    if-ne v6, v7, :cond_0

    invoke-virtual {p0, v5}, LAh/d;->G(Loh/M;)V

    goto :goto_1

    :cond_0
    iput v0, p0, LAh/d;->j:I

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a valid iso7816 ASN1TaggedObject tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, v5}, LAh/d;->H(Loh/M;)V

    goto :goto_1

    :cond_2
    new-instance v6, LAh/e;

    invoke-direct {v6, v5}, LAh/e;-><init>(Loh/M;)V

    invoke-virtual {p0, v6}, LAh/d;->I(LAh/e;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v0, v2}, Loh/M;->M(ZI)Loh/B;

    move-result-object v5

    invoke-static {v5}, LAh/n;->u(Ljava/lang/Object;)LAh/n;

    move-result-object v5

    invoke-virtual {p0, v5}, LAh/d;->N(LAh/n;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, LAh/d;->K(Loh/M;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, LAh/d;->J(Loh/M;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v5}, LAh/d;->L(Loh/M;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Bad tag : not an iso7816 CERTIFICATE_CONTENT_TEMPLATE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final N(LAh/n;)V
    .locals 0

    invoke-static {p1}, LAh/n;->u(Ljava/lang/Object;)LAh/n;

    move-result-object p1

    iput-object p1, p0, LAh/d;->e:LAh/n;

    iget p1, p0, LAh/d;->j:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, LAh/d;->j:I

    return-void
.end method

.method public r()Loh/B;
    .locals 2

    :try_start_0
    iget v0, p0, LAh/d;->j:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LAh/d;->E()Loh/B;

    move-result-object v0

    return-object v0

    :cond_0
    and-int/lit8 v0, v0, -0x3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LAh/d;->F()Loh/B;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public u()LAh/m;
    .locals 4

    iget v0, p0, LAh/d;->j:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, LAh/m;

    iget-object v1, p0, LAh/d;->h:Loh/M;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Loh/M;->M(ZI)Loh/B;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-direct {v0, v1}, LAh/m;-><init>([B)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()LAh/m;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LAh/d;->j:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, LAh/m;

    iget-object v1, p0, LAh/d;->i:Loh/M;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Loh/M;->M(ZI)Loh/B;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-direct {v0, v1}, LAh/m;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "certificate Expiration Date not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public x()LAh/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, LAh/d;->j:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LAh/d;->g:LAh/e;

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Certificate Holder Authorisation not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y()LAh/f;
    .locals 4

    new-instance v0, LAh/f;

    iget-object v1, p0, LAh/d;->f:Loh/M;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Loh/M;->M(ZI)Loh/B;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-direct {v0, v1}, LAh/f;-><init>([B)V

    return-object v0
.end method

.method public z()Loh/M;
    .locals 1

    iget-object v0, p0, LAh/d;->c:Loh/M;

    return-object v0
.end method
