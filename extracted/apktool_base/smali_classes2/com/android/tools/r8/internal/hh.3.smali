.class public final Lcom/android/tools/r8/internal/hh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/LinkedList;

.field public final c:Lcom/android/tools/r8/internal/bx0;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lcom/android/tools/r8/internal/mx0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/LinkedList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/hh;->d:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/android/tools/r8/internal/nx0;->d:Z

    new-instance v0, Lcom/android/tools/r8/internal/mx0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mx0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/hh;->e:Lcom/android/tools/r8/internal/mx0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/hh;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hh;->b:Ljava/util/LinkedList;

    new-instance p1, Lcom/android/tools/r8/internal/bx0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/bx0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hh;->c:Lcom/android/tools/r8/internal/bx0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/lx0;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/qd;)Lcom/android/tools/r8/internal/ix0;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/hh;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/tools/r8/internal/Wc1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Wc1;-><init>()V

    .line 4
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    sget-boolean v2, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Xc1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Xc1;-><init>(Lcom/android/tools/r8/internal/hh;Lcom/android/tools/r8/internal/qd;)V

    .line 8
    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Yc1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Yc1;-><init>()V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Zc1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Zc1;-><init>()V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/internal/hh;->c:Lcom/android/tools/r8/internal/bx0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/hh;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hh;->e:Lcom/android/tools/r8/internal/mx0;

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/ix0;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/tools/r8/internal/ix0;-><init>(Lcom/android/tools/r8/internal/bx0;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/mx0;)V

    return-object v2
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/lx0;)Lcom/android/tools/r8/internal/md;
    .locals 8

    .line 13
    new-instance v7, Lcom/android/tools/r8/internal/md;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hh;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/hh;->c:Lcom/android/tools/r8/internal/bx0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/hh;->d:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/tools/r8/internal/hh;->e:Lcom/android/tools/r8/internal/mx0;

    move-object v0, v7

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/md;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/bx0;Lcom/android/tools/r8/internal/qd;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/mx0;Lcom/android/tools/r8/internal/lx0;)V

    return-object v7
.end method
