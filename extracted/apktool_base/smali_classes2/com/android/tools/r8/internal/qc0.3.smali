.class public abstract Lcom/android/tools/r8/internal/qc0;
.super Lcom/android/tools/r8/internal/ZY;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:[Lcom/android/tools/r8/graph/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ZY;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qc0;->b:[Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/qc0;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_0
    sget-boolean v0, Lcom/android/tools/r8/internal/qc0;->c:Z

    if-nez v0, :cond_2

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_2
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_4

    .line 6
    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/pc0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/pc0;-><init>([Ljava/lang/String;[Lcom/android/tools/r8/graph/l1;)V

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_4
    new-instance p0, Lcom/android/tools/r8/internal/nc0;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/nc0;-><init>([Lcom/android/tools/r8/graph/l1;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;Ljava/util/function/IntFunction;)Lcom/android/tools/r8/graph/L2;
    .locals 4

    .line 9
    invoke-interface {p2, p1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/qc0;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qc0;->b:[Lcom/android/tools/r8/graph/l1;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 12
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/qc0;->b:[Lcom/android/tools/r8/graph/l1;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 13
    aget-object v2, v2, v1

    .line 14
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 15
    iget-object v3, v3, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 16
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/s3;->b(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 17
    invoke-interface {p3, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_3
    invoke-interface {p2}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 19
    const-string p2, ";"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/qc0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
