.class public final Lcom/android/tools/r8/internal/rI;
.super Lcom/android/tools/r8/internal/oI;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/qI;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/oI;-><init>()V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/sI;->a:Lcom/android/tools/r8/internal/rI;

    return-object v0
.end method

.method public final bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    sget-object p1, Lcom/android/tools/r8/internal/sI;->a:Lcom/android/tools/r8/internal/rI;

    return-object p1
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget-object p1, Lcom/android/tools/r8/internal/sI;->a:Lcom/android/tools/r8/internal/rI;

    return-object p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    sget-object p1, Lcom/android/tools/r8/internal/sI;->a:Lcom/android/tools/r8/internal/rI;

    return-object p1
.end method
