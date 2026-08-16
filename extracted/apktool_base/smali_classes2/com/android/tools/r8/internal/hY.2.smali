.class public final Lcom/android/tools/r8/internal/hY;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xc5

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/hY;->g:Ljava/lang/String;

    iput p1, p0, Lcom/android/tools/r8/internal/hY;->h:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/16 v0, 0xd

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 2

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/hY;

    iget-object v0, p0, Lcom/android/tools/r8/internal/hY;->g:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/internal/hY;->h:I

    invoke-direct {p1, v1, v0}, Lcom/android/tools/r8/internal/hY;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/hY;->g:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/internal/hY;->h:I

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H;->b(Lcom/android/tools/r8/internal/DX;)V

    return-void
.end method
