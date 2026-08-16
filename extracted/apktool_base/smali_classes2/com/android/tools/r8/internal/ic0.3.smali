.class public final Lcom/android/tools/r8/internal/ic0;
.super Lcom/android/tools/r8/internal/hc0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/jr0;

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:Lcom/android/tools/r8/internal/S2;

.field public g:Lcom/android/tools/r8/internal/S2;

.field public h:Lcom/android/tools/r8/internal/S2;

.field public i:Lcom/android/tools/r8/internal/S2;

.field public j:Lcom/android/tools/r8/internal/K4;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/hc0;-><init>(ILcom/android/tools/r8/internal/hc0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ic0;->b:Lcom/android/tools/r8/internal/jr0;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/tools/r8/internal/ic0;->c:I

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/tools/r8/internal/ic0;->d:I

    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/ic0;->e:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    if-eqz p4, :cond_0

    .line 6
    iget-object p4, p0, Lcom/android/tools/r8/internal/ic0;->b:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ic0;->h:Lcom/android/tools/r8/internal/S2;

    .line 7
    invoke-static {p4, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ic0;->h:Lcom/android/tools/r8/internal/S2;

    return-object p1

    .line 8
    :cond_0
    iget-object p4, p0, Lcom/android/tools/r8/internal/ic0;->b:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ic0;->i:Lcom/android/tools/r8/internal/S2;

    .line 9
    invoke-static {p4, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ic0;->i:Lcom/android/tools/r8/internal/S2;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/ic0;->b:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ic0;->f:Lcom/android/tools/r8/internal/S2;

    .line 3
    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ic0;->f:Lcom/android/tools/r8/internal/S2;

    return-object p1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/ic0;->b:Lcom/android/tools/r8/internal/jr0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ic0;->g:Lcom/android/tools/r8/internal/S2;

    .line 5
    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;Ljava/lang/String;Lcom/android/tools/r8/internal/S2;)Lcom/android/tools/r8/internal/S2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ic0;->g:Lcom/android/tools/r8/internal/S2;

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
    iget-object v0, p0, Lcom/android/tools/r8/internal/ic0;->j:Lcom/android/tools/r8/internal/K4;

    iput-object v0, p1, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    .line 11
    iput-object p1, p0, Lcom/android/tools/r8/internal/ic0;->j:Lcom/android/tools/r8/internal/K4;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/p8;)V
    .locals 9

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/ic0;->c:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/ic0;->d:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 13
    iget v0, p0, Lcom/android/tools/r8/internal/ic0;->e:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/ic0;->f:Lcom/android/tools/r8/internal/S2;

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 15
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/ic0;->g:Lcom/android/tools/r8/internal/S2;

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/ic0;->h:Lcom/android/tools/r8/internal/S2;

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/ic0;->i:Lcom/android/tools/r8/internal/S2;

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 18
    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/ic0;->j:Lcom/android/tools/r8/internal/K4;

    if-eqz v2, :cond_6

    move v3, v1

    :goto_1
    if-eqz v2, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 19
    iget-object v2, v2, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_1

    :cond_5
    add-int/2addr v0, v3

    .line 20
    :cond_6
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/ic0;->b:Lcom/android/tools/r8/internal/jr0;

    iget v2, p0, Lcom/android/tools/r8/internal/ic0;->e:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/K4;->a(Lcom/android/tools/r8/internal/jr0;IILcom/android/tools/r8/internal/p8;)V

    .line 22
    iget-object v3, p0, Lcom/android/tools/r8/internal/ic0;->b:Lcom/android/tools/r8/internal/jr0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/ic0;->f:Lcom/android/tools/r8/internal/S2;

    iget-object v5, p0, Lcom/android/tools/r8/internal/ic0;->g:Lcom/android/tools/r8/internal/S2;

    iget-object v6, p0, Lcom/android/tools/r8/internal/ic0;->h:Lcom/android/tools/r8/internal/S2;

    iget-object v7, p0, Lcom/android/tools/r8/internal/ic0;->i:Lcom/android/tools/r8/internal/S2;

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/android/tools/r8/internal/S2;->a(Lcom/android/tools/r8/internal/jr0;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/S2;Lcom/android/tools/r8/internal/p8;)V

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/ic0;->j:Lcom/android/tools/r8/internal/K4;

    if-eqz v0, :cond_8

    .line 24
    iget-object v2, p0, Lcom/android/tools/r8/internal/ic0;->b:Lcom/android/tools/r8/internal/jr0;

    .line 25
    iget-object v3, v2, Lcom/android/tools/r8/internal/jr0;->a:Lcom/android/tools/r8/internal/he;

    :goto_2
    if-eqz v0, :cond_8

    .line 26
    iget-object v3, v0, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    if-nez v3, :cond_7

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/K4;->a()Lcom/android/tools/r8/internal/p8;

    move-result-object v3

    iput-object v3, v0, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 28
    :cond_7
    iget-object v3, v0, Lcom/android/tools/r8/internal/K4;->b:Lcom/android/tools/r8/internal/p8;

    .line 29
    iget-object v4, v0, Lcom/android/tools/r8/internal/K4;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/jr0;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/p8;->d(I)Lcom/android/tools/r8/internal/p8;

    move-result-object v4

    iget v5, v3, Lcom/android/tools/r8/internal/p8;->b:I

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/p8;->c(I)Lcom/android/tools/r8/internal/p8;

    .line 30
    iget-object v4, v3, Lcom/android/tools/r8/internal/p8;->a:[B

    iget v3, v3, Lcom/android/tools/r8/internal/p8;->b:I

    invoke-virtual {p1, v4, v1, v3}, Lcom/android/tools/r8/internal/p8;->a([BII)Lcom/android/tools/r8/internal/p8;

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/internal/K4;->c:Lcom/android/tools/r8/internal/K4;

    goto :goto_2

    :cond_8
    return-void
.end method
