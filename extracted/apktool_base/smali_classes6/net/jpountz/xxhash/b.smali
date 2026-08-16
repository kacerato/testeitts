.class public abstract Lnet/jpountz/xxhash/b;
.super Lnet/jpountz/xxhash/g;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public final i:[B


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/jpountz/xxhash/g;-><init>(J)V

    const/16 p1, 0x20

    new-array p1, p1, [B

    iput-object p1, p0, Lnet/jpountz/xxhash/b;->i:[B

    invoke-virtual {p0}, Lnet/jpountz/xxhash/b;->e()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 4

    iget-wide v0, p0, Lnet/jpountz/xxhash/g;->b:J

    const-wide v2, 0x60ea27eeadc0b5d6L    # 7.182221976795547E158

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/jpountz/xxhash/b;->d:J

    const-wide v2, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/jpountz/xxhash/b;->e:J

    iput-wide v0, p0, Lnet/jpountz/xxhash/b;->f:J

    const-wide v2, -0x61c8864e7a143579L

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lnet/jpountz/xxhash/b;->g:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/jpountz/xxhash/b;->h:J

    const/4 v0, 0x0

    iput v0, p0, Lnet/jpountz/xxhash/b;->c:I

    return-void
.end method
