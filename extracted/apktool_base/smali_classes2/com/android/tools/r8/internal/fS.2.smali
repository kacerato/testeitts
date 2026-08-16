.class public final Lcom/android/tools/r8/internal/fS;
.super Lcom/android/tools/r8/internal/wY;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wY;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ$g;->d()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x64

    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/fS;->b:I

    sget-boolean v0, Lcom/android/tools/r8/internal/fS;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/Collection;
    .locals 5

    iget-object v0, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fS;->b:I

    if-le v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/AA;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/AA;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    iget-object v3, v1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/tools/r8/internal/fS;->b:I

    if-ne v3, v4, :cond_1

    new-instance v1, Lcom/android/tools/r8/internal/AA;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/AA;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, v1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, v1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    iget p1, p0, Lcom/android/tools/r8/internal/fS;->b:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AA;

    sget-boolean v2, Lcom/android/tools/r8/internal/fS;->c:Z

    if-nez v2, :cond_5

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AA;

    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    iget-object v1, v1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-object v0

    :cond_6
    :goto_2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "LimitGroups"

    return-object v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
