.class public abstract Loh/t;
.super Loh/B;
.source "SourceFile"


# static fields
.field public static final b:Loh/T;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/t$a;

    const-class v1, Loh/t;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Loh/t$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Loh/t;->b:Loh/T;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loh/B;-><init>()V

    return-void
.end method

.method public static E([B)Loh/t;
    .locals 1

    array-length p0, p0

    if-nez p0, :cond_0

    sget-object p0, Loh/A0;->c:Loh/A0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "malformed NULL encoding encountered"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F(Ljava/lang/Object;)Loh/t;
    .locals 3

    instance-of v0, p0, Loh/t;

    if-eqz v0, :cond_0

    check-cast p0, Loh/t;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    sget-object v0, Loh/t;->b:Loh/T;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Loh/T;->c([B)Loh/B;

    move-result-object p0

    check-cast p0, Loh/t;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct NULL from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static G(Loh/M;Z)Loh/t;
    .locals 1

    sget-object v0, Loh/t;->b:Loh/T;

    invoke-virtual {v0, p0, p1}, Loh/T;->f(Loh/M;Z)Loh/B;

    move-result-object p0

    check-cast p0, Loh/t;

    return-object p0
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NULL"

    return-object v0
.end method

.method public u(Loh/B;)Z
    .locals 0

    instance-of p1, p1, Loh/t;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
