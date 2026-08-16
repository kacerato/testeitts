.class public final Lcom/google/common/collect/P1$C;
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
    name = "C"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/P1$C$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/P1$d<",
        "TK;TV;",
        "Lcom/google/common/collect/P1$C<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/P1$x<",
        "TK;TV;",
        "Lcom/google/common/collect/P1$C<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public volatile d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/P1$C;)V
    .locals 0
    .param p4    # Lcom/google/common/collect/P1$C;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/P1$C<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/P1$d;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/P1$j;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/P1$C;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/P1$C;)Lcom/google/common/collect/P1$C;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Lcom/google/common/collect/P1$C<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/P1$C<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$C;

    invoke-virtual {p0}, Lcom/google/common/collect/P1$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/P1$d;->b:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/common/collect/P1$C;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/P1$C;)V

    iget-object p1, p0, Lcom/google/common/collect/P1$C;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/P1$C;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/P1$C;->d:Ljava/lang/Object;

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1$C;->d:Ljava/lang/Object;

    return-object v0
.end method
