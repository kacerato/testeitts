.class public LGc/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[F

.field public b:I


# direct methods
.method public constructor <init>([SI)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "channelCount"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-gtz p2, :cond_0

    move p2, v0

    :cond_0
    const/high16 v1, 0x38000000

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    array-length p2, p1

    iput p2, p0, LGc/b$b;->b:I

    new-array p2, p2, [F

    iput-object p2, p0, LGc/b$b;->a:[F

    :goto_0
    array-length p2, p1

    if-ge v2, p2, :cond_3

    iget-object p2, p0, LGc/b$b;->a:[F

    aget-short v0, p1, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    aput v0, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    div-int/2addr v0, p2

    iput v0, p0, LGc/b$b;->b:I

    new-array v3, v0, [F

    iput-object v3, p0, LGc/b$b;->a:[F

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, p2

    div-float/2addr v3, v4

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v0, :cond_3

    mul-int v6, v4, p2

    move v7, v2

    move v8, v7

    :goto_2
    if-ge v7, p2, :cond_2

    add-int v9, v6, v7

    aget-short v9, p1, v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, LGc/b$b;->a:[F

    add-int/lit8 v7, v5, 0x1

    int-to-float v8, v8

    mul-float/2addr v8, v3

    mul-float/2addr v8, v1

    aput v8, v6, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_1

    :cond_3
    return-void
.end method
