.class public Lorg/bouncycastle/tsp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/List;

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tsp/c;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/tsp/c;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/tsp/c;->c:Ljava/util/Map;

    sget-object v2, LXh/t;->u1:Loh/x;

    invoke-virtual {v2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LWh/b;->i:Loh/x;

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x14

    invoke-static {v6}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, LSh/d;->f:Loh/x;

    invoke-virtual {v5}, Loh/x;->J()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1c

    invoke-static {v8}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, LSh/d;->c:Loh/x;

    invoke-virtual {v7}, Loh/x;->J()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v10}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, LSh/d;->d:Loh/x;

    invoke-virtual {v9}, Loh/x;->J()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x30

    invoke-static {v12}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, LSh/d;->e:Loh/x;

    invoke-virtual {v11}, Loh/x;->J()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x40

    invoke-static {v14}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, LSh/d;->i:Loh/x;

    invoke-virtual {v13}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    invoke-static {v8}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, LSh/d;->j:Loh/x;

    invoke-virtual {v8}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    invoke-static {v10}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, LSh/d;->k:Loh/x;

    invoke-virtual {v6}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, LSh/d;->l:Loh/x;

    invoke-virtual {v12}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lbi/b;->c:Loh/x;

    invoke-virtual {v10}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lbi/b;->b:Loh/x;

    invoke-virtual {v4}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x14

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lbi/b;->d:Loh/x;

    invoke-virtual {v14}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v14

    const/16 v16, 0x20

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lyh/a;->b:Loh/x;

    invoke-virtual {v14}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v14

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, LYh/a;->c:Loh/x;

    invoke-virtual {v14}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v14

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, LYh/a;->d:Loh/x;

    invoke-virtual {v14}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v14

    const/16 v18, 0x40

    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, LFh/b;->d0:Loh/x;

    invoke-virtual {v14}, Loh/x;->J()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v14

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MD5"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SHA1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SHA224"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SHA256"

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v7, "SHA384"

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v9, "SHA512"

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v11, "SHA3-224"

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v8, "SHA3-256"

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SHA3-384"

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SHA3-512"

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LXh/t;->L0:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LXh/t;->U0:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LXh/t;->R0:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LXh/t;->S0:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LXh/t;->T0:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RIPEMD128"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RIPEMD160"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RIPEMD256"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GOST3411"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v20 .. v20}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GOST3411-2012-256"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GOST3411-2012-512"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v18 .. v18}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SM3"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lhi/D;Loh/x;ZLoh/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lhi/D;->c(Loh/x;ZLoh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/tsp/TSPIOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot encode extension: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/tsp/TSPIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/tsp/c;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/tsp/TSPException;

    const-string v0, "digest algorithm cannot be found."

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lhi/C;)Ljava/util/List;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/tsp/c;->a:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lhi/C;->y()[Loh/x;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/bouncycastle/cms/N0;LQk/q;)Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPValidationException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->q()Luh/b;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, LXh/t;->p3:Loh/x;

    invoke-virtual {v1, v2}, Luh/b;->e(Loh/x;)Loh/h;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Loh/h;->i()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Loh/h;->g(I)Loh/g;

    move-result-object v4

    check-cast v4, Luh/a;

    invoke-virtual {v4}, Luh/a;->v()Loh/G;

    move-result-object v4

    move v5, v2

    :goto_1
    invoke-virtual {v4}, Loh/G;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    :try_start_0
    invoke-virtual {v4, v5}, Loh/G;->H(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/tsp/h;

    invoke-direct {v7, v6}, Lorg/bouncycastle/tsp/h;-><init>(Luh/o;)V

    invoke-virtual {v7}, Lorg/bouncycastle/tsp/h;->i()Lorg/bouncycastle/tsp/j;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/tsp/j;->f()Lhi/b;

    move-result-object v8

    invoke-interface {p1, v8}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object v8

    invoke-interface {v8}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {p0}, Lorg/bouncycastle/cms/N0;->m()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    invoke-interface {v8}, LQk/p;->b()[B

    move-result-object v8

    invoke-virtual {v6}, Lorg/bouncycastle/tsp/j;->h()[B

    move-result-object v6

    invoke-static {v8, v6}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string p1, "Incorrect digest in message imprint"

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string p1, "Timestamp could not be parsed"

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string p1, "Unknown hash algorithm specified in timestamp"

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static e(Lli/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPValidationException;
        }
    .end annotation

    invoke-virtual {p0}, Lli/h;->x()Lhi/q;

    move-result-object v0

    invoke-virtual {v0}, Lhi/q;->G()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "Certificate must have an ExtendedKeyUsage extension."

    if-ne v0, v1, :cond_3

    sget-object v0, Lhi/B;->y:Loh/x;

    invoke-virtual {p0, v0}, Lli/h;->b(Loh/x;)Lhi/B;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lhi/B;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lhi/B;->A()Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/A;->v(Ljava/lang/Object;)Lhi/A;

    move-result-object p0

    sget-object v0, Lhi/M;->l:Lhi/M;

    invoke-virtual {p0, v0}, Lhi/A;->y(Lhi/M;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhi/A;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "ExtendedKeyUsage not solely time stamping."

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "Certificate must have an ExtendedKeyUsage extension marked as critical."

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/tsp/TSPValidationException;

    invoke-direct {p0, v2}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
