.class public LQk/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/J;


# static fields
.field public static a:Ljava/util/Map;

.field public static b:Ljava/util/Set;

.field public static c:Ljava/util/Map;

.field public static d:Ljava/util/Set;

.field public static e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 132

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LQk/m;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, LQk/m;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LQk/m;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, LQk/m;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "COMPOSITE"

    sget-object v2, LQh/c;->P:Loh/x;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, LXh/t;->I0:Loh/x;

    const-string v2, "MD2WITHRSAENCRYPTION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v2, "MD2WITHRSA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v2, LXh/t;->K0:Loh/x;

    const-string v3, "MD5WITHRSAENCRYPTION"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v3, "MD5WITHRSA"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v3, LXh/t;->L0:Loh/x;

    const-string v4, "SHA1WITHRSAENCRYPTION"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v4, "SHA1WITHRSA"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v4, LXh/t;->U0:Loh/x;

    const-string v5, "SHA224WITHRSAENCRYPTION"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v5, "SHA224WITHRSA"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v5, LXh/t;->R0:Loh/x;

    const-string v6, "SHA256WITHRSAENCRYPTION"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v6, "SHA256WITHRSA"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v6, LXh/t;->S0:Loh/x;

    const-string v7, "SHA384WITHRSAENCRYPTION"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v7, "SHA384WITHRSA"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v7, LXh/t;->T0:Loh/x;

    const-string v8, "SHA512WITHRSAENCRYPTION"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v8, "SHA512WITHRSA"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, LXh/t;->V0:Loh/x;

    const-string v9, "SHA512(224)WITHRSAENCRYPTION"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v9, "SHA512(224)WITHRSA"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, LXh/t;->W0:Loh/x;

    const-string v10, "SHA512(256)WITHRSAENCRYPTION"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v10, "SHA512(256)WITHRSA"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v10, LXh/t;->Q0:Loh/x;

    const-string v11, "SHA1WITHRSAANDMGF1"

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v12, "SHA224WITHRSAANDMGF1"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v13, "SHA256WITHRSAANDMGF1"

    invoke-interface {v0, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "SHA384WITHRSAANDMGF1"

    invoke-interface {v0, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v15, "SHA512WITHRSAANDMGF1"

    invoke-interface {v0, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    move-object/from16 v16, v2

    const-string v2, "SHA3-224WITHRSAANDMGF1"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    move-object/from16 v17, v1

    const-string v1, "SHA3-256WITHRSAANDMGF1"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    move-object/from16 v18, v1

    const-string v1, "SHA3-384WITHRSAANDMGF1"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    move-object/from16 v19, v1

    const-string v1, "SHA3-512WITHRSAANDMGF1"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v10, Lbi/b;->f:Loh/x;

    move-object/from16 v20, v1

    const-string v1, "RIPEMD160WITHRSAENCRYPTION"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "RIPEMD160WITHRSA"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, Lbi/b;->g:Loh/x;

    move-object/from16 v21, v2

    const-string v2, "RIPEMD128WITHRSAENCRYPTION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v2, "RIPEMD128WITHRSA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v2, Lbi/b;->h:Loh/x;

    move-object/from16 v22, v15

    const-string v15, "RIPEMD256WITHRSAENCRYPTION"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v15, "RIPEMD256WITHRSA"

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v15, Lki/r;->t6:Loh/x;

    move-object/from16 v23, v14

    const-string v14, "SHA1WITHDSA"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "DSAWITHSHA1"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, LSh/d;->a0:Loh/x;

    move-object/from16 v24, v13

    const-string v13, "SHA224WITHDSA"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v13, LSh/d;->b0:Loh/x;

    move-object/from16 v25, v12

    const-string v12, "SHA256WITHDSA"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, LSh/d;->c0:Loh/x;

    move-object/from16 v26, v11

    const-string v11, "SHA384WITHDSA"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v11, LSh/d;->d0:Loh/x;

    move-object/from16 v27, v2

    const-string v2, "SHA512WITHDSA"

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v2, LSh/d;->e0:Loh/x;

    move-object/from16 v28, v10

    const-string v10, "SHA3-224WITHDSA"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v10, LSh/d;->f0:Loh/x;

    move-object/from16 v29, v1

    const-string v1, "SHA3-256WITHDSA"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, LSh/d;->g0:Loh/x;

    move-object/from16 v30, v9

    const-string v9, "SHA3-384WITHDSA"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, LSh/d;->h0:Loh/x;

    move-object/from16 v31, v8

    const-string v8, "SHA3-512WITHDSA"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, LSh/d;->i0:Loh/x;

    move-object/from16 v32, v7

    const-string v7, "SHA3-224WITHECDSA"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v7, LSh/d;->j0:Loh/x;

    move-object/from16 v33, v6

    const-string v6, "SHA3-256WITHECDSA"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v6, LSh/d;->k0:Loh/x;

    move-object/from16 v34, v5

    const-string v5, "SHA3-384WITHECDSA"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v5, LSh/d;->l0:Loh/x;

    move-object/from16 v35, v4

    const-string v4, "SHA3-512WITHECDSA"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v4, LSh/d;->m0:Loh/x;

    move-object/from16 v36, v3

    const-string v3, "SHA3-224WITHRSA"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v3, LSh/d;->n0:Loh/x;

    move-object/from16 v37, v5

    const-string v5, "SHA3-256WITHRSA"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v5, LSh/d;->o0:Loh/x;

    move-object/from16 v38, v6

    const-string v6, "SHA3-384WITHRSA"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v6, LSh/d;->p0:Loh/x;

    move-object/from16 v39, v7

    const-string v7, "SHA3-512WITHRSA"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v7, "SHA3-224WITHRSAENCRYPTION"

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v7, "SHA3-256WITHRSAENCRYPTION"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v7, "SHA3-384WITHRSAENCRYPTION"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v7, "SHA3-512WITHRSAENCRYPTION"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v7, Lki/r;->E5:Loh/x;

    move-object/from16 v40, v6

    const-string v6, "SHA1WITHECDSA"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v6, "ECDSAWITHSHA1"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v6, Lki/r;->K5:Loh/x;

    move-object/from16 v41, v5

    const-string v5, "SHA224WITHECDSA"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v5, Lki/r;->L5:Loh/x;

    move-object/from16 v42, v3

    const-string v3, "SHA256WITHECDSA"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v3, Lki/r;->M5:Loh/x;

    move-object/from16 v43, v4

    const-string v4, "SHA384WITHECDSA"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v4, Lki/r;->N5:Loh/x;

    move-object/from16 v44, v8

    const-string v8, "SHA512WITHECDSA"

    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, Lyh/a;->n:Loh/x;

    move-object/from16 v45, v9

    const-string v9, "GOST3411WITHGOST3410"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v9, "GOST3411WITHGOST3410-94"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Lyh/a;->o:Loh/x;

    move-object/from16 v46, v8

    const-string v8, "GOST3411WITHECGOST3410"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v8, "GOST3411WITHECGOST3410-2001"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v8, "GOST3411WITHGOST3410-2001"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, LYh/a;->i:Loh/x;

    move-object/from16 v47, v9

    const-string v9, "GOST3411WITHECGOST3410-2012-256"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, LYh/a;->j:Loh/x;

    move-object/from16 v48, v1

    const-string v1, "GOST3411WITHECGOST3410-2012-512"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "GOST3411WITHGOST3410-2012-256"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "GOST3411WITHGOST3410-2012-512"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "GOST3411-2012-256WITHGOST3410-2012-256"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "GOST3411-2012-512WITHGOST3410-2012-512"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "SHA1WITHCVC-ECDSA"

    move-object/from16 v49, v9

    sget-object v9, LAh/h;->s:Loh/x;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "SHA224WITHCVC-ECDSA"

    sget-object v9, LAh/h;->t:Loh/x;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "SHA256WITHCVC-ECDSA"

    sget-object v9, LAh/h;->u:Loh/x;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "SHA384WITHCVC-ECDSA"

    sget-object v9, LAh/h;->v:Loh/x;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "SHA512WITHCVC-ECDSA"

    sget-object v9, LAh/h;->w:Loh/x;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, Lqh/a;->v:Loh/x;

    const-string v9, "SHA3-512WITHSPHINCS256"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Lqh/a;->u:Loh/x;

    move-object/from16 v50, v1

    const-string v1, "SHA512WITHSPHINCS256"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "SHA1WITHPLAIN-ECDSA"

    move-object/from16 v51, v9

    sget-object v9, Lrh/a;->d:Loh/x;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "RIPEMD160WITHPLAIN-ECDSA"

    sget-object v9, Lrh/a;->i:Loh/x;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, Lrh/a;->e:Loh/x;

    const-string v9, "SHA224WITHPLAIN-ECDSA"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Lrh/a;->f:Loh/x;

    move-object/from16 v52, v8

    const-string v8, "SHA256WITHPLAIN-ECDSA"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, Lrh/a;->g:Loh/x;

    move-object/from16 v53, v9

    const-string v9, "SHA384WITHPLAIN-ECDSA"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Lrh/a;->h:Loh/x;

    move-object/from16 v54, v8

    const-string v8, "SHA512WITHPLAIN-ECDSA"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, Lrh/a;->j:Loh/x;

    move-object/from16 v55, v9

    const-string v9, "SHA3-224WITHPLAIN-ECDSA"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Lrh/a;->k:Loh/x;

    move-object/from16 v56, v8

    const-string v8, "SHA3-256WITHPLAIN-ECDSA"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, Lrh/a;->l:Loh/x;

    move-object/from16 v57, v9

    const-string v9, "SHA3-384WITHPLAIN-ECDSA"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Lrh/a;->m:Loh/x;

    move-object/from16 v58, v8

    const-string v8, "SHA3-512WITHPLAIN-ECDSA"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, LBh/a;->d:Loh/x;

    move-object/from16 v59, v9

    const-string v9, "ED25519"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, LBh/a;->e:Loh/x;

    move-object/from16 v60, v8

    const-string v8, "ED448"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, Luh/l;->B8:Loh/x;

    move-object/from16 v61, v9

    const-string v9, "SHAKE128WITHRSAPSS"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Luh/l;->C8:Loh/x;

    move-object/from16 v62, v1

    const-string v1, "SHAKE256WITHRSAPSS"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "SHAKE128WITHRSASSA-PSS"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v1, "SHAKE256WITHRSASSA-PSS"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, Luh/l;->D8:Loh/x;

    move-object/from16 v63, v9

    const-string v9, "SHAKE128WITHECDSA"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Luh/l;->E8:Loh/x;

    move-object/from16 v64, v1

    const-string v1, "SHAKE256WITHECDSA"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, LFh/b;->h0:Loh/x;

    move-object/from16 v65, v9

    const-string v9, "SHA256WITHSM2"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, LFh/b;->f0:Loh/x;

    move-object/from16 v66, v8

    const-string v8, "SM3WITHSM2"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, Lqh/a;->x:Loh/x;

    move-object/from16 v67, v9

    const-string v9, "SHA256WITHXMSS"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Lqh/a;->y:Loh/x;

    move-object/from16 v68, v1

    const-string v1, "SHA512WITHXMSS"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, Lqh/a;->F:Loh/x;

    move-object/from16 v69, v10

    const-string v10, "SHAKE128WITHXMSS"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v10, Lqh/a;->G:Loh/x;

    move-object/from16 v70, v2

    const-string v2, "SHAKE256WITHXMSS"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v2, "SHAKE128(512)WITHXMSS"

    move-object/from16 v71, v11

    sget-object v11, Lqh/a;->z:Loh/x;

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v2, "SHAKE256(1024)WITHXMSS"

    sget-object v11, Lqh/a;->A:Loh/x;

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v2, Lqh/a;->I:Loh/x;

    const-string v11, "SHA256WITHXMSSMT"

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v11, Lqh/a;->J:Loh/x;

    move-object/from16 v72, v12

    const-string v12, "SHA512WITHXMSSMT"

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, Lqh/a;->Q:Loh/x;

    move-object/from16 v73, v13

    const-string v13, "SHAKE128WITHXMSSMT"

    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v13, Lqh/a;->R:Loh/x;

    move-object/from16 v74, v14

    const-string v14, "SHAKE256WITHXMSSMT"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "SHA256WITHXMSS-SHA256"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "SHA512WITHXMSS-SHA512"

    invoke-interface {v0, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "SHAKE128WITHXMSS-SHAKE128"

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "SHAKE256WITHXMSS-SHAKE256"

    invoke-interface {v0, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "SHA256WITHXMSSMT-SHA256"

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "SHA512WITHXMSSMT-SHA512"

    invoke-interface {v0, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "SHAKE128WITHXMSSMT-SHAKE128"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "SHAKE256WITHXMSSMT-SHAKE256"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "SHAKE128(512)WITHXMSSMT-SHAKE128"

    move-object/from16 v75, v13

    sget-object v13, Lqh/a;->K:Loh/x;

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v13, "SHAKE256(1024)WITHXMSSMT-SHAKE256"

    sget-object v14, Lqh/a;->L:Loh/x;

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v13, "LMS"

    sget-object v14, LXh/t;->Q2:Loh/x;

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v13, LJh/a;->a:Loh/x;

    const-string v14, "XMSS"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, Lqh/a;->B:Loh/x;

    move-object/from16 v76, v13

    const-string v13, "XMSS-SHA256"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v13, Lqh/a;->C:Loh/x;

    move-object/from16 v77, v14

    const-string v14, "XMSS-SHA512"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, Lqh/a;->D:Loh/x;

    move-object/from16 v78, v13

    const-string v13, "XMSS-SHAKE128"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v13, Lqh/a;->E:Loh/x;

    move-object/from16 v79, v14

    const-string v14, "XMSS-SHAKE256"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, LJh/a;->b:Loh/x;

    move-object/from16 v80, v13

    const-string v13, "XMSSMT"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v13, Lqh/a;->M:Loh/x;

    move-object/from16 v81, v14

    const-string v14, "XMSSMT-SHA256"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, Lqh/a;->N:Loh/x;

    move-object/from16 v82, v13

    const-string v13, "XMSSMT-SHA512"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v13, Lqh/a;->O:Loh/x;

    move-object/from16 v83, v14

    const-string v14, "XMSSMT-SHAKE128"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, Lqh/a;->P:Loh/x;

    move-object/from16 v84, v13

    const-string v13, "XMSSMT-SHAKE256"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v13, Lqh/a;->a0:Loh/x;

    move-object/from16 v85, v14

    const-string v14, "SPHINCS+"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v14, "SPHINCSPLUS"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    move-object/from16 v86, v12

    sget-object v12, Lqh/a;->N0:Loh/x;

    move-object/from16 v87, v11

    const-string v11, "SPHINCS+-SHA2-128S"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v11, Lqh/a;->M0:Loh/x;

    move-object/from16 v88, v2

    const-string v2, "SPHINCS+-SHA2-128F"

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v2, Lqh/a;->P0:Loh/x;

    move-object/from16 v89, v10

    const-string v10, "SPHINCS+-SHA2-192S"

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v10, Lqh/a;->O0:Loh/x;

    move-object/from16 v90, v1

    const-string v1, "SPHINCS+-SHA2-192F"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, Lqh/a;->R0:Loh/x;

    move-object/from16 v91, v9

    const-string v9, "SPHINCS+-SHA2-256S"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Lqh/a;->Q0:Loh/x;

    move-object/from16 v92, v8

    const-string v8, "SPHINCS+-SHA2-256F"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, Lqh/a;->T0:Loh/x;

    move-object/from16 v93, v9

    const-string v9, "SPHINCS+-SHAKE-128S"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Lqh/a;->S0:Loh/x;

    move-object/from16 v94, v1

    const-string v1, "SPHINCS+-SHAKE-128F"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, Lqh/a;->V0:Loh/x;

    move-object/from16 v95, v10

    const-string v10, "SPHINCS+-SHAKE-192S"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v10, Lqh/a;->U0:Loh/x;

    move-object/from16 v96, v1

    const-string v1, "SPHINCS+-SHAKE-192F"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, Lqh/a;->X0:Loh/x;

    move-object/from16 v97, v10

    const-string v10, "SPHINCS+-SHAKE-256S"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v10, Lqh/a;->W0:Loh/x;

    move-object/from16 v98, v1

    const-string v1, "SPHINCS+-SHAKE-256F"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v1, Lqh/a;->f0:Loh/x;

    move-object/from16 v99, v10

    const-string v10, "SPHINCS+-HARAKA-128S-ROBUST"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v10, Lqh/a;->g0:Loh/x;

    move-object/from16 v100, v2

    const-string v2, "SPHINCS+-HARAKA-128F-ROBUST"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v2, Lqh/a;->l0:Loh/x;

    move-object/from16 v101, v9

    const-string v9, "SPHINCS+-HARAKA-192S-ROBUST"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v9, Lqh/a;->m0:Loh/x;

    move-object/from16 v102, v8

    const-string v8, "SPHINCS+-HARAKA-192F-ROBUST"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v8, Lqh/a;->r0:Loh/x;

    move-object/from16 v103, v11

    const-string v11, "SPHINCS+-HARAKA-256S-ROBUST"

    invoke-interface {v0, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v11, Lqh/a;->s0:Loh/x;

    move-object/from16 v104, v12

    const-string v12, "SPHINCS+-HARAKA-256F-ROBUST"

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v12, "SPHINCS+-HARAKA-128S-SIMPLE"

    move-object/from16 v105, v11

    sget-object v11, Lqh/a;->x0:Loh/x;

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v11, "SPHINCS+-HARAKA-128F-SIMPLE"

    sget-object v12, Lqh/a;->y0:Loh/x;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v11, "SPHINCS+-HARAKA-192S-SIMPLE"

    sget-object v12, Lqh/a;->D0:Loh/x;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v11, "SPHINCS+-HARAKA-192F-SIMPLE"

    sget-object v12, Lqh/a;->E0:Loh/x;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v11, "SPHINCS+-HARAKA-256S-SIMPLE"

    sget-object v12, Lqh/a;->J0:Loh/x;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    const-string v11, "SPHINCS+-HARAKA-256F-SIMPLE"

    sget-object v12, Lqh/a;->K0:Loh/x;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v11, Lqh/a;->u1:Loh/x;

    const-string v12, "DILITHIUM2"

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, Lqh/a;->v1:Loh/x;

    const-string v14, "DILITHIUM3"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, Lqh/a;->w1:Loh/x;

    move-object/from16 v106, v12

    const-string v12, "DILITHIUM5"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, Lqh/a;->x1:Loh/x;

    move-object/from16 v107, v14

    const-string v14, "DILITHIUM2-AES"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, Lqh/a;->y1:Loh/x;

    move-object/from16 v108, v12

    const-string v12, "DILITHIUM3-AES"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, Lqh/a;->z1:Loh/x;

    move-object/from16 v109, v14

    const-string v14, "DILITHIUM5-AES"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, Lqh/a;->r1:Loh/x;

    move-object/from16 v110, v12

    const-string v12, "FALCON-512"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, Lqh/a;->s1:Loh/x;

    move-object/from16 v111, v14

    const-string v14, "FALCON-1024"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, Lqh/a;->m1:Loh/x;

    move-object/from16 v112, v12

    const-string v12, "PICNIC"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, Lqh/a;->n1:Loh/x;

    move-object/from16 v113, v14

    const-string v14, "SHA512WITHPICNIC"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, Lqh/a;->p1:Loh/x;

    move-object/from16 v114, v12

    const-string v12, "SHA3-512WITHPICNIC"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, Lqh/a;->o1:Loh/x;

    move-object/from16 v115, v14

    const-string v14, "SHAKE256WITHPICNIC"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, LQh/c;->T:Loh/x;

    move-object/from16 v116, v12

    const-string v12, "MLDSA44-RSA2048-PSS-SHA256"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, LQh/c;->U:Loh/x;

    move-object/from16 v117, v14

    const-string v14, "MLDSA44-RSA2048-PKCS15-SHA256"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, LQh/c;->W:Loh/x;

    move-object/from16 v118, v12

    const-string v12, "MLDSA44-ECDSA-P256-SHA256"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, LQh/c;->X:Loh/x;

    move-object/from16 v119, v14

    const-string v14, "MLDSA44-ECDSA-BRAINPOOLP256R1-SHA256"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, LQh/c;->V:Loh/x;

    move-object/from16 v120, v12

    const-string v12, "MLDSA44-ED25519-SHA512"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, LQh/c;->Y:Loh/x;

    move-object/from16 v121, v14

    const-string v14, "MLDSA65-RSA3072-PSS-SHA512"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, LQh/c;->Z:Loh/x;

    move-object/from16 v122, v12

    const-string v12, "MLDSA65-RSA3072-PKCS15-SHA512"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, LQh/c;->b0:Loh/x;

    move-object/from16 v123, v14

    const-string v14, "MLDSA65-ECDSA-BRAINPOOLP256R1-SHA512"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, LQh/c;->a0:Loh/x;

    move-object/from16 v124, v12

    const-string v12, "MLDSA65-ECDSA-P256-SHA512"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, LQh/c;->c0:Loh/x;

    move-object/from16 v125, v14

    const-string v14, "MLDSA65-ED25519-SHA512"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, LQh/c;->d0:Loh/x;

    move-object/from16 v126, v12

    const-string v12, "MLDSA87-ECDSA-P384-SHA512"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, LQh/c;->e0:Loh/x;

    move-object/from16 v127, v14

    const-string v14, "MLDSA87-ECDSA-BRAINPOOLP384R1-SHA512"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, LQh/c;->f0:Loh/x;

    move-object/from16 v128, v12

    const-string v12, "MLDSA87-ED448-SHA512"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, LQh/c;->g0:Loh/x;

    move-object/from16 v129, v14

    const-string v14, "FALCON512-ECDSA-P256-SHA256"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v14, LQh/c;->h0:Loh/x;

    move-object/from16 v130, v12

    const-string v12, "FALCON512-ECDSA-BRAINPOOLP256R1-SHA256"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->a:Ljava/util/Map;

    sget-object v12, LQh/c;->i0:Loh/x;

    move-object/from16 v131, v14

    const-string v14, "FALCON512-ED25519-SHA512"

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    sget-object v3, LWh/b;->j:Loh/x;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v3, v74

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v4, v73

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v5, v72

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v6, v71

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v7, v70

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v14, v69

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v48

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v45

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v44

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v39

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v38

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v37

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v62

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v53

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v54

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v55

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v56

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v57

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v58

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v59

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v46

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v47

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v52

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v49

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v51

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v15, v50

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    sget-object v13, Lqh/a;->b0:Loh/x;

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    sget-object v15, Lqh/a;->c0:Loh/x;

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v50, v15

    sget-object v15, Lqh/a;->d0:Loh/x;

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v51, v15

    sget-object v15, Lqh/a;->e0:Loh/x;

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    sget-object v1, Lqh/a;->h0:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    sget-object v10, Lqh/a;->i0:Loh/x;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v53, v10

    sget-object v10, Lqh/a;->j0:Loh/x;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v54, v10

    sget-object v10, Lqh/a;->k0:Loh/x;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    sget-object v2, Lqh/a;->n0:Loh/x;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    sget-object v9, Lqh/a;->o0:Loh/x;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v55, v9

    sget-object v9, Lqh/a;->p0:Loh/x;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v56, v9

    sget-object v9, Lqh/a;->q0:Loh/x;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v105

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v104

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v103

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v102

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v101

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v100

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v95

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v96

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v97

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v94

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v93

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v98

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v99

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    sget-object v8, Lqh/a;->t1:Loh/x;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v106

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v107

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v108

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v109

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v110

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    sget-object v8, Lqh/a;->q1:Loh/x;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v111

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v112

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v113

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v114

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v115

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v116

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v92

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v91

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v90

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v89

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v88

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v87

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v86

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v75

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v77

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v78

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v79

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v80

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v82

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v83

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v84

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v85

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v76

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v81

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    sget-object v8, Lqh/a;->Y:Loh/x;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    sget-object v8, Lqh/a;->Z:Loh/x;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v8, v68

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v67

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v60

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v61

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v66

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v63

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v64

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v65

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v117

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v118

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v119

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v120

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v121

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v122

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v123

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v124

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v125

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v126

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v127

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v128

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v129

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v130

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    move-object/from16 v11, v131

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->b:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v11, v36

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v12, v35

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v8, v34

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v34, v9

    move-object/from16 v9, v33

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v33, v2

    move-object/from16 v2, v32

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v32, v10

    move-object/from16 v10, v31

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v31, v1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v30, v15

    move-object/from16 v15, v29

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v29, v13

    move-object/from16 v13, v28

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v13, v27

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v13, v43

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v35, v15

    move-object/from16 v15, v42

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v11, v41

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LQk/m;->d:Ljava/util/Set;

    move-object/from16 v11, v40

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lhi/b;

    sget-object v11, LWh/b;->i:Loh/x;

    sget-object v15, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v11, v15}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    move-object/from16 v43, v11

    sget-object v11, LQk/m;->c:Ljava/util/Map;

    move-object/from16 v57, v13

    const/16 v13, 0x14

    invoke-static {v0, v13}, LQk/m;->b(Lhi/b;I)LXh/B;

    move-result-object v0

    move-object/from16 v13, v26

    invoke-interface {v11, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhi/b;

    sget-object v11, LSh/d;->f:Loh/x;

    invoke-direct {v0, v11, v15}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sget-object v13, LQk/m;->c:Ljava/util/Map;

    const/16 v14, 0x1c

    invoke-static {v0, v14}, LQk/m;->b(Lhi/b;I)LXh/B;

    move-result-object v0

    move-object/from16 v14, v25

    invoke-interface {v13, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhi/b;

    sget-object v13, LSh/d;->c:Loh/x;

    invoke-direct {v0, v13, v15}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sget-object v14, LQk/m;->c:Ljava/util/Map;

    const/16 v7, 0x20

    invoke-static {v0, v7}, LQk/m;->b(Lhi/b;I)LXh/B;

    move-result-object v0

    move-object/from16 v7, v24

    invoke-interface {v14, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhi/b;

    sget-object v7, LSh/d;->d:Loh/x;

    invoke-direct {v0, v7, v15}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sget-object v14, LQk/m;->c:Ljava/util/Map;

    const/16 v6, 0x30

    invoke-static {v0, v6}, LQk/m;->b(Lhi/b;I)LXh/B;

    move-result-object v0

    move-object/from16 v6, v23

    invoke-interface {v14, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhi/b;

    sget-object v6, LSh/d;->e:Loh/x;

    invoke-direct {v0, v6, v15}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sget-object v14, LQk/m;->c:Ljava/util/Map;

    const/16 v5, 0x40

    invoke-static {v0, v5}, LQk/m;->b(Lhi/b;I)LXh/B;

    move-result-object v0

    move-object/from16 v5, v22

    invoke-interface {v14, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhi/b;

    sget-object v5, LSh/d;->i:Loh/x;

    invoke-direct {v0, v5, v15}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sget-object v14, LQk/m;->c:Ljava/util/Map;

    move-object/from16 v22, v5

    const/16 v5, 0x1c

    invoke-static {v0, v5}, LQk/m;->b(Lhi/b;I)LXh/B;

    move-result-object v0

    move-object/from16 v5, v21

    invoke-interface {v14, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhi/b;

    sget-object v5, LSh/d;->j:Loh/x;

    invoke-direct {v0, v5, v15}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sget-object v14, LQk/m;->c:Ljava/util/Map;

    move-object/from16 v21, v5

    const/16 v5, 0x20

    invoke-static {v0, v5}, LQk/m;->b(Lhi/b;I)LXh/B;

    move-result-object v0

    move-object/from16 v5, v18

    invoke-interface {v14, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhi/b;

    sget-object v5, LSh/d;->k:Loh/x;

    invoke-direct {v0, v5, v15}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sget-object v14, LQk/m;->c:Ljava/util/Map;

    move-object/from16 v18, v5

    const/16 v5, 0x30

    invoke-static {v0, v5}, LQk/m;->b(Lhi/b;I)LXh/B;

    move-result-object v0

    move-object/from16 v5, v19

    invoke-interface {v14, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhi/b;

    sget-object v5, LSh/d;->l:Loh/x;

    invoke-direct {v0, v5, v15}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sget-object v14, LQk/m;->c:Ljava/util/Map;

    const/16 v15, 0x40

    invoke-static {v0, v15}, LQk/m;->b(Lhi/b;I)LXh/B;

    move-result-object v0

    move-object/from16 v15, v20

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    invoke-interface {v0, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, LSh/d;->g:Loh/x;

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, LSh/d;->h:Loh/x;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    invoke-interface {v0, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v72

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v71

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v22

    move-object/from16 v1, v70

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v3, v21

    move-object/from16 v1, v69

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v4, v18

    move-object/from16 v1, v48

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v45

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v39

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v37

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v57

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v42

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v41

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v1, LXh/t;->s1:Loh/x;

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v1, LXh/t;->J0:Loh/x;

    sget-object v2, LXh/t;->t1:Loh/x;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v1, LXh/t;->u1:Loh/x;

    move-object/from16 v2, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v36

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v1, Lbi/b;->c:Loh/x;

    move-object/from16 v2, v35

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v1, Lbi/b;->b:Loh/x;

    move-object/from16 v2, v28

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v1, Lbi/b;->d:Loh/x;

    move-object/from16 v2, v27

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v1, Lyh/a;->b:Loh/x;

    move-object/from16 v2, v46

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v47

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v1, LYh/a;->c:Loh/x;

    move-object/from16 v2, v52

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v1, LYh/a;->d:Loh/x;

    move-object/from16 v2, v49

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v1, v50

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v1, LSh/d;->n:Loh/x;

    move-object/from16 v2, v51

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v30

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v31

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v53

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v54

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v32

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v33

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v55

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v56

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v34

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->t0:Loh/x;

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->u0:Loh/x;

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->v0:Loh/x;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->w0:Loh/x;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->z0:Loh/x;

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->A0:Loh/x;

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->B0:Loh/x;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->C0:Loh/x;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->F0:Loh/x;

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->G0:Loh/x;

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->H0:Loh/x;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, Lqh/a;->I0:Loh/x;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v104

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v103

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v102

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v101

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v100

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v95

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v96

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v97

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v94

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v93

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v98

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v99

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v68

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, LFh/b;->d0:Loh/x;

    move-object/from16 v3, v67

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    sget-object v2, LSh/d;->m:Loh/x;

    move-object/from16 v3, v66

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v3, v63

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v3, v64

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/m;->e:Ljava/util/Map;

    move-object/from16 v2, v65

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lhi/b;I)LXh/B;
    .locals 5

    new-instance v0, LXh/B;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->O0:Loh/x;

    invoke-direct {v1, v2, p0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v2, Loh/s;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Loh/s;-><init>(J)V

    new-instance p1, Loh/s;

    const-wide/16 v3, 0x1

    invoke-direct {p1, v3, v4}, Loh/s;-><init>(J)V

    invoke-direct {v0, p0, v1, v2, p1}, LXh/B;-><init>(Lhi/b;Lhi/b;Loh/s;Loh/s;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lhi/b;
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LQk/m;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/x;

    if-eqz v1, :cond_2

    sget-object p1, LQk/m;->b:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lhi/b;

    invoke-direct {p1, v1}, Lhi/b;-><init>(Loh/x;)V

    goto :goto_0

    :cond_0
    sget-object p1, LQk/m;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lhi/b;

    sget-object v2, LQk/m;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/g;

    invoke-direct {p1, v1, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lhi/b;

    sget-object v0, Loh/A0;->c:Loh/A0;

    invoke-direct {p1, v1, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    :goto_0
    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature type requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
