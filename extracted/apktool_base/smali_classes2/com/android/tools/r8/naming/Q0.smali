.class public final Lcom/android/tools/r8/naming/Q0;
.super Lcom/android/tools/r8/naming/C;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public d:Lcom/android/tools/r8/naming/Q0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/naming/C;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/naming/Q0;->d:Lcom/android/tools/r8/naming/Q0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/naming/P0;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/P0;-><init>()V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/naming/Q0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0}, Lcom/android/tools/r8/naming/C;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/P0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/P0;

    .line 3
    iget-object v2, v2, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/naming/Q0;->d:Lcom/android/tools/r8/naming/Q0;

    if-eqz p1, :cond_3

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/naming/Q0;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/naming/Q0;->d:Lcom/android/tools/r8/naming/Q0;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/naming/Q0;->d:Lcom/android/tools/r8/naming/Q0;

    :cond_3
    return-void
.end method
