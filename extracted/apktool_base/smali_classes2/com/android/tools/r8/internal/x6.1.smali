.class public final enum Lcom/android/tools/r8/internal/x6;
.super Lcom/android/tools/r8/internal/F6;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "SUB"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/tools/r8/internal/F6;-><init>(ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(JJ)J
    .locals 0

    .line 1
    sub-long/2addr p1, p3

    return-wide p1
.end method

.method public final a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/u6;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Qq0;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Qq0;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    return-object v0
.end method

.method public final d(II)I
    .locals 0

    .line 1
    sub-int/2addr p1, p2

    return p1
.end method

.method public final d(Z)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
