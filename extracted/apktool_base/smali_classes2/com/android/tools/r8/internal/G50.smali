.class public final Lcom/android/tools/r8/internal/G50;
.super Lcom/android/tools/r8/internal/F50;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/C50;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/F50;-><init>(Lcom/android/tools/r8/internal/C50;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/G50;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/G50;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/G50;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/tt0;->e(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/sO;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/tools/r8/internal/G50;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/tt0;->b(Ljava/lang/String;)[Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x1

    move v5, v3

    :goto_0
    if-ge v5, v1, :cond_1

    aget-object v6, v0, v5

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/sO;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "method"

    return-object v0
.end method
