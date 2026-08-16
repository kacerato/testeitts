.class public final enum Lcom/android/tools/r8/internal/rs0;
.super Lcom/android/tools/r8/internal/ss0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "BIG_DECIMAL"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/ss0;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Number;
    .locals 5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->s()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/tools/r8/internal/hL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot parse "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; at path "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/hL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
