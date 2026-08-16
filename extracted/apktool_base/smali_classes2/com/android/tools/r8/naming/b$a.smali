.class public Lcom/android/tools/r8/naming/b$a;
.super Lcom/android/tools/r8/naming/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/naming/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/LinkedHashSet;

.field public final f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/naming/w0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/naming/b$a;->a:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/naming/b$a;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/b$a;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/b$a;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/b$a;->e:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/b$a;->f:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/kC;Ljava/lang/String;Lcom/android/tools/r8/naming/k$a;)V
    .locals 13

    .line 8
    iget-object v0, p2, Lcom/android/tools/r8/naming/k$a;->e:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_0
    move-object v10, v0

    goto :goto_1

    .line 11
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p2, Lcom/android/tools/r8/naming/k$a;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 12
    iget-object v1, p2, Lcom/android/tools/r8/naming/k$a;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/android/tools/r8/naming/k$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/naming/k$c;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :goto_1
    new-instance v0, Lcom/android/tools/r8/naming/k;

    iget-object v6, p2, Lcom/android/tools/r8/naming/k$a;->b:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/tools/r8/naming/k$a;->a:Ljava/lang/String;

    iget-object v8, p2, Lcom/android/tools/r8/naming/k$a;->c:Ljava/util/HashMap;

    iget-object v9, p2, Lcom/android/tools/r8/naming/k$a;->d:Ljava/util/HashMap;

    iget-object v11, p2, Lcom/android/tools/r8/naming/k$a;->f:Ljava/util/HashMap;

    iget-object v12, p2, Lcom/android/tools/r8/naming/k$a;->g:Ljava/util/List;

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/android/tools/r8/naming/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Map;Ljava/util/HashMap;Ljava/util/List;)V

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/naming/b;
    .locals 5

    .line 16
    new-instance v0, Lcom/android/tools/r8/naming/b;

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/b$a;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/naming/b$a;->e:Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lcom/android/tools/r8/naming/b$a;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/tools/r8/naming/b$a;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/naming/b;-><init>(Lcom/android/tools/r8/internal/nC;Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/naming/E0;)Lcom/android/tools/r8/naming/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/naming/b$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/position/Position;)Lcom/android/tools/r8/naming/k$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/position/Position;)Lcom/android/tools/r8/naming/k$a;
    .locals 1

    .line 2
    iget-object p3, p0, Lcom/android/tools/r8/naming/b$a;->f:Ljava/util/HashMap;

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/naming/Q2;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/naming/Q2;-><init>(Ljava/util/Map;)V

    sget-object p3, Lcom/android/tools/r8/naming/k;->h:Ljava/util/List;

    .line 4
    new-instance p3, Lcom/android/tools/r8/naming/k$a;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/tools/r8/naming/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;)V

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/naming/b$a;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/naming/mappinginformation/b;)Lcom/android/tools/r8/naming/w0;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/naming/b$a;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 19
    iget-boolean v0, p0, Lcom/android/tools/r8/naming/b$a;->b:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/mappinginformation/b;->r()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/b$a;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/naming/w0;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/naming/b$a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/android/tools/r8/naming/b$a;->a:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/naming/b$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/nC;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/naming/b$a;->d:Ljava/util/HashMap;

    new-instance v2, Lcom/android/tools/r8/naming/P2;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/naming/P2;-><init>(Lcom/android/tools/r8/internal/kC;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    return-object v0
.end method
