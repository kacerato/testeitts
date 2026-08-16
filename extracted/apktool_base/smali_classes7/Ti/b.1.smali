.class public interface abstract LTi/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(ZLBi/k;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation
.end method

.method public abstract e()[B
.end method

.method public abstract f([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract g(I)I
.end method

.method public abstract h(I)I
.end method

.method public abstract i(B[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation
.end method

.method public abstract j([BII)V
.end method

.method public abstract k(B)V
.end method

.method public abstract reset()V
.end method
