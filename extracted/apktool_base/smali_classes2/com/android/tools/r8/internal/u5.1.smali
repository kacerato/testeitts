.class public final Lcom/android/tools/r8/internal/u5;
.super Lcom/android/tools/r8/internal/x5;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/w5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/w5;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/x5;-><init>(Lcom/android/tools/r8/graph/v2;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/u5;->b:Lcom/android/tools/r8/internal/w5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;
    .locals 1

    iget-object p4, p0, Lcom/android/tools/r8/internal/u5;->b:Lcom/android/tools/r8/internal/w5;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-interface {p4, p2, p3, p6}, Lcom/android/tools/r8/internal/w5;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;

    move-result-object p2

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p4

    add-int/lit8 p4, p4, 0x4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance p4, Lcom/android/tools/r8/internal/ka;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance p5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {p5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object p6

    iput-object p1, p6, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    iget-object v0, p0, Lcom/android/tools/r8/internal/x5;->a:Lcom/android/tools/r8/graph/v2;

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p6, v0}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p6

    check-cast p6, Lcom/android/tools/r8/internal/B60$b$a;

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object p6

    check-cast p6, Lcom/android/tools/r8/internal/B60$b$a;

    invoke-virtual {p6}, Lcom/android/tools/r8/internal/B60$b$a;->d()Lcom/android/tools/r8/internal/B60$b;

    move-result-object p6

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/tools/r8/internal/Ma;

    invoke-direct {v0, p4, p6}, Lcom/android/tools/r8/internal/Ma;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/tools/r8/internal/Ma;

    invoke-direct {p2, p5, p1}, Lcom/android/tools/r8/internal/Ma;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3
.end method
