.class public Lun/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lun/d;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lun/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colliders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lun/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lun/f;->a:Ljava/util/List;

    .line 3
    invoke-static {p1}, Lun/f;->d(Ljava/util/List;)[F

    move-result-object p1

    iput-object p1, p0, Lun/f;->b:[F

    return-void
.end method

.method public varargs constructor <init>([Lun/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colliders"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lun/f;->a:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lun/f;->d(Ljava/util/List;)[F

    move-result-object p1

    iput-object p1, p0, Lun/f;->b:[F

    return-void
.end method

.method public static synthetic c(Lwn/h;Lwn/N;Lun/d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lun/f;->e(Lwn/h;Lwn/N;Lun/d;)V

    return-void
.end method

.method public static d(Ljava/util/List;)[F
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colliders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lun/d;",
            ">;)[F"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v4, 0x2

    aput v2, v0, v4

    const/4 v2, 0x3

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    aput v5, v0, v2

    const/4 v6, 0x4

    aput v5, v0, v6

    const/4 v7, 0x5

    aput v5, v0, v7

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lun/d;

    invoke-interface {v5}, Lun/d;->a()[F

    move-result-object v5

    aget v8, v0, v1

    aget v9, v5, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v0, v1

    aget v8, v0, v3

    aget v9, v5, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v0, v3

    aget v8, v0, v4

    aget v9, v5, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v0, v4

    aget v8, v0, v2

    aget v9, v5, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v0, v2

    aget v8, v0, v6

    aget v9, v5, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v0, v6

    aget v8, v0, v7

    aget v5, v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v0, v7

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic e(Lwn/h;Lwn/N;Lun/d;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lun/d;->b(Lwn/h;Lwn/N;)V

    return-void
.end method


# virtual methods
.method public a()[F
    .locals 1

    iget-object v0, p0, Lun/f;->b:[F

    return-object v0
.end method

.method public b(Lwn/h;Lwn/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hf",
            "telemetry"
        }
    .end annotation

    iget-object v0, p0, Lun/f;->a:Ljava/util/List;

    new-instance v1, Lun/e;

    invoke-direct {v1, p1, p2}, Lun/e;-><init>(Lwn/h;Lwn/N;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
