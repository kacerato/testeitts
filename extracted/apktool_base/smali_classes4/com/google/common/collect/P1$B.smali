.class public final Lcom/google/common/collect/P1$B;
.super Lcom/google/common/collect/P1$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "B"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/P1$o<",
        "TK;",
        "Lcom/google/common/collect/O1$a;",
        "Lcom/google/common/collect/P1$A<",
        "TK;>;",
        "Lcom/google/common/collect/P1$B<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field public final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/P1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1<",
            "TK;",
            "Lcom/google/common/collect/O1$a;",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;",
            "Lcom/google/common/collect/P1$B<",
            "TK;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/P1$o;-><init>(Lcom/google/common/collect/P1;II)V

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/P1$B;->i:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public static synthetic X(Lcom/google/common/collect/P1$B;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/P1$B;->i:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic R()Lcom/google/common/collect/P1$o;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/P1$B;->Z()Lcom/google/common/collect/P1$B;

    move-result-object v0

    return-object v0
.end method

.method public Y(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$j<",
            "TK;",
            "Lcom/google/common/collect/O1$a;",
            "*>;)",
            "Lcom/google/common/collect/P1$A<",
            "TK;>;"
        }
    .end annotation

    check-cast p1, Lcom/google/common/collect/P1$A;

    return-object p1
.end method

.method public Z()Lcom/google/common/collect/P1$B;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/P1$B<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1$B;->Y(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$A;

    move-result-object p1

    return-object p1
.end method

.method public o()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1$B;->i:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1$B;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1$o;->c(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1$B;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1$o;->i(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
