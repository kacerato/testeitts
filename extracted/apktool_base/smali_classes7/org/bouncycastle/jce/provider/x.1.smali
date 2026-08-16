.class public Lorg/bouncycastle/jce/provider/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x3a98

.field public static final b:I = 0x8000

.field public static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/URI;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/Map<",
            "LVh/b;",
            "LVh/g;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/x;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LVh/b;LHj/r;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/List;Ldk/f;)LVh/g;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LVh/b;",
            "LHj/r;",
            "Ljava/net/URI;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/Extension;",
            ">;",
            "Ldk/f;",
            ")",
            "LVh/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "configuration error: "

    sget-object v3, Lorg/bouncycastle/jce/provider/x;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LVh/g;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, LVh/g;->x()LVh/k;

    move-result-object v7

    invoke-virtual {v7}, LVh/k;->x()Loh/y;

    move-result-object v7

    invoke-static {v7}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v7

    invoke-virtual {v7}, Loh/y;->H()[B

    move-result-object v7

    invoke-static {v7}, LVh/a;->v(Ljava/lang/Object;)LVh/a;

    move-result-object v7

    invoke-virtual {v7}, LVh/a;->z()LVh/l;

    move-result-object v7

    invoke-static {v7}, LVh/l;->u(Ljava/lang/Object;)LVh/l;

    move-result-object v7

    invoke-virtual {v7}, LVh/l;->A()Loh/E;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7}, Loh/E;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    invoke-virtual {v7, v8}, Loh/E;->I(I)Loh/g;

    move-result-object v9

    invoke-static {v9}, LVh/p;->w(Ljava/lang/Object;)LVh/p;

    move-result-object v9

    invoke-virtual {v9}, LVh/p;->u()LVh/b;

    move-result-object v10

    invoke-virtual {v0, v10}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, LVh/p;->y()Loh/n;

    move-result-object v9

    if-eqz v9, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, LHj/r;->e()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9}, Loh/n;->I()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v6, v4

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    return-object v6

    :cond_3
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    new-instance v7, Loh/h;

    invoke-direct {v7}, Loh/h;-><init>()V

    new-instance v8, LVh/i;

    invoke-direct {v8, v0, v4}, LVh/i;-><init>(LVh/b;Lhi/C;)V

    invoke-virtual {v7, v8}, Loh/h;->a(Loh/g;)V

    new-instance v8, Loh/h;

    invoke-direct {v8}, Loh/h;-><init>()V

    move-object v10, v4

    const/4 v9, 0x0

    :goto_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    if-eq v9, v11, :cond_5

    move-object/from16 v11, p4

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/Extension;

    invoke-interface {v12}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v13

    sget-object v14, LVh/e;->c:Loh/x;

    invoke-virtual {v14}, Loh/x;->J()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v10, v13

    :cond_4
    new-instance v14, Lhi/B;

    new-instance v15, Loh/x;

    invoke-interface {v12}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/security/cert/Extension;->isCritical()Z

    move-result v5

    invoke-direct {v14, v15, v5, v13}, Lhi/B;-><init>(Loh/x;Z[B)V

    invoke-virtual {v8, v14}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Loh/h;->i()I

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, LVh/q;

    new-instance v9, Loh/G0;

    invoke-direct {v9, v7}, Loh/G0;-><init>(Loh/h;)V

    new-instance v7, Loh/G0;

    invoke-direct {v7, v8}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v7}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object v7

    invoke-direct {v5, v4, v9, v7}, LVh/q;-><init>(Lhi/E;Loh/E;Lhi/C;)V

    goto :goto_4

    :cond_6
    new-instance v5, LVh/q;

    new-instance v8, Loh/G0;

    invoke-direct {v8, v7}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {v5, v4, v8, v4}, LVh/q;-><init>(Lhi/E;Loh/E;Lhi/C;)V

    :goto_4
    :try_start_2
    new-instance v7, LVh/f;

    invoke-direct {v7, v5, v4}, LVh/f;-><init>(LVh/q;LVh/o;)V

    invoke-virtual {v7}, Loh/v;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    const/16 v7, 0x3a98

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setDoInput(Z)V

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v7, "Content-type"

    const-string v8, "application/ocsp-request"

    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-length"

    array-length v8, v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    if-gez v6, :cond_7

    const v6, 0x8000

    :cond_7
    invoke-static {v5, v6}, Lfm/d;->f(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-static {v5}, LVh/g;->u(Ljava/lang/Object;)LVh/g;

    move-result-object v5

    invoke-virtual {v5}, LVh/g;->y()LVh/h;

    move-result-object v6

    invoke-virtual {v6}, LVh/h;->v()I

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v5}, LVh/g;->x()LVh/k;

    move-result-object v6

    invoke-static {v6}, LVh/k;->u(Ljava/lang/Object;)LVh/k;

    move-result-object v6

    invoke-virtual {v6}, LVh/k;->y()Loh/x;

    move-result-object v7

    sget-object v8, LVh/e;->b:Loh/x;

    invoke-virtual {v7, v8}, Loh/B;->A(Loh/B;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, LVh/k;->x()Loh/y;

    move-result-object v6

    invoke-virtual {v6}, Loh/y;->H()[B

    move-result-object v6

    invoke-static {v6}, LVh/a;->v(Ljava/lang/Object;)LVh/a;

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    :try_start_3
    invoke-static {v6, v7, v10, v8, v9}, Lorg/bouncycastle/jce/provider/L;->p(LVh/a;LHj/r;[BLjava/security/cert/X509Certificate;Ldk/f;)Z

    move-result v6

    move/from16 v16, v6

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_7

    :cond_8
    move-object/from16 v7, p1

    const/16 v16, 0x0

    :goto_5
    if-eqz v16, :cond_b

    sget-object v4, Lorg/bouncycastle/jce/provider/x;->c:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    :cond_9
    if-eqz v3, :cond_a

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jce/provider/x;->c:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    return-object v5

    :cond_b
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "OCSP response failed to validate"

    invoke-virtual/range {p1 .. p1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, LHj/r;->b()I

    move-result v5

    invoke-direct {v0, v1, v4, v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_c
    move-object/from16 v7, p1

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OCSP responder failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, LVh/g;->y()LVh/h;

    move-result-object v3

    invoke-virtual {v3}, LVh/h;->x()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, LHj/r;->b()I

    move-result v5

    invoke-direct {v0, v1, v4, v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_7
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, LHj/r;->b()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :catch_3
    move-exception v0

    move-object/from16 v7, p1

    move-object v1, v0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, LHj/r;->b()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
.end method
