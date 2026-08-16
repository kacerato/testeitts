.class public final Lcom/google/common/collect/T2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/T2$f;,
        Lcom/google/common/collect/T2$g;,
        Lcom/google/common/collect/T2$d;,
        Lcom/google/common/collect/T2$e;,
        Lcom/google/common/collect/T2$b;,
        Lcom/google/common/collect/T2$c;
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final a:Lw2/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/t<",
            "+",
            "Ljava/util/Map<",
            "**>;+",
            "Ljava/util/Map<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/T2$a;

    invoke-direct {v0}, Lcom/google/common/collect/T2$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/T2;->a:Lw2/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lw2/t;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/T2;->j()Lw2/t;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/common/collect/S2;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2<",
            "***>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/S2;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/S2;

    invoke-interface {p0}, Lcom/google/common/collect/S2;->c0()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/S2;->c0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/S2$a;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/T2$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/T2$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Ljava/util/Map;Lw2/Q;)Lcom/google/common/collect/S2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lw2/Q<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;)",
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/Q2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Q2;-><init>(Ljava/util/Map;Lw2/Q;)V

    return-object v0
.end method

.method public static e(Lcom/google/common/collect/S2;)Lcom/google/common/collect/S2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV;>;)",
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/R2;->z(Lcom/google/common/collect/S2;Ljava/lang/Object;)Lcom/google/common/collect/S2;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/google/common/collect/S2;Lw2/t;)Lcom/google/common/collect/S2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV1;>;",
            "Lw2/t<",
            "-TV1;TV2;>;)",
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV2;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/collect/T2$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/T2$d;-><init>(Lcom/google/common/collect/S2;Lw2/t;)V

    return-object v0
.end method

.method public static g(Lcom/google/common/collect/S2;)Lcom/google/common/collect/S2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV;>;)",
            "Lcom/google/common/collect/S2<",
            "TC;TR;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/T2$e;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/T2$e;

    iget-object p0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/T2$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T2$e;-><init>(Lcom/google/common/collect/S2;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static h(Lcom/google/common/collect/A2;)Lcom/google/common/collect/A2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/A2<",
            "TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/A2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lcom/google/common/collect/T2$f;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T2$f;-><init>(Lcom/google/common/collect/A2;)V

    return-object v0
.end method

.method public static i(Lcom/google/common/collect/S2;)Lcom/google/common/collect/S2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S2<",
            "+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/T2$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T2$g;-><init>(Lcom/google/common/collect/S2;)V

    return-object v0
.end method

.method public static j()Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lw2/t<",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/T2;->a:Lw2/t;

    return-object v0
.end method
