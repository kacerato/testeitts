.class public Lcom/android/tools/r8/graph/R2$g;
.super Lcom/android/tools/r8/graph/a3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/graph/R2$g;


# instance fields
.field public final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/R2$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/R2$g;-><init>(F)V

    sput-object v0, Lcom/android/tools/r8/graph/R2$g;->e:Lcom/android/tools/r8/graph/R2$g;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/a3;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/graph/R2$g;->d:F

    return-void
.end method

.method public static a(F)Lcom/android/tools/r8/graph/R2$g;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/tools/r8/graph/R2$g;->e:Lcom/android/tools/r8/graph/R2$g;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/R2$g;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/R2$g;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public final F0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$g;->W0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->h:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final M0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W0()F
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/R2$g;->d:F

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 3
    iget v0, p0, Lcom/android/tools/r8/graph/R2$g;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->j()Lcom/android/tools/r8/internal/Fx;

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
    iget p2, p0, Lcom/android/tools/r8/graph/R2$g;->d:F

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/hu;->a(Lcom/android/tools/r8/dex/y;F)I

    move-result p2

    add-int/lit8 v0, p2, 0x1

    neg-int v0, v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 8
    sget-object v0, Lcom/android/tools/r8/graph/V2;->h:Lcom/android/tools/r8/graph/V2;

    add-int/lit8 v1, p2, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/V2;ILcom/android/tools/r8/dex/y;)V

    .line 9
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/y;->d(I)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/R2$g;->d:F

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->v0()Lcom/android/tools/r8/graph/R2$g;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/graph/R2$g;->d:F

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(FF)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/R2$g;->d:F

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(F)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/R2$g;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/tools/r8/graph/R2$g;->d:F

    check-cast p1, Lcom/android/tools/r8/graph/R2$g;

    iget p1, p1, Lcom/android/tools/r8/graph/R2$g;->d:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/R2$g;->d:F

    const/high16 v1, 0x41980000    # 19.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/R2$g;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/graph/R2$g;->d:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Float "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v0()Lcom/android/tools/r8/graph/R2$g;
    .locals 0

    return-object p0
.end method
