.class public final Lcom/android/tools/r8/internal/j70;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/j70;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/of1;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/of1;-><init>(Lcom/android/tools/r8/internal/j70;Lcom/android/tools/r8/graph/H2;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 7
    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/i70;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/i70;-><init>()V

    .line 9
    iget-object v3, p0, Lcom/android/tools/r8/internal/j70;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/internal/i70;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    .line 10
    sget-boolean v3, Lcom/android/tools/r8/internal/j70;->c:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_4
    :goto_2
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/i70;

    .line 14
    iget-object v4, v3, Lcom/android/tools/r8/internal/i70;->a:Lcom/android/tools/r8/internal/AA;

    .line 15
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/AA;->k()Z

    move-result v4

    if-nez v4, :cond_4

    .line 16
    iget-object v3, v3, Lcom/android/tools/r8/internal/i70;->a:Lcom/android/tools/r8/internal/AA;

    .line 17
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/i70;)Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/j70;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/i70;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "PreserveMethodCharacteristics"

    return-object v0
.end method
