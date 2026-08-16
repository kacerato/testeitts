.class public final Lcom/android/tools/r8/shaking/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/j;->a:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/j;->b:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/n3;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 12
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/o3;

    if-eqz p0, :cond_0

    .line 13
    sget-object p1, Lcom/android/tools/r8/graph/b;->a:Lcom/android/tools/r8/graph/b;

    iput-object p1, p0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/s5;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/shaking/gd;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/gd;-><init>(Lcom/android/tools/r8/graph/s5;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/i;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/shaking/dd;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/dd;-><init>(Lcom/android/tools/r8/shaking/i;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    new-instance v0, Lcom/android/tools/r8/shaking/ed;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/ed;-><init>(Lcom/android/tools/r8/shaking/j;)V

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    check-cast v1, Lcom/android/tools/r8/graph/s5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/j;->b:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/shaking/fd;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/fd;-><init>(Lcom/android/tools/r8/graph/n3;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/shaking/j;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method
