.class public Lcom/android/tools/r8/graph/R2$d;
.super Lcom/android/tools/r8/graph/a3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/graph/R2$d;


# instance fields
.field public final d:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/R2$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/R2$d;-><init>(B)V

    sput-object v0, Lcom/android/tools/r8/graph/R2$d;->e:Lcom/android/tools/r8/graph/R2$d;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/a3;-><init>()V

    iput-byte p1, p0, Lcom/android/tools/r8/graph/R2$d;->d:B

    return-void
.end method

.method public static a(B)Lcom/android/tools/r8/graph/R2$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/graph/R2$d;->e:Lcom/android/tools/r8/graph/R2$d;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/R2$d;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/R2$d;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final F0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/R2$d;->W0()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->c:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final J0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W0()B
    .locals 1

    iget-byte v0, p0, Lcom/android/tools/r8/graph/R2$d;->d:B

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 3
    iget-byte v0, p0, Lcom/android/tools/r8/graph/R2$d;->d:B

    int-to-long v0, v0

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->g()Lcom/android/tools/r8/internal/n8;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 2

    .line 5
    sget-object p2, Lcom/android/tools/r8/graph/V2;->c:Lcom/android/tools/r8/graph/V2;

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/V2;ILcom/android/tools/r8/dex/y;)V

    .line 6
    iget-byte p2, p0, Lcom/android/tools/r8/graph/R2$d;->d:B

    int-to-long v0, p2

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/dex/y;->a(IJ)I

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget-byte v0, p0, Lcom/android/tools/r8/graph/R2$d;->d:B

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->p0()Lcom/android/tools/r8/graph/R2$d;

    move-result-object p1

    iget-byte p1, p1, Lcom/android/tools/r8/graph/R2$d;->d:B

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget-byte v0, p0, Lcom/android/tools/r8/graph/R2$d;->d:B

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
    instance-of v1, p1, Lcom/android/tools/r8/graph/R2$d;

    if-eqz v1, :cond_1

    iget-byte v1, p0, Lcom/android/tools/r8/graph/R2$d;->d:B

    check-cast p1, Lcom/android/tools/r8/graph/R2$d;

    iget-byte p1, p1, Lcom/android/tools/r8/graph/R2$d;->d:B

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-byte v0, p0, Lcom/android/tools/r8/graph/R2$d;->d:B

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final k0()Ljava/lang/Object;
    .locals 1

    iget-byte v0, p0, Lcom/android/tools/r8/graph/R2$d;->d:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final p0()Lcom/android/tools/r8/graph/R2$d;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-byte v0, p0, Lcom/android/tools/r8/graph/R2$d;->d:B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
