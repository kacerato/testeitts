.class public Lcom/android/tools/r8/internal/Db;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/ka;

.field public final b:Lcom/android/tools/r8/internal/ka;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/ka;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Db;->a:Lcom/android/tools/r8/internal/ka;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Db;->d:Ljava/util/List;

    sget-boolean p1, Lcom/android/tools/r8/internal/Db;->e:Z

    if-nez p1, :cond_2

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    sget-boolean p3, Lcom/android/tools/r8/internal/Db;->e:Z

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Db;)Lcom/android/tools/r8/internal/ka;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/tools/r8/internal/Db;->a:Lcom/android/tools/r8/internal/ka;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/O;Lcom/android/tools/r8/internal/Pq0;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/NC0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/NC0;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O;->a()Lcom/android/tools/r8/internal/Jq0;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/OC0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/OC0;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O;->a()Lcom/android/tools/r8/internal/Jq0;

    move-result-object v1

    .line 8
    invoke-virtual {p1, v0, v1, v1}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/PC0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/PC0;-><init>()V

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pq0;->h(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/QC0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/QC0;-><init>()V

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O;->a()Lcom/android/tools/r8/internal/Jq0;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Jq0;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Db;)Lcom/android/tools/r8/internal/ka;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/Db;->b:Lcom/android/tools/r8/internal/ka;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/Db;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/internal/Db;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/internal/Db;->d:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Db;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/SC0;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/SC0;-><init>(Lcom/android/tools/r8/graph/O;)V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Db;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/RC0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/RC0;-><init>(Lcom/android/tools/r8/graph/f6;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Db;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
