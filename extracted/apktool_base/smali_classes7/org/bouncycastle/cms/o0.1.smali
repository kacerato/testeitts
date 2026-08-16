.class public Lorg/bouncycastle/cms/o0;
.super Lorg/bouncycastle/cms/H0;
.source "SourceFile"


# instance fields
.field public g:Luh/E;

.field public h:Loh/y;


# direct methods
.method public constructor <init>(Luh/E;Lorg/bouncycastle/cms/F0;Loh/y;Lhi/b;Lorg/bouncycastle/cms/K;)V
    .locals 1

    invoke-virtual {p1}, Luh/E;->x()Lhi/b;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lorg/bouncycastle/cms/H0;-><init>(Lhi/b;Lhi/b;Lorg/bouncycastle/cms/K;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/o0;->g:Luh/E;

    iput-object p2, p0, Lorg/bouncycastle/cms/H0;->a:Lorg/bouncycastle/cms/F0;

    iput-object p3, p0, Lorg/bouncycastle/cms/o0;->h:Loh/y;

    return-void
.end method

.method public static p(Ljava/util/List;Luh/E;Lhi/b;Lorg/bouncycastle/cms/K;)V
    .locals 11

    invoke-virtual {p1}, Luh/E;->z()Loh/E;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Luh/O;->w(Ljava/lang/Object;)Luh/O;

    move-result-object v2

    invoke-virtual {v2}, Luh/O;->v()Luh/D;

    move-result-object v3

    invoke-virtual {v3}, Luh/D;->x()Luh/z;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v3, Lorg/bouncycastle/cms/m0;

    invoke-virtual {v4}, Luh/z;->v()Lfi/d;

    move-result-object v5

    invoke-virtual {v4}, Luh/z;->x()Loh/s;

    move-result-object v4

    invoke-virtual {v4}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/bouncycastle/cms/m0;-><init>(Lfi/d;Ljava/math/BigInteger;)V

    move-object v7, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Luh/D;->y()Luh/S;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/cms/m0;

    invoke-virtual {v3}, Luh/S;->y()Loh/y;

    move-result-object v3

    invoke-virtual {v3}, Loh/y;->H()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/bouncycastle/cms/m0;-><init>([B)V

    move-object v7, v4

    :goto_1
    new-instance v3, Lorg/bouncycastle/cms/o0;

    invoke-virtual {v2}, Luh/O;->u()Loh/y;

    move-result-object v8

    move-object v5, v3

    move-object v6, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/cms/o0;-><init>(Luh/E;Lorg/bouncycastle/cms/F0;Loh/y;Lhi/b;Lorg/bouncycastle/cms/K;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public j(Lorg/bouncycastle/cms/E0;)Lorg/bouncycastle/cms/J0;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/l0;

    invoke-interface {v0}, Lorg/bouncycastle/cms/l0;->f()Lhi/b;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/cms/H0;->b:Lhi/b;

    iget-object v2, p0, Lorg/bouncycastle/cms/H0;->c:Lhi/b;

    iget-object v3, p0, Lorg/bouncycastle/cms/o0;->g:Luh/E;

    invoke-virtual {v3}, Luh/E;->y()Luh/H;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/bouncycastle/cms/o0;->n(Lhi/b;Luh/H;)Lhi/h0;

    move-result-object v3

    iget-object p1, p0, Lorg/bouncycastle/cms/o0;->g:Luh/E;

    invoke-virtual {p1}, Luh/E;->A()Loh/y;

    move-result-object v4

    iget-object p1, p0, Lorg/bouncycastle/cms/o0;->h:Loh/y;

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/cms/l0;->b(Lhi/b;Lhi/b;Lhi/h0;Loh/y;[B)Lorg/bouncycastle/cms/J0;

    move-result-object p1

    return-object p1
.end method

.method public k()Luh/H;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/o0;->g:Luh/E;

    invoke-virtual {v0}, Luh/E;->y()Luh/H;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lorg/bouncycastle/cms/v0;)Lhi/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "No support for \'originator\' as IssuerAndSerialNumber or SubjectKeyIdentifier"

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Lhi/b;Luh/J;)Lhi/h0;
    .locals 1

    new-instance v0, Lhi/h0;

    invoke-virtual {p2}, Luh/J;->y()Loh/c;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lhi/h0;-><init>(Lhi/b;Loh/c;)V

    return-object v0
.end method

.method public final n(Lhi/b;Luh/H;)Lhi/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Luh/H;->y()Luh/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/o0;->m(Lhi/b;Luh/J;)Lhi/h0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Luh/H;->x()Luh/z;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lorg/bouncycastle/cms/v0;

    invoke-virtual {p1}, Luh/z;->v()Lfi/d;

    move-result-object v0

    invoke-virtual {p1}, Luh/z;->x()Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/v0;-><init>(Lfi/d;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Luh/H;->z()Lhi/g0;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/cms/v0;

    invoke-virtual {p1}, Lhi/g0;->x()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/v0;-><init>([B)V

    :goto_0
    invoke-virtual {p0, p2}, Lorg/bouncycastle/cms/o0;->l(Lorg/bouncycastle/cms/v0;)Lhi/h0;

    move-result-object p1

    return-object p1
.end method

.method public o()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/o0;->g:Luh/E;

    invoke-virtual {v0}, Luh/E;->A()Loh/y;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
