.class public final Lcom/android/tools/r8/naming/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/naming/M0;


# instance fields
.field public a:Lcom/android/tools/r8/naming/mappinginformation/b;

.field public final b:Lcom/android/tools/r8/naming/s;

.field public c:Lcom/android/tools/r8/naming/s;

.field public final d:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/naming/M0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/tools/r8/naming/M0;-><init>(IIZ)V

    sput-object v0, Lcom/android/tools/r8/naming/v;->e:Lcom/android/tools/r8/naming/M0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/naming/v;->a:Lcom/android/tools/r8/naming/mappinginformation/b;

    new-instance v0, Lcom/android/tools/r8/naming/s;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/s;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/v;->b:Lcom/android/tools/r8/naming/s;

    iput-object p1, p0, Lcom/android/tools/r8/naming/v;->d:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/naming/v;->b:Lcom/android/tools/r8/naming/s;

    iget-object v1, v1, Lcom/android/tools/r8/naming/s;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    new-instance v1, Lcom/android/tools/r8/naming/i4;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/i4;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/naming/v;->b:Lcom/android/tools/r8/naming/s;

    iget-object v2, v2, Lcom/android/tools/r8/naming/s;->f:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/tools/r8/naming/j4;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/naming/j4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 39
    iget-object v2, p0, Lcom/android/tools/r8/naming/v;->a:Lcom/android/tools/r8/naming/mappinginformation/b;

    if-eqz v2, :cond_0

    .line 40
    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/naming/v;->a:Lcom/android/tools/r8/naming/mappinginformation/b;

    invoke-virtual {v2}, Lcom/android/tools/r8/naming/mappinginformation/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    new-instance v2, Lcom/android/tools/r8/kotlin/h1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/kotlin/h1;-><init>(Ljava/lang/StringBuilder;)V

    .line 42
    new-instance v3, Lcom/android/tools/r8/internal/Jb;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Jb;-><init>(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/naming/r;

    .line 44
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/internal/Jb;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/naming/b;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/naming/s;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/s;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/v;->c:Lcom/android/tools/r8/naming/s;

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/naming/b;->d:Ljava/util/LinkedHashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/naming/b;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/mappinginformation/b;

    :goto_0
    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/mappinginformation/b;->s()Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/android/tools/r8/internal/Jf0;->a(Lcom/android/tools/r8/naming/MapVersion;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/MapVersion;->isUnknown()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/naming/v;->a:Lcom/android/tools/r8/naming/mappinginformation/b;

    if-nez v1, :cond_1

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/naming/v;->a:Lcom/android/tools/r8/naming/mappinginformation/b;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/naming/mappinginformation/b;->b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/mappinginformation/e;->b()Lcom/android/tools/r8/naming/mappinginformation/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/naming/v;->a:Lcom/android/tools/r8/naming/mappinginformation/b;

    .line 10
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/k;

    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/naming/v;->a(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/naming/k;)V

    goto :goto_2

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/naming/v;->b:Lcom/android/tools/r8/naming/s;

    iget-object v1, p0, Lcom/android/tools/r8/naming/v;->c:Lcom/android/tools/r8/naming/s;

    .line 14
    iget-object v2, v0, Lcom/android/tools/r8/naming/s;->f:Ljava/util/ArrayList;

    .line 15
    iget-object v3, p1, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    .line 16
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/naming/s;->a(Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/b;)V

    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/naming/s;->c(Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/b;)V

    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/naming/s;->b(Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/b;)V

    return-void

    .line 20
    :cond_3
    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    sget-object v0, Lcom/android/tools/r8/internal/Jf0;->a:Lcom/android/tools/r8/naming/MapVersion;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/MapVersion;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Composition of mapping files supported from map version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    const-string v0, "Composition of mapping files supported from map version 2.2."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/naming/k;)V
    .locals 9

    .line 23
    iget-object v6, p2, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    .line 24
    iget-object v7, p2, Lcom/android/tools/r8/naming/k;->b:Ljava/lang/String;

    .line 25
    new-instance v8, Lcom/android/tools/r8/naming/r;

    iget-object v3, p0, Lcom/android/tools/r8/naming/v;->b:Lcom/android/tools/r8/naming/s;

    iget-object v4, p0, Lcom/android/tools/r8/naming/v;->c:Lcom/android/tools/r8/naming/s;

    iget-object v5, p0, Lcom/android/tools/r8/naming/v;->d:Lcom/android/tools/r8/internal/nJ;

    move-object v0, v8

    move-object v1, v6

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/naming/r;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/internal/nJ;)V

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/naming/v;->c:Lcom/android/tools/r8/naming/s;

    iget-object v0, v0, Lcom/android/tools/r8/naming/s;->a:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/r;

    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/k;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v1, v8, Lcom/android/tools/r8/naming/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_0
    invoke-virtual {v8, p1, p2}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/naming/k;)V

    .line 31
    invoke-virtual {v8, p1, p2}, Lcom/android/tools/r8/naming/r;->b(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/naming/k;)V

    return-void

    .line 32
    :cond_1
    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    .line 33
    iget-object p2, v0, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate class mapping. Both \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' and \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' maps to \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
