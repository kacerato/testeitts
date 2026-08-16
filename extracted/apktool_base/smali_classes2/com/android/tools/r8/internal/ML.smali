.class public final Lcom/android/tools/r8/internal/ML;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final e:Lcom/android/tools/r8/internal/ML;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/ML;

    sget-object v1, Lcom/android/tools/r8/internal/NL;->g:Lcom/android/tools/r8/internal/NL;

    iget-object v1, v1, Lcom/android/tools/r8/internal/t6;->a:[I

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ML;-><init>([I)V

    new-instance v0, Lcom/android/tools/r8/internal/ML;

    sget-object v1, Lcom/android/tools/r8/internal/NL;->h:Lcom/android/tools/r8/internal/NL;

    iget-object v1, v1, Lcom/android/tools/r8/internal/t6;->a:[I

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ML;-><init>([I)V

    sput-object v0, Lcom/android/tools/r8/internal/ML;->e:Lcom/android/tools/r8/internal/ML;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/ML;->b:I

    iput p2, p0, Lcom/android/tools/r8/internal/ML;->c:I

    iput p3, p0, Lcom/android/tools/r8/internal/ML;->d:I

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    if-ltz p3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Patch version should be not less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Minor version should be not less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Major version should be not less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([I)V
    .locals 3

    const-string v0, "intArray"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/ML;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ML;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/tools/r8/internal/ML;->b:I

    iget v1, p1, Lcom/android/tools/r8/internal/ML;->b:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/ML;->c:I

    iget v1, p1, Lcom/android/tools/r8/internal/ML;->c:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->a(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/ML;->d:I

    iget p1, p1, Lcom/android/tools/r8/internal/ML;->d:I

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/GJ;->a(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/ML;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ML;->a(Lcom/android/tools/r8/internal/ML;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/android/tools/r8/internal/ML;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type kotlin.metadata.jvm.JvmMetadataVersion"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/tools/r8/internal/ML;

    iget v1, p0, Lcom/android/tools/r8/internal/ML;->b:I

    iget v3, p1, Lcom/android/tools/r8/internal/ML;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/ML;->c:I

    iget v3, p1, Lcom/android/tools/r8/internal/ML;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/ML;->d:I

    iget p1, p1, Lcom/android/tools/r8/internal/ML;->d:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ML;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/tools/r8/internal/ML;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/tools/r8/internal/ML;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/tools/r8/internal/ML;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/tools/r8/internal/ML;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/internal/ML;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
