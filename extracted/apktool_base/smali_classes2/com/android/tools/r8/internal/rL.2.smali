.class public final Lcom/android/tools/r8/internal/rL;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public final g:Lcom/android/tools/r8/internal/YQ;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/YQ;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x7

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 3

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/rL;

    iget v1, p0, Lcom/android/tools/r8/internal/H;->a:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    .line 5
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/NK;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/YQ;

    .line 6
    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/rL;-><init>(ILcom/android/tools/r8/internal/YQ;)V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/H;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/XQ;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H;->b(Lcom/android/tools/r8/internal/DX;)V

    return-void
.end method
