.class public Lcom/android/tools/r8/graph/H3$c;
.super Lcom/android/tools/r8/graph/H3$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/H3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field final b:Lcom/android/tools/r8/graph/M2;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/H3$e;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/android/tools/r8/graph/H3$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/tools/r8/graph/H3;->b:Lcom/android/tools/r8/internal/Xe0;

    const/4 v1, 0x0

    .line 2
    sget-object v2, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$k;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$k;)V
    .locals 1

    .line 3
    invoke-direct {p0, p4}, Lcom/android/tools/r8/graph/H3$e;-><init>(Lcom/android/tools/r8/graph/H3$k;)V

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/graph/H3$c;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/graph/H3$c;->c:Ljava/util/List;

    .line 8
    iput-object p3, p0, Lcom/android/tools/r8/graph/H3$c;->d:Lcom/android/tools/r8/graph/H3$c;

    if-nez v0, :cond_5

    .line 9
    sget-object p3, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p3, :cond_5

    sget-object p1, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    if-ne p4, p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 10
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/graph/p8;

    invoke-direct {p3}, Lcom/android/tools/r8/graph/p8;-><init>()V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/graph/q8;

    invoke-direct {p2}, Lcom/android/tools/r8/graph/q8;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$c;
    .locals 4

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/b4;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/H3$c;->c:Ljava/util/List;

    .line 5
    invoke-interface {p1, v2, v0, v3}, Lcom/android/tools/r8/graph/b4;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/android/tools/r8/graph/H3$c;->d:Lcom/android/tools/r8/graph/H3$c;

    if-eqz v3, :cond_2

    .line 7
    invoke-interface {p1, v3, p0}, Lcom/android/tools/r8/graph/b4;->a(Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object v1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/graph/H3$c;->c:Ljava/util/List;

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/graph/H3$c;->d:Lcom/android/tools/r8/graph/H3$c;

    if-ne p1, v1, :cond_3

    :goto_0
    return-object p0

    .line 9
    :cond_3
    new-instance p1, Lcom/android/tools/r8/graph/H3$c;

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H3$e;->j()Lcom/android/tools/r8/graph/H3$k;

    move-result-object v3

    invoke-direct {p1, v0, v2, v1, v3}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$k;)V

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/H3$c;->b(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$c;
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/graph/H3$c;->e:Z

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H3$e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/graph/H3$c;

    iget-object v1, p0, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/H3$c;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/graph/H3$c;->d:Lcom/android/tools/r8/graph/H3$c;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$k;)V

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/graph/H3$a;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/H3$a;

    sget-object v1, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/graph/H3$a;-><init>(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/H3$k;)V

    return-object v0
.end method

.method public final h()Lcom/android/tools/r8/graph/H3$c;
    .locals 0

    return-object p0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final q()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/H3$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$c;->c:Ljava/util/List;

    return-object v0
.end method
