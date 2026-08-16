.class public Lak/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Ljava/lang/String;

.field public d:Loh/x;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:[C

.field public final j:[B

.field public final k:I

.field public final l:LBi/k;

.field public m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LBi/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lak/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lak/a;->m:Z

    iput-object p1, p0, Lak/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lak/a;->l:LBi/k;

    const/4 p1, 0x0

    iput-object p1, p0, Lak/a;->i:[C

    const/4 p2, -0x1

    iput p2, p0, Lak/a;->k:I

    iput-object p1, p0, Lak/a;->j:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Loh/x;IIIILjavax/crypto/spec/PBEKeySpec;LBi/k;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lak/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lak/a;->m:Z

    iput-object p1, p0, Lak/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lak/a;->d:Loh/x;

    iput p3, p0, Lak/a;->e:I

    iput p4, p0, Lak/a;->f:I

    iput p5, p0, Lak/a;->g:I

    iput p6, p0, Lak/a;->h:I

    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p1

    iput-object p1, p0, Lak/a;->i:[C

    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p1

    iput p1, p0, Lak/a;->k:I

    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    iput-object p1, p0, Lak/a;->j:[B

    iput-object p8, p0, Lak/a;->l:LBi/k;

    return-void
.end method

.method public static a(Ljavax/security/auth/Destroyable;)V
    .locals 1

    invoke-interface {p0}, Ljavax/security/auth/Destroyable;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "key has been destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lak/a;->f:I

    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lak/a;->h:I

    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lak/a;->g:I

    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    return v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lak/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lak/a;->i:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->g0([CC)V

    :cond_0
    iget-object v0, p0, Lak/a;->j:[B

    if-eqz v0, :cond_1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    :cond_1
    return-void
.end method

.method public g()Loh/x;
    .locals 1

    iget-object v0, p0, Lak/a;->d:Loh/x;

    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lak/a;->c:Ljava/lang/String;

    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lak/a;->l:LBi/k;

    if-eqz v0, :cond_1

    instance-of v1, v0, LXi/w0;

    if-eqz v1, :cond_0

    check-cast v0, LXi/w0;

    invoke-virtual {v0}, LXi/w0;->b()LBi/k;

    move-result-object v0

    :cond_0
    check-cast v0, LXi/o0;

    invoke-virtual {v0}, LXi/o0;->b()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lak/a;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lak/a;->i:[C

    invoke-static {v0}, LBi/L;->a([C)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lak/a;->i:[C

    invoke-static {v0}, LBi/L;->c([C)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lak/a;->i:[C

    invoke-static {v0}, LBi/L;->b([C)[B

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    const-string v0, "RAW"

    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    iget v0, p0, Lak/a;->k:I

    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    return v0
.end method

.method public getPassword()[C
    .locals 2

    iget-object v0, p0, Lak/a;->i:[C

    invoke-static {v0}, Lorg/bouncycastle/util/a;->r([C)[C

    move-result-object v0

    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no password available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lak/a;->j:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    return-object v0
.end method

.method public h()LBi/k;
    .locals 1

    iget-object v0, p0, Lak/a;->l:LBi/k;

    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lak/a;->e:I

    invoke-static {p0}, Lak/a;->a(Ljavax/security/auth/Destroyable;)V

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-object v0, p0, Lak/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lak/a;->m:Z

    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lak/a;->m:Z

    return v0
.end method
