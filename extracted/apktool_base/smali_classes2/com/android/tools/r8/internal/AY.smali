.class public final Lcom/android/tools/r8/internal/AY;
.super Lcom/android/tools/r8/internal/BY;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/qo0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/BY;-><init>(Lcom/android/tools/r8/internal/qo0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/j1;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/EY;->a:Lcom/android/tools/r8/internal/qo0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
