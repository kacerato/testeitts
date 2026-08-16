.class public abstract Lcom/google/common/collect/T1$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/T1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/T1$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/T1$j<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/collect/T1$k;->b(I)Lcom/google/common/collect/T1$j;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/common/collect/T1$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/T1$j<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    new-instance v0, Lcom/google/common/collect/T1$k$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/T1$k$a;-><init>(Lcom/google/common/collect/T1$k;I)V

    return-object v0
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public d(Ljava/lang/Class;)Lcom/google/common/collect/T1$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V0:",
            "Ljava/lang/Enum<",
            "TV0;>;>(",
            "Ljava/lang/Class<",
            "TV0;>;)",
            "Lcom/google/common/collect/T1$l<",
            "TK0;TV0;>;"
        }
    .end annotation

    const-string v0, "valueClass"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/T1$k$f;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/T1$k$f;-><init>(Lcom/google/common/collect/T1$k;Ljava/lang/Class;)V

    return-object v0
.end method

.method public e()Lcom/google/common/collect/T1$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/T1$l<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/collect/T1$k;->f(I)Lcom/google/common/collect/T1$l;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Lcom/google/common/collect/T1$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/T1$l<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    new-instance v0, Lcom/google/common/collect/T1$k$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/T1$k$c;-><init>(Lcom/google/common/collect/T1$k;I)V

    return-object v0
.end method

.method public g()Lcom/google/common/collect/T1$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/T1$l<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/collect/T1$k;->h(I)Lcom/google/common/collect/T1$l;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lcom/google/common/collect/T1$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/T1$l<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    new-instance v0, Lcom/google/common/collect/T1$k$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/T1$k$d;-><init>(Lcom/google/common/collect/T1$k;I)V

    return-object v0
.end method

.method public i()Lcom/google/common/collect/T1$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/T1$j<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/T1$k$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T1$k$b;-><init>(Lcom/google/common/collect/T1$k;)V

    return-object v0
.end method

.method public j()Lcom/google/common/collect/T1$m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/T1$m<",
            "TK0;",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/T1$k;->k(Ljava/util/Comparator;)Lcom/google/common/collect/T1$m;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/util/Comparator;)Lcom/google/common/collect/T1$m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TV0;>;)",
            "Lcom/google/common/collect/T1$m<",
            "TK0;TV0;>;"
        }
    .end annotation

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/T1$k$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/T1$k$e;-><init>(Lcom/google/common/collect/T1$k;Ljava/util/Comparator;)V

    return-object v0
.end method
