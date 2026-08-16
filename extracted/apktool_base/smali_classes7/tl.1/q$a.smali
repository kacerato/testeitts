.class public Ltl/q$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/q;
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
    .locals 14

    const-string v0, "KeyFactory.SPHINCS256"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.sphincs.Sphincs256KeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.SPHINCS256"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.sphincs.Sphincs256KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "org.bouncycastle.pqc.jcajce.provider.sphincs.SignatureSpi$withSha512"

    sget-object v7, LXk/m;->t:Loh/x;

    const-string v4, "SHA512"

    const-string v5, "SPHINCS256"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v12, "org.bouncycastle.pqc.jcajce.provider.sphincs.SignatureSpi$withSha3_512"

    sget-object v13, LXk/m;->u:Loh/x;

    const-string v10, "SHA3-512"

    const-string v11, "SPHINCS256"

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    new-instance v0, LKl/d;

    invoke-direct {v0}, LKl/d;-><init>()V

    sget-object v1, LXk/m;->r:Loh/x;

    const-string v2, "SPHINCS256"

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v1, v2}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    return-void
.end method
