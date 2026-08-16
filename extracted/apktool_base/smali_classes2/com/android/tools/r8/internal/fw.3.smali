.class public final Lcom/android/tools/r8/internal/fw;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/fw;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/fw;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/fw;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 4

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/fw;

    iget v0, p0, Lcom/android/tools/r8/internal/H;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/fw;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/fw;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/internal/fw;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/fw;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 4

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/H;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/fw;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/fw;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/internal/fw;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H;->b(Lcom/android/tools/r8/internal/DX;)V

    return-void
.end method
