.class public Lcom/android/tools/r8/internal/Hb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Vd;

    array-length v1, p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    new-instance p0, Lcom/android/tools/r8/internal/Gb;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Gb;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/tools/r8/internal/K4;

    const/4 v2, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V

    iget-object p0, p0, Lcom/android/tools/r8/internal/Gb;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Vd;

    array-length v1, p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    new-instance p0, Lcom/android/tools/r8/internal/Gb;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Gb;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/tools/r8/internal/K4;

    const/4 v2, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V

    iget-object p0, p0, Lcom/android/tools/r8/internal/Gb;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
