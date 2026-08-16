.class public Lzh/i;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Lzh/b;

.field public c:Lzh/d;


# direct methods
.method public constructor <init>(Lzh/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lzh/i;->b:Lzh/b;

    return-void
.end method

.method public constructor <init>(Lzh/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lzh/i;->c:Lzh/d;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lzh/i;
    .locals 3

    if-eqz p0, :cond_4

    instance-of v0, p0, Lzh/i;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lzh/i;->w(Ljava/lang/Object;)Lzh/i;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct sequence from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lzh/b;->z(Ljava/lang/Object;)Lzh/b;

    move-result-object p0

    new-instance v0, Lzh/i;

    invoke-direct {v0, p0}, Lzh/i;-><init>(Lzh/b;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_3

    invoke-static {p0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lzh/d;->v(Loh/M;Z)Lzh/d;

    move-result-object p0

    new-instance v0, Lzh/i;

    invoke-direct {v0, p0}, Lzh/i;-><init>(Lzh/d;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t convert from object to DVCSResponse: "

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

    :cond_4
    :goto_0
    check-cast p0, Lzh/i;

    return-object p0
.end method

.method public static x(Loh/M;Z)Lzh/i;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lzh/i;->w(Ljava/lang/Object;)Lzh/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    iget-object v0, p0, Lzh/i;->b:Lzh/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzh/b;->r()Loh/B;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Loh/K0;

    iget-object v1, p0, Lzh/i;->c:Lzh/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lzh/i;->b:Lzh/b;

    const-string v1, "}\n"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVCSResponse {\ndvCertInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/i;->b:Lzh/b;

    invoke-virtual {v2}, Lzh/b;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVCSResponse {\ndvErrorNote: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzh/i;->c:Lzh/d;

    invoke-virtual {v2}, Lzh/d;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public u()Lzh/b;
    .locals 1

    iget-object v0, p0, Lzh/i;->b:Lzh/b;

    return-object v0
.end method

.method public v()Lzh/d;
    .locals 1

    iget-object v0, p0, Lzh/i;->c:Lzh/d;

    return-object v0
.end method
