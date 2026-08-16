.class public final Lcom/android/tools/r8/internal/qu0;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/qu0;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 2

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/qu0;

    iget v0, p0, Lcom/android/tools/r8/internal/H;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/qu0;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/qu0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/H;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/qu0;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/DX;->c(ILjava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H;->b(Lcom/android/tools/r8/internal/DX;)V

    return-void
.end method
