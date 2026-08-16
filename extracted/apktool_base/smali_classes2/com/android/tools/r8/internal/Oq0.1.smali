.class public final Lcom/android/tools/r8/internal/Oq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jq0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/US;

.field public final synthetic b:Lcom/android/tools/r8/internal/US;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/US;Lcom/android/tools/r8/internal/US;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Oq0;->a:Lcom/android/tools/r8/internal/US;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Oq0;->b:Lcom/android/tools/r8/internal/US;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/pf;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 4
    invoke-interface {p0, p2, p3, p1}, Lcom/android/tools/r8/internal/Kq0;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oq0;->a:Lcom/android/tools/r8/internal/US;

    new-instance v1, Lcom/android/tools/r8/internal/hQ0;

    invoke-direct {v1, v0, p3}, Lcom/android/tools/r8/internal/hQ0;-><init>(Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/pf;)V

    invoke-static {p1, p2, v1}, Lcom/android/tools/r8/internal/nf;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Ljava/util/Comparator;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/SG;

    check-cast p2, Lcom/android/tools/r8/internal/SG;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Oq0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/rA;)V
    .locals 5

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/SG;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/iQ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/iQ0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8
    move-object v4, p2

    check-cast v4, Lcom/android/tools/r8/internal/tA;

    .line 9
    iget-object v4, v4, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 10
    invoke-interface {v4, v3}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 11
    iget-object v4, p0, Lcom/android/tools/r8/internal/Oq0;->b:Lcom/android/tools/r8/internal/US;

    invoke-interface {p1, v3}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3, p2}, Lcom/android/tools/r8/internal/US;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/SG;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Oq0;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method
