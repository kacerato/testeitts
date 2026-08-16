.class public final Lcom/google/common/collect/t1;
.super Lcom/google/common/collect/u1;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/t1$d;,
        Lcom/google/common/collect/t1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/u1<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field public static final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lcom/google/common/collect/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/t1<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:J


# instance fields
.field public final transient g:Lcom/google/common/collect/v2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v2<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final transient h:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient i:Lcom/google/common/collect/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/t1;->j:Ljava/util/Comparator;

    new-instance v0, Lcom/google/common/collect/t1;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/x1;->c0(Ljava/util/Comparator;)Lcom/google/common/collect/v2;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/t1;-><init>(Lcom/google/common/collect/v2;Lcom/google/common/collect/g1;)V

    sput-object v0, Lcom/google/common/collect/t1;->k:Lcom/google/common/collect/t1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/v2;Lcom/google/common/collect/g1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v2<",
            "TK;>;",
            "Lcom/google/common/collect/g1<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/t1;-><init>(Lcom/google/common/collect/v2;Lcom/google/common/collect/g1;Lcom/google/common/collect/t1;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/v2;Lcom/google/common/collect/g1;Lcom/google/common/collect/t1;)V
    .locals 0
    .param p3    # Lcom/google/common/collect/t1;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v2<",
            "TK;>;",
            "Lcom/google/common/collect/g1<",
            "TV;>;",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/u1;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/t1;->g:Lcom/google/common/collect/v2;

    .line 4
    iput-object p2, p0, Lcom/google/common/collect/t1;->h:Lcom/google/common/collect/g1;

    .line 5
    iput-object p3, p0, Lcom/google/common/collect/t1;->i:Lcom/google/common/collect/t1;

    return-void
.end method

