.class public final LB2/C$b;
.super LB2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:I

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, LB2/a;-><init>()V

    .line 3
    iput-object p1, p0, LB2/C$b;->b:Ljava/security/MessageDigest;

    .line 4
    iput p2, p0, LB2/C$b;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/security/MessageDigest;ILB2/C$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LB2/C$b;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method private o()V
    .locals 2

    iget-boolean v0, p0, LB2/C$b;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lw2/H;->h0(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public h()LB2/p;
    .locals 2

    invoke-direct {p0}, LB2/C$b;->o()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LB2/C$b;->d:Z

    iget v0, p0, LB2/C$b;->c:I

    iget-object v1, p0, LB2/C$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LB2/C$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, LB2/p;->h([B)LB2/p;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB2/C$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget v1, p0, LB2/C$b;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, LB2/p;->h([B)LB2/p;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public k(B)V
    .locals 1

    invoke-direct {p0}, LB2/C$b;->o()V

    iget-object v0, p0, LB2/C$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public l(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, LB2/C$b;->o()V

    iget-object v0, p0, LB2/C$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public n([BII)V
    .locals 1

    invoke-direct {p0}, LB2/C$b;->o()V

    iget-object v0, p0, LB2/C$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
