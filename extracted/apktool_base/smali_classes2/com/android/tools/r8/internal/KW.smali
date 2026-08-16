.class public final Lcom/android/tools/r8/internal/KW;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/KW;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/KW;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/KW;->i:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/KW;->j:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 6

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/KW;

    iget v1, p0, Lcom/android/tools/r8/internal/H;->a:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/KW;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/internal/KW;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/tools/r8/internal/KW;->i:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/KW;->j:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/KW;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 6

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/H;->a:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/KW;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/internal/KW;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/tools/r8/internal/KW;->i:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/KW;->j:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H;->b(Lcom/android/tools/r8/internal/DX;)V

    return-void
.end method
