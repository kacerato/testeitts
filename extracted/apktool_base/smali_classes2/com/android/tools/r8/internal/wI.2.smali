.class public Lcom/android/tools/r8/internal/wI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/wI$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/android/tools/r8/internal/wI;

.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/wI;

    sget-object v1, Lcom/android/tools/r8/internal/Lc0;->a:Lcom/android/tools/r8/internal/Jc0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/wI;-><init>(Lcom/android/tools/r8/internal/Ic0;)V

    sput-object v0, Lcom/android/tools/r8/internal/wI;->b:Lcom/android/tools/r8/internal/wI;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ic0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/wI;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    check-cast p1, Lcom/android/tools/r8/internal/u1;

    iput-object p1, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/wI$a;
    .locals 1

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/wI$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wI$a;-><init>()V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 13
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 14
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)V
    .locals 0

    .line 18
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 19
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/nJ;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/C2;->u:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->E2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->D2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/C2;->K:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->C2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    new-instance p0, Lcom/android/tools/r8/internal/U6;

    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/Ix1;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/internal/Ix1;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/U6;)V

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    .line 11
    invoke-static {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/m5;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/graph/u1;Z)V

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/wI;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Kc0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Kc0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 3
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/wI;-><init>(Lcom/android/tools/r8/internal/Ic0;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    .line 24
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/xy;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Gc0;->a(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 26
    sget-object p1, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p1

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    return-object p1

    .line 28
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public a(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/tools/r8/graph/M2;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/Hx1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Hx1;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/wI;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public a(Ljava/util/function/BiPredicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/android/tools/r8/graph/M2;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Ic0;->g()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/I30;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Hc0;

    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/Hc0;->getBooleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    new-instance v2, Lcom/android/tools/r8/internal/Jx1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Jx1;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/wI;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    return p1
.end method

.method public c()Lcom/android/tools/r8/graph/M2;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Ic0;->keySet()Lcom/android/tools/r8/internal/Ud0;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Ud0;->iterator()Lcom/android/tools/r8/internal/A30;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/Gc0;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object v2
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/wI;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/wI;

    iget-object v0, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wI;->a:Lcom/android/tools/r8/internal/u1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
