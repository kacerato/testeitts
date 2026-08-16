.class public final Lcom/android/tools/r8/internal/ei;
.super Lcom/android/tools/r8/internal/gE;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Y00;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Y00;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gE;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ei;->a:Lcom/android/tools/r8/internal/Y00;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/fE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ei;->a:Lcom/android/tools/r8/internal/Y00;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/gE;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ei;->a:Lcom/android/tools/r8/internal/Y00;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Y00;

    .line 4
    iget v2, v0, Lcom/android/tools/r8/internal/Y00;->a:I

    .line 5
    iget-object v3, v0, Lcom/android/tools/r8/internal/Y00;->b:Lcom/android/tools/r8/internal/UD;

    .line 6
    invoke-virtual {v3, p2}, Lcom/android/tools/r8/internal/UD;->a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/UD;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/internal/Y00;->c:Lcom/android/tools/r8/internal/p;

    .line 7
    invoke-virtual {v4, p1, p2}, Lcom/android/tools/r8/internal/p;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/p;

    move-result-object p1

    iget-object p2, v0, Lcom/android/tools/r8/internal/Y00;->d:Lcom/android/tools/r8/graph/A2;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/android/tools/r8/internal/Y00;-><init>(ILcom/android/tools/r8/internal/UD;Lcom/android/tools/r8/internal/p;Lcom/android/tools/r8/graph/A2;)V

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/ei;->a:Lcom/android/tools/r8/internal/Y00;

    if-eq v1, p1, :cond_0

    .line 9
    new-instance p1, Lcom/android/tools/r8/internal/ei;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/ei;-><init>(Lcom/android/tools/r8/internal/Y00;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/gE;
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/ei;->a:Lcom/android/tools/r8/internal/Y00;

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/Y00;

    .line 12
    iget v2, v0, Lcom/android/tools/r8/internal/Y00;->a:I

    .line 13
    iget-object v3, v0, Lcom/android/tools/r8/internal/Y00;->b:Lcom/android/tools/r8/internal/UD;

    .line 14
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/tools/r8/internal/UD;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/UD;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/internal/Y00;->c:Lcom/android/tools/r8/internal/p;

    .line 15
    invoke-virtual {v4, p1, p2, p4}, Lcom/android/tools/r8/internal/p;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/p;

    move-result-object p1

    iget-object p4, v0, Lcom/android/tools/r8/internal/Y00;->d:Lcom/android/tools/r8/graph/A2;

    .line 16
    invoke-virtual {p2, p3, p4}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/android/tools/r8/internal/Y00;-><init>(ILcom/android/tools/r8/internal/UD;Lcom/android/tools/r8/internal/p;Lcom/android/tools/r8/graph/A2;)V

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/internal/ei;->a:Lcom/android/tools/r8/internal/Y00;

    if-eq v1, p1, :cond_0

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/ei;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/ei;-><init>(Lcom/android/tools/r8/internal/Y00;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/fE;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ei;->a:Lcom/android/tools/r8/internal/Y00;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
