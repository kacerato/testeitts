.class public Lcom/android/tools/r8/naming/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/StringConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/naming/x0$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/naming/x0$a;
    .locals 6

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    new-instance p0, Lcom/android/tools/r8/naming/x0$a;

    const-string v0, "Failure to find map hash"

    invoke-direct {p0, v0, v3}, Lcom/android/tools/r8/naming/x0$a;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_2

    new-instance p0, Lcom/android/tools/r8/naming/x0$a;

    const-string v0, "Failure to find map hash in header"

    invoke-direct {p0, v0, v3}, Lcom/android/tools/r8/naming/x0$a;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "pg_map_hash"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "SHA-256 "

    const/16 v5, 0xb

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "\'"

    if-gez v4, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown map hash function: \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/naming/x0$a;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/naming/x0$a;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_3
    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/android/tools/r8/internal/pA;->a:I

    sget-object v4, Lcom/android/tools/r8/internal/oA;->a:Lcom/android/tools/r8/internal/hW;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/hW;->a()Lcom/android/tools/r8/internal/lA;

    move-result-object v4

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    check-cast v4, Lcom/android/tools/r8/internal/F;

    invoke-virtual {v4, p0, v2}, Lcom/android/tools/r8/internal/F;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/tools/r8/internal/lA;

    invoke-interface {v4}, Lcom/android/tools/r8/internal/lA;->a()Lcom/android/tools/r8/internal/fA;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/gA;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p0, Lcom/android/tools/r8/naming/x0$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/tools/r8/naming/x0$a;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mismatching map hash: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' != \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/naming/x0$a;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/naming/x0$a;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_5
    :goto_1
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
