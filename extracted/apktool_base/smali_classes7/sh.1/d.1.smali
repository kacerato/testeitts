.class public Lsh/d;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public final b:Lsh/a;

.field public final c:Lsh/c;


# direct methods
.method public constructor <init>(Lsh/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/d;->b:Lsh/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lsh/d;->c:Lsh/c;

    return-void
.end method

.method public constructor <init>(Lsh/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsh/d;->b:Lsh/a;

    iput-object p1, p0, Lsh/d;->c:Lsh/c;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lsh/d;
    .locals 3

    instance-of v0, p0, Lsh/d;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_4

    instance-of v0, p0, Loh/g;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v1, v0, Loh/s;

    if-eqz v1, :cond_1

    new-instance p0, Lsh/d;

    invoke-static {v0}, Lsh/a;->w(Ljava/lang/Object;)Lsh/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lsh/d;-><init>(Lsh/a;)V

    return-object p0

    :cond_1
    instance-of v1, v0, Loh/E;

    if-eqz v1, :cond_2

    new-instance p0, Lsh/d;

    invoke-static {v0}, Lsh/c;->v(Ljava/lang/Object;)Lsh/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lsh/d;-><init>(Lsh/c;)V

    return-object p0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lsh/d;->w(Ljava/lang/Object;)Lsh/d;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown encoding in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
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

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lsh/d;->b:Lsh/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsh/a;->r()Loh/B;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsh/d;->c:Lsh/c;

    invoke-virtual {v0}, Lsh/c;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Lsh/a;
    .locals 1

    iget-object v0, p0, Lsh/d;->b:Lsh/a;

    return-object v0
.end method

.method public v()Lsh/c;
    .locals 1

    iget-object v0, p0, Lsh/d;->c:Lsh/c;

    return-object v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lsh/d;->b:Lsh/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
