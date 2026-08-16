.class public final Lcom/android/tools/r8/internal/g40;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/AA;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/AA;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/AA;-><init>()V

    iget-object v1, v0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/g40;->a:Lcom/android/tools/r8/internal/AA;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/g40;->b:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/g40;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/g40;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/g40;->a:Lcom/android/tools/r8/internal/AA;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/g40;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/g40;->c:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/internal/Ob1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Ob1;-><init>(Lcom/android/tools/r8/internal/g40;)V

    .line 6
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object p1

    .line 7
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/g40;->c:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/g40;->d:Ljava/util/Set;

    new-instance v0, Lcom/android/tools/r8/internal/Pb1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Pb1;-><init>(Lcom/android/tools/r8/internal/g40;)V

    .line 10
    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/vK;->c(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Lcom/android/tools/r8/internal/rK;

    move-result-object p3

    .line 11
    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/internal/g40;->d:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/g40;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/g40;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
