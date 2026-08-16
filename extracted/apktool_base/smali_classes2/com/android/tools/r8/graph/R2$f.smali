.class public Lcom/android/tools/r8/graph/R2$f;
.super Lcom/android/tools/r8/graph/a3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/graph/R2$f;


# instance fields
.field public final d:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/graph/R2$f;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/R2$f;-><init>(D)V

    sput-object v0, Lcom/android/tools/r8/graph/R2$f;->e:Lcom/android/tools/r8/graph/R2$f;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/a3;-><init>()V

    iput-wide p1, p0, Lcom/android/tools/r8/graph/R2$f;->d:D

    return-void
.end method

.method public static a(D)Lcom/android/tools/r8/graph/R2$f;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/graph/R2$f;->e:Lcom/android/tools/r8/graph/R2$f;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/R2$f;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/R2$f;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public final F0()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$f;->W0()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->i:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final L0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W0()D
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$f;->d:D

    return-wide v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 3
    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$f;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->i()Lcom/android/tools/r8/internal/kt;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 2

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 6
    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$f;->d:D

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/hu;->a(Lcom/android/tools/r8/dex/y;D)I

    move-result p2

    add-int/lit8 v0, p2, 0x1

    neg-int v0, v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 8
    sget-object v0, Lcom/android/tools/r8/graph/V2;->i:Lcom/android/tools/r8/graph/V2;

    add-int/lit8 v1, p2, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/V2;ILcom/android/tools/r8/dex/y;)V

    .line 9
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/y;->d(I)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$f;->d:D

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->s0()Lcom/android/tools/r8/graph/R2$f;

    move-result-object p1

    iget-wide v2, p1, Lcom/android/tools/r8/graph/R2$f;->d:D

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/pf;->a(DD)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$f;->d:D

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/internal/nA;->a(D)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/R2$f;

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/android/tools/r8/graph/R2$f;->d:D

    check-cast p1, Lcom/android/tools/r8/graph/R2$f;

    iget-wide v3, p1, Lcom/android/tools/r8/graph/R2$f;->d:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$f;->d:D

    const-wide/high16 v2, 0x403d000000000000L    # 29.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$f;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final s0()Lcom/android/tools/r8/graph/R2$f;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/android/tools/r8/graph/R2$f;->d:D

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Double "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
