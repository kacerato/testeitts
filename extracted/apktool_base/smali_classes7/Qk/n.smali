.class public LQk/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/b;


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LQk/n;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, LQk/n;->b:Ljava/util/Map;

    sget-object v2, LXh/t;->Q0:Loh/x;

    const-string v3, "RSASSA-PSS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LBh/a;->d:Loh/x;

    const-string v3, "ED25519"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LBh/a;->e:Loh/x;

    const-string v3, "ED448"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Loh/x;

    const-string v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v3}, Loh/x;-><init>(Ljava/lang/String;)V

    const-string v3, "SHA1WITHRSA"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LXh/t;->U0:Loh/x;

    const-string v4, "SHA224WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LXh/t;->R0:Loh/x;

    const-string v4, "SHA256WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LXh/t;->S0:Loh/x;

    const-string v4, "SHA384WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LXh/t;->T0:Loh/x;

    const-string v4, "SHA512WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Luh/l;->B8:Loh/x;

    const-string v4, "SHAKE128WITHRSAPSS"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Luh/l;->C8:Loh/x;

    const-string v4, "SHAKE256WITHRSAPSS"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lyh/a;->n:Loh/x;

    const-string v4, "GOST3411WITHGOST3410"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lyh/a;->o:Loh/x;

    const-string v4, "GOST3411WITHECGOST3410"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LYh/a;->i:Loh/x;

    const-string v4, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LYh/a;->j:Loh/x;

    const-string v4, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lrh/a;->d:Loh/x;

    const-string v4, "SHA1WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lrh/a;->e:Loh/x;

    const-string v4, "SHA224WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lrh/a;->f:Loh/x;

    const-string v4, "SHA256WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lrh/a;->g:Loh/x;

    const-string v4, "SHA384WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lrh/a;->h:Loh/x;

    const-string v4, "SHA512WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lrh/a;->j:Loh/x;

    const-string v4, "SHA3-224WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lrh/a;->k:Loh/x;

    const-string v4, "SHA3-256WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lrh/a;->l:Loh/x;

    const-string v4, "SHA3-384WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lrh/a;->m:Loh/x;

    const-string v4, "SHA3-512WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lrh/a;->i:Loh/x;

    const-string v4, "RIPEMD160WITHPLAIN-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LAh/h;->s:Loh/x;

    const-string v4, "SHA1WITHCVC-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LAh/h;->t:Loh/x;

    const-string v4, "SHA224WITHCVC-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LAh/h;->u:Loh/x;

    const-string v4, "SHA256WITHCVC-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LAh/h;->v:Loh/x;

    const-string v4, "SHA384WITHCVC-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LAh/h;->w:Loh/x;

    const-string v4, "SHA512WITHCVC-ECDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LJh/a;->a:Loh/x;

    const-string v4, "XMSS"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LJh/a;->b:Loh/x;

    const-string v4, "XMSSMT"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lbi/b;->g:Loh/x;

    const-string v4, "RIPEMD128WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lbi/b;->f:Loh/x;

    const-string v4, "RIPEMD160WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lbi/b;->h:Loh/x;

    const-string v4, "RIPEMD256WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Loh/x;

    const-string v4, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v4}, Loh/x;-><init>(Ljava/lang/String;)V

    const-string v4, "MD5WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Loh/x;

    const-string v4, "1.2.840.113549.1.1.2"

    invoke-direct {v2, v4}, Loh/x;-><init>(Ljava/lang/String;)V

    const-string v4, "MD2WITHRSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Loh/x;

    const-string v4, "1.2.840.10040.4.3"

    invoke-direct {v2, v4}, Loh/x;-><init>(Ljava/lang/String;)V

    const-string v4, "SHA1WITHDSA"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lki/r;->E5:Loh/x;

    const-string v5, "SHA1WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lki/r;->K5:Loh/x;

    const-string v5, "SHA224WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lki/r;->L5:Loh/x;

    const-string v5, "SHA256WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lki/r;->M5:Loh/x;

    const-string v5, "SHA384WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lki/r;->N5:Loh/x;

    const-string v5, "SHA512WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Luh/l;->D8:Loh/x;

    const-string v5, "SHAKE128WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Luh/l;->E8:Loh/x;

    const-string v5, "SHAKE256WITHECDSA"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LWh/b;->k:Loh/x;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LWh/b;->j:Loh/x;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LSh/d;->a0:Loh/x;

    const-string v3, "SHA224WITHDSA"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LSh/d;->b0:Loh/x;

    const-string v3, "SHA256WITHDSA"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LWh/b;->i:Loh/x;

    const-string v2, "SHA1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->f:Loh/x;

    const-string v2, "SHA224"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->c:Loh/x;

    const-string v2, "SHA256"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->d:Loh/x;

    const-string v2, "SHA384"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->e:Loh/x;

    const-string v2, "SHA512"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->i:Loh/x;

    const-string v2, "SHA3-224"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->j:Loh/x;

    const-string v2, "SHA3-256"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->k:Loh/x;

    const-string v2, "SHA3-384"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->l:Loh/x;

    const-string v2, "SHA3-512"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbi/b;->c:Loh/x;

    const-string v2, "RIPEMD128"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbi/b;->b:Loh/x;

    const-string v2, "RIPEMD160"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbi/b;->d:Loh/x;

    const-string v2, "RIPEMD256"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Loh/x;)Ljava/lang/String;
    .locals 1

    sget-object v0, LQk/n;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Loh/x;->J()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Loh/x;)Z
    .locals 1

    sget-object v0, LQk/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Lhi/b;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Loh/A0;->c:Loh/A0;

    invoke-virtual {v1, v0}, Loh/B;->z(Loh/g;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v2, LXh/t;->Q0:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, LXh/B;->v(Ljava/lang/Object;)LXh/B;

    move-result-object p1

    invoke-virtual {p1}, LXh/B;->x()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v2, LXh/t;->O0:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, LXh/B;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, LQk/n;->d(Loh/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "WITHRSAANDMGF1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, LQk/n;->d(Loh/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "WITHRSAANDMGF1USING"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, LQk/n;->d(Loh/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, LXh/B;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, LQk/n;->d(Loh/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "WITHRSAAND"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, LQk/n;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    if-eqz v1, :cond_3

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_3
    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Loh/x;)Ljava/lang/String;
    .locals 1

    sget-object v0, LQk/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
