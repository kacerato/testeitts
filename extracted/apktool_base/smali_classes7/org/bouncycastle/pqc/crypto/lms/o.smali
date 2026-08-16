.class public Lorg/bouncycastle/pqc/crypto/lms/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/y;


# instance fields
.field public final a:[B

.field public final b:Lorg/bouncycastle/pqc/crypto/lms/k;

.field public final c:Lorg/bouncycastle/pqc/crypto/lms/A;

.field public final d:[[B

.field public final e:Lorg/bouncycastle/pqc/crypto/lms/l;

.field public final f:Ljava/lang/Object;

.field public g:[Lorg/bouncycastle/pqc/crypto/lms/y;

.field public volatile h:LBi/y;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/k;Lorg/bouncycastle/pqc/crypto/lms/A;LBi/y;[B[[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->b:Lorg/bouncycastle/pqc/crypto/lms/k;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->c:Lorg/bouncycastle/pqc/crypto/lms/A;

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->h:LBi/y;

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->a:[B

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->d:[[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->e:Lorg/bouncycastle/pqc/crypto/lms/l;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/l;Ljava/lang/Object;LBi/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->e:Lorg/bouncycastle/pqc/crypto/lms/l;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->f:Ljava/lang/Object;

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->h:LBi/y;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->a:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->b:Lorg/bouncycastle/pqc/crypto/lms/k;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->c:Lorg/bouncycastle/pqc/crypto/lms/A;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->d:[[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->a:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->h:LBi/y;

    invoke-interface {v0}, LBi/y;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->h:LBi/y;

    invoke-interface {v0, p1, p2}, LBi/y;->c([BI)I

    move-result p1

    return p1
.end method

.method public d()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->d:[[B

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->h:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    return v0
.end method

.method public g()Lorg/bouncycastle/pqc/crypto/lms/k;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->b:Lorg/bouncycastle/pqc/crypto/lms/k;

    return-object v0
.end method

.method public j()Lorg/bouncycastle/pqc/crypto/lms/l;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->e:Lorg/bouncycastle/pqc/crypto/lms/l;

    return-object v0
.end method

.method public k()[B
    .locals 3

    const/16 v0, 0x22

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->h:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->h:LBi/y;

    return-object v0
.end method

.method public l()Lorg/bouncycastle/pqc/crypto/lms/A;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->c:Lorg/bouncycastle/pqc/crypto/lms/A;

    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public n()[Lorg/bouncycastle/pqc/crypto/lms/y;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->g:[Lorg/bouncycastle/pqc/crypto/lms/y;

    return-object v0
.end method

.method public o([Lorg/bouncycastle/pqc/crypto/lms/y;)Lorg/bouncycastle/pqc/crypto/lms/o;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->g:[Lorg/bouncycastle/pqc/crypto/lms/y;

    return-object p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->h:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->h:LBi/y;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/o;->h:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
