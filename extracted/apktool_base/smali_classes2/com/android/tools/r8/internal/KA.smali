.class public final Lcom/android/tools/r8/internal/KA;
.super Lcom/android/tools/r8/internal/JA;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/JA;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/JA;)Lcom/android/tools/r8/internal/JA;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z
    .locals 3

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->M3:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    .line 3
    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 4
    const-string v2, "remove"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
