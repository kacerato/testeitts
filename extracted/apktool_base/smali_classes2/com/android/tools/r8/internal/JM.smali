.class public final Lcom/android/tools/r8/internal/JM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/JM;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/DP;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/JM;

    sget-object v1, Lcom/android/tools/r8/internal/zP;->a:Lcom/android/tools/r8/internal/zP;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/JM;-><init>(Lcom/android/tools/r8/internal/DP;I)V

    sput-object v0, Lcom/android/tools/r8/internal/JM;->c:Lcom/android/tools/r8/internal/JM;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/DP;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/JM;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/JM;->a:Lcom/android/tools/r8/internal/DP;

    iput p2, p0, Lcom/android/tools/r8/internal/JM;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/JM;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/JM;

    iget v1, p0, Lcom/android/tools/r8/internal/JM;->b:I

    iget v3, p1, Lcom/android/tools/r8/internal/JM;->b:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/JM;->a:Lcom/android/tools/r8/internal/DP;

    iget-object p1, p1, Lcom/android/tools/r8/internal/JM;->a:Lcom/android/tools/r8/internal/DP;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/JM;->a:Lcom/android/tools/r8/internal/DP;

    iget v1, p0, Lcom/android/tools/r8/internal/JM;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/JM;->a:Lcom/android/tools/r8/internal/DP;

    iget v1, p0, Lcom/android/tools/r8/internal/JM;->b:I

    const/4 v2, 0x0

    const-string v3, "[]"

    const/4 v4, 0x1

    if-gt v1, v4, :cond_2

    if-ltz v1, :cond_0

    move v2, v4

    :cond_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_4

    const-string v3, ""

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "invalid count: %s"

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Aq0;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v4, 0x2

    int-to-long v5, v4

    int-to-long v7, v1

    mul-long/2addr v5, v7

    long-to-int v1, v5

    int-to-long v7, v1

    cmp-long v7, v7, v5

    if-nez v7, :cond_5

    new-array v5, v1, [C

    invoke-virtual {v3, v2, v4, v5, v2}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    sub-int v3, v1, v4

    if-ge v4, v3, :cond_3

    invoke-static {v5, v2, v5, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v5, v2, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required array size too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
