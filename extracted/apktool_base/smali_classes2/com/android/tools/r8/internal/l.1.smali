.class public abstract Lcom/android/tools/r8/internal/l;
.super Lcom/android/tools/r8/internal/F;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/F;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/l;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a(B)Lcom/android/tools/r8/internal/lA;
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/gW;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gW;->b()V

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/gW;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-object p0
.end method

.method public final a(I)Lcom/android/tools/r8/internal/lA;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x4

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l;->b(I)Lcom/android/tools/r8/internal/l;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)Lcom/android/tools/r8/internal/lA;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 p1, 0x8

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l;->b(I)Lcom/android/tools/r8/internal/l;

    move-result-object p1

    return-object p1
.end method

.method public final a([B)Lcom/android/tools/r8/internal/lA;
    .locals 3

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    array-length v0, p1

    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/gW;

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gW;->b()V

    .line 15
    iget-object v1, v1, Lcom/android/tools/r8/internal/gW;->b:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/security/MessageDigest;->update([BII)V

    return-object p0
.end method

.method public final a([BII)Lcom/android/tools/r8/internal/lA;
    .locals 2

    add-int v0, p2, p3

    .line 4
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/android/tools/r8/internal/U60;->a(III)V

    .line 5
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/gW;

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gW;->b()V

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/gW;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-object p0
.end method

.method public final b(I)Lcom/android/tools/r8/internal/l;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/gW;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gW;->b()V

    iget-object v1, v1, Lcom/android/tools/r8/internal/gW;->b:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    return-object p0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/l;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    throw p1
.end method
