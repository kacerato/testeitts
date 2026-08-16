.class public final Lcom/android/tools/r8/graph/y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/YS;
.implements Lcom/android/tools/r8/internal/Mq0;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/y5;->b:Lcom/android/tools/r8/graph/l1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y5;)Lcom/android/tools/r8/graph/l1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/y5;->b:Lcom/android/tools/r8/graph/l1;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/Vh;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Vh;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/Wh;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Wh;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/y5;)Lcom/android/tools/r8/graph/y5;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final R()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 4
    check-cast p1, Lcom/android/tools/r8/graph/y5;

    new-instance v0, Lcom/android/tools/r8/graph/Uh;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Uh;-><init>()V

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/y5;->b:Lcom/android/tools/r8/graph/l1;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/Uh;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Uh;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/y5;->b:Lcom/android/tools/r8/graph/l1;

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Uh;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Uh;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y5;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
