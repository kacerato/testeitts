.class public abstract Lcom/google/common/collect/T1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/T1$m;,
        Lcom/google/common/collect/T1$l;,
        Lcom/google/common/collect/T1$j;,
        Lcom/google/common/collect/T1$k;,
        Lcom/google/common/collect/T1$f;,
        Lcom/google/common/collect/T1$n;,
        Lcom/google/common/collect/T1$h;,
        Lcom/google/common/collect/T1$g;,
        Lcom/google/common/collect/T1$i;,
        Lcom/google/common/collect/T1$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final a:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/T1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/T1;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/Class;)Lcom/google/common/collect/T1$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Enum<",
            "TK0;>;>(",
            "Ljava/lang/Class<",
            "TK0;>;)",
            "Lcom/google/common/collect/T1$k<",
            "TK0;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/T1$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T1$d;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static d()Lcom/google/common/collect/T1$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/T1$k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/common/collect/T1;->e(I)Lcom/google/common/collect/T1$k;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)Lcom/google/common/collect/T1$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/T1$k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedKeys"

    invoke-static {p0, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    new-instance v0, Lcom/google/common/collect/T1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T1$a;-><init>(I)V

    return-object v0
.end method

.method public static f()Lcom/google/common/collect/T1$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/T1$k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/common/collect/T1;->g(I)Lcom/google/common/collect/T1$k;

    move-result-object v0

    return-object v0
.end method

.method public static g(I)Lcom/google/common/collect/T1$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/T1$k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedKeys"

    invoke-static {p0, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    new-instance v0, Lcom/google/common/collect/T1$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T1$b;-><init>(I)V

    return-object v0
.end method

.method public static h()Lcom/google/common/collect/T1$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/T1$k<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/T1;->i(Ljava/util/Comparator;)Lcom/google/common/collect/T1$k;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/util/Comparator;)Lcom/google/common/collect/T1$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lcom/google/common/collect/T1$k<",
            "TK0;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/T1$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T1$c;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/common/collect/S1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public b(Lcom/google/common/collect/S1;)Lcom/google/common/collect/S1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/T1;->a()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->w(Lcom/google/common/collect/S1;)Z

    return-object v0
.end method
