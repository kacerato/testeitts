.class public final Lcom/android/tools/r8/internal/tw;
.super Lcom/android/tools/r8/internal/Uw;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Object;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Uw;-><init>(ILcom/android/tools/r8/internal/Uw;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tw;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/mu0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/mu0;-><init>(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/internal/tw;->f:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tw;->f:Ljava/util/List;

    return-object v0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/tw;->g:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tw;->g:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/J2;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/J2;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/tw;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tw;->d:Ljava/util/List;

    return-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/tw;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tw;->e:Ljava/util/List;

    return-object v0
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/tw;->h:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tw;->h:Ljava/util/List;

    return-void
.end method
