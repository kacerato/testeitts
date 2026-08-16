.class public final Lcom/android/tools/r8/internal/UX;
.super Lcom/android/tools/r8/internal/TX;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/jr0;

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:I

.field public final g:Lcom/android/tools/r8/internal/p8;

.field public h:I

.field public final i:Lcom/android/tools/r8/internal/p8;

.field public j:I

.field public final k:Lcom/android/tools/r8/internal/p8;

.field public l:I

.field public final m:Lcom/android/tools/r8/internal/p8;

.field public n:I

.field public final o:Lcom/android/tools/r8/internal/p8;

.field public p:I

.field public final q:Lcom/android/tools/r8/internal/p8;

.field public r:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/jr0;III)V
    .locals 2

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/TX;-><init>(ILcom/android/tools/r8/internal/TX;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    iput p2, p0, Lcom/android/tools/r8/internal/UX;->c:I

    iput p3, p0, Lcom/android/tools/r8/internal/UX;->d:I

    iput p4, p0, Lcom/android/tools/r8/internal/UX;->e:I

    new-instance p1, Lcom/android/tools/r8/internal/p8;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/p8;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UX;->g:Lcom/android/tools/r8/internal/p8;

    new-instance p1, Lcom/android/tools/r8/internal/p8;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/p8;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UX;->i:Lcom/android/tools/r8/internal/p8;

    new-instance p1, Lcom/android/tools/r8/internal/p8;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/p8;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UX;->k:Lcom/android/tools/r8/internal/p8;

    new-instance p1, Lcom/android/tools/r8/internal/p8;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/p8;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UX;->m:Lcom/android/tools/r8/internal/p8;

    new-instance p1, Lcom/android/tools/r8/internal/p8;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/p8;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UX;->o:Lcom/android/tools/r8/internal/p8;

    new-instance p1, Lcom/android/tools/r8/internal/p8;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/p8;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UX;->q:Lcom/android/tools/r8/internal/p8;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/UX;->g:Lcom/android/tools/r8/internal/p8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    const/16 v2, 0x13

    .line 6
    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p2

    .line 7
    iget p2, p2, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 10
    iget p1, p0, Lcom/android/tools/r8/internal/UX;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/UX;->f:I

    return-void
.end method

.method public final varargs a(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/UX;->i:Lcom/android/tools/r8/internal/p8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    const/16 v2, 0x14

    .line 12
    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p2

    .line 13
    iget p2, p2, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 14
    iget-object p2, p0, Lcom/android/tools/r8/internal/UX;->i:Lcom/android/tools/r8/internal/p8;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    goto :goto_1

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/UX;->i:Lcom/android/tools/r8/internal/p8;

    array-length v0, p3

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 16
    array-length p2, p3

    :goto_0
    if-ge p1, p2, :cond_1

    aget-object v0, p3, p1

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/UX;->i:Lcom/android/tools/r8/internal/p8;

    iget-object v2, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    const/16 v3, 0x13

    .line 18
    invoke-virtual {v2, v3, v0}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object v0

    .line 19
    iget v0, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    iget p1, p0, Lcom/android/tools/r8/internal/UX;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/UX;->h:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    const/4 v1, 0x7

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 4
    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    iput p1, p0, Lcom/android/tools/r8/internal/UX;->r:I

    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/UX;->o:Lcom/android/tools/r8/internal/p8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    const/4 v2, 0x7

    .line 22
    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 23
    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/internal/UX;->o:Lcom/android/tools/r8/internal/p8;

    array-length v0, p2

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 25
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 26
    iget-object v3, p0, Lcom/android/tools/r8/internal/UX;->o:Lcom/android/tools/r8/internal/p8;

    iget-object v4, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    .line 27
    invoke-virtual {v4, v2, v1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object v1

    .line 28
    iget v1, v1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/UX;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/UX;->n:I

    return-void
.end method

.method public final varargs b(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/UX;->k:Lcom/android/tools/r8/internal/p8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    const/16 v2, 0x14

    .line 6
    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p2

    .line 7
    iget p2, p2, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 8
    iget-object p2, p0, Lcom/android/tools/r8/internal/UX;->k:Lcom/android/tools/r8/internal/p8;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    goto :goto_1

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/UX;->k:Lcom/android/tools/r8/internal/p8;

    array-length v0, p3

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 10
    array-length p2, p3

    :goto_0
    if-ge p1, p2, :cond_1

    aget-object v0, p3, p1

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/UX;->k:Lcom/android/tools/r8/internal/p8;

    iget-object v2, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    const/16 v3, 0x13

    .line 12
    invoke-virtual {v2, v3, v0}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object v0

    .line 13
    iget v0, v0, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 14
    :cond_1
    :goto_1
    iget p1, p0, Lcom/android/tools/r8/internal/UX;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/UX;->j:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/UX;->q:Lcom/android/tools/r8/internal/p8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    const/16 v2, 0x14

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 4
    iget p1, p0, Lcom/android/tools/r8/internal/UX;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/UX;->p:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/UX;->m:Lcom/android/tools/r8/internal/p8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UX;->b:Lcom/android/tools/r8/internal/jr0;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/jr0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/hr0;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/internal/hr0;->a:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    iget p1, p0, Lcom/android/tools/r8/internal/UX;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/UX;->l:I

    return-void
.end method
