.class public Lib/e;
.super LK8/f;
.source "SourceFile"


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public g:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F


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

    invoke-direct {p0}, LK8/f;-><init>()V

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lib/e;->b:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lib/e;->c:F

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lib/e;->d:F

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lib/e;->e:F

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lib/e;->g:F

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lib/e;->i:F

    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lib/e;->j:F

    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lib/e;->k:F

    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lib/e;->l:F

    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lib/e;->m:F

    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lib/e;->n:F

    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lib/e;->o:F

    const/16 v0, 0xc

    aget v0, p1, v0

    iput v0, p0, Lib/e;->p:F

    const/16 v0, 0xd

    aget v0, p1, v0

    iput v0, p0, Lib/e;->q:F

    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p0, Lib/e;->r:F

    const/16 v0, 0xf

    aget p1, p1, v0

    iput p1, p0, Lib/e;->s:F

    return-void
.end method


# virtual methods
.method public toArray()[F
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lib/e;->b:F

    iget v2, v0, Lib/e;->c:F

    iget v3, v0, Lib/e;->d:F

    iget v4, v0, Lib/e;->e:F

    iget v5, v0, Lib/e;->g:F

    iget v6, v0, Lib/e;->i:F

    iget v7, v0, Lib/e;->j:F

    iget v8, v0, Lib/e;->k:F

    iget v9, v0, Lib/e;->l:F

    iget v10, v0, Lib/e;->m:F

    iget v11, v0, Lib/e;->n:F

    iget v12, v0, Lib/e;->o:F

    iget v13, v0, Lib/e;->p:F

    iget v14, v0, Lib/e;->q:F

    iget v15, v0, Lib/e;->r:F

    move/from16 v16, v15

    iget v15, v0, Lib/e;->s:F

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/16 v17, 0x0

    aput v1, v0, v17

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    const/4 v1, 0x4

    aput v5, v0, v1

    const/4 v1, 0x5

    aput v6, v0, v1

    const/4 v1, 0x6

    aput v7, v0, v1

    const/4 v1, 0x7

    aput v8, v0, v1

    const/16 v1, 0x8

    aput v9, v0, v1

    const/16 v1, 0x9

    aput v10, v0, v1

    const/16 v1, 0xa

    aput v11, v0, v1

    const/16 v1, 0xb

    aput v12, v0, v1

    const/16 v1, 0xc

    aput v13, v0, v1

    const/16 v1, 0xd

    aput v14, v0, v1

    const/16 v1, 0xe

    aput v16, v0, v1

    const/16 v1, 0xf

    aput v15, v0, v1

    return-object v0
.end method
