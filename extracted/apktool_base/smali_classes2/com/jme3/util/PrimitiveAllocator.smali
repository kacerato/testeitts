.class public final Lcom/jme3/util/PrimitiveAllocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/BufferAllocator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocate(I)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public destroyDirectBuffer(Ljava/nio/Buffer;)V
    .locals 1

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Warning destroyBuffer not supported"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
