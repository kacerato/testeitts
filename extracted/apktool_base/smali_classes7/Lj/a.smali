.class public abstract LLj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLj/a$a;
    }
.end annotation


# static fields
.field public static final a:[Loh/x;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "LLj/a$a;",
            "Loh/x;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Loh/x;",
            "LLj/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Loh/x;",
            "LLj/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 32

    sget-object v15, Lyj/c;->T:Loh/x;

    sget-object v14, Lyj/c;->U:Loh/x;

    sget-object v13, Lyj/c;->V:Loh/x;

    sget-object v12, Lyj/c;->W:Loh/x;

    sget-object v11, Lyj/c;->X:Loh/x;

    sget-object v10, Lyj/c;->Y:Loh/x;

    sget-object v9, Lyj/c;->Z:Loh/x;

    sget-object v8, Lyj/c;->a0:Loh/x;

    sget-object v7, Lyj/c;->b0:Loh/x;

    sget-object v6, Lyj/c;->c0:Loh/x;

    sget-object v5, Lyj/c;->d0:Loh/x;

    sget-object v4, Lyj/c;->e0:Loh/x;

    sget-object v3, Lyj/c;->f0:Loh/x;

    sget-object v2, Lyj/c;->g0:Loh/x;

    sget-object v1, Lyj/c;->h0:Loh/x;

    sget-object v0, Lyj/c;->i0:Loh/x;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v17, v1

    move-object v1, v14

    move-object/from16 v18, v2

    move-object v2, v13

    move-object/from16 v19, v3

    move-object v3, v12

    move-object/from16 v20, v4

    move-object v4, v11

    move-object/from16 v21, v5

    move-object v5, v10

    move-object/from16 v22, v6

    move-object v6, v9

    move-object/from16 v23, v7

    move-object v7, v8

    move-object/from16 v24, v8

    move-object/from16 v8, v23

    move-object/from16 v25, v9

    move-object/from16 v9, v22

    move-object/from16 v26, v10

    move-object/from16 v10, v21

    move-object/from16 v27, v11

    move-object/from16 v11, v20

    move-object/from16 v28, v12

    move-object/from16 v12, v19

    move-object/from16 v29, v13

    move-object/from16 v13, v18

    move-object/from16 v30, v14

    move-object/from16 v14, v17

    move-object/from16 v31, v15

    move-object/from16 v15, v16

    filled-new-array/range {v0 .. v15}, [Loh/x;

    move-result-object v0

    sput-object v0, LLj/a;->a:[Loh/x;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LLj/a;->b:Ljava/util/HashMap;

    sget-object v1, LLj/a$a;->MLDSA44_RSA2048_PSS_SHA256:LLj/a$a;

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA44_RSA2048_PKCS15_SHA256:LLj/a$a;

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA44_ECDSA_P256_SHA256:LLj/a$a;

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA44_ECDSA_brainpoolP256r1_SHA256:LLj/a$a;

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA44_Ed25519_SHA512:LLj/a$a;

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA65_RSA3072_PSS_SHA512:LLj/a$a;

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA65_RSA3072_PKCS15_SHA512:LLj/a$a;

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA65_ECDSA_P256_SHA512:LLj/a$a;

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA65_ECDSA_brainpoolP256r1_SHA512:LLj/a$a;

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA65_Ed25519_SHA512:LLj/a$a;

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA87_ECDSA_P384_SHA512:LLj/a$a;

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA87_ECDSA_brainpoolP384r1_SHA512:LLj/a$a;

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->MLDSA87_Ed448_SHA512:LLj/a$a;

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->Falcon512_ECDSA_P256_SHA256:LLj/a$a;

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->Falcon512_ECDSA_brainpoolP256r1_SHA256:LLj/a$a;

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LLj/a$a;->Falcon512_Ed25519_SHA512:LLj/a$a;

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, LLj/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, LLj/a;->c:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/x;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LLj/a$a;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LLj/a;->d:Ljava/util/HashMap;

    sget-object v0, LLj/a;->a:[Loh/x;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    sget-object v4, LLj/a;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LLj/a$a;

    sget-object v5, LLj/a;->d:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
