.class public final Lcom/google/common/collect/P1$A;
.super Lcom/google/common/collect/P1$d;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/P1$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "A"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/P1$A$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/P1$d<",
        "TK;",
        "Lcom/google/common/collect/O1$a;",
        "Lcom/google/common/collect/P1$A<",
        "TK;>;>;",
        "Lcom/google/common/collect/P1$x<",
        "TK;",
        "Lcom/google/common/collect/O1$a;",
        "Lcom/google/common/collect/P1$A<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/P1$A;)V
    .locals 0
    .param p4    # Lcom/google/common/collect/P1$A;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/P1$d;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/P1$j;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/P1$A;)Lcom/google/common/collect/P1$A;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;)",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$A;

    invoke-virtual {p0}, Lcom/google/common/collect/P1$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/P1$d;->b:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/common/collect/P1$A;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/P1$A;)V

    return-object v0
.end method

.method public e()Lcom/google/common/collect/O1$a;
    .locals 1

    sget-object v0, Lcom/google/common/collect/O1$a;->VALUE:Lcom/google/common/collect/O1$a;

    return-object v0
.end method

.method public f(Lcom/google/common/collect/O1$a;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/P1$A;->e()Lcom/google/common/collect/O1$a;

    move-result-object v0

    return-object v0
.end method
