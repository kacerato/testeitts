.class public final Lcom/android/tools/r8/internal/vm0;
.super Lcom/android/tools/r8/internal/E00;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/tools/r8/internal/Ei;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public c:Lcom/android/tools/r8/internal/vm0;

.field public final d:Ljava/util/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/E00;-><init>(Lcom/android/tools/r8/graph/H5;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/vm0;->c:Lcom/android/tools/r8/internal/vm0;

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vm0;->d:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/E00;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/vm0;

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/E00;Z)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/vm0;

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Ei;)Z
    .locals 1

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/vm0;

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/vm0;->c:Lcom/android/tools/r8/internal/vm0;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Ei;)Z
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/vm0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/vm0;->d:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c()Ljava/util/TreeSet;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/vm0;->d:Ljava/util/TreeSet;

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/android/tools/r8/internal/Ei;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/vm0;

    const/4 p1, 0x0

    return p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/vm0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/E00;->a()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    return p1
.end method

.method public final d()Ljava/util/Set;
    .locals 1

    .line 3
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/internal/Ei;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/vm0;

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final e()V
    .locals 1

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/vm0;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vm0;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/vm0;->c:Lcom/android/tools/r8/internal/vm0;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/vm0;->d:Ljava/util/TreeSet;

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/vm0;->c:Lcom/android/tools/r8/internal/vm0;

    :cond_2
    return-void
.end method

.method public final e(Lcom/android/tools/r8/internal/Ei;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/vm0;

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/vm0;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/vm0;->c:Lcom/android/tools/r8/internal/vm0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/vm0;->c:Lcom/android/tools/r8/internal/vm0;

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/vm0;->d:Ljava/util/TreeSet;

    invoke-virtual {p1, p0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/vm0;->c:Lcom/android/tools/r8/internal/vm0;

    return-void
.end method

.method public final bridge synthetic f(Lcom/android/tools/r8/internal/Ei;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/vm0;

    const/4 p1, 0x0

    return p1
.end method
