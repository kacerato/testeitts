.class public final Lcom/android/tools/r8/internal/AR;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AR;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/16 v0, 0x9

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 1

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/AR;

    iget-object v0, p0, Lcom/android/tools/r8/internal/AR;->g:Ljava/lang/Object;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/AR;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/AR;->g:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H;->b(Lcom/android/tools/r8/internal/DX;)V

    return-void
.end method
