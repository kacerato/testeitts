.class public final Lcom/android/tools/r8/internal/PB;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/16 v0, 0x84

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    iput p1, p0, Lcom/android/tools/r8/internal/PB;->g:I

    iput p2, p0, Lcom/android/tools/r8/internal/PB;->h:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/16 v0, 0xa

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 2

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/PB;

    iget v0, p0, Lcom/android/tools/r8/internal/PB;->g:I

    iget v1, p0, Lcom/android/tools/r8/internal/PB;->h:I

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/PB;-><init>(II)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/PB;->g:I

    iget v1, p0, Lcom/android/tools/r8/internal/PB;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/DX;->a(II)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H;->b(Lcom/android/tools/r8/internal/DX;)V

    return-void
.end method
