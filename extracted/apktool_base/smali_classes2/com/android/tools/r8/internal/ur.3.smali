.class public final Lcom/android/tools/r8/internal/ur;
.super Lcom/android/tools/r8/internal/Cs;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final g:I

.field public final h:I

.field public final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Op;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Cs;-><init>(Lcom/android/tools/r8/internal/Op;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Op;->b()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-char v0, v0

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/ur;->g:I

    .line 4
    invoke-static {p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/internal/Op;)I

    move-result v1

    iput v1, p0, Lcom/android/tools/r8/internal/ur;->h:I

    .line 5
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/ur;->i:[I

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/ur;->g:I

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/ur;->i:[I

    invoke-static {p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/internal/Op;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([II)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Cs;-><init>()V

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/ur;->j:Z

    if-nez v0, :cond_1

    array-length v0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    array-length v0, p1

    iput v0, p0, Lcom/android/tools/r8/internal/ur;->g:I

    .line 11
    iput p2, p0, Lcom/android/tools/r8/internal/ur;->h:I

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/internal/ur;->i:[I

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ur;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/internal/ur;->g:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/yv1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yv1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/zv1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zv1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Av1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Av1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->d(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/ur;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/internal/ur;->h:I

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/ur;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/ur;->i:[I

    return-object p0
.end method


# virtual methods
.method public final L()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final O()[I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ur;->h:I

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public final P()[I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ur;->i:[I

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/ur;

    new-instance v0, Lcom/android/tools/r8/internal/xv1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xv1;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Np;)Ljava/lang/String;
    .locals 7

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    .packed-switch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget v1, p0, Lcom/android/tools/r8/internal/ur;->h:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "  # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Lcom/android/tools/r8/internal/ur;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/ur;->i:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 16
    const-string v6, "      :label_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    :cond_0
    const-string p1, "    .end packed-switch"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    .line 5
    iget p1, p0, Lcom/android/tools/r8/internal/ur;->g:I

    int-to-short p1, p1

    .line 6
    invoke-virtual {p6, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 7
    iget p1, p0, Lcom/android/tools/r8/internal/ur;->h:I

    int-to-long p3, p1

    invoke-static {p3, p4, p6}, Lcom/android/tools/r8/internal/Np;->a(JLjava/nio/ShortBuffer;)V

    .line 8
    :goto_0
    iget p1, p0, Lcom/android/tools/r8/internal/ur;->g:I

    if-ge p2, p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/ur;->i:[I

    aget p1, p1, p2

    int-to-long p3, p1

    invoke-static {p3, p4, p6}, Lcom/android/tools/r8/internal/Np;->a(JLjava/nio/ShortBuffer;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/Np;)Ljava/lang/String;
    .locals 5

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PackedSwitchPayload"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 6
    const-string v1, " offsets relative to associated PackedSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/ur;->g:I

    if-ge v1, v2, :cond_2

    if-eqz p1, :cond_1

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/ur;->i:[I

    aget v2, v2, v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v2, 0x2

    .line 10
    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/ur;->i:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/android/tools/r8/internal/Np;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 12
    :goto_1
    iget v3, p0, Lcom/android/tools/r8/internal/ur;->h:I

    add-int/2addr v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v0, v2, v3}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ur;->b(Lcom/android/tools/r8/internal/Np;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/xv1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xv1;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ur;->g:I

    const v1, 0x103f657

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/tools/r8/internal/ur;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/ur;->i:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ur;->i:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
