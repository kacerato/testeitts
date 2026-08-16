.class public final LXi/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public final b:LXi/o0;

.field public final c:Lorg/bouncycastle/crypto/util/r;

.field public final d:[B

.field public final e:Z


# direct methods
.method public constructor <init>(LXi/o0;I[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, LXi/Z;-><init>(LXi/o0;I[BZ)V

    return-void
.end method

.method public constructor <init>(LXi/o0;I[BZ)V
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/crypto/util/r;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/util/r;-><init>(I)V

    invoke-direct {p0, p1, v0, p3, p4}, LXi/Z;-><init>(LXi/o0;Lorg/bouncycastle/crypto/util/r;[BZ)V

    return-void
.end method

.method public constructor <init>(LXi/o0;Lorg/bouncycastle/crypto/util/r;[BZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXi/Z;->b:LXi/o0;

    iput-object p2, p0, LXi/Z;->c:Lorg/bouncycastle/crypto/util/r;

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXi/Z;->d:[B

    iput-boolean p4, p0, LXi/Z;->e:Z

    return-void
.end method


# virtual methods
.method public a()LXi/o0;
    .locals 1

    iget-object v0, p0, LXi/Z;->b:LXi/o0;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LXi/Z;->c:Lorg/bouncycastle/crypto/util/r;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/r;->d()I

    move-result v0

    return v0
.end method

.method public c()Lorg/bouncycastle/crypto/util/r;
    .locals 1

    iget-object v0, p0, LXi/Z;->c:Lorg/bouncycastle/crypto/util/r;

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, LXi/Z;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, LXi/Z;->e:Z

    return v0
.end method
