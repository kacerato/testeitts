.class public LEk/v;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>(Loh/y;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {p0, p1}, LEk/v;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LEk/v;->b:[B

    return-void
.end method

.method public static synthetic u(LEk/v;)[B
    .locals 0

    iget-object p0, p0, LEk/v;->b:[B

    return-object p0
.end method

.method public static y(Ljava/lang/Object;)LEk/v;
    .locals 1

    instance-of v0, p0, LEk/v;

    if-eqz v0, :cond_0

    check-cast p0, LEk/v;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/v;

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/v;-><init>(Loh/y;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Ljava/lang/Class;Lyk/c;LEk/v;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lyk/c;",
            "LEk/v;",
            ")TT;"
        }
    .end annotation

    new-instance v0, LEk/v$a;

    invoke-direct {v0, p2, p1, p0}, LEk/v$a;-><init>(LEk/v;Lyk/c;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/C0;

    iget-object v1, p0, LEk/v;->b:[B

    invoke-direct {v0, v1}, Loh/C0;-><init>([B)V

    return-object v0
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, LEk/v;->b:[B

    return-object v0
.end method

.method public x()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, LEk/v;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
