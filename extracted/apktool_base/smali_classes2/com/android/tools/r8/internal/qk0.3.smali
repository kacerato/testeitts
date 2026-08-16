.class public final Lcom/android/tools/r8/internal/qk0;
.super Lcom/android/tools/r8/internal/rk0;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/internal/JW;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/JW;Ljava/util/OptionalInt;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/rk0;-><init>(Ljava/util/OptionalInt;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qk0;->d:Lcom/android/tools/r8/internal/JW;

    return-void
.end method


# virtual methods
.method public final bridge synthetic asKnown()Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/retrace/RetracedMethodReference;

    sget-object v0, Lcom/android/tools/r8/internal/rk0;->c:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/qk0;->d:Lcom/android/tools/r8/internal/JW;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Kj;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/lk0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/lk0;-><init>(ZLcom/android/tools/r8/references/ClassReference;)V

    return-object v1
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qk0;->d:Lcom/android/tools/r8/internal/JW;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Kj;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
