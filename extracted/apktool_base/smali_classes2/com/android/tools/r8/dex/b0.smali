.class public final Lcom/android/tools/r8/dex/b0;
.super Lcom/android/tools/r8/dex/e0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/f0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/dex/e0;-><init>(Lcom/android/tools/r8/dex/f0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(C)Z
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(II)Z
    .locals 0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final b()C
    .locals 1

    .line 1
    const/16 v0, 0x2e

    return v0
.end method

.method public final b(II)Z
    .locals 4

    const/16 v0, 0x2d

    const/16 v1, 0x2e

    const/4 v2, 0x1

    if-lez p1, :cond_0

    .line 2
    iget-object v3, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/dex/e0;->a(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    return v2
.end method
