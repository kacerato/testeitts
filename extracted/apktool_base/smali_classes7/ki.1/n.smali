.class public Lki/n;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/y;

.field public c:Ljk/e;

.field public d:Ljk/i;


# direct methods
.method public constructor <init>(Ljk/e;Loh/y;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Loh/y;->H()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lki/n;-><init>(Ljk/e;[B)V

    return-void
.end method

.method public constructor <init>(Ljk/e;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lki/n;->c:Ljk/e;

    new-instance p1, Loh/C0;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Loh/C0;-><init>([B)V

    iput-object p1, p0, Lki/n;->b:Loh/y;

    return-void
.end method

.method public constructor <init>(Ljk/i;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Ljk/i;->B()Ljk/i;

    move-result-object v0

    iput-object v0, p0, Lki/n;->d:Ljk/i;

    new-instance v0, Loh/C0;

    invoke-virtual {p1, p2}, Ljk/i;->l(Z)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, Lki/n;->b:Loh/y;

    return-void
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lki/n;->b:Loh/y;

    return-object v0
.end method

.method public declared-synchronized u()Ljk/i;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lki/n;->d:Ljk/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lki/n;->c:Ljk/e;

    iget-object v1, p0, Lki/n;->b:Loh/y;

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljk/e;->l([B)Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->B()Ljk/i;

    move-result-object v0

    iput-object v0, p0, Lki/n;->d:Ljk/i;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lki/n;->d:Ljk/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, Lki/n;->b:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 3

    iget-object v0, p0, Lki/n;->b:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    aget-byte v0, v0, v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
