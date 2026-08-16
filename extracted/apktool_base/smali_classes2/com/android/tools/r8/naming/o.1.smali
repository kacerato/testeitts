.class public final Lcom/android/tools/r8/naming/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/o;->a:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/o;->b:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/n;)Z
    .locals 0

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/naming/n;->b:Lcom/android/tools/r8/naming/k$b;

    iget-object p1, p1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget-object p0, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget p0, p0, Lcom/android/tools/r8/naming/M0;->a:I

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/naming/M0;->a(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/n;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p2, Lcom/android/tools/r8/internal/O40;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/naming/o;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/mappinginformation/e;->d()Lcom/android/tools/r8/internal/O40;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/o;->a:Ljava/util/IdentityHashMap;

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/mappinginformation/e;->c()Lcom/android/tools/r8/internal/M40;

    move-result-object p2

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    .line 7
    :cond_1
    new-instance v1, Lcom/android/tools/r8/naming/t3;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/naming/t3;-><init>(Lcom/android/tools/r8/naming/k$b;)V

    .line 8
    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Predicate;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 10
    :cond_2
    check-cast v0, Lcom/android/tools/r8/naming/n;

    return-object v0
.end method
