.class public Ldk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Loh/x;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lhi/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldk/h;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldk/h;->b:Ljava/util/Map;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v1, LXh/t;->s1:Loh/x;

    const-string v2, "MD2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v1, LXh/t;->t1:Loh/x;

    const-string v2, "MD4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v1, LXh/t;->u1:Loh/x;

    const-string v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v1, LBj/b;->i:Loh/x;

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v3, LSh/d;->f:Loh/x;

    const-string v4, "SHA-224"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v5, LSh/d;->c:Loh/x;

    const-string v6, "SHA-256"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v7, LSh/d;->d:Loh/x;

    const-string v8, "SHA-384"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v9, LSh/d;->e:Loh/x;

    const-string v10, "SHA-512"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v11, LSh/d;->g:Loh/x;

    const-string v12, "SHA-512(224)"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v11, LSh/d;->h:Loh/x;

    const-string v12, "SHA-512(256)"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v11, Lbi/b;->c:Loh/x;

    const-string v12, "RIPEMD-128"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v11, Lbi/b;->b:Loh/x;

    const-string v13, "RIPEMD-160"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v11, Lbi/b;->d:Loh/x;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v11, Lvj/a;->d:Loh/x;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v11, Lvj/a;->c:Loh/x;

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v11, Lyh/a;->b:Loh/x;

    const-string v12, "GOST3411"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v11, Lrj/a;->g:Loh/x;

    const-string v12, "Tiger"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v11, Lvj/a;->e:Loh/x;

    const-string v12, "Whirlpool"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v11, LSh/d;->i:Loh/x;

    const-string v12, "SHA3-224"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v13, LSh/d;->j:Loh/x;

    const-string v14, "SHA3-256"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v15, LSh/d;->k:Loh/x;

    move-object/from16 v16, v14

    const-string v14, "SHA3-384"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    move-object/from16 v17, v14

    sget-object v14, LSh/d;->l:Loh/x;

    move-object/from16 v18, v15

    const-string v15, "SHA3-512"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    move-object/from16 v19, v15

    sget-object v15, LSh/d;->m:Loh/x;

    move-object/from16 v20, v14

    const-string v14, "SHAKE128"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v14, LSh/d;->n:Loh/x;

    const-string v15, "SHAKE256"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v14, LFh/b;->d0:Loh/x;

    const-string v15, "SM3"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

    sget-object v14, Lyj/c;->N:Loh/x;

    const-string v15, "BLAKE3-256"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    move-object/from16 v21, v15

    new-instance v15, Lhi/b;

    move-object/from16 v22, v14

    sget-object v14, Loh/A0;->c:Loh/A0;

    invoke-direct {v15, v1, v14}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v3}, Lhi/b;-><init>(Loh/x;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v3}, Lhi/b;-><init>(Loh/x;)V

    const-string v2, "SHA224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v5}, Lhi/b;-><init>(Loh/x;)V

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v5}, Lhi/b;-><init>(Loh/x;)V

    const-string v2, "SHA256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v7}, Lhi/b;-><init>(Loh/x;)V

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v7}, Lhi/b;-><init>(Loh/x;)V

    const-string v2, "SHA384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v9}, Lhi/b;-><init>(Loh/x;)V

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v9}, Lhi/b;-><init>(Loh/x;)V

    const-string v2, "SHA512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v11}, Lhi/b;-><init>(Loh/x;)V

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v13}, Lhi/b;-><init>(Loh/x;)V

    move-object/from16 v2, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    move-object/from16 v2, v19

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    new-instance v1, Lhi/b;

    move-object/from16 v2, v22

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    move-object/from16 v2, v21

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lhi/b;
    .locals 3

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldk/h;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhi/b;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Loh/x;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ldk/h;->a:Ljava/util/Map;

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
