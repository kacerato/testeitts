.class public final Lcom/google/common/collect/P1$u;
.super Lcom/google/common/collect/P1$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/P1$o<",
        "TK;TV;",
        "Lcom/google/common/collect/P1$t<",
        "TK;TV;>;",
        "Lcom/google/common/collect/P1$u<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/P1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1<",
            "TK;TV;",
            "Lcom/google/common/collect/P1$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/P1$u<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/P1$o;-><init>(Lcom/google/common/collect/P1;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic R()Lcom/google/common/collect/P1$o;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/P1$u;->Y()Lcom/google/common/collect/P1$u;

    move-result-object v0

    return-object v0
.end method

.method public X(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$j<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/P1$t<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p1, Lcom/google/common/collect/P1$t;

    return-object p1
.end method

.method public Y()Lcom/google/common/collect/P1$u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/P1$u<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1$u;->X(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$t;

    move-result-object p1

    return-object p1
.end method
