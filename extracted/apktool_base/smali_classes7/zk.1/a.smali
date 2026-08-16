.class public Lzk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;Loh/E;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Loh/E;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lzk/a$a;

    invoke-direct {v0, p1, p0}, Lzk/a$a;-><init>(Loh/E;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static b([B)[B
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    array-length v0, p0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "octet string out of range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c([BI)[B
    .locals 1

    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "octet string out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/util/List;)Loh/E;
    .locals 2

    new-instance v0, Loh/G0;

    const/4 v1, 0x0

    new-array v1, v1, [Loh/g;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Loh/g;

    invoke-direct {v0, p0}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public static varargs e([Loh/g;)Loh/E;
    .locals 1

    new-instance v0, Loh/G0;

    invoke-direct {v0, p0}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method
