.class public final Lcom/android/tools/r8/internal/YQ;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public g:Lcom/android/tools/r8/internal/XQ;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/16 v0, 0x8

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 0

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/NK;->a(Lcom/android/tools/r8/internal/YQ;)Lcom/android/tools/r8/internal/YQ;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/YQ;->b()Lcom/android/tools/r8/internal/XQ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/XQ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YQ;->g:Lcom/android/tools/r8/internal/XQ;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/XQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/XQ;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/YQ;->g:Lcom/android/tools/r8/internal/XQ;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/YQ;->g:Lcom/android/tools/r8/internal/XQ;

    return-object v0
.end method
