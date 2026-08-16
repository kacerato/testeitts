.class abstract Lcom/android/tools/r8/internal/gp;
.super Lcom/android/tools/r8/internal/vn;
.source "SourceFile"


# instance fields
.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/vn;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/tools/r8/internal/gp;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/vn;-><init>(Lcom/android/tools/r8/internal/Op;)V

    .line 2
    invoke-static {p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/internal/Op;)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/gp;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/gp;->f:I

    check-cast p1, Lcom/android/tools/r8/internal/gp;

    iget p1, p1, Lcom/android/tools/r8/internal/gp;->f:I

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p1

    iget v0, p0, Lcom/android/tools/r8/internal/gp;->f:I

    add-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":label_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result p2

    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 5
    iget p1, p0, Lcom/android/tools/r8/internal/gp;->f:I

    int-to-long p1, p1

    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(JLjava/nio/ShortBuffer;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 1

    .line 4
    iget p1, p0, Lcom/android/tools/r8/internal/gp;->f:I

    const/4 v0, 0x2

    .line 5
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/gp;->f:I

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 3
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/gp;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
