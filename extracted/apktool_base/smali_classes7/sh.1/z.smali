.class public Lsh/z;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public final b:Lsh/e;

.field public final c:Lsh/C;

.field public final d:Lsh/r;


# direct methods
.method public constructor <init>(Lsh/C;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1, v0}, Lsh/z;-><init>(Lsh/e;Lsh/C;Lsh/r;)V

    return-void
.end method

.method public constructor <init>(Lsh/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lsh/z;-><init>(Lsh/e;Lsh/C;Lsh/r;)V

    return-void
.end method

.method public constructor <init>(Lsh/e;Lsh/C;Lsh/r;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/z;->b:Lsh/e;

    iput-object p2, p0, Lsh/z;->c:Lsh/C;

    iput-object p3, p0, Lsh/z;->d:Lsh/r;

    return-void
.end method

.method public constructor <init>(Lsh/r;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v0, p1}, Lsh/z;-><init>(Lsh/e;Lsh/C;Lsh/r;)V

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lsh/z;
    .locals 3

    instance-of v0, p0, Lsh/z;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/z;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/g;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v1, v0, Loh/s;

    if-eqz v1, :cond_1

    new-instance p0, Lsh/z;

    invoke-static {v0}, Lsh/e;->u(Ljava/lang/Object;)Lsh/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lsh/z;-><init>(Lsh/e;)V

    return-object p0

    :cond_1
    instance-of v1, v0, Loh/E;

    if-eqz v1, :cond_4

    move-object p0, v0

    check-cast p0, Loh/E;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p0

    instance-of p0, p0, Loh/x;

    if-eqz p0, :cond_2

    new-instance p0, Lsh/z;

    invoke-static {v0}, Lsh/r;->w(Ljava/lang/Object;)Lsh/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lsh/z;-><init>(Lsh/r;)V

    return-object p0

    :cond_2
    new-instance p0, Lsh/z;

    invoke-static {v0}, Lsh/C;->u(Ljava/lang/Object;)Lsh/C;

    move-result-object v0

    invoke-direct {p0, v0}, Lsh/z;-><init>(Lsh/C;)V

    return-object p0

    :cond_3
    instance-of v0, p0, [B

    if-eqz v0, :cond_4

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lsh/z;->u(Ljava/lang/Object;)Lsh/z;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance(): "

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
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lsh/z;->c:Lsh/C;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsh/C;->r()Loh/B;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsh/z;->b:Lsh/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsh/e;->r()Loh/B;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lsh/z;->d:Lsh/r;

    invoke-virtual {v0}, Lsh/r;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lsh/z;->d:Lsh/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lsh/z;->b:Lsh/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lsh/z;->c:Lsh/C;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
