.class abstract Lcom/android/tools/r8/internal/ep;
.super Lcom/android/tools/r8/internal/un;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final f:S

.field public final g:C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/un;-><init>()V

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/ep;->h:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-ltz p2, :cond_2

    const v0, 0xffff

    if-gt p2, v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    int-to-short p1, p1

    .line 8
    iput-short p1, p0, Lcom/android/tools/r8/internal/ep;->f:S

    int-to-char p1, p2

    .line 9
    iput-char p1, p0, Lcom/android/tools/r8/internal/ep;->g:C

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/un;-><init>(Lcom/android/tools/r8/internal/w8;)V

    int-to-short p1, p1

    .line 2
    iput-short p1, p0, Lcom/android/tools/r8/internal/ep;->f:S

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result p1

    const p2, 0xffff

    and-int/2addr p1, p2

    int-to-char p1, p1

    .line 4
    iput-char p1, p0, Lcom/android/tools/r8/internal/ep;->g:C

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ep;)I
    .locals 0

    .line 2
    iget-short p0, p0, Lcom/android/tools/r8/internal/ep;->f:S

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/B91;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/B91;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/C91;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C91;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/ep;)I
    .locals 0

    .line 1
    iget-char p0, p0, Lcom/android/tools/r8/internal/ep;->g:C

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/ep;

    new-instance v0, Lcom/android/tools/r8/internal/A91;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/A91;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 9
    iget-short p1, p0, Lcom/android/tools/r8/internal/ep;->f:S

    iget-char v0, p0, Lcom/android/tools/r8/internal/ep;->g:C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", v"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 4
    iget-short p1, p0, Lcom/android/tools/r8/internal/ep;->f:S

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result p2

    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 6
    iget-char p1, p0, Lcom/android/tools/r8/internal/ep;->g:C

    int-to-short p1, p1

    .line 7
    invoke-virtual {p6, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 4
    iget-short p1, p0, Lcom/android/tools/r8/internal/ep;->f:S

    iget-char v0, p0, Lcom/android/tools/r8/internal/ep;->g:C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", v"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/A91;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/A91;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-char v0, p0, Lcom/android/tools/r8/internal/ep;->g:C

    shl-int/lit8 v0, v0, 0x8

    iget-short v1, p0, Lcom/android/tools/r8/internal/ep;->f:S

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
