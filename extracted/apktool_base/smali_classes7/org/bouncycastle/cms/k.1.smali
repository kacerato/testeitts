.class public Lorg/bouncycastle/cms/k;
.super Lorg/bouncycastle/cms/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/n;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lorg/bouncycastle/cms/V;LQk/A;)Lorg/bouncycastle/cms/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/cms/k;->h(Lorg/bouncycastle/cms/V;LQk/A;LQk/p;)Lorg/bouncycastle/cms/j;

    move-result-object p1

    return-object p1
.end method

.method public h(Lorg/bouncycastle/cms/V;LQk/A;LQk/p;)Lorg/bouncycastle/cms/j;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-interface/range {p2 .. p2}, LQk/A;->getKey()LQk/r;

    move-result-object v3

    iget-object v4, v1, Lorg/bouncycastle/cms/C;->a:Ljava/util/List;

    invoke-static {v3, v4}, Lorg/bouncycastle/cms/X;->v(LQk/r;Ljava/util/List;)Loh/h;

    move-result-object v3

    const-string v4, "unable to perform MAC calculation: "

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lfm/f;

    invoke-interface/range {p3 .. p3}, LQk/p;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lfm/f;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-interface {v0, v6}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    new-instance v6, Loh/c0;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v6, v5}, Loh/c0;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/cms/V;->a()Loh/x;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, LQk/p;->a()Lhi/b;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, LQk/A;->a()Lhi/b;

    move-result-object v8

    invoke-interface/range {p3 .. p3}, LQk/p;->b()[B

    move-result-object v9

    invoke-virtual {v1, v5, v7, v8, v9}, Lorg/bouncycastle/cms/n;->d(Loh/x;Lhi/b;Lhi/b;[B)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iget-object v7, v1, Lorg/bouncycastle/cms/n;->C:Lorg/bouncycastle/cms/d;

    if-nez v7, :cond_0

    new-instance v7, Lorg/bouncycastle/cms/Y;

    invoke-direct {v7}, Lorg/bouncycastle/cms/Y;-><init>()V

    iput-object v7, v1, Lorg/bouncycastle/cms/n;->C:Lorg/bouncycastle/cms/d;

    :cond_0
    new-instance v14, Loh/I0;

    iget-object v7, v1, Lorg/bouncycastle/cms/n;->C:Lorg/bouncycastle/cms/d;

    invoke-interface {v7, v5}, Lorg/bouncycastle/cms/d;->a(Ljava/util/Map;)Luh/b;

    move-result-object v5

    invoke-virtual {v5}, Luh/b;->h()Loh/h;

    move-result-object v5

    invoke-direct {v14, v5}, Loh/I0;-><init>(Loh/h;)V

    :try_start_1
    invoke-interface/range {p2 .. p2}, LQk/A;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v7, "DER"

    invoke-virtual {v14, v7}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    new-instance v15, Loh/C0;

    invoke-interface/range {p2 .. p2}, LQk/A;->e()[B

    move-result-object v5

    invoke-direct {v15, v5}, Loh/C0;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, v1, Lorg/bouncycastle/cms/n;->D:Lorg/bouncycastle/cms/d;

    invoke-static {v4}, Lorg/bouncycastle/cms/X;->m(Lorg/bouncycastle/cms/d;)Loh/G;

    move-result-object v16

    new-instance v13, Luh/o;

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/cms/V;->a()Loh/x;

    move-result-object v0

    invoke-direct {v13, v0, v6}, Luh/o;-><init>(Loh/x;Loh/g;)V

    new-instance v0, Luh/f;

    iget-object v9, v1, Lorg/bouncycastle/cms/C;->c:Luh/I;

    new-instance v10, Loh/I0;

    invoke-direct {v10, v3}, Loh/I0;-><init>(Loh/h;)V

    invoke-interface/range {p2 .. p2}, LQk/A;->a()Lhi/b;

    move-result-object v11

    invoke-interface/range {p3 .. p3}, LQk/p;->a()Lhi/b;

    move-result-object v12

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Luh/f;-><init>(Luh/I;Loh/G;Lhi/b;Lhi/b;Luh/o;Loh/G;Loh/y;Loh/G;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to perform digest calculation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lfm/f;

    invoke-interface/range {p2 .. p2}, LQk/A;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lfm/f;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-interface {v0, v6}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    new-instance v6, Loh/c0;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v6, v5}, Loh/c0;-><init>([B)V

    new-instance v14, Loh/C0;

    invoke-interface/range {p2 .. p2}, LQk/A;->e()[B

    move-result-object v5

    invoke-direct {v14, v5}, Loh/C0;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object v4, v1, Lorg/bouncycastle/cms/n;->D:Lorg/bouncycastle/cms/d;

    invoke-static {v4}, Lorg/bouncycastle/cms/X;->m(Lorg/bouncycastle/cms/d;)Loh/G;

    move-result-object v15

    new-instance v12, Luh/o;

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/cms/V;->a()Loh/x;

    move-result-object v0

    invoke-direct {v12, v0, v6}, Luh/o;-><init>(Loh/x;Loh/g;)V

    new-instance v0, Luh/f;

    iget-object v8, v1, Lorg/bouncycastle/cms/C;->c:Luh/I;

    new-instance v9, Loh/I0;

    invoke-direct {v9, v3}, Loh/I0;-><init>(Loh/h;)V

    invoke-interface/range {p2 .. p2}, LQk/A;->a()Lhi/b;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Luh/f;-><init>(Luh/I;Loh/G;Lhi/b;Lhi/b;Luh/o;Loh/G;Loh/y;Loh/G;)V

    :goto_0
    new-instance v3, Luh/o;

    sget-object v4, Luh/l;->s8:Loh/x;

    invoke-direct {v3, v4, v0}, Luh/o;-><init>(Loh/x;Loh/g;)V

    new-instance v0, Lorg/bouncycastle/cms/j;

    new-instance v4, Lorg/bouncycastle/cms/k$a;

    invoke-direct {v4, v1, v2}, Lorg/bouncycastle/cms/k$a;-><init>(Lorg/bouncycastle/cms/k;LQk/p;)V

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/cms/j;-><init>(Luh/o;LQk/q;)V

    return-object v0

    :catch_2
    move-exception v0

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
