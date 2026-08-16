.class public Lorg/bouncycastle/cms/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Luh/l;->w8:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/cms/V;LQk/E;)Lorg/bouncycastle/cms/o;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p2, v0}, LQk/E;->d(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-interface {p2}, LQk/E;->a()Lhi/b;

    move-result-object p2

    new-instance v1, Loh/c0;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Loh/c0;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Luh/o;

    invoke-interface {p1}, Lorg/bouncycastle/cms/V;->a()Loh/x;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Luh/o;-><init>(Loh/x;Loh/g;)V

    new-instance p1, Luh/o;

    sget-object v1, Luh/l;->t8:Loh/x;

    new-instance v2, Luh/m;

    invoke-direct {v2, p2, v0}, Luh/m;-><init>(Lhi/b;Luh/o;)V

    invoke-direct {p1, v1, v2}, Luh/o;-><init>(Loh/x;Loh/g;)V

    new-instance p2, Lorg/bouncycastle/cms/o;

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/o;-><init>(Luh/o;)V

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "exception encoding data."

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
