.class public abstract Lcom/google/protobuf/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/E1;


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/n$b;
    }
.end annotation


# static fields
.field public static final c:I = 0x3

.field public static final d:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/n;-><init>()V

    return-void
.end method

.method public static V(Ljava/nio/ByteBuffer;Z)Lcom/google/protobuf/n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "bufferIsImmutable"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/protobuf/n$b;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/n$b;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Direct buffers not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract U()I
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
