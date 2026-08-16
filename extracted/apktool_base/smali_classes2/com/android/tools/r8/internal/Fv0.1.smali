.class public final Lcom/android/tools/r8/internal/Fv0;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/yR;
.implements Ljava/util/RandomAccess;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/wR;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wR;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fv0;->b:Lcom/android/tools/r8/internal/wR;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ET;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b(I)Lcom/android/tools/r8/internal/l8;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fv0;->b:Lcom/android/tools/r8/internal/wR;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/wR;->b(I)Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lcom/android/tools/r8/internal/Fv0;
    .locals 0

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fv0;->b:Lcom/android/tools/r8/internal/wR;

    iget-object v0, v0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fv0;->b:Lcom/android/tools/r8/internal/wR;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/wR;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Dv0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Dv0;-><init>(Lcom/android/tools/r8/internal/Fv0;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Bv0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Bv0;-><init>(Lcom/android/tools/r8/internal/Fv0;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fv0;->b:Lcom/android/tools/r8/internal/wR;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wR;->size()I

    move-result v0

    return v0
.end method
