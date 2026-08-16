.class public interface abstract Lcom/android/tools/r8/graph/N4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/N4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static a(Lcom/android/tools/r8/graph/N4;)Lcom/android/tools/r8/graph/N4$a;
    .locals 1

    .line 11
    new-instance v0, Lcom/android/tools/r8/graph/Q9;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/Q9;-><init>(Lcom/android/tools/r8/graph/N4;)V

    return-object v0
.end method

.method public static a([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/N4$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/P9;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/P9;-><init>([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/N4;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/N4;
    .locals 1

    .line 12
    new-instance v0, Lcom/android/tools/r8/graph/N4;

    iget-object p0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/graph/N4;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/O4;)V

    return-object v0
.end method

.method public static a([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/N4;
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/graph/N4;->d:Z

    .line 3
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/tools/r8/graph/P4;

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/o30;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/o30;-><init>(I)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/graph/P4;-><init>(ZLjava/util/SortedMap;)V

    .line 7
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/graph/P4;->a([Lcom/android/tools/r8/graph/j1;)V

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/P4;->b([Lcom/android/tools/r8/graph/j1;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/android/tools/r8/graph/M4;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/M4;-><init>([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)V

    .line 10
    :goto_0
    new-instance p0, Lcom/android/tools/r8/graph/N4;

    invoke-direct {p0, p2, v1}, Lcom/android/tools/r8/graph/N4;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/O4;)V

    return-object p0
.end method

.method public static empty()Lcom/android/tools/r8/graph/N4$a;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v0}, Lcom/android/tools/r8/graph/N4$a;->a([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/N4$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/N4;
.end method
