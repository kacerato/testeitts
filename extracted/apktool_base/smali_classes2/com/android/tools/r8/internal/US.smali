.class public final Lcom/android/tools/r8/internal/US;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jq0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/N8;

    check-cast p2, Lcom/android/tools/r8/internal/N8;

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    iget-object v1, p2, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 3
    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/internal/pf;->a(Ljava/util/List;Ljava/util/List;)I

    move-result p3

    if-eqz p3, :cond_0

    return p3

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    iget-object p2, p2, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 5
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/nf;->a(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V
    .locals 4

    .line 6
    check-cast p1, Lcom/android/tools/r8/internal/N8;

    .line 7
    iget-object v0, p1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v2, p1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 10
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/rA;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p2

    check-cast v3, Lcom/android/tools/r8/internal/tA;

    .line 12
    iget-object v3, v3, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {v3, v2}, Lcom/android/tools/r8/internal/nA;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
