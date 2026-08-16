.class Lcom/jme3/shader/bufferobject/layout/Std140Layout$6;
.super Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/shader/bufferobject/layout/Std140Layout;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer<",
        "Lcom/jme3/math/Quaternion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/shader/bufferobject/layout/Std140Layout;


# direct methods
.method public constructor <init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V
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

    iput-object p1, p0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$6;->this$0:Lcom/jme3/shader/bufferobject/layout/Std140Layout;

    invoke-direct {p0, p2}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Lcom/jme3/math/Quaternion;)I
    .locals 0

    .line 1
    const/16 p1, 0x10

    return p1
.end method

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
    check-cast p2, Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$6;->basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Lcom/jme3/math/Quaternion;)I

    move-result p1

    return p1
.end method

.method public length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Lcom/jme3/math/Quaternion;)I
    .locals 0

    .line 1
    const/16 p1, 0x10

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

    .line 2
    check-cast p2, Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$6;->length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Lcom/jme3/math/Quaternion;)I

    move-result p1

    return p1
.end method

.method public write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;Lcom/jme3/math/Quaternion;)V
    .locals 0

    .line 2
    invoke-virtual {p3}, Lcom/jme3/math/Quaternion;->getX()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p3}, Lcom/jme3/math/Quaternion;->getY()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p3}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p3}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
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
    check-cast p3, Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$6;->write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;Lcom/jme3/math/Quaternion;)V

    return-void
.end method
