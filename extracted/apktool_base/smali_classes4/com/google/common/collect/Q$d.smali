.class public final Lcom/google/common/collect/Q$d;
.super Lcom/google/common/collect/Q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q<",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/common/collect/Q$d;

.field public static final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/Q$d;

    invoke-direct {v0}, Lcom/google/common/collect/Q$d;-><init>()V

    sput-object v0, Lcom/google/common/collect/Q$d;->d:Lcom/google/common/collect/Q$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/common/collect/Q;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method

.method public static synthetic v()Lcom/google/common/collect/Q$d;
    .locals 1

    sget-object v0, Lcom/google/common/collect/Q$d;->d:Lcom/google/common/collect/Q$d;

    return-object v0
.end method

.method private w()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/Q$d;->d:Lcom/google/common/collect/Q$d;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/Q;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Q$d;->g(Lcom/google/common/collect/Q;)I

    move-result p1

    return p1
.end method

.method public e(Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/Q<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/W;->f()Ljava/lang/Comparable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Q;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0
.end method

.method public g(Lcom/google/common/collect/Q;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Q<",
            "Ljava/lang/Comparable<",
            "*>;>;)I"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public h(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "(-\u221e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/StringBuilder;)V
    .locals 0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public j()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "range unbounded on this side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Lcom/google/common/collect/W;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public m(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public o(Lcom/google/common/collect/W;)Ljava/lang/Comparable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/collect/W;->f()Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public q()Lcom/google/common/collect/x;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public r()Lcom/google/common/collect/x;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public s(Lcom/google/common/collect/x;Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x;",
            "Lcom/google/common/collect/W<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/Q<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "-\u221e"

    return-object v0
.end method

.method public u(Lcom/google/common/collect/x;Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x;",
            "Lcom/google/common/collect/W<",
            "Ljava/lang/Comparable<",
            "*>;>;)",
            "Lcom/google/common/collect/Q<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "this statement should be unreachable"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
