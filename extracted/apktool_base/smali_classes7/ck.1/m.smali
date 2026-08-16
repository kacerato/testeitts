.class public Lck/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Z

.field public volatile d:[B

.field public volatile e:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>([BLjava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lck/m;-><init>([BZLjava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public constructor <init>([BZLjava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lck/m;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lck/m;->d:[B

    iput-object p3, p0, Lck/m;->e:Ljava/security/spec/AlgorithmParameterSpec;

    iput-boolean p2, p0, Lck/m;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lck/m;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spec has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Lck/m;->e:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0}, Lck/m;->a()V

    return-object v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lck/m;->d:[B

    invoke-virtual {p0}, Lck/m;->a()V

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lck/m;->c:Z

    return v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lck/m;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lck/m;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->n([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lck/m;->d:[B

    iput-object v0, p0, Lck/m;->e:Ljava/security/spec/AlgorithmParameterSpec;

    :cond_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    iget-object v0, p0, Lck/m;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
