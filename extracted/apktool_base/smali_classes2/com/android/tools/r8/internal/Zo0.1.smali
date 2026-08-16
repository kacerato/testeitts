.class public abstract Lcom/android/tools/r8/internal/Zo0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/lL;)Lcom/android/tools/r8/internal/dL;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/lL;->u()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/tools/r8/internal/GU; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/tools/r8/internal/ku0;->z:Lcom/android/tools/r8/internal/St0;

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/St0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/dL;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/tools/r8/internal/GU; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/mL;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/Exception;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/eL;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/eL;-><init>(Ljava/lang/Exception;)V

    throw v0

    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/mL;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/tools/r8/internal/fL;->b:Lcom/android/tools/r8/internal/fL;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/mL;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
