.class public Lcom/android/tools/r8/naming/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/naming/k$b;,
        Lcom/android/tools/r8/naming/k$c;,
        Lcom/android/tools/r8/naming/k$a;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/List;

.field public static final synthetic i:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/android/tools/r8/internal/nC;

.field public final d:Lcom/android/tools/r8/internal/nC;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/tools/r8/naming/k$c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/android/tools/r8/naming/k;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Map;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/k;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    invoke-static {p4}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    iput-object p5, p0, Lcom/android/tools/r8/naming/k;->e:Ljava/util/Map;

    iput-object p6, p0, Lcom/android/tools/r8/naming/k;->f:Ljava/util/HashMap;

    iput-object p7, p0, Lcom/android/tools/r8/naming/k;->g:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/k$b;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/tools/r8/naming/k$b;->h:I

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Kb;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/mappinginformation/e;->r()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object p0

    const-string p1, "\n"

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Kb;Ljava/lang/String;Lcom/android/tools/r8/naming/V;)V
    .locals 4

    .line 49
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    .line 50
    iget-object p2, p2, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/mappinginformation/e;

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/mappinginformation/e;->r()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/V;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/k$b;)V
    .locals 1

    .line 29
    iget-object v0, p1, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/k$c;)V
    .locals 1

    .line 28
    iget-object p1, p1, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    new-instance v0, Lcom/android/tools/r8/naming/c3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/c3;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/util/List;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/android/tools/r8/naming/d3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/d3;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/naming/V$c;)Lcom/android/tools/r8/naming/V;
    .locals 3

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/naming/k;->i:Z

    if-nez v0, :cond_1

    .line 11
    instance-of v0, p1, Lcom/android/tools/r8/naming/V$b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/V;

    return-object p1

    .line 14
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/naming/k;->i:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->e()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    .line 15
    instance-of v0, p1, Lcom/android/tools/r8/naming/V$a;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/V;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/android/tools/r8/naming/k$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/k$c;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/naming/k;)Lcom/android/tools/r8/naming/k;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "."

    const-string v2, " and "

    const-string v3, "Cannot combine mapping for "

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/tools/r8/naming/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "R8 Retrace do not support merging of partial class mappings."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v4, p0, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because it maps forward to both "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v4, p0, Lcom/android/tools/r8/naming/k;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because it maps back to both "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/naming/V;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Kb;)V
    .locals 9

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v0

    const-string v1, " -> "

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/k;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v0

    const-string v1, ":\n"

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->g:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/naming/e3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/e3;-><init>(Lcom/android/tools/r8/internal/Kb;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    new-instance v0, Lcom/android/tools/r8/naming/f3;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/naming/f3;-><init>(Lcom/android/tools/r8/internal/Kb;Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v2

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 37
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/naming/V;

    .line 38
    invoke-interface {v0, v6}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v2, p0, Lcom/android/tools/r8/naming/k;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/k$c;

    .line 41
    iget-object v3, v3, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 42
    :cond_1
    new-instance v2, Lcom/android/tools/r8/naming/g3;

    invoke-direct {v2}, Lcom/android/tools/r8/naming/g3;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_2
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/android/tools/r8/naming/k$b;

    .line 44
    invoke-interface {p1, v1}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/tools/r8/naming/k$b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v5

    const-string v6, "\n"

    invoke-interface {v5, v6}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    .line 45
    iget-object v3, v3, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 46
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/mappinginformation/e;

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/tools/r8/naming/mappinginformation/e;->r()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/android/tools/r8/internal/Kb;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Kb;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->f:Ljava/util/HashMap;

    .line 20
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/naming/h3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/h3;-><init>(Ljava/util/function/Consumer;)V

    .line 21
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->e:Ljava/util/Map;

    .line 23
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/naming/i3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/i3;-><init>(Ljava/util/function/Consumer;)V

    .line 24
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public b(Lcom/android/tools/r8/naming/V$c;)Lcom/android/tools/r8/naming/V;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->e()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/V;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/tools/r8/naming/V$c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_1
    return-object v2

    .line 4
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/naming/k;->i:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/V;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/tools/r8/naming/V$c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v1

    :cond_6
    return-object v2
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/naming/V;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/naming/V;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/V;

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/V;

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/naming/mappinginformation/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/naming/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/naming/k;

    iget-object v1, p0, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/k;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/naming/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    iget-object v3, p1, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/nC;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    iget-object v3, p1, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/nC;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/k;->e:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/tools/r8/naming/k;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/naming/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/naming/k;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/android/tools/r8/kotlin/h1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/h1;-><init>(Ljava/lang/StringBuilder;)V

    new-instance v2, Lcom/android/tools/r8/internal/Jb;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Jb;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/naming/k;->a(Lcom/android/tools/r8/internal/Kb;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
