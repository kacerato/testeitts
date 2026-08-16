.class public Ljn/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:I = 0x0

.field public static final h:I = 0x1


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "maxVertsPerPoly"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljn/G;->a:I

    new-array p1, p2, [I

    iput-object p1, p0, Ljn/G;->b:[I

    new-array p1, p2, [I

    iput-object p1, p0, Ljn/G;->c:[I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ljn/G;->f:I

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ljn/G;->f:I

    shr-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iget v0, p0, Ljn/G;->f:I

    and-int/lit16 v0, v0, 0xc0

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    iput p1, p0, Ljn/G;->f:I

    return-void
.end method

.method public d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iget v0, p0, Ljn/G;->f:I

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p1, v0

    iput p1, p0, Ljn/G;->f:I

    return-void
.end method
