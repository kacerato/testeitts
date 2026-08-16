.class public LIb/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIb/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:[D


# direct methods
.method public constructor <init>(D)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    new-array v1, v0, [D

    iput-object v1, p0, LIb/f$c;->a:[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, LIb/f$c;->a:[D

    aput-wide p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 17
    new-array v0, v0, [D

    iput-object v0, p0, LIb/f$c;->a:[D

    const/4 v1, 0x0

    mul-double v2, p1, p1

    .line 18
    aput-wide v2, v0, v1

    const/4 v1, 0x1

    mul-double v2, p1, p3

    .line 19
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    mul-double v2, p1, p5

    .line 20
    aput-wide v2, v0, v1

    const/4 v1, 0x3

    mul-double/2addr p1, p7

    .line 21
    aput-wide p1, v0, v1

    const/4 p1, 0x4

    mul-double v1, p3, p3

    .line 22
    aput-wide v1, v0, p1

    const/4 p1, 0x5

    mul-double v1, p3, p5

    .line 23
    aput-wide v1, v0, p1

    const/4 p1, 0x6

    mul-double/2addr p3, p7

    .line 24
    aput-wide p3, v0, p1

    const/4 p1, 0x7

    mul-double p2, p5, p5

    .line 25
    aput-wide p2, v0, p1

    const/16 p1, 0x8

    mul-double/2addr p5, p7

    .line 26
    aput-wide p5, v0, p1

    const/16 p1, 0x9

    mul-double/2addr p7, p7

    .line 27
    aput-wide p7, v0, p1

    return-void
.end method

.method public constructor <init>(DDDDDDDDDD)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m11",
            "m12",
            "m13",
            "m14",
            "m22",
            "m23",
            "m24",
            "m33",
            "m34",
            "m44"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 5
    new-array v0, v0, [D

    move-object v1, p0

    iput-object v0, v1, LIb/f$c;->a:[D

    const/4 v2, 0x0

    .line 6
    aput-wide p1, v0, v2

    const/4 v2, 0x1

    .line 7
    aput-wide p3, v0, v2

    const/4 v2, 0x2

    .line 8
    aput-wide p5, v0, v2

    const/4 v2, 0x3

    .line 9
    aput-wide p7, v0, v2

    const/4 v2, 0x4

    .line 10
    aput-wide p9, v0, v2

    const/4 v2, 0x5

    .line 11
    aput-wide p11, v0, v2

    const/4 v2, 0x6

    .line 12
    aput-wide p13, v0, v2

    const/4 v2, 0x7

    .line 13
    aput-wide p15, v0, v2

    const/16 v2, 0x8

    .line 14
    aput-wide p17, v0, v2

    const/16 v2, 0x9

    .line 15
    aput-wide p19, v0, v2

    return-void
.end method


# virtual methods
.method public final a(LIb/f$c;)LIb/f$c;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "n"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v23, LIb/f$c;

    move-object/from16 v2, v23

    iget-object v3, v0, LIb/f$c;->a:[D

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    invoke-virtual {v1, v4}, LIb/f$c;->d(I)D

    move-result-wide v3

    add-double/2addr v3, v5

    iget-object v5, v0, LIb/f$c;->a:[D

    const/4 v6, 0x1

    aget-wide v7, v5, v6

    invoke-virtual {v1, v6}, LIb/f$c;->d(I)D

    move-result-wide v5

    add-double/2addr v5, v7

    iget-object v7, v0, LIb/f$c;->a:[D

    const/4 v8, 0x2

    aget-wide v9, v7, v8

    invoke-virtual {v1, v8}, LIb/f$c;->d(I)D

    move-result-wide v7

    add-double/2addr v7, v9

    iget-object v9, v0, LIb/f$c;->a:[D

    const/4 v10, 0x3

    aget-wide v11, v9, v10

    invoke-virtual {v1, v10}, LIb/f$c;->d(I)D

    move-result-wide v9

    add-double/2addr v9, v11

    iget-object v11, v0, LIb/f$c;->a:[D

    const/4 v12, 0x4

    aget-wide v13, v11, v12

    invoke-virtual {v1, v12}, LIb/f$c;->d(I)D

    move-result-wide v11

    add-double/2addr v11, v13

    iget-object v13, v0, LIb/f$c;->a:[D

    const/4 v14, 0x5

    aget-wide v15, v13, v14

    invoke-virtual {v1, v14}, LIb/f$c;->d(I)D

    move-result-wide v13

    add-double/2addr v13, v15

    iget-object v15, v0, LIb/f$c;->a:[D

    move-object/from16 v24, v2

    const/4 v2, 0x6

    aget-wide v16, v15, v2

    invoke-virtual {v1, v2}, LIb/f$c;->d(I)D

    move-result-wide v18

    add-double v15, v16, v18

    iget-object v2, v0, LIb/f$c;->a:[D

    move-wide/from16 v25, v3

    const/4 v3, 0x7

    aget-wide v17, v2, v3

    invoke-virtual {v1, v3}, LIb/f$c;->d(I)D

    move-result-wide v2

    add-double v17, v17, v2

    iget-object v2, v0, LIb/f$c;->a:[D

    const/16 v3, 0x8

    aget-wide v19, v2, v3

    invoke-virtual {v1, v3}, LIb/f$c;->d(I)D

    move-result-wide v2

    add-double v19, v19, v2

    iget-object v2, v0, LIb/f$c;->a:[D

    const/16 v3, 0x9

    aget-wide v21, v2, v3

    invoke-virtual {v1, v3}, LIb/f$c;->d(I)D

    move-result-wide v1

    add-double v21, v21, v1

    move-object/from16 v2, v24

    move-wide/from16 v3, v25

    invoke-direct/range {v2 .. v22}, LIb/f$c;-><init>(DDDDDDDDDD)V

    return-object v23
.end method

.method public b(LIb/f$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "n"
        }
    .end annotation

    iget-object v0, p0, LIb/f$c;->a:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p1, v1}, LIb/f$c;->d(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, LIb/f$c;->a:[D

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    invoke-virtual {p1, v1}, LIb/f$c;->d(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, LIb/f$c;->a:[D

    const/4 v1, 0x2

    aget-wide v2, v0, v1

    invoke-virtual {p1, v1}, LIb/f$c;->d(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, LIb/f$c;->a:[D

    const/4 v1, 0x3

    aget-wide v2, v0, v1

    invoke-virtual {p1, v1}, LIb/f$c;->d(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, LIb/f$c;->a:[D

    const/4 v1, 0x4

    aget-wide v2, v0, v1

    invoke-virtual {p1, v1}, LIb/f$c;->d(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, LIb/f$c;->a:[D

    const/4 v1, 0x5

    aget-wide v2, v0, v1

    invoke-virtual {p1, v1}, LIb/f$c;->d(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, LIb/f$c;->a:[D

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    invoke-virtual {p1, v1}, LIb/f$c;->d(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, LIb/f$c;->a:[D

    const/4 v1, 0x7

    aget-wide v2, v0, v1

    invoke-virtual {p1, v1}, LIb/f$c;->d(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, LIb/f$c;->a:[D

    const/16 v1, 0x8

    aget-wide v2, v0, v1

    invoke-virtual {p1, v1}, LIb/f$c;->d(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, LIb/f$c;->a:[D

    const/16 v1, 0x9

    aget-wide v2, v0, v1

    invoke-virtual {p1, v1}, LIb/f$c;->d(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method

.method public final c(IIIIIIIII)D
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a11",
            "a12",
            "a13",
            "a21",
            "a22",
            "a23",
            "a31",
            "a32",
            "a33"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, LIb/f$c;->a:[D

    aget-wide v2, v1, p1

    aget-wide v4, v1, p5

    mul-double v6, v2, v4

    aget-wide v8, v1, p9

    mul-double/2addr v6, v8

    aget-wide v10, v1, p3

    aget-wide v12, v1, p4

    mul-double v14, v10, v12

    aget-wide v16, v1, p8

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    aget-wide v14, v1, p2

    aget-wide v18, v1, p6

    mul-double v20, v14, v18

    aget-wide v22, v1, p7

    mul-double v20, v20, v22

    add-double v6, v6, v20

    mul-double/2addr v10, v4

    mul-double v10, v10, v22

    sub-double/2addr v6, v10

    mul-double v2, v2, v18

    mul-double v2, v2, v16

    sub-double/2addr v6, v2

    mul-double/2addr v14, v12

    mul-double/2addr v14, v8

    sub-double/2addr v6, v14

    return-wide v6
.end method

.method public final d(I)D
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    iget-object v0, p0, LIb/f$c;->a:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public e(LIb/f$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    iget-object p1, p1, LIb/f$c;->a:[D

    iget-object v0, p0, LIb/f$c;->a:[D

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
