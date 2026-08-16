.class public LHi/a;
.super LHi/f;
.source "SourceFile"


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {p0, v0}, LHi/f;-><init>(Ljava/util/Set;)V

    iput p1, p0, LHi/a;->c:I

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, LHi/f;-><init>(Ljava/util/Set;)V

    iput p1, p0, LHi/a;->c:I

    return-void
.end method


# virtual methods
.method public a(LBi/n;)V
    .locals 3

    invoke-interface {p1}, LBi/n;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LHi/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, LBi/n;->b()I

    move-result v0

    iget v1, p0, LHi/a;->c:I

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service does not provide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LHi/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bits of security only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LBi/n;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
