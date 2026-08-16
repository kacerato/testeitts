.class public Ljavax/vecmath/Color3b;
.super Ljavax/vecmath/Tuple3b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x5c0ba4cfbc0e93baL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljavax/vecmath/Tuple3b;-><init>()V

    return-void
.end method

.method public constructor <init>(BBB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljavax/vecmath/Tuple3b;-><init>(BBB)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Color;)V
    .locals 2

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

    move-result p1

    int-to-byte p1, p1

    .line 8
    invoke-direct {p0, v0, v1, p1}, Ljavax/vecmath/Tuple3b;-><init>(BBB)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Color3b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3b;-><init>(Ljavax/vecmath/Tuple3b;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple3b;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3b;-><init>(Ljavax/vecmath/Tuple3b;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/vecmath/Tuple3b;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final get()Ljava/awt/Color;
    .locals 4

    iget-byte v0, p0, Ljavax/vecmath/Tuple3b;->x:B

    and-int/lit16 v0, v0, 0xff

    iget-byte v1, p0, Ljavax/vecmath/Tuple3b;->y:B

    and-int/lit16 v1, v1, 0xff

    iget-byte v2, p0, Ljavax/vecmath/Tuple3b;->z:B

    and-int/lit16 v2, v2, 0xff

    new-instance v3, Ljava/awt/Color;

    invoke-direct {v3, v0, v1, v2}, Ljava/awt/Color;-><init>(III)V

    return-object v3
.end method

.method public final set(Ljava/awt/Color;)V
    .locals 1

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljavax/vecmath/Tuple3b;->x:B

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Ljavax/vecmath/Tuple3b;->y:B

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Ljavax/vecmath/Tuple3b;->z:B

    return-void
.end method
