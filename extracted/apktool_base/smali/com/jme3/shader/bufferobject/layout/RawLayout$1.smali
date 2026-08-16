.class Lcom/jme3/shader/bufferobject/layout/RawLayout$1;
.super Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/shader/bufferobject/layout/RawLayout;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/shader/bufferobject/layout/RawLayout;


# direct methods
.method public constructor <init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/layout/RawLayout$1;->this$0:Lcom/jme3/shader/bufferobject/layout/RawLayout;

    invoke-direct {p0, p2}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/bufferobject/layout/RawLayout$1;->basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[B)I

    move-result p1

    return p1
.end method

.method public basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[B)I
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/bufferobject/layout/RawLayout$1;->length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[B)I

    move-result p1

    return p1
.end method

.method public length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;[B)I
    .locals 0

    .line 2
    array-length p1, p2

    return p1
.end method

.method public bridge synthetic write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p3, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/shader/bufferobject/layout/RawLayout$1;->write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;[B)V

    return-void
.end method

.method public write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;[B)V
    .locals 0

    .line 2
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
