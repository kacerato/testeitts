.class public final Lcom/android/tools/r8/internal/PD;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 1

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/PD;

    iget v0, p0, Lcom/android/tools/r8/internal/H;->a:I

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/PD;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/H;->a:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/DX;->a(I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H;->b(Lcom/android/tools/r8/internal/DX;)V

    return-void
.end method
