.class public final Lcom/android/tools/r8/internal/hS;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:Lcom/android/tools/r8/internal/YQ;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/YQ;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    iput p1, p0, Lcom/android/tools/r8/internal/hS;->g:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/hS;->h:Lcom/android/tools/r8/internal/YQ;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/16 v0, 0xf

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 3

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/hS;

    iget v1, p0, Lcom/android/tools/r8/internal/hS;->g:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/hS;->h:Lcom/android/tools/r8/internal/YQ;

    .line 4
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/NK;->a(Lcom/android/tools/r8/internal/YQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object p1

    .line 5
    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/hS;-><init>(ILcom/android/tools/r8/internal/YQ;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/hS;->g:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/hS;->h:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/XQ;)V

    return-void
.end method
