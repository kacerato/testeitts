.class public Loh/e;
.super Loh/B;
.source "SourceFile"


# static fields
.field public static final c:Loh/T;

.field public static final d:B = 0x0t

.field public static final e:B = -0x1t

.field public static final f:Loh/e;

.field public static final g:Loh/e;


# instance fields
.field public final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/e$a;

    const-class v1, Loh/e;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Loh/e$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Loh/e;->c:Loh/T;

    new-instance v0, Loh/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loh/e;-><init>(B)V

    sput-object v0, Loh/e;->f:Loh/e;

    new-instance v0, Loh/e;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Loh/e;-><init>(B)V

    sput-object v0, Loh/e;->g:Loh/e;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Loh/B;-><init>()V

    iput-byte p1, p0, Loh/e;->b:B

    return-void
.end method

.method public static E([B)Loh/e;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, Loh/e;

    invoke-direct {v0, p0}, Loh/e;-><init>(B)V

    return-object v0

    :cond_0
    sget-object p0, Loh/e;->f:Loh/e;

    return-object p0

    :cond_1
    sget-object p0, Loh/e;->g:Loh/e;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F(I)Loh/e;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Loh/e;->g:Loh/e;

    goto :goto_0

    :cond_0
    sget-object p0, Loh/e;->f:Loh/e;

    :goto_0
    return-object p0
.end method

.method public static G(Ljava/lang/Object;)Loh/e;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Loh/e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    :try_start_0
    sget-object v0, Loh/e;->c:Loh/T;

    invoke-virtual {v0, p0}, Loh/T;->c([B)Loh/B;

    move-result-object p0

    check-cast p0, Loh/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct boolean from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Loh/e;

    return-object p0
.end method

.method public static H(Loh/M;Z)Loh/e;
    .locals 1

    sget-object v0, Loh/e;->c:Loh/T;

    invoke-virtual {v0, p0, p1}, Loh/T;->f(Loh/M;Z)Loh/B;

    move-result-object p0

    check-cast p0, Loh/e;

    return-object p0
.end method

.method public static I(Z)Loh/e;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Loh/e;->g:Loh/e;

    goto :goto_0

    :cond_0
    sget-object p0, Loh/e;->f:Loh/e;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public C()Loh/B;
    .locals 1

    invoke-virtual {p0}, Loh/e;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Loh/e;->g:Loh/e;

    goto :goto_0

    :cond_0
    sget-object v0, Loh/e;->f:Loh/e;

    :goto_0
    return-object v0
.end method

.method public J()Z
    .locals 1

    iget-byte v0, p0, Loh/e;->b:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Loh/e;->J()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Loh/e;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0
.end method

.method public u(Loh/B;)Z
    .locals 2

    instance-of v0, p1, Loh/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Loh/e;

    invoke-virtual {p0}, Loh/e;->J()Z

    move-result v0

    invoke-virtual {p1}, Loh/e;->J()Z

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public v(Loh/A;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-byte v1, p0, Loh/e;->b:B

    invoke-virtual {p1, p2, v0, v1}, Loh/A;->o(ZIB)V

    return-void
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y(Z)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Loh/A;->i(ZI)I

    move-result p1

    return p1
.end method
