.class public Ljn/W;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:I


# direct methods
.method public constructor <init>([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ljn/W;-><init>([FI)V

    return-void
.end method

.method public constructor <init>([FI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "index"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ljn/W;->a:[F

    .line 4
    iput p2, p0, Ljn/W;->b:I

    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    iget-object v0, p0, Ljn/W;->a:[F

    iget v1, p0, Ljn/W;->b:I

    add-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method
