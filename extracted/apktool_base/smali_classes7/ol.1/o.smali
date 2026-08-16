.class public abstract Lol/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lol/o$a;,
        Lol/o$b;,
        Lol/o$c;
    }
.end annotation


# instance fields
.field public final a:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lol/o;->b:I

    const/16 v0, 0x10

    const-string v1, "cannot precompute SPX_WOTS_LEN2 for n outside {2, .., 256}"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x100

    const/16 v5, 0x8

    if-ne p3, v0, :cond_3

    const/4 v0, 0x4

    iput v0, p0, Lol/o;->d:I

    mul-int/lit8 v6, p2, 0x8

    div-int/2addr v6, v0

    iput v6, p0, Lol/o;->f:I

    if-gt p2, v5, :cond_0

    :goto_0
    iput v2, p0, Lol/o;->g:I

    goto :goto_1

    :cond_0
    const/16 v2, 0x88

    if-gt p2, v2, :cond_1

    const/4 p2, 0x3

    iput p2, p0, Lol/o;->g:I

    goto :goto_1

    :cond_1
    if-gt p2, v4, :cond_2

    iput v0, p0, Lol/o;->g:I

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-ne p3, v4, :cond_6

    iput v5, p0, Lol/o;->d:I

    mul-int/lit8 v0, p2, 0x8

    div-int/2addr v0, v5

    iput v0, p0, Lol/o;->f:I

    if-gt p2, v3, :cond_4

    iput v3, p0, Lol/o;->g:I

    goto :goto_1

    :cond_4
    if-gt p2, v4, :cond_5

    goto :goto_0

    :goto_1
    iput p3, p0, Lol/o;->c:I

    iget p2, p0, Lol/o;->f:I

    iget p3, p0, Lol/o;->g:I

    add-int/2addr p2, p3

    iput p2, p0, Lol/o;->e:I

    iput-boolean p1, p0, Lol/o;->a:Z

    iput p4, p0, Lol/o;->h:I

    iput p5, p0, Lol/o;->i:I

    iput p6, p0, Lol/o;->j:I

    iput p7, p0, Lol/o;->k:I

    div-int/2addr p7, p4

    iput p7, p0, Lol/o;->l:I

    shl-int p1, v3, p5

    iput p1, p0, Lol/o;->m:I

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wots_w assumed 16 or 256"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a([BLol/a;[B)[B
.end method

.method public abstract b([BLol/a;[B[B)[B
.end method

.method public abstract c([B[B[B[B)Lol/h;
.end method

.method public abstract d([B[BLol/a;)[B
.end method

.method public abstract e([B[B[B)[B
.end method

.method public abstract f([BLol/a;[B)[B
.end method

.method public abstract g([B)V
.end method
