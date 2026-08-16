.class public LGb/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGb/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LGb/f$a;->a:D

    iput-wide p3, p0, LGb/f$a;->b:D

    iput-wide p5, p0, LGb/f$a;->c:D

    return-void
.end method


# virtual methods
.method public a(LGb/f$a;)LGb/f$a;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance v7, LGb/f$a;

    iget-wide v0, p0, LGb/f$a;->a:D

    iget-wide v2, p1, LGb/f$a;->a:D

    add-double v1, v0, v2

    iget-wide v3, p0, LGb/f$a;->b:D

    iget-wide v5, p1, LGb/f$a;->b:D

    add-double/2addr v3, v5

    iget-wide v5, p0, LGb/f$a;->c:D

    iget-wide v8, p1, LGb/f$a;->c:D

    add-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LGb/f$a;-><init>(DDD)V

    return-object v7
.end method

.method public b(LGb/f$a;)LGb/f$a;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v8, LGb/f$a;

    iget-wide v2, v0, LGb/f$a;->b:D

    iget-wide v4, v1, LGb/f$a;->c:D

    mul-double v6, v2, v4

    iget-wide v9, v0, LGb/f$a;->c:D

    iget-wide v11, v1, LGb/f$a;->b:D

    mul-double v13, v9, v11

    sub-double/2addr v6, v13

    iget-wide v13, v1, LGb/f$a;->a:D

    mul-double/2addr v9, v13

    move-wide v15, v6

    iget-wide v6, v0, LGb/f$a;->a:D

    mul-double/2addr v4, v6

    sub-double v4, v9, v4

    mul-double/2addr v6, v11

    mul-double/2addr v2, v13

    sub-double/2addr v6, v2

    move-object v1, v8

    move-wide v2, v15

    invoke-direct/range {v1 .. v7}, LGb/f$a;-><init>(DDD)V

    return-object v8
.end method

.method public c(LGb/f$a;)D
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-wide v0, p0, LGb/f$a;->a:D

    iget-wide v2, p1, LGb/f$a;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LGb/f$a;->b:D

    iget-wide v4, p1, LGb/f$a;->b:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, LGb/f$a;->c:D

    iget-wide v4, p1, LGb/f$a;->c:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public d()LGb/f$a;
    .locals 10

    iget-wide v0, p0, LGb/f$a;->a:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, LGb/f$a;->b:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, LGb/f$a;->c:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    new-instance v9, LGb/f$a;

    iget-wide v2, p0, LGb/f$a;->a:D

    div-double v3, v2, v0

    iget-wide v5, p0, LGb/f$a;->b:D

    div-double/2addr v5, v0

    iget-wide v7, p0, LGb/f$a;->c:D

    div-double/2addr v7, v0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, LGb/f$a;-><init>(DDD)V

    return-object v9
.end method

.method public e(D)LGb/f$a;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalar"
        }
    .end annotation

    new-instance v7, LGb/f$a;

    iget-wide v0, p0, LGb/f$a;->a:D

    mul-double v1, v0, p1

    iget-wide v3, p0, LGb/f$a;->b:D

    mul-double/2addr v3, p1

    iget-wide v5, p0, LGb/f$a;->c:D

    mul-double/2addr v5, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LGb/f$a;-><init>(DDD)V

    return-object v7
.end method

.method public f(LGb/f$a;)LGb/f$a;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance v7, LGb/f$a;

    iget-wide v0, p0, LGb/f$a;->a:D

    iget-wide v2, p1, LGb/f$a;->a:D

    sub-double v1, v0, v2

    iget-wide v3, p0, LGb/f$a;->b:D

    iget-wide v5, p1, LGb/f$a;->b:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, LGb/f$a;->c:D

    iget-wide v8, p1, LGb/f$a;->c:D

    sub-double/2addr v5, v8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LGb/f$a;-><init>(DDD)V

    return-object v7
.end method
