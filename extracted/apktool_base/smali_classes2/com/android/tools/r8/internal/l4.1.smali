.class public abstract Lcom/android/tools/r8/internal/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/internal/c4;
    .locals 4

    .line 27
    sget-boolean v0, Lcom/android/tools/r8/internal/c4;->b:Z

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/c4$a;

    .line 29
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/c4$a;-><init>(Ljava/util/LinkedHashMap;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 31
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/graph/M2;)Z

    .line 32
    new-instance v3, Lcom/android/tools/r8/internal/si1;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/si1;-><init>(Lcom/android/tools/r8/internal/c4$a;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/E0;->g(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz p0, :cond_1

    .line 34
    instance-of v1, p0, Lcom/android/tools/r8/internal/pb0;

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/pb0;->a(Lcom/android/tools/r8/internal/c4$a;)V

    .line 36
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c4$a;->a()Lcom/android/tools/r8/internal/c4;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/l4;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v2, :cond_3

    .line 4
    instance-of v3, v2, Lcom/android/tools/r8/internal/ob0;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/l4;->b:Z

    if-nez p1, :cond_2

    .line 6
    instance-of p1, v2, Lcom/android/tools/r8/internal/pb0;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/pb0;->b:Lcom/android/tools/r8/internal/l4;

    .line 10
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_3

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/s4;->a()Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/profile/art/ArtProfileProvider;

    .line 13
    invoke-static {v3, p1}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/profile/art/ArtProfileProvider;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/c4$a;

    move-result-object v4

    .line 14
    invoke-interface {v3, v4}, Lcom/android/tools/r8/profile/art/ArtProfileProvider;->getArtProfile(Lcom/android/tools/r8/profile/art/ArtProfileBuilder;)V

    .line 15
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/c4$a;->a()Lcom/android/tools/r8/internal/c4;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/s4;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    invoke-static {p0}, Lcom/android/tools/r8/internal/l4;->a(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/internal/c4;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_5
    iget-boolean p1, v0, Lcom/android/tools/r8/internal/s4;->c:Z

    if-eqz p1, :cond_8

    .line 19
    sget-boolean p1, Lcom/android/tools/r8/internal/l4;->b:Z

    if-nez p1, :cond_8

    .line 20
    iget-object p1, v0, Lcom/android/tools/r8/internal/s4;->g:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 21
    invoke-static {p0}, Lcom/android/tools/r8/internal/s4;->a(Lcom/android/tools/r8/graph/h;)Ljava/lang/String;

    move-result-object p0

    .line 22
    sget-boolean p1, Lcom/android/tools/r8/internal/s4;->h:Z

    if-nez p1, :cond_8

    iget-object p1, v0, Lcom/android/tools/r8/internal/s4;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 23
    :cond_7
    invoke-static {p0}, Lcom/android/tools/r8/internal/s4;->a(Lcom/android/tools/r8/graph/h;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/tools/r8/internal/s4;->g:Ljava/lang/String;

    .line 24
    :cond_8
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 25
    sget-object p0, Lcom/android/tools/r8/internal/It;->c:Lcom/android/tools/r8/internal/It;

    return-object p0

    .line 26
    :cond_9
    new-instance p0, Lcom/android/tools/r8/internal/G00;

    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/G00;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/c4$a;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/tools/r8/internal/q4;->d()Lcom/android/tools/r8/internal/q4$a;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 39
    iput-object p1, v0, Lcom/android/tools/r8/internal/q4$a;->b:Lcom/android/tools/r8/graph/A2;

    .line 40
    new-instance p1, Lcom/android/tools/r8/internal/ri1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/ri1;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/q4$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/q4$a;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/q4$a;->b()Lcom/android/tools/r8/internal/q4;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/internal/q4;)Lcom/android/tools/r8/internal/c4$a;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/r4$a;)V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4$a;->b()Lcom/android/tools/r8/internal/r4$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4$a;->d()Lcom/android/tools/r8/internal/r4$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4$a;->c()Lcom/android/tools/r8/internal/r4$a;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/internal/G00;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/l4;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/l4;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;)V
.end method

.method public abstract b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/l4;
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/l4;
.end method

.method public abstract isEmpty()Z
.end method
