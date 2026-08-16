.class public final LB2/B$b;
.super LB2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljavax/crypto/Mac;

.field public c:Z


# direct methods
.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LB2/a;-><init>()V

    .line 3
    iput-object p1, p0, LB2/B$b;->b:Ljavax/crypto/Mac;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/crypto/Mac;LB2/B$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LB2/B$b;-><init>(Ljavax/crypto/Mac;)V

    return-void
.end method


# virtual methods
.method public h()LB2/p;
    .locals 1

    invoke-virtual {p0}, LB2/B$b;->o()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LB2/B$b;->c:Z

    iget-object v0, p0, LB2/B$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    invoke-static {v0}, LB2/p;->h([B)LB2/p;

    move-result-object v0

    return-object v0
.end method

.method public k(B)V
    .locals 1

    invoke-virtual {p0}, LB2/B$b;->o()V

    iget-object v0, p0, LB2/B$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method public l(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p0}, LB2/B$b;->o()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LB2/B$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public m([B)V
    .locals 1

    invoke-virtual {p0}, LB2/B$b;->o()V

    iget-object v0, p0, LB2/B$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method public n([BII)V
    .locals 1

    invoke-virtual {p0}, LB2/B$b;->o()V

    iget-object v0, p0, LB2/B$b;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method

.method public final o()V
    .locals 2

    iget-boolean v0, p0, LB2/B$b;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lw2/H;->h0(ZLjava/lang/Object;)V

    return-void
.end method
