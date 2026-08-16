.class public abstract Lnet/jpountz/xxhash/a;
.super Lnet/jpountz/xxhash/c;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public final i:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/jpountz/xxhash/c;-><init>(I)V

    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Lnet/jpountz/xxhash/a;->i:[B

    invoke-virtual {p0}, Lnet/jpountz/xxhash/a;->e()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    iget v0, p0, Lnet/jpountz/xxhash/c;->b:I

    const v1, 0x24234428

    add-int/2addr v1, v0

    iput v1, p0, Lnet/jpountz/xxhash/a;->c:I

    const v1, -0x7a143589

    add-int/2addr v1, v0

    iput v1, p0, Lnet/jpountz/xxhash/a;->d:I

    iput v0, p0, Lnet/jpountz/xxhash/a;->e:I

    const v1, -0x61c8864f

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/jpountz/xxhash/a;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/jpountz/xxhash/a;->h:J

    const/4 v0, 0x0

    iput v0, p0, Lnet/jpountz/xxhash/a;->g:I

    return-void
.end method
