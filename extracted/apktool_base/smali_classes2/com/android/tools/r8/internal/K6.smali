.class public final Lcom/android/tools/r8/internal/K6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/tools/r8/internal/K6;->a:I

    .line 3
    iput p2, p0, Lcom/android/tools/r8/internal/K6;->b:I

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/K6;->c:Z

    if-nez v0, :cond_1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/tools/r8/internal/K6;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/K6;->b:I

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/K6;->c:Z

    if-nez v0, :cond_1

    if-gt v1, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/K6;)Lcom/android/tools/r8/internal/K6;
    .locals 5

    .line 4
    iget v0, p0, Lcom/android/tools/r8/internal/K6;->a:I

    iget v1, p0, Lcom/android/tools/r8/internal/K6;->b:I

    if-ne v0, v1, :cond_0

    return-object p1

    .line 5
    :cond_0
    iget v2, p1, Lcom/android/tools/r8/internal/K6;->a:I

    .line 6
    iget v3, p1, Lcom/android/tools/r8/internal/K6;->b:I

    if-ne v2, v3, :cond_1

    return-object p0

    .line 7
    :cond_1
    sget-boolean v4, Lcom/android/tools/r8/internal/K6;->c:Z

    if-nez v4, :cond_3

    if-eq v0, v3, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_3
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/K6;

    invoke-static {v0, v2}, Ljava/lang/Integer;->min(II)I

    move-result v0

    iget v2, p0, Lcom/android/tools/r8/internal/K6;->b:I

    iget p1, p1, Lcom/android/tools/r8/internal/K6;->b:I

    invoke-static {v2, p1}, Ljava/lang/Integer;->max(II)I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/K6;-><init>(II)V

    return-object v1
.end method

.method public final a(Ljava/io/BufferedWriter;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/K6;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/K6;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/K6;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/K6;

    iget v0, p0, Lcom/android/tools/r8/internal/K6;->a:I

    iget v2, p1, Lcom/android/tools/r8/internal/K6;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/K6;->b:I

    iget p1, p1, Lcom/android/tools/r8/internal/K6;->b:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/K6;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/tools/r8/internal/K6;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/K6;->a:I

    iget v1, p0, Lcom/android/tools/r8/internal/K6;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
