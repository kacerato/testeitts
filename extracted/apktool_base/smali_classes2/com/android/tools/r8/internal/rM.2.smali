.class public final Lcom/android/tools/r8/internal/rM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/rM;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/rM;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/rM;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/rM;->d:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 7

    const-string v0, "string"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/rM;->c:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/rM;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/rM;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/rM;->b:Ljava/util/ArrayList;

    const-string v3, "<this>"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v2

    .line 8
    :goto_0
    check-cast v2, Lcom/android/tools/r8/internal/kM;

    if-eqz v2, :cond_3

    .line 9
    iget v3, v2, Lcom/android/tools/r8/internal/kM;->c:I

    and-int/lit8 v5, v3, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, v2, Lcom/android/tools/r8/internal/kM;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 11
    iget-object v3, v2, Lcom/android/tools/r8/internal/kM;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 12
    iget v3, v2, Lcom/android/tools/r8/internal/kM;->d:I

    add-int/2addr v3, v4

    .line 13
    iget v5, v2, Lcom/android/tools/r8/internal/kM;->c:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/android/tools/r8/internal/kM;->c:I

    .line 14
    iput v3, v2, Lcom/android/tools/r8/internal/kM;->d:I

    goto :goto_2

    .line 15
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/rM;->b:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/tools/r8/internal/mM;->n:Lcom/android/tools/r8/internal/mM;

    .line 16
    new-instance v3, Lcom/android/tools/r8/internal/kM;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/kM;-><init>()V

    .line 17
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 19
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_4
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Z)I
    .locals 5

    const-string v0, "className"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/rM;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/internal/rM;->d:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne p2, v1, :cond_0

    return v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/rM;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/rM;->d:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_1
    sget-object v1, Lcom/android/tools/r8/internal/mM;->n:Lcom/android/tools/r8/internal/mM;

    .line 26
    new-instance v1, Lcom/android/tools/r8/internal/kM;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kM;-><init>()V

    if-nez p2, :cond_4

    const/16 p2, 0x24

    const/4 v2, 0x2

    .line 27
    invoke-static {p1, p2, v2}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CI)I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_0

    .line 28
    :cond_2
    sget-object v3, Lcom/android/tools/r8/internal/VL;->e:Ljava/util/LinkedHashMap;

    .line 29
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 30
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 31
    iget v3, v1, Lcom/android/tools/r8/internal/kM;->c:I

    or-int/2addr v2, v3

    iput v2, v1, Lcom/android/tools/r8/internal/kM;->c:I

    .line 32
    iput p2, v1, Lcom/android/tools/r8/internal/kM;->e:I

    .line 33
    iget-object p2, p0, Lcom/android/tools/r8/internal/rM;->a:Ljava/util/ArrayList;

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_3
    sget-object v2, Lcom/android/tools/r8/internal/lM;->e:Lcom/android/tools/r8/internal/lM;

    .line 35
    iget v3, v1, Lcom/android/tools/r8/internal/kM;->c:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Lcom/android/tools/r8/internal/kM;->c:I

    .line 36
    iput-object v2, v1, Lcom/android/tools/r8/internal/kM;->g:Lcom/android/tools/r8/internal/lM;

    .line 37
    iget-object v2, p0, Lcom/android/tools/r8/internal/rM;->a:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "L"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2e

    invoke-static {p1, v4, p2}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3b

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/rM;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/rM;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/rM;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method
