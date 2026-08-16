.class public final Lcom/google/common/collect/P1$r;
.super Lcom/google/common/collect/P1$c;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/P1$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/P1$r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/P1$c<",
        "TK;",
        "Lcom/google/common/collect/O1$a;",
        "Lcom/google/common/collect/P1$r<",
        "TK;>;>;",
        "Lcom/google/common/collect/P1$x<",
        "TK;",
        "Lcom/google/common/collect/O1$a;",
        "Lcom/google/common/collect/P1$r<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/P1$r;)V
    .locals 0
    .param p3    # Lcom/google/common/collect/P1$r;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/P1$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/P1$j;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/google/common/collect/P1$r;)Lcom/google/common/collect/P1$r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;)",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$r;

    iget-object v1, p0, Lcom/google/common/collect/P1$c;->b:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/P1$c;->c:I

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/P1$r;-><init>(Ljava/lang/Object;ILcom/google/common/collect/P1$r;)V

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

    invoke-virtual {p0}, Lcom/google/common/collect/P1$r;->e()Lcom/google/common/collect/O1$a;

    move-result-object v0

    return-object v0
.end method
