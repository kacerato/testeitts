.class Lcom/threed/jpct/BufferUtilNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/threed/jpct/BufferUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy([FLcom/threed/jpct/FloatBufferWrapper;)V
    .locals 2

    iget-object p2, p2, Lcom/threed/jpct/FloatBufferWrapper;->floats:Ljava/nio/FloatBuffer;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([FLjava/nio/Buffer;II)V

    return-void
.end method
