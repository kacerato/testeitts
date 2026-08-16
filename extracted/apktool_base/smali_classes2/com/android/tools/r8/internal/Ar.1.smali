.class public final Lcom/android/tools/r8/internal/Ar;
.super Lcom/android/tools/r8/internal/Np;
.source "SourceFile"


# instance fields
.field public final f:I

.field public final g:[I

.field public final h:[Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(I[I[Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Np;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/Ar;->f:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ar;->g:[I

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ar;->h:[Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Cz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Cz0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Ar;)[Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ar;->h:[Lcom/android/tools/r8/graph/l1;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/Ar;

    new-instance v0, Lcom/android/tools/r8/internal/Bz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bz0;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ar;->b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/f6;->c()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "DexRecordFieldValues instructions should always be rewritten into NewArray"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ar;->h:[Lcom/android/tools/r8/graph/l1;

    array-length p4, p2

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_0

    aget-object v0, p2, p5

    .line 2
    invoke-virtual {v0, p1, p3}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 4

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/CH;

    const/16 v1, 0x10

    .line 10
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ar;->g:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 12
    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ar;->h:[Lcom/android/tools/r8/graph/l1;

    iget v2, p0, Lcom/android/tools/r8/internal/Ar;->f:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/tools/r8/internal/aB;->a([Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/CH;I)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 3

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "v"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/Ar;->f:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " { "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ar;->g:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 6
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ar;->g:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    const-string v0, " }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Bz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bz0;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    const-class v0, Lcom/android/tools/r8/internal/Ar;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ar;->h:[Lcom/android/tools/r8/graph/l1;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()I
    .locals 1

    const/16 v0, 0x102

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "RecordFieldValues"

    return-object v0
.end method

.method public final v()I
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "DexRecordFieldValues instructions should always be rewritten into NewArray"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "record-field-values*"

    return-object v0
.end method
