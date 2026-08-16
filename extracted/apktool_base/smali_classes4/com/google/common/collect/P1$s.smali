.class public final Lcom/google/common/collect/P1$s;
.super Lcom/google/common/collect/P1$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/P1$o<",
        "TK;",
        "Lcom/google/common/collect/O1$a;",
        "Lcom/google/common/collect/P1$r<",
        "TK;>;",
        "Lcom/google/common/collect/P1$s<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/P1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1<",
            "TK;",
            "Lcom/google/common/collect/O1$a;",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;",
            "Lcom/google/common/collect/P1$s<",
            "TK;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/P1$o;-><init>(Lcom/google/common/collect/P1;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic R()Lcom/google/common/collect/P1$o;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/P1$s;->Y()Lcom/google/common/collect/P1$s;

    move-result-object v0

    return-object v0
.end method

.method public X(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$j<",
            "TK;",
            "Lcom/google/common/collect/O1$a;",
            "*>;)",
            "Lcom/google/common/collect/P1$r<",
            "TK;>;"
        }
    .end annotation

    check-cast p1, Lcom/google/common/collect/P1$r;

    return-object p1
.end method

.method public Y()Lcom/google/common/collect/P1$s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/P1$s<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1$s;->X(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$r;

    move-result-object p1

    return-object p1
.end method
