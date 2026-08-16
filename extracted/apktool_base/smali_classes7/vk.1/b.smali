.class public Lvk/b;
.super Ltk/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvk/b$b;,
        Lvk/b$c;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;

.field public static final g:Ljava/util/Map;

.field public static final h:Ljava/util/Map;


# instance fields
.field public final b:Lorg/bouncycastle/cms/S;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/io/OutputStream;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/bouncycastle/cms/c;->h0:Loh/x;

    const-string v2, "md5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/bouncycastle/cms/c;->c0:Loh/x;

    const-string v4, "sha-1"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lorg/bouncycastle/cms/c;->d0:Loh/x;

    const-string v5, "sha-224"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/bouncycastle/cms/c;->e0:Loh/x;

    const-string v6, "sha-256"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/cms/c;->f0:Loh/x;

    const-string v7, "sha-384"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lorg/bouncycastle/cms/c;->g0:Loh/x;

    const-string v8, "sha-512"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lorg/bouncycastle/cms/c;->i0:Loh/x;

    const-string v9, "gostr3411-94"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lorg/bouncycastle/cms/c;->j0:Loh/x;

    const-string v11, "gostr3411-2012-256"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lorg/bouncycastle/cms/c;->k0:Loh/x;

    const-string v13, "gostr3411-2012-512"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lvk/b;->g:Ljava/util/Map;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v14, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sha1"

    invoke-interface {v14, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sha224"

    invoke-interface {v14, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sha256"

    invoke-interface {v14, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sha384"

    invoke-interface {v14, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sha512"

    invoke-interface {v14, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v14, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v14, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v14, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lvk/b;->f:Ljava/util/Map;

    sput-object v0, Lvk/b;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lvk/b$b;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvk/b$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ltk/e;

    invoke-static {p2}, Ltk/m;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    iget-object v1, p1, Lvk/b$b;->e:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Ltk/e;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltk/m;-><init>(Ltk/e;)V

    invoke-static {p1}, Lvk/b$b;->a(Lvk/b$b;)Lorg/bouncycastle/cms/S;

    move-result-object p2

    iput-object p2, p0, Lvk/b;->b:Lorg/bouncycastle/cms/S;

    iget-object p1, p1, Lvk/b$b;->e:Ljava/lang/String;

    iput-object p1, p0, Lvk/b;->e:Ljava/lang/String;

    iput-object p3, p0, Lvk/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lvk/b;->d:Ljava/io/OutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lvk/b$b;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;Lvk/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lvk/b;-><init>(Lvk/b$b;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static synthetic d(Lvk/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvk/b;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ltk/m;->a:Ltk/e;

    iget-object v1, p0, Lvk/b;->d:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ltk/e;->c(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lvk/b;->d:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lvk/b;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lvk/b;->d:Ljava/io/OutputStream;

    const-string v2, "This is an S/MIME signed message\r\n"

    invoke-static {v2}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lvk/b;->d:Ljava/io/OutputStream;

    const-string v2, "\r\n--"

    invoke-static {v2}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lvk/b;->d:Ljava/io/OutputStream;

    iget-object v2, p0, Lvk/b;->c:Ljava/lang/String;

    invoke-static {v2}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lvk/b;->d:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Luk/b;

    invoke-direct {v7, v6}, Luk/b;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Lvk/b$c;

    iget-object v1, p0, Lvk/b;->b:Lorg/bouncycastle/cms/S;

    iget-object v2, p0, Lvk/b;->d:Ljava/io/OutputStream;

    invoke-static {v2}, Lvk/g;->c(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v7, v3, v2}, Lorg/bouncycastle/cms/S;->r(Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v4

    iget-object v5, p0, Lvk/b;->d:Ljava/io/OutputStream;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lvk/b$c;-><init>(Lvk/b;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method
