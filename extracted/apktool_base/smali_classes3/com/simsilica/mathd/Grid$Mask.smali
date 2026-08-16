.class final Lcom/simsilica/mathd/Grid$Mask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simsilica/mathd/Grid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mask"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final mask:J

.field private final shift:I

.field private final signCheck:I

.field private final signExtend:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/simsilica/mathd/Grid$Mask;->shift:I

    const-wide/16 v0, -0x1

    shl-long/2addr v0, p1

    long-to-int v2, v0

    iput v2, p0, Lcom/simsilica/mathd/Grid$Mask;->signExtend:I

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    shl-int p1, v2, p1

    iput p1, p0, Lcom/simsilica/mathd/Grid$Mask;->signCheck:I

    not-long v0, v0

    iput-wide v0, p0, Lcom/simsilica/mathd/Grid$Mask;->mask:J

    return-void
.end method

.method public static synthetic access$000(Lcom/simsilica/mathd/Grid$Mask;)I
    .locals 0

    iget p0, p0, Lcom/simsilica/mathd/Grid$Mask;->shift:I

    return p0
.end method


# virtual methods
.method public apply(IJ)J
    .locals 4

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/simsilica/mathd/Grid$Mask;->mask:J

    and-long/2addr v0, v2

    or-long p1, p2, v0

    return-wide p1
.end method

.method public extract(J)I
    .locals 2

    iget v0, p0, Lcom/simsilica/mathd/Grid$Mask;->shift:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/simsilica/mathd/Grid$Mask;->mask:J

    and-long/2addr p1, v0

    long-to-int p1, p1

    iget p2, p0, Lcom/simsilica/mathd/Grid$Mask;->signCheck:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/simsilica/mathd/Grid$Mask;->signExtend:I

    or-int/2addr p1, p2

    :cond_1
    return p1
.end method
