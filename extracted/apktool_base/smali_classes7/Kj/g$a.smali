.class public LKj/g$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKj/g;
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
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "AlgorithmParameters.EC"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.AlgorithmParametersSpi"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DH"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECDH"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECDHC"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHC"

    invoke-interface {v8, v1, v2, v0}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "KeyAgreement.ECCDH"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECCDHU"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECDHWITHSHA1KDF"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA1KDFAndSharedInfo"

    invoke-interface {v8, v1, v2, v0}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECCDHWITHSHA1KDF"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA1KDFAndSharedInfo"

    invoke-interface {v8, v1, v3, v0}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECDHWITHSHA224KDF"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA224KDFAndSharedInfo"

    invoke-interface {v8, v1, v4, v0}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECCDHWITHSHA224KDF"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA224KDFAndSharedInfo"

    invoke-interface {v8, v1, v5, v0}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECDHWITHSHA256KDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA256KDFAndSharedInfo"

    invoke-interface {v8, v1, v6, v0}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECCDHWITHSHA256KDF"

    const-string v9, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA256KDFAndSharedInfo"

    invoke-interface {v8, v1, v9, v0}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECDHWITHSHA384KDF"

    const-string v10, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA384KDFAndSharedInfo"

    invoke-interface {v8, v1, v10, v0}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECCDHWITHSHA384KDF"

    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA384KDFAndSharedInfo"

    invoke-interface {v8, v1, v11, v0}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECDHWITHSHA512KDF"

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA512KDFAndSharedInfo"

    invoke-interface {v8, v1, v12, v0}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KeyAgreement.ECCDHWITHSHA512KDF"

    const-string v13, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$CDHwithSHA512KDFAndSharedInfo"

    invoke-interface {v8, v1, v13, v0}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lki/r;->v6:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v14, "KeyAgreement"

    invoke-interface {v8, v14, v0, v2, v1}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lki/r;->w6:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v8, v14, v1, v3, v2}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v2, LZh/d;->J:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v8, v14, v2, v4, v3}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v3, LZh/d;->N:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v8, v14, v3, v5, v4}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v4, LZh/d;->K:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v8, v14, v4, v6, v5}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v5, LZh/d;->O:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v8, v14, v5, v9, v6}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v6, LZh/d;->L:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v8, v14, v6, v10, v9}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v9, LZh/d;->P:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v8, v14, v9, v11, v10}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v10, LZh/d;->M:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v8, v14, v10, v12, v11}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v11, LZh/d;->Q:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v8, v14, v11, v13, v12}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA1CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHWITHSHA1CKDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA256CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHWITHSHA256CKDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA384CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHWITHSHA384CKDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA512CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHWITHSHA512CKDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA1CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHUWITHSHA1CKDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA224CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHUWITHSHA224CKDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA256CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHUWITHSHA256CKDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA384CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHUWITHSHA384CKDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA512CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHUWITHSHA512CKDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA1KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHUWITHSHA1KDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA224KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHUWITHSHA224KDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA256KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHUWITHSHA256KDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA384KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHUWITHSHA384KDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHUwithSHA512KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    const-string v15, "KeyAgreement.ECCDHUWITHSHA512KDF"

    invoke-interface {v8, v15, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v12

    const-string v13, "KeyAgreement.ECKAEGWITHSHA1KDF"

    const-string v15, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA1KDF"

    invoke-interface {v8, v13, v15, v12}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v12

    const-string v13, "KeyAgreement.ECKAEGWITHSHA224KDF"

    move-object/from16 v16, v11

    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA224KDF"

    invoke-interface {v8, v13, v11, v12}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA256KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v13

    move-object/from16 v17, v10

    const-string v10, "KeyAgreement.ECKAEGWITHSHA256KDF"

    invoke-interface {v8, v10, v12, v13}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v10, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA384KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v12

    const-string v13, "KeyAgreement.ECKAEGWITHSHA384KDF"

    invoke-interface {v8, v13, v10, v12}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v10, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA512KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v12

    const-string v13, "KeyAgreement.ECKAEGWITHSHA512KDF"

    invoke-interface {v8, v13, v10, v12}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v10, Lmj/a;->q:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v8, v14, v10, v15, v12}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v10, Lmj/a;->r:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v8, v14, v10, v11, v12}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v10, Lmj/a;->s:Loh/x;

    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA256KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v8, v14, v10, v11, v12}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v10, Lmj/a;->t:Loh/x;

    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA384KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v8, v14, v10, v11, v12}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v10, Lmj/a;->u:Loh/x;

    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithSHA512KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v8, v14, v10, v11, v12}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v10, Lmj/a;->v:Loh/x;

    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithRIPEMD160KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v8, v14, v10, v11, v12}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    const-string v10, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$ECKAEGwithRIPEMD160KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v11

    const-string v12, "KeyAgreement.ECKAEGWITHRIPEMD160KDF"

    invoke-interface {v8, v12, v10, v11}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v10, Lki/r;->I5:Loh/x;

    new-instance v11, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;

    invoke-direct {v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;-><init>()V

    const-string v12, "EC"

    invoke-virtual {v7, v8, v10, v12, v11}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v11, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;

    invoke-direct {v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;-><init>()V

    invoke-virtual {v7, v8, v0, v12, v11}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v11, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;

    invoke-direct {v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;-><init>()V

    invoke-virtual {v7, v8, v1, v12, v11}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v11, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;

    invoke-direct {v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;-><init>()V

    invoke-virtual {v7, v8, v2, v12, v11}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v11, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;

    invoke-direct {v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;-><init>()V

    invoke-virtual {v7, v8, v3, v12, v11}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v11, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;

    invoke-direct {v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;-><init>()V

    invoke-virtual {v7, v8, v4, v12, v11}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v11, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;

    invoke-direct {v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;-><init>()V

    invoke-virtual {v7, v8, v5, v12, v11}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v11, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;

    invoke-direct {v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;-><init>()V

    invoke-virtual {v7, v8, v6, v12, v11}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v11, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;

    invoke-direct {v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;-><init>()V

    invoke-virtual {v7, v8, v9, v12, v11}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v11, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;

    invoke-direct {v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;-><init>()V

    move-object/from16 v13, v17

    invoke-virtual {v7, v8, v13, v12, v11}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v11, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;

    invoke-direct {v11}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;-><init>()V

    move-object/from16 v14, v16

    invoke-virtual {v7, v8, v14, v12, v11}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v7, v8, v10, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v1, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v2, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v3, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v4, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v5, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v6, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v13, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v14, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.ec.disable_mqv"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQV"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECMQV"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA1CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECMQVWITHSHA1CKDF"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA224CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECMQVWITHSHA224CKDF"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA256CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECMQVWITHSHA256CKDF"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA384CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECMQVWITHSHA384CKDF"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA512CKDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECMQVWITHSHA512CKDF"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA1KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECMQVWITHSHA1KDF"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA224KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECMQVWITHSHA224KDF"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA256KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECMQVWITHSHA256KDF"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA384KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECMQVWITHSHA384KDF"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA512KDF"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "KeyAgreement.ECMQVWITHSHA512KDF"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyAgreement."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lki/r;->x6:Loh/x;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA1KDFAndSharedInfo"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v8, v0, v3, v4}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, LZh/d;->R:Loh/x;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA224KDFAndSharedInfo"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v8, v0, v4, v5}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, LZh/d;->S:Loh/x;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA256KDFAndSharedInfo"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v8, v0, v5, v6}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, LZh/d;->T:Loh/x;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA384KDFAndSharedInfo"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v8, v0, v6, v9}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, LZh/d;->U:Loh/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA512KDFAndSharedInfo"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v8, v0, v6, v9}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$g;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$g;-><init>()V

    const-string v6, "ECMQV"

    invoke-virtual {v7, v8, v2, v6, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v7, v8, v2, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$g;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$g;-><init>()V

    invoke-virtual {v7, v8, v3, v6, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v7, v8, v3, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$g;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$g;-><init>()V

    invoke-virtual {v7, v8, v4, v6, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v7, v8, v4, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$g;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$g;-><init>()V

    invoke-virtual {v7, v8, v5, v6, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v7, v8, v5, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$g;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$g;-><init>()V

    invoke-virtual {v7, v8, v1, v6, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v7, v8, v1, v12}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ECMQV"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECMQV"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECMQV"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECMQV"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "KeyFactory.EC"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$EC"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ECDSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDSA"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ECDH"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDH"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ECDHC"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDHC"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.EC"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$EC"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECDSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDSA"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECDH"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDH"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECDHWITHSHA1KDF"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECDHC"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDHC"

    invoke-interface {v8, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ECIES"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cipher.ECIES"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIES"

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESwithSHA1"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESWITHSHA1"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESwithSHA256"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESWITHSHA256"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESwithSHA384"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESWITHSHA384"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESwithSHA512"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESWITHSHA512"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESwithAES-CBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithAESCBC"

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESWITHAES-CBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESwithSHA1andAES-CBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESWITHSHA1ANDAES-CBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andAESCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESwithSHA256andAES-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andAESCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESWITHSHA256ANDAES-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andAESCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESwithSHA384andAES-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andAESCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESWITHSHA384ANDAES-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andAESCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESwithSHA512andAES-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andAESCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESWITHSHA512ANDAES-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESwithDESEDE-CBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithDESedeCBC"

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESWITHDESEDE-CBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESwithSHA1andDESEDE-CBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Cipher.ECIESWITHSHA1ANDDESEDE-CBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v8, v0, v2, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andDESedeCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESwithSHA256andDESEDE-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA256andDESedeCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESWITHSHA256ANDDESEDE-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andDESedeCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESwithSHA384andDESEDE-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA384andDESedeCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESWITHSHA384ANDDESEDE-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andDESedeCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESwithSHA512andDESEDE-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithSHA512andDESedeCBC"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ECIESWITHSHA512ANDDESEDE-CBC"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.IESKEMCipher$KEMwithSHA256"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cipher.ETSIKEMWITHSHA256"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.ECDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAnone"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.NONEwithECDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Alg.Alias.Signature.SHA1withECDSA"

    const-string v1, "ECDSA"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.ECDSAwithSHA1"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WITHECDSA"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.ECDSAWITHSHA1"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WithECDSA"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.ECDSAWithSHA1"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.1.2.840.10045.4.1"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Signature."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lbi/b;->j:Loh/x;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.ECDDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA1WITHECDDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA224"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA224WITHECDDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA256"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA256WITHECDDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA384"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA384WITHECDDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA512"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA512WITHECDDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_224"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA3-224WITHECDDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_256"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA3-256WITHECDDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_384"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA3-384WITHECDDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSASha3_512"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA3-512WITHECDDSA"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Alg.Alias.Signature.DETECDSA"

    const-string v1, "ECDDSA"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WITHDETECDSA"

    const-string v1, "SHA1WITHECDDSA"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA224WITHDETECDSA"

    const-string v1, "SHA224WITHECDDSA"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA256WITHDETECDSA"

    const-string v1, "SHA256WITHECDDSA"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA384WITHDETECDSA"

    const-string v1, "SHA384WITHECDDSA"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA512WITHDETECDSA"

    const-string v1, "SHA512WITHECDDSA"

    invoke-interface {v8, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lki/r;->K5:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA224"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA224"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lki/r;->L5:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA256"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA256"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lki/r;->M5:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA384"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA384"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lki/r;->N5:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA512"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA512"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, LSh/d;->i0:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-224"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_224"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, LSh/d;->j0:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-256"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_256"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, LSh/d;->k0:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-384"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_384"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, LSh/d;->l0:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-512"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSASha3_512"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lnj/b;->q:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHAKE128"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAShake128"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lnj/b;->r:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHAKE256"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAShake256"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lbi/b;->k:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "RIPEMD160"

    const-string v3, "ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSARipeMD160"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA1WITHECNR"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR224"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA224WITHECNR"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR256"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA256WITHECNR"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR384"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA384WITHECNR"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR512"

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Signature.SHA512WITHECNR"

    invoke-interface {v8, v2, v0, v1}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v5, Lpj/a;->s:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA1"

    const-string v3, "CVC-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lpj/a;->t:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA224"

    const-string v3, "CVC-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA224"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lpj/a;->u:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA256"

    const-string v3, "CVC-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA256"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lpj/a;->v:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA384"

    const-string v3, "CVC-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA384"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lpj/a;->w:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA512"

    const-string v3, "CVC-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA512"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lmj/a;->d:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA1"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lmj/a;->e:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA224"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA224"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lmj/a;->f:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA256"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA256"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lmj/a;->g:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA384"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA384"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lmj/a;->h:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA512"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA512"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lmj/a;->i:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "RIPEMD160"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecPlainDSARP160"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lmj/a;->j:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-224"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_224"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lmj/a;->k:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-256"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_256"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lmj/a;->l:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-384"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_384"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    sget-object v5, Lmj/a;->m:Loh/x;

    invoke-static {}, LKj/g;->a()Ljava/util/Map;

    move-result-object v6

    const-string v2, "SHA3-512"

    const-string v3, "PLAIN-ECDSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA3_512"

    invoke-virtual/range {v0 .. v6}, Lbk/b;->h(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;Ljava/util/Map;)V

    return-void
.end method