.method public static B0(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p4, p5}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/util/Map$Entry;

    const/4 p4, 0x0

    aput-object p0, p3, p4

    const/4 p0, 0x1

    aput-object p1, p3, p0

    const/4 p0, 0x2

    aput-object p2, p3, p0

    invoke-static {p3}, Lcom/google/common/collect/t1;->p0([Ljava/util/Map$Entry;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static C0(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p4, p5}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    invoke-static {p6, p7}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p3

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/util/Map$Entry;

    const/4 p5, 0x0

    aput-object p0, p4, p5

    const/4 p0, 0x1

    aput-object p1, p4, p0

    const/4 p0, 0x2

    aput-object p2, p4, p0

    const/4 p0, 0x3

    aput-object p3, p4, p0

    invoke-static {p4}, Lcom/google/common/collect/t1;->p0([Ljava/util/Map$Entry;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static D0(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p4, p5}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    invoke-static {p6, p7}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p3

    invoke-static {p8, p9}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p4

    const/4 p5, 0x5

    new-array p5, p5, [Ljava/util/Map$Entry;

    const/4 p6, 0x0

    aput-object p0, p5, p6

    const/4 p0, 0x1

    aput-object p1, p5, p0

    const/4 p0, 0x2

    aput-object p2, p5, p0

    const/4 p0, 0x3

    aput-object p3, p5, p0

    const/4 p0, 0x4

    aput-object p4, p5, p0

    invoke-static {p5}, Lcom/google/common/collect/t1;->p0([Ljava/util/Map$Entry;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static E0(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p4, p5}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    invoke-static {p6, p7}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p3

    invoke-static {p8, p9}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p4

    invoke-static {p10, p11}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p5

    const/4 p6, 0x6

    new-array p6, p6, [Ljava/util/Map$Entry;

    const/4 p7, 0x0

    aput-object p0, p6, p7

    const/4 p0, 0x1

    aput-object p1, p6, p0

    const/4 p0, 0x2

    aput-object p2, p6, p0

    const/4 p0, 0x3

    aput-object p3, p6, p0

    const/4 p0, 0x4

    aput-object p4, p6, p0

    const/4 p0, 0x5

    aput-object p5, p6, p0

    invoke-static {p6}, Lcom/google/common/collect/t1;->p0([Ljava/util/Map$Entry;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static F0(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p4, p5}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    invoke-static {p6, p7}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p3

    invoke-static {p8, p9}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p4

    invoke-static {p10, p11}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p5

    invoke-static {p12, p13}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p6

    const/4 p7, 0x7

    new-array p7, p7, [Ljava/util/Map$Entry;

    const/4 p8, 0x0

    aput-object p0, p7, p8

    const/4 p0, 0x1

    aput-object p1, p7, p0

    const/4 p0, 0x2

    aput-object p2, p7, p0

    const/4 p0, 0x3

    aput-object p3, p7, p0

    const/4 p0, 0x4

    aput-object p4, p7, p0

    const/4 p0, 0x5

    aput-object p5, p7, p0

    const/4 p0, 0x6

    aput-object p6, p7, p0

    invoke-static {p7}, Lcom/google/common/collect/t1;->p0([Ljava/util/Map$Entry;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static G0(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p4, p5}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    invoke-static {p6, p7}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p3

    invoke-static {p8, p9}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p4

    invoke-static {p10, p11}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p5

    invoke-static {p12, p13}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p6

    invoke-static {p14, p15}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p7

    const/16 p8, 0x8

    new-array p8, p8, [Ljava/util/Map$Entry;

    const/4 p9, 0x0

    aput-object p0, p8, p9

    const/4 p0, 0x1

    aput-object p1, p8, p0

    const/4 p0, 0x2

    aput-object p2, p8, p0

    const/4 p0, 0x3

    aput-object p3, p8, p0

    const/4 p0, 0x4

    aput-object p4, p8, p0

    const/4 p0, 0x5

    aput-object p5, p8, p0

    const/4 p0, 0x6

    aput-object p6, p8, p0

    const/4 p0, 0x7

    aput-object p7, p8, p0

    invoke-static {p8}, Lcom/google/common/collect/t1;->p0([Ljava/util/Map$Entry;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static H0(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static/range {p4 .. p5}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static/range {p6 .. p7}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static/range {p8 .. p9}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static/range {p10 .. p11}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-static/range {p12 .. p13}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-static/range {p14 .. p15}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-static/range {p16 .. p17}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/util/Map$Entry;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v3, v9, v0

    const/4 v0, 0x4

    aput-object v4, v9, v0

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    invoke-static {v9}, Lcom/google/common/collect/t1;->p0([Ljava/util/Map$Entry;)Lcom/google/common/collect/t1;

    move-result-object v0

    return-object v0
.end method

.method public static I0(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static/range {p4 .. p5}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static/range {p6 .. p7}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static/range {p8 .. p9}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static/range {p10 .. p11}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-static/range {p12 .. p13}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-static/range {p14 .. p15}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-static/range {p16 .. p17}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    invoke-static/range {p18 .. p19}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v9

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/util/Map$Entry;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    invoke-static {v10}, Lcom/google/common/collect/t1;->p0([Ljava/util/Map$Entry;)Lcom/google/common/collect/t1;

    move-result-object v0

    return-object v0
.end method

.method public static J0(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;TK;TV;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/t1;

    new-instance v1, Lcom/google/common/collect/v2;

    invoke-static {p1}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    invoke-direct {v1, p1, p0}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/g1;Ljava/util/Comparator;)V

    invoke-static {p2}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/t1;-><init>(Lcom/google/common/collect/v2;Lcom/google/common/collect/g1;)V

    return-object v0
.end method

.method public static K0(Ljava/util/Comparator;)Lcom/google/common/collect/t1$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/common/collect/t1$c<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/t1$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/t1$c;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static L0()Lcom/google/common/collect/t1$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/t1$c<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/t1$c;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->F()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/t1$c;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static synthetic b0(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/t1;->J0(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/google/common/collect/t1;)Lcom/google/common/collect/v2;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/t1;->g:Lcom/google/common/collect/v2;

    return-object p0
.end method

.method public static synthetic d0(Lcom/google/common/collect/t1;)Lcom/google/common/collect/g1;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/t1;->h:Lcom/google/common/collect/g1;

    return-object p0
.end method

.method public static e0(Ljava/lang/Iterable;)Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    sget-object v0, Lcom/google/common/collect/t1;->j:Ljava/util/Comparator;

    check-cast v0, Lcom/google/common/collect/Ordering;

    invoke-static {p0, v0}, Lcom/google/common/collect/t1;->f0(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static f0(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/google/common/collect/t1;->n0(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ljava/util/Map;)Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/t1;->j:Ljava/util/Comparator;

    check-cast v0, Lcom/google/common/collect/Ordering;

    invoke-static {p0, v0}, Lcom/google/common/collect/t1;->i0(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/t1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p0, p1}, Lcom/google/common/collect/t1;->i0(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static i0(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/t1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/SortedMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/collect/t1;->j:Ljava/util/Comparator;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    instance-of v0, p0, Lcom/google/common/collect/t1;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/t1;

    invoke-virtual {v0}, Lcom/google/common/collect/t1;->v()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/google/common/collect/t1;->n0(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static j0(Ljava/util/SortedMap;)Lcom/google/common/collect/t1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/collect/t1;->j:Ljava/util/Comparator;

    :cond_0
    instance-of v1, p0, Lcom/google/common/collect/t1;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/google/common/collect/t1;

    invoke-virtual {v1}, Lcom/google/common/collect/t1;->v()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x1

    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/google/common/collect/t1;->n0(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Ljava/util/Comparator;)Lcom/google/common/collect/t1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/t1;->x0()Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/t1;

    invoke-static {p0}, Lcom/google/common/collect/x1;->c0(Ljava/util/Comparator;)Lcom/google/common/collect/v2;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/t1;-><init>(Lcom/google/common/collect/v2;Lcom/google/common/collect/g1;)V

    return-object v0
.end method

.method public static n0(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;Z",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/i1;->f:[Ljava/util/Map$Entry;

    invoke-static {p2, v0}, Lcom/google/common/collect/D1;->R(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/util/Map$Entry;

    array-length v0, p2

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/t1;->o0(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/t1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;Z[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;I)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_3

    new-array v2, p3, [Ljava/lang/Object;

    new-array v3, p3, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    :goto_0
    if-ge v1, p3, :cond_2

    aget-object p1, p2, v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/B;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v2, v1

    aput-object p1, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/collect/t1$a;

    invoke-direct {p1, p0}, Lcom/google/common/collect/t1$a;-><init>(Ljava/util/Comparator;)V

    invoke-static {p2, v1, p3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    aget-object p1, p2, v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v1

    aget-object v5, v2, v1

    invoke-static {v5, p1}, Lcom/google/common/collect/B;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move p1, v0

    :goto_1
    if-ge p1, p3, :cond_2

    add-int/lit8 v5, p1, -0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, Ljava/util/Map$Entry;

    aget-object v6, p2, p1

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/common/collect/B;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, p1

    aput-object v8, v3, p1

    invoke-interface {p0, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    const-string v8, "key"

    invoke-static {v4, v8, v5, v6}, Lcom/google/common/collect/i1;->k(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    move-object v4, v7

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/google/common/collect/t1;

    new-instance p2, Lcom/google/common/collect/v2;

    invoke-static {v2}, Lcom/google/common/collect/g1;->k([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/g1;Ljava/util/Comparator;)V

    invoke-static {v3}, Lcom/google/common/collect/g1;->k([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/google/common/collect/t1;-><init>(Lcom/google/common/collect/v2;Lcom/google/common/collect/g1;)V

    return-object p1

    :cond_3
    aget-object p1, p2, v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/google/common/collect/t1;->J0(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lcom/google/common/collect/t1;->m0(Ljava/util/Comparator;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static varargs p0([Ljava/util/Map$Entry;)Lcom/google/common/collect/t1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/google/common/collect/t1;->o0(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static v0()Lcom/google/common/collect/t1$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/t1$c<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/t1$c;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/t1$c;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static x0()Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/t1;->k:Lcom/google/common/collect/t1;

    return-object v0
.end method

.method public static y0(Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/t1;->J0(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method

.method public static z0(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/google/common/collect/i1;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/util/Map$Entry;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    const/4 p0, 0x1

    aput-object p1, p2, p0

    invoke-static {p2}, Lcom/google/common/collect/t1;->p0([Ljava/util/Map$Entry;)Lcom/google/common/collect/t1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public L()Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c1<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/t1;->h:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public M()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/common/collect/t1$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/t1$d;-><init>(Lcom/google/common/collect/t1;)V

    return-object v0
.end method

.method public M0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/t1;->N0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public N0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/t1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expected fromKey <= toKey but %s > %s"

    invoke-static {v0, v1, p1, p3}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p4}, Lcom/google/common/collect/t1;->t0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/common/collect/t1;->P0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public O0(Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/t1;->P0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public P0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/t1;->g:Lcom/google/common/collect/v2;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v2;->C0(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/t1;->q0(II)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/t1;->P0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/t1;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/t1;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Q1;->T(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->u0()Lcom/google/common/collect/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->k0()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->l0()Lcom/google/common/collect/t1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/t1;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->u0()Lcom/google/common/collect/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x1;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/t1;->t0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/t1;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/t1;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Q1;->T(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/t1;->g:Lcom/google/common/collect/v2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v2;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/t1;->h:Lcom/google/common/collect/g1;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/t1;->t0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/t1;->s0(Ljava/lang/Object;)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/t1;->P0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/t1;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/t1;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Q1;->T(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k0()Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/t1;->g:Lcom/google/common/collect/v2;

    invoke-virtual {v0}, Lcom/google/common/collect/x1;->b0()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->u0()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public l0()Lcom/google/common/collect/t1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/t1;->i:Lcom/google/common/collect/t1;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->i(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->F()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/t1;->m0(Ljava/util/Comparator;)Lcom/google/common/collect/t1;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/t1;

    iget-object v1, p0, Lcom/google/common/collect/t1;->g:Lcom/google/common/collect/v2;

    invoke-virtual {v1}, Lcom/google/common/collect/x1;->b0()Lcom/google/common/collect/x1;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/v2;

    iget-object v2, p0, Lcom/google/common/collect/t1;->h:Lcom/google/common/collect/g1;

    invoke-virtual {v2}, Lcom/google/common/collect/g1;->L()Lcom/google/common/collect/g1;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/t1;-><init>(Lcom/google/common/collect/v2;Lcom/google/common/collect/g1;Lcom/google/common/collect/t1;)V

    :cond_1
    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/t1;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->u0()Lcom/google/common/collect/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x1;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/t1;->t0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/t1;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/t1;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Q1;->T(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->w0()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/r1;->z()Lcom/google/common/collect/r1;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/t1$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/t1$b;-><init>(Lcom/google/common/collect/t1;)V

    :goto_0
    return-object v0
.end method

.method public p()Lcom/google/common/collect/r1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public q()Lcom/google/common/collect/c1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c1<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final q0(II)Lcom/google/common/collect/t1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/t1;->m0(Ljava/util/Comparator;)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/google/common/collect/t1;

    iget-object v1, p0, Lcom/google/common/collect/t1;->g:Lcom/google/common/collect/v2;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/v2;->z0(II)Lcom/google/common/collect/v2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/t1;->h:Lcom/google/common/collect/g1;

    invoke-virtual {v2, p1, p2}, Lcom/google/common/collect/g1;->O(II)Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/t1;-><init>(Lcom/google/common/collect/v2;Lcom/google/common/collect/g1;)V

    return-object v0
.end method

.method public s()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/i1;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public s0(Ljava/lang/Object;)Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/t1;->t0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/t1;->h:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/t1;->N0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/t1;->M0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public t0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/t1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/t1;->g:Lcom/google/common/collect/v2;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v2;->B0(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/t1;->q0(II)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/t1;->P0(Ljava/lang/Object;Z)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/t1;->O0(Ljava/lang/Object;)Lcom/google/common/collect/t1;

    move-result-object p1

    return-object p1
.end method

.method public u0()Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/t1;->g:Lcom/google/common/collect/v2;

    return-object v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/t1;->g:Lcom/google/common/collect/v2;

    invoke-virtual {v0}, Lcom/google/common/collect/v2;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/t1;->h:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->L()Lcom/google/common/collect/c1;

    move-result-object v0

    return-object v0
.end method

.method public w0()Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/t1;->g:Lcom/google/common/collect/v2;

    return-object v0
.end method

.method public bridge synthetic x()Lcom/google/common/collect/r1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/t1;->u0()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method
