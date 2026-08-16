.class public interface abstract Lcom/android/tools/r8/graph/q3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static a(Lcom/android/tools/r8/graph/r3;)Lcom/android/tools/r8/graph/q3;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/sf;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/sf;-><init>(Lcom/android/tools/r8/graph/r3;)V

    return-object v0
.end method

.method public static a([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/q3;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/tf;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/graph/tf;-><init>([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/r3;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/r3;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/r3;

    iget-object p0, p0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/graph/r3;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/s3;)V

    return-object v0
.end method

.method public static a([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/r3;
    .locals 3

    .line 4
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 5
    new-instance v1, Lcom/android/tools/r8/graph/t3;

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/o30;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/o30;-><init>(I)V

    .line 7
    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/t3;-><init>(Lcom/android/tools/r8/internal/o30;)V

    .line 8
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/graph/t3;->b([Lcom/android/tools/r8/graph/g1;)V

    .line 9
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/t3;->a([Lcom/android/tools/r8/graph/g1;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/android/tools/r8/graph/p3;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/p3;-><init>([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;)V

    .line 11
    :goto_0
    new-instance p0, Lcom/android/tools/r8/graph/r3;

    invoke-direct {p0, p2, v1}, Lcom/android/tools/r8/graph/r3;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/s3;)V

    return-object p0
.end method

.method public static empty()Lcom/android/tools/r8/graph/q3;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, v0}, Lcom/android/tools/r8/graph/q3;->a([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/q3;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/r3;
.end method
