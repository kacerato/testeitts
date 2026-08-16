.class public Lcom/android/tools/r8/graph/R2$e;
.super Lcom/android/tools/r8/graph/a3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/graph/R2$e;


# instance fields
.field public final d:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/R2$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/R2$e;-><init>(C)V

    sput-object v0, Lcom/android/tools/r8/graph/R2$e;->e:Lcom/android/tools/r8/graph/R2$e;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/a3;-><init>()V

    iput-char p1, p0, Lcom/android/tools/r8/graph/R2$e;->d:C

    return-void
.end method


# virtual methods
.method public final F0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$e;->W0()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->e:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final K0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W0()C
    .locals 1

    iget-char v0, p0, Lcom/android/tools/r8/graph/R2$e;->d:C

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 2
    iget-char v0, p0, Lcom/android/tools/r8/graph/R2$e;->d:C

    int-to-long v0, v0

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->h()Lcom/android/tools/r8/internal/bc;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 2

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 5
    iget-char p2, p0, Lcom/android/tools/r8/graph/R2$e;->d:C

    int-to-long v0, p2

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/dex/y;->b(IJ)I

    move-result p2

    add-int/lit8 v0, p2, 0x1

    neg-int v0, v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 7
    sget-object v0, Lcom/android/tools/r8/graph/V2;->e:Lcom/android/tools/r8/graph/V2;

    add-int/lit8 v1, p2, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/V2;ILcom/android/tools/r8/dex/y;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/y;->d(I)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget-char v0, p0, Lcom/android/tools/r8/graph/R2$e;->d:C

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->q0()Lcom/android/tools/r8/graph/R2$e;

    move-result-object p1

    iget-char p1, p1, Lcom/android/tools/r8/graph/R2$e;->d:C

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget-char v0, p0, Lcom/android/tools/r8/graph/R2$e;->d:C

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/R2$e;

    if-eqz v1, :cond_1

    iget-char v1, p0, Lcom/android/tools/r8/graph/R2$e;->d:C

    check-cast p1, Lcom/android/tools/r8/graph/R2$e;

    iget-char p1, p1, Lcom/android/tools/r8/graph/R2$e;->d:C

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-char v0, p0, Lcom/android/tools/r8/graph/R2$e;->d:C

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 1

    iget-char v0, p0, Lcom/android/tools/r8/graph/R2$e;->d:C

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final q0()Lcom/android/tools/r8/graph/R2$e;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-char v0, p0, Lcom/android/tools/r8/graph/R2$e;->d:C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Char "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
