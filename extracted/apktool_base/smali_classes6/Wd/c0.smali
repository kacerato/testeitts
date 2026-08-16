.class public abstract LWd/c0;
.super LWd/H;
.source "SourceFile"


# static fields
.field public static final m:J = 0x1L

.field public static final n:B = 0x0t

.field public static final o:B = 0x1t

.field public static final p:B = 0x2t


# instance fields
.field public transient l:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LWd/H;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    invoke-direct {p0, p1, v0}, LWd/c0;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 3
    invoke-direct {p0}, LWd/H;-><init>()V

    const/4 v0, 0x1

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    iput p2, p0, LWd/H;->d:F

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 6
    invoke-static {p1}, LVd/b;->a(F)I

    move-result p1

    invoke-virtual {p0, p1}, LWd/c0;->jf(I)I

    return-void
.end method


# virtual methods
.method public Ye()I
    .locals 1

    iget-object v0, p0, LWd/c0;->l:[B

    array-length v0, v0

    return v0
.end method

.method public hf(I)V
    .locals 2

    iget-object v0, p0, LWd/c0;->l:[B

    const/4 v1, 0x2

    aput-byte v1, v0, p1

    invoke-super {p0, p1}, LWd/H;->hf(I)V

    return-void
.end method

.method public jf(I)I
    .locals 1

    invoke-super {p0, p1}, LWd/H;->jf(I)I

    move-result p1

    new-array v0, p1, [B

    iput-object v0, p0, LWd/c0;->l:[B

    return p1
.end method
