.class public Ltl/n$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbk/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LTj/a;)V
    .locals 6

    const-string v0, "KeyFactory.PICNIC"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.picnic.PicnicKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.PICNIC"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.picnic.PicnicKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.picnic.SignatureSpi$Base"

    sget-object v1, Lqh/a;->m1:Loh/x;

    const-string v2, "PICNIC"

    invoke-virtual {p0, p1, v2, v0, v1}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.picnic.SignatureSpi$withShake256"

    sget-object v5, Lqh/a;->o1:Loh/x;

    const-string v2, "SHAKE256"

    const-string v3, "PICNIC"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.picnic.SignatureSpi$withSha512"

    sget-object v5, Lqh/a;->n1:Loh/x;

    const-string v2, "SHA512"

    const-string v3, "PICNIC"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.picnic.SignatureSpi$withSha3512"

    sget-object v5, Lqh/a;->p1:Loh/x;

    const-string v2, "SHA3-512"

    const-string v3, "PICNIC"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    new-instance v0, LHl/c;

    invoke-direct {v0}, LHl/c;-><init>()V

    sget-object v1, Lqh/a;->Z0:Loh/x;

    const-string v2, "Picnic"

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->a1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->b1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->c1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->d1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->e1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->f1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->g1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->h1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->i1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->j1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->k1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->l1:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    return-void
.end method
