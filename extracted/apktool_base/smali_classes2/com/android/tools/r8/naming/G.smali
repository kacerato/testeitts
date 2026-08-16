.class public final Lcom/android/tools/r8/naming/G;
.super Lcom/android/tools/r8/internal/gv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    .line 4
    check-cast p1, Lcom/android/tools/r8/graph/H0;

    .line 5
    sget-object v0, Lcom/android/tools/r8/internal/MW;->b:Lcom/android/tools/r8/internal/MW;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/MW;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/H0;

    check-cast p2, Lcom/android/tools/r8/graph/H0;

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/MW;->b:Lcom/android/tools/r8/internal/MW;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/gv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
