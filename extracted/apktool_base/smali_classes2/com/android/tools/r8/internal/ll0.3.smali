.class public Lcom/android/tools/r8/internal/ll0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/r8/internal/ll0;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/android/tools/r8/internal/ll0;

.field public static final g:Lcom/android/tools/r8/internal/ll0;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Lcom/android/tools/r8/internal/ll0;->a(III)Lcom/android/tools/r8/internal/ll0;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/ll0;->f:Lcom/android/tools/r8/internal/ll0;

    const v0, 0x7fffffff

    invoke-static {v0, v0, v0}, Lcom/android/tools/r8/internal/ll0;->a(III)Lcom/android/tools/r8/internal/ll0;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/ll0;->g:Lcom/android/tools/r8/internal/ll0;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/ll0;->b:I

    iput p2, p0, Lcom/android/tools/r8/internal/ll0;->c:I

    iput p3, p0, Lcom/android/tools/r8/internal/ll0;->d:I

    iput-object p4, p0, Lcom/android/tools/r8/internal/ll0;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(III)Lcom/android/tools/r8/internal/ll0;
    .locals 2

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/ll0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/tools/r8/internal/ll0;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ll0;
    .locals 8

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "Invalid semantic version: "

    if-lez v1, :cond_4

    add-int/lit8 v3, v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-le v0, v3, :cond_3

    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x2d

    .line 3
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0

    :cond_0
    if-le v5, v4, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    :goto_0
    const/4 v7, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 8
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gez v6, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 9
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_1
    new-instance v2, Lcom/android/tools/r8/internal/ll0;

    invoke-direct {v2, v1, v0, v3, p0}, Lcom/android/tools/r8/internal/ll0;-><init>(IIILjava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d()Lcom/android/tools/r8/internal/ll0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/ll0;->g:Lcom/android/tools/r8/internal/ll0;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/android/tools/r8/internal/ll0;->b:I

    return v0
.end method

.method public a(Lcom/android/tools/r8/internal/ll0;)Z
    .locals 2

    .line 17
    iget v0, p0, Lcom/android/tools/r8/internal/ll0;->b:I

    iget v1, p1, Lcom/android/tools/r8/internal/ll0;->b:I

    if-eq v0, v1, :cond_0

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/ll0;->c:I

    iget v1, p1, Lcom/android/tools/r8/internal/ll0;->c:I

    if-eq v0, v1, :cond_1

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 19
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/ll0;->d:I

    iget v1, p1, Lcom/android/tools/r8/internal/ll0;->d:I

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ll0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ll0;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ll0;->d:I

    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/ll0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ll0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ll0;->a(Lcom/android/tools/r8/internal/ll0;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/ll0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/ll0;

    iget v0, p0, Lcom/android/tools/r8/internal/ll0;->b:I

    iget v2, p1, Lcom/android/tools/r8/internal/ll0;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/ll0;->c:I

    iget v2, p1, Lcom/android/tools/r8/internal/ll0;->c:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/ll0;->d:I

    iget v2, p1, Lcom/android/tools/r8/internal/ll0;->d:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ll0;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ll0;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/ll0;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/ll0;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/r8/internal/ll0;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/ll0;->e:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/android/tools/r8/internal/ll0;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/ll0;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/ll0;->d:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/ll0;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
