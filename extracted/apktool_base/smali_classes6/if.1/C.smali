.class public Lif/C;
.super Lif/v;
.source "SourceFile"


# static fields
.field public static final g:I = 0x18

.field public static final h:I = 0x3c

.field public static final i:I = 0x3c

.field public static final j:I = 0xe10

.field public static final k:I = 0x15180

.field public static final l:Ljava/util/logging/Logger;

.field public static final synthetic m:Z


# instance fields
.field public e:D

.field public f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/C;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/C;->l:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 3

    sget-object v0, Lif/h;->Enabled:Lif/h;

    invoke-direct {p0, v0}, Lif/v;-><init>(Lif/h;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lif/C;->f:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x41c00000    # 24.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x45610000    # 3600.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Lif/C;->e:D

    return-void

    :cond_0
    sget-object v0, Lif/C;->l:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "startHour={0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hour should be between 0 and 24"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public e()F
    .locals 1

    iget v0, p0, Lif/C;->f:F

    return v0
.end method

.method public f()F
    .locals 2

    iget-wide v0, p0, Lif/C;->e:D

    double-to-float v0, v0

    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41c00000    # 24.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public g()I
    .locals 2

    iget-wide v0, p0, Lif/C;->e:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x15180

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public h(F)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x41c00000    # 24.0f

    const-string v2, "new hour"

    invoke-static {p1, v2, v0, v1}, Lif/E;->h(FLjava/lang/String;FF)Z

    const-wide v0, 0x40ac200000000000L    # 3600.0

    float-to-double v2, p1

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lif/C;->e:D

    return-void
.end method

.method public i(F)V
    .locals 0

    iput p1, p0, Lif/C;->f:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lif/C;->g()I

    move-result v0

    rem-int/lit8 v1, v0, 0x3c

    div-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v2, v0, 0x3c

    div-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02d:%02d:%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 4

    invoke-super {p0, p1}, Lif/v;->update(F)V

    iget v0, p0, Lif/C;->f:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    iget-wide v2, p0, Lif/C;->e:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lif/C;->e:D

    const-wide v0, 0x40f5180000000000L    # 86400.0

    invoke-static {v2, v3, v0, v1}, Ljf/f;->I(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lif/C;->e:D

    return-void
.end method
