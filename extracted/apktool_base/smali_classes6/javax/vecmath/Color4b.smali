.class public Ljavax/vecmath/Color4b;
.super Ljavax/vecmath/Tuple4b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x175523a9f9cb28bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljavax/vecmath/Tuple4b;-><init>()V

    return-void
.end method

.method public constructor <init>(BBBB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/vecmath/Tuple4b;-><init>(BBBB)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Color;)V
    .locals 3

    .line 5
    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-byte v0, v0

    .line 6
    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v1

    int-to-byte v1, v1

    .line 7
    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v2

    int-to-byte v2, v2

    .line 8
    invoke-virtual {p1}, Ljava/awt/Color;->getAlpha()I

    move-result p1

    int-to-byte p1, p1

    .line 9
    invoke-direct {p0, v0, v1, v2, p1}, Ljavax/vecmath/Tuple4b;-><init>(BBBB)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Color4b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4b;-><init>(Ljavax/vecmath/Tuple4b;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4b;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4b;-><init>(Ljavax/vecmath/Tuple4b;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple4b;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final get()Ljava/awt/Color;
    .locals 5

    iget-byte v0, p0, Ljavax/vecmath/Tuple4b;->x:B

    and-int/lit16 v0, v0, 0xff

    iget-byte v1, p0, Ljavax/vecmath/Tuple4b;->y:B

    and-int/lit16 v1, v1, 0xff

    iget-byte v2, p0, Ljavax/vecmath/Tuple4b;->z:B

    and-int/lit16 v2, v2, 0xff

    iget-byte v3, p0, Ljavax/vecmath/Tuple4b;->w:B

    and-int/lit16 v3, v3, 0xff

    new-instance v4, Ljava/awt/Color;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/awt/Color;-><init>(IIII)V

    return-object v4
.end method

.method public final set(Ljava/awt/Color;)V
    .locals 1

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->x:B

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->y:B

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljavax/vecmath/Tuple4b;->z:B

    invoke-virtual {p1}, Ljava/awt/Color;->getAlpha()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Ljavax/vecmath/Tuple4b;->w:B

    return-void
.end method
