.class public final Lcom/android/tools/r8/internal/al0;
.super Lcom/android/tools/r8/internal/ex0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ex0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SameNestPolicy"

    return-object v0
.end method
