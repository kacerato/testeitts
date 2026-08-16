.class public abstract Loh/y;
.super Loh/B;
.source "SourceFile"

# interfaces
.implements Loh/z;


# static fields
.field public static final c:Loh/T;

.field public static final d:[B


# instance fields
.field public b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/y$a;

    const-class v1, Loh/y;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Loh/y$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Loh/y;->c:Loh/T;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Loh/y;->d:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Loh/B;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Loh/y;->b:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'string\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static E([B)Loh/y;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-direct {v0, p0}, Loh/C0;-><init>([B)V

    return-object v0
.end method

.method public static F(Ljava/lang/Object;)Loh/y;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Loh/y;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/g;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v1, v0, Loh/y;

    if-eqz v1, :cond_2

    check-cast v0, Loh/y;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Loh/y;->c:Loh/T;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Loh/T;->c([B)Loh/B;

    move-result-object p0

    check-cast p0, Loh/y;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct OCTET STRING from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
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

    :cond_3
    :goto_0
    check-cast p0, Loh/y;

    return-object p0
.end method

.method public static G(Loh/M;Z)Loh/y;
    .locals 1

    sget-object v0, Loh/y;->c:Loh/T;

    invoke-virtual {v0, p0, p1}, Loh/T;->f(Loh/M;Z)Loh/B;

    move-result-object p0

    check-cast p0, Loh/y;

    return-object p0
.end method


# virtual methods
.method public C()Loh/B;
    .locals 2

    new-instance v0, Loh/C0;

    iget-object v1, p0, Loh/y;->b:[B

    invoke-direct {v0, v1}, Loh/C0;-><init>([B)V

    return-object v0
.end method

.method public D()Loh/B;
    .locals 2

    new-instance v0, Loh/C0;

    iget-object v1, p0, Loh/y;->b:[B

    invoke-direct {v0, v1}, Loh/C0;-><init>([B)V

    return-object v0
.end method

.method public H()[B
    .locals 1

    iget-object v0, p0, Loh/y;->b:[B

    return-object v0
.end method

.method public I()I
    .locals 1

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public J()Loh/z;
    .locals 0

    return-object p0
.end method

.method public a()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Loh/y;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public c()Loh/B;
    .locals 1

    invoke-virtual {p0}, Loh/B;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Loh/y;->b:[B

    invoke-static {v1}, Lem/h;->h([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/w;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Loh/B;)Z
    .locals 1

    instance-of v0, p1, Loh/y;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Loh/y;

    iget-object v0, p0, Loh/y;->b:[B

    iget-object p1, p1, Loh/y;->b:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1
.end method
