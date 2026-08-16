.class public final Lcom/android/tools/r8/internal/Vw;
.super Lcom/android/tools/r8/internal/Uw;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/jr0;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public i:Lcom/android/tools/r8/internal/S2;

.field public j:Lcom/android/tools/r8/internal/S2;

.field public k:Lcom/android/tools/r8/internal/S2;

.field public l:Lcom/android/tools/r8/internal/S2;

.field public m:Lcom/android/tools/r8/internal/K4;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/jr0;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Uw;-><init>(ILcom/android/tools/r8/internal/Uw;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    iput p2, p0, Lcom/android/tools/r8/internal/Vw;->d:I

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/tools/r8/internal/Vw;->e:I

    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/tools/r8/internal/Vw;->f:I

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/tools/r8/internal/Vw;->g:I

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p1, p6}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    iput p1, p0, Lcom/android/tools/r8/internal/Vw;->h:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    if-eqz p4, :cond_0

    .line 6
    iget-object p4, p0, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vw;->k:Lcom/android/tools/r8/internal/S2;

    .line 7
    invoke-static {p4, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vw;->k:Lcom/android/tools/r8/internal/S2;

    return-object p1

    .line 8
    :cond_0
    iget-object p4, p0, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vw;->l:Lcom/android/tools/r8/internal/S2;

    .line 9
    invoke-static {p4, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vw;->l:Lcom/android/tools/r8/internal/S2;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vw;->i:Lcom/android/tools/r8/internal/S2;

    .line 3
    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vw;->i:Lcom/android/tools/r8/internal/S2;

    return-object p1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/Vw;->c:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vw;->j:Lcom/android/tools/r8/internal/S2;

    .line 5
    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vw;->j:Lcom/android/tools/r8/internal/S2;

    return-object p1
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vw;->m:Lcom/android/tools/r8/internal/K4;

    iput-object v0, p1, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    .line 11
    iput-object p1, p0, Lcom/android/tools/r8/internal/Vw;->m:Lcom/android/tools/r8/internal/K4;

    return-void
.end method
