.class public final Lcom/google/common/collect/P1$v;
.super Lcom/google/common/collect/P1$c;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/P1$G;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/P1$v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/P1$c<",
        "TK;TV;",
        "Lcom/google/common/collect/P1$v<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/P1$G<",
        "TK;TV;",
        "Lcom/google/common/collect/P1$v<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public volatile e:Lcom/google/common/collect/P1$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/P1$H<",
            "TK;TV;",
            "Lcom/google/common/collect/P1$v<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/P1$v;)V
    .locals 0
    .param p3    # Lcom/google/common/collect/P1$v;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/P1$v<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/P1$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/P1$j;)V

    invoke-static {}, Lcom/google/common/collect/P1;->q()Lcom/google/common/collect/P1$H;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/P1$v;->e:Lcom/google/common/collect/P1$H;

    return-void
.end method

.method public static synthetic d(Lcom/google/common/collect/P1$v;)Lcom/google/common/collect/P1$H;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/P1$v;->e:Lcom/google/common/collect/P1$H;

    return-object p0
.end method

.method public static synthetic e(Lcom/google/common/collect/P1$v;Lcom/google/common/collect/P1$H;)Lcom/google/common/collect/P1$H;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/P1$v;->e:Lcom/google/common/collect/P1$H;

    return-object p1
.end method


# virtual methods
.method public a()Lcom/google/common/collect/P1$H;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/P1$H<",
            "TK;TV;",
            "Lcom/google/common/collect/P1$v<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1$v;->e:Lcom/google/common/collect/P1$H;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1$v;->e:Lcom/google/common/collect/P1$H;

    invoke-interface {v0}, Lcom/google/common/collect/P1$H;->clear()V

    return-void
.end method

.method public f(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/P1$v;)Lcom/google/common/collect/P1$v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;",
            "Lcom/google/common/collect/P1$v<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/P1$v<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$v;

    iget-object v1, p0, Lcom/google/common/collect/P1$c;->b:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/P1$c;->c:I

    invoke-direct {v0, v1, v2, p2}, Lcom/google/common/collect/P1$v;-><init>(Ljava/lang/Object;ILcom/google/common/collect/P1$v;)V

    iget-object p2, p0, Lcom/google/common/collect/P1$v;->e:Lcom/google/common/collect/P1$H;

    invoke-interface {p2, p1, v0}, Lcom/google/common/collect/P1$H;->b(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$H;

    move-result-object p1

    iput-object p1, v0, Lcom/google/common/collect/P1$v;->e:Lcom/google/common/collect/P1$H;

    return-object v0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1$v;->e:Lcom/google/common/collect/P1$H;

    new-instance v1, Lcom/google/common/collect/P1$I;

    invoke-direct {v1, p2, p1, p0}, Lcom/google/common/collect/P1$I;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/P1$j;)V

    iput-object v1, p0, Lcom/google/common/collect/P1$v;->e:Lcom/google/common/collect/P1$H;

    invoke-interface {v0}, Lcom/google/common/collect/P1$H;->clear()V

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1$v;->e:Lcom/google/common/collect/P1$H;

    invoke-interface {v0}, Lcom/google/common/collect/P1$H;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
