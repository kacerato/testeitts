.class public Lorg/apache/commons/math3/optim/SimpleBounds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final lower:[D

.field private final upper:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/SimpleBounds;->lower:[D

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/SimpleBounds;->upper:[D

    return-void
.end method

.method public static unbounded(I)Lorg/apache/commons/math3/optim/SimpleBounds;
    .locals 3

    new-array v0, p0, [D

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    new-array p0, p0, [D

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    new-instance v1, Lorg/apache/commons/math3/optim/SimpleBounds;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/math3/optim/SimpleBounds;-><init>([D[D)V

    return-object v1
.end method


# virtual methods
.method public getLower()[D
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/optim/SimpleBounds;->lower:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getUpper()[D
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/optim/SimpleBounds;->upper:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
