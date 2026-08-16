.class public interface abstract Lcom/android/tools/r8/ByteBufferProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public acquireByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public releaseByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method
