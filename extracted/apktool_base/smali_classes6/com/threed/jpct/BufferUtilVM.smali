.class Lcom/threed/jpct/BufferUtilVM;
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
    .locals 0

    invoke-virtual {p2, p1}, Lcom/threed/jpct/FloatBufferWrapper;->put([F)V

    return-void
.end method
