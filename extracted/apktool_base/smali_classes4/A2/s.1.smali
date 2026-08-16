.class public final LA2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation runtime LI2/j;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA2/s$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# instance fields
.field public final a:LA2/s$b;

.field public final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/s$b;Ljava/util/Comparator;)V
    .locals 3
    .param p2    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/s$b;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA2/s$b;

    iput-object v0, p0, LA2/s;->a:LA2/s$b;

    iput-object p2, p0, LA2/s;->b:Ljava/util/Comparator;

    sget-object v0, LA2/s$b;->SORTED:LA2/s$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-ne p1, p2, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Lw2/H;->g0(Z)V

    return-void
.end method

.method public static d()LA2/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "LA2/s<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, LA2/s;

    sget-object v1, LA2/s$b;->INSERTION:LA2/s$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA2/s;-><init>(LA2/s$b;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static e()LA2/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable<",
            "-TS;>;>()",
            "LA2/s<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, LA2/s;

    sget-object v1, LA2/s$b;->SORTED:LA2/s$b;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LA2/s;-><init>(LA2/s$b;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static f(Ljava/util/Comparator;)LA2/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TS;>;)",
            "LA2/s<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, LA2/s;

    sget-object v1, LA2/s$b;->SORTED:LA2/s$b;

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    invoke-direct {v0, v1, p0}, LA2/s;-><init>(LA2/s$b;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static g()LA2/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "LA2/s<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, LA2/s;

    sget-object v1, LA2/s$b;->STABLE:LA2/s$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA2/s;-><init>(LA2/s$b;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static i()LA2/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "LA2/s<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, LA2/s;

    sget-object v1, LA2/s$b;->UNORDERED:LA2/s$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA2/s;-><init>(LA2/s$b;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public a()LA2/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:TT;>()",
            "LA2/s<",
            "TT1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public b()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/s;->b:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This ordering does not define a comparator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TT;V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, LA2/s$a;->a:[I

    iget-object v1, p0, LA2/s;->a:LA2/s$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, LA2/s;->b()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Q1;->g0(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Q1;->e0(I)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/Q1;->a0(I)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LA2/s;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LA2/s;

    iget-object v1, p0, LA2/s;->a:LA2/s$b;

    iget-object v3, p1, LA2/s;->a:LA2/s$b;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, LA2/s;->b:Ljava/util/Comparator;

    iget-object p1, p1, LA2/s;->b:Ljava/util/Comparator;

    invoke-static {v1, p1}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public h()LA2/s$b;
    .locals 1

    iget-object v0, p0, LA2/s;->a:LA2/s$b;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LA2/s;->a:LA2/s$b;

    iget-object v1, p0, LA2/s;->b:Ljava/util/Comparator;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lw2/B;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, LA2/s;->a:LA2/s$b;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    iget-object v1, p0, LA2/s;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    const-string v2, "comparator"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    :cond_0
    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
