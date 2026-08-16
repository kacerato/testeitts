.class public final Lcom/google/common/cache/k$J;
.super Lcom/google/common/cache/k$F;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "J"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/k$F<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/k$F;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/p;)V

    iput p4, p0, Lcom/google/common/cache/k$J;->c:I

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/p;)Lcom/google/common/cache/k$A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/k$J;

    iget v1, p0, Lcom/google/common/cache/k$J;->c:I

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/common/cache/k$J;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/p;I)V

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    iget v0, p0, Lcom/google/common/cache/k$J;->c:I

    return v0
.end method
