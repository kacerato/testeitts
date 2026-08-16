.class public final Lcom/android/tools/r8/internal/RJ;
.super Lcom/android/tools/r8/internal/H;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/android/tools/r8/internal/Qz;

.field public final j:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xba

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/H;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/RJ;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/RJ;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/RJ;->i:Lcom/android/tools/r8/internal/Qz;

    iput-object p4, p0, Lcom/android/tools/r8/internal/RJ;->j:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x6

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;
    .locals 4

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/RJ;

    iget-object v0, p0, Lcom/android/tools/r8/internal/RJ;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RJ;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/RJ;->i:Lcom/android/tools/r8/internal/Qz;

    iget-object v3, p0, Lcom/android/tools/r8/internal/RJ;->j:[Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/RJ;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/H;)Lcom/android/tools/r8/internal/H;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/DX;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/RJ;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RJ;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/RJ;->i:Lcom/android/tools/r8/internal/Qz;

    iget-object v3, p0, Lcom/android/tools/r8/internal/RJ;->j:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/H;->b(Lcom/android/tools/r8/internal/DX;)V

    return-void
.end method
