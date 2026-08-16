.class public Lpn/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Ljn/y;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bb"
        }
    .end annotation

    new-instance v0, Ljn/y;

    invoke-direct {v0}, Ljn/y;-><init>()V

    iget-object v1, v0, Ljn/y;->a:[F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v1, v0, Ljn/y;->a:[F

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    aput v3, v1, v2

    iget-object v1, v0, Ljn/y;->a:[F

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Ljn/y;->b:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Ljn/y;->c:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Ljn/y;->d:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, v0, Ljn/y;->e:I

    return-object v0
.end method
