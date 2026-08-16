.class public Lorg/bouncycastle/cms/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/M;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/cms/Z;->a:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lorg/bouncycastle/cms/Z;->b:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lorg/bouncycastle/cms/Z;->c:Ljava/util/Map;

    sget-object v4, LSh/d;->a0:Loh/x;

    const-string v5, "SHA224"

    const-string v6, "DSA"

    invoke-virtual {v0, v4, v5, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, LSh/d;->b0:Loh/x;

    const-string v7, "SHA256"

    invoke-virtual {v0, v4, v7, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, LSh/d;->c0:Loh/x;

    const-string v8, "SHA384"

    invoke-virtual {v0, v4, v8, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, LSh/d;->d0:Loh/x;

    const-string v9, "SHA512"

    invoke-virtual {v0, v4, v9, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, LSh/d;->e0:Loh/x;

    const-string v10, "SHA3-224"

    invoke-virtual {v0, v4, v10, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, LSh/d;->f0:Loh/x;

    const-string v11, "SHA3-256"

    invoke-virtual {v0, v4, v11, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, LSh/d;->g0:Loh/x;

    const-string v12, "SHA3-384"

    invoke-virtual {v0, v4, v12, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, LSh/d;->h0:Loh/x;

    const-string v13, "SHA3-512"

    invoke-virtual {v0, v4, v13, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, LSh/d;->m0:Loh/x;

    const-string v14, "RSA"

    invoke-virtual {v0, v4, v10, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v15, LSh/d;->n0:Loh/x;

    invoke-virtual {v0, v15, v11, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v3

    sget-object v3, LSh/d;->o0:Loh/x;

    invoke-virtual {v0, v3, v12, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v2

    sget-object v2, LSh/d;->p0:Loh/x;

    invoke-virtual {v0, v2, v13, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v1

    sget-object v1, LSh/d;->i0:Loh/x;

    move-object/from16 v19, v2

    const-string v2, "ECDSA"

    invoke-virtual {v0, v1, v10, v2}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LSh/d;->j0:Loh/x;

    invoke-virtual {v0, v1, v11, v2}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LSh/d;->k0:Loh/x;

    invoke-virtual {v0, v1, v12, v2}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LSh/d;->l0:Loh/x;

    invoke-virtual {v0, v1, v13, v2}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LWh/b;->j:Loh/x;

    move-object/from16 v20, v2

    const-string v2, "SHA1"

    invoke-virtual {v0, v1, v2, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LWh/b;->a:Loh/x;

    move-object/from16 v21, v6

    const-string v6, "MD4"

    invoke-virtual {v0, v1, v6, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LWh/b;->c:Loh/x;

    invoke-virtual {v0, v1, v6, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LWh/b;->b:Loh/x;

    move-object/from16 v22, v13

    const-string v13, "MD5"

    invoke-virtual {v0, v1, v13, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LWh/b;->k:Loh/x;

    invoke-virtual {v0, v1, v2, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LXh/t;->I0:Loh/x;

    move-object/from16 v23, v3

    const-string v3, "MD2"

    invoke-virtual {v0, v1, v3, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LXh/t;->J0:Loh/x;

    invoke-virtual {v0, v1, v6, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LXh/t;->K0:Loh/x;

    invoke-virtual {v0, v1, v13, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LXh/t;->L0:Loh/x;

    invoke-virtual {v0, v1, v2, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LXh/t;->U0:Loh/x;

    invoke-virtual {v0, v1, v5, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LXh/t;->R0:Loh/x;

    invoke-virtual {v0, v1, v7, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LXh/t;->S0:Loh/x;

    invoke-virtual {v0, v1, v8, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LXh/t;->T0:Loh/x;

    invoke-virtual {v0, v1, v9, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LXh/t;->V0:Loh/x;

    const-string v3, "SHA512(224)"

    invoke-virtual {v0, v1, v3, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, LXh/t;->W0:Loh/x;

    const-string v3, "SHA512(256)"

    invoke-virtual {v0, v1, v3, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v10, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15, v11, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Luh/l;->B8:Loh/x;

    const-string v4, "RSAPSS"

    const-string v15, "SHAKE128"

    invoke-virtual {v0, v3, v15, v4}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Luh/l;->C8:Loh/x;

    const-string v4, "RSAPSS"

    move-object/from16 v19, v13

    const-string v13, "SHAKE256"

    invoke-virtual {v0, v3, v13, v4}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lbi/b;->g:Loh/x;

    const-string v4, "RIPEMD128"

    invoke-virtual {v0, v3, v4, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lbi/b;->f:Loh/x;

    const-string v4, "RIPEMD160"

    invoke-virtual {v0, v3, v4, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lbi/b;->h:Loh/x;

    move-object/from16 v22, v6

    const-string v6, "RIPEMD256"

    invoke-virtual {v0, v3, v6, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lki/r;->E5:Loh/x;

    move-object/from16 v6, v20

    invoke-virtual {v0, v3, v2, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lki/r;->K5:Loh/x;

    invoke-virtual {v0, v3, v5, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lki/r;->L5:Loh/x;

    invoke-virtual {v0, v3, v7, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lki/r;->M5:Loh/x;

    invoke-virtual {v0, v3, v8, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lki/r;->N5:Loh/x;

    invoke-virtual {v0, v3, v9, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Luh/l;->D8:Loh/x;

    invoke-virtual {v0, v3, v15, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Luh/l;->E8:Loh/x;

    invoke-virtual {v0, v3, v13, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lki/r;->t6:Loh/x;

    move-object/from16 v20, v15

    move-object/from16 v15, v21

    invoke-virtual {v0, v3, v2, v15}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LAh/h;->s:Loh/x;

    invoke-virtual {v0, v3, v2, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LAh/h;->t:Loh/x;

    invoke-virtual {v0, v3, v5, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LAh/h;->u:Loh/x;

    invoke-virtual {v0, v3, v7, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LAh/h;->v:Loh/x;

    invoke-virtual {v0, v3, v8, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LAh/h;->w:Loh/x;

    invoke-virtual {v0, v3, v9, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LAh/h;->l:Loh/x;

    invoke-virtual {v0, v3, v2, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LAh/h;->m:Loh/x;

    invoke-virtual {v0, v3, v7, v14}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LAh/h;->n:Loh/x;

    move-object/from16 v21, v6

    const-string v6, "RSAandMGF1"

    invoke-virtual {v0, v3, v2, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LAh/h;->o:Loh/x;

    invoke-virtual {v0, v3, v7, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lrh/a;->d:Loh/x;

    move-object/from16 v23, v6

    const-string v6, "PLAIN-ECDSA"

    invoke-virtual {v0, v3, v2, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lrh/a;->e:Loh/x;

    invoke-virtual {v0, v3, v5, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lrh/a;->f:Loh/x;

    invoke-virtual {v0, v3, v7, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lrh/a;->g:Loh/x;

    invoke-virtual {v0, v3, v8, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lrh/a;->h:Loh/x;

    invoke-virtual {v0, v3, v9, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lrh/a;->i:Loh/x;

    invoke-virtual {v0, v3, v4, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lrh/a;->j:Loh/x;

    invoke-virtual {v0, v3, v10, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lrh/a;->k:Loh/x;

    invoke-virtual {v0, v3, v11, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lrh/a;->l:Loh/x;

    invoke-virtual {v0, v3, v12, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lrh/a;->m:Loh/x;

    invoke-virtual {v0, v3, v1, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LFh/b;->h0:Loh/x;

    const-string v6, "SM2"

    invoke-virtual {v0, v3, v7, v6}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, LFh/b;->f0:Loh/x;

    const-string v6, "SM3"

    move-object/from16 v24, v4

    const-string v4, "SM2"

    invoke-virtual {v0, v3, v6, v4}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lqh/a;->u:Loh/x;

    const-string v4, "SPHINCS256"

    invoke-virtual {v0, v3, v9, v4}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lqh/a;->v:Loh/x;

    const-string v4, "SPHINCS256"

    invoke-virtual {v0, v3, v1, v4}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lqh/a;->o1:Loh/x;

    const-string v4, "Picnic"

    invoke-virtual {v0, v3, v13, v4}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lqh/a;->n1:Loh/x;

    invoke-virtual {v0, v3, v9, v4}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lqh/a;->p1:Loh/x;

    invoke-virtual {v0, v3, v1, v4}, Lorg/bouncycastle/cms/Z;->b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lki/r;->s6:Loh/x;

    move-object/from16 v6, v18

    invoke-interface {v6, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LXh/t;->H0:Loh/x;

    invoke-interface {v6, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lbi/b;->e:Loh/x;

    invoke-interface {v6, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lhi/E0;->W4:Loh/x;

    invoke-interface {v6, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LXh/t;->Q0:Loh/x;

    move-object/from16 v14, v23

    invoke-interface {v6, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lyh/a;->l:Loh/x;

    const-string v14, "GOST3410"

    invoke-interface {v6, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lyh/a;->m:Loh/x;

    const-string v15, "ECGOST3410"

    invoke-interface {v6, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Loh/x;

    const-string v0, "1.3.6.1.4.1.5849.1.6.2"

    invoke-direct {v3, v0}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Loh/x;

    const-string v3, "1.3.6.1.4.1.5849.1.1.5"

    invoke-direct {v0, v3}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LYh/a;->g:Loh/x;

    const-string v3, "ECGOST3410-2012-256"

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LYh/a;->h:Loh/x;

    const-string v3, "ECGOST3410-2012-512"

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyh/a;->o:Loh/x;

    invoke-interface {v6, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyh/a;->n:Loh/x;

    invoke-interface {v6, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LYh/a;->i:Loh/x;

    const-string v3, "ECGOST3410-2012-256"

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LYh/a;->j:Loh/x;

    const-string v3, "ECGOST3410-2012-512"

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lki/r;->I5:Loh/x;

    move-object/from16 v3, v21

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LXh/t;->s1:Loh/x;

    const-string v3, "MD2"

    move-object/from16 v6, v17

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LXh/t;->t1:Loh/x;

    move-object/from16 v3, v22

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LXh/t;->u1:Loh/x;

    move-object/from16 v3, v19

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LWh/b;->i:Loh/x;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->f:Loh/x;

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->c:Loh/x;

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->d:Loh/x;

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->e:Loh/x;

    invoke-interface {v6, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->g:Loh/x;

    const-string v2, "SHA512(224)"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->h:Loh/x;

    const-string v2, "SHA512(256)"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->m:Loh/x;

    move-object/from16 v2, v20

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->n:Loh/x;

    invoke-interface {v6, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->i:Loh/x;

    invoke-interface {v6, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->j:Loh/x;

    invoke-interface {v6, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->k:Loh/x;

    invoke-interface {v6, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/d;->l:Loh/x;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbi/b;->c:Loh/x;

    const-string v1, "RIPEMD128"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbi/b;->b:Loh/x;

    move-object/from16 v1, v24

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbi/b;->d:Loh/x;

    const-string v1, "RIPEMD256"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyh/a;->b:Loh/x;

    const-string v1, "GOST3411"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Loh/x;

    const-string v1, "1.3.6.1.4.1.5849.1.2.1"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    const-string v1, "GOST3411"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LYh/a;->c:Loh/x;

    const-string v1, "GOST3411-2012-256"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LYh/a;->d:Loh/x;

    const-string v1, "GOST3411-2012-512"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LFh/b;->d0:Loh/x;

    const-string v1, "SM3"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LBh/a;->d:Loh/x;

    const-string v1, "Ed25519"

    move-object/from16 v2, v16

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LBh/a;->e:Loh/x;

    const-string v1, "Ed448"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LXh/t;->Q2:Loh/x;

    const-string v1, "LMS"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQh/c;->P:Loh/x;

    const-string v1, "COMPOSITE"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lqh/a;->r1:Loh/x;

    const-string v1, "Falcon-512"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lqh/a;->s1:Loh/x;

    const-string v1, "Falcon-1024"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lqh/a;->u1:Loh/x;

    const-string v1, "Dilithium2"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lqh/a;->v1:Loh/x;

    const-string v3, "Dilithium3"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lqh/a;->w1:Loh/x;

    const-string v5, "Dilithium5"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->N0:Loh/x;

    const-string v6, "SPHINCS+-SHA2-128s"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->M0:Loh/x;

    const-string v6, "SPHINCS+-SHA2-128f"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->P0:Loh/x;

    const-string v6, "SPHINCS+-SHA2-192s"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->O0:Loh/x;

    const-string v6, "SPHINCS+-SHA2-192f"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->R0:Loh/x;

    const-string v6, "SPHINCS+-SHA2-256s"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->Q0:Loh/x;

    const-string v6, "SPHINCS+-SHA2-256f"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->T0:Loh/x;

    const-string v6, "SPHINCS+-SHAKE-128s"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->S0:Loh/x;

    const-string v6, "SPHINCS+-SHAKE-128f"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->V0:Loh/x;

    const-string v6, "SPHINCS+-SHAKE-192s"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->U0:Loh/x;

    const-string v6, "SPHINCS+-SHAKE-192f"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->X0:Loh/x;

    const-string v6, "SPHINCS+-SHAKE-256s"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lqh/a;->W0:Loh/x;

    const-string v6, "SPHINCS+-SHAKE-256f"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Dilithium2"

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Dilithium3"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Dilithium5"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lqh/a;->m1:Loh/x;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lhi/b;Lhi/b;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cms/Z;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lqh/a;->a0:Loh/x;

    invoke-virtual {p2, v0}, Loh/x;->O(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "SPHINCSPlus"

    return-object p1

    :cond_1
    invoke-virtual {p0, p2}, Lorg/bouncycastle/cms/Z;->c(Loh/x;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "with"

    if-nez v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/cms/Z;->d(Loh/x;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/Z;->c(Loh/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/cms/Z;->d(Loh/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Loh/x;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/Z;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/bouncycastle/cms/Z;->a:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Loh/x;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/Z;->b:Ljava/util/Map;

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

.method public final d(Loh/x;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/Z;->a:Ljava/util/Map;

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

.method public e(Loh/x;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/Z;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Loh/x;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/Z;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
