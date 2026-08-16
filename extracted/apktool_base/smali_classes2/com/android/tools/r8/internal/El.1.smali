.class public final Lcom/android/tools/r8/internal/El;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Z

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>([Lcom/android/tools/r8/internal/Pl;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/El;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/El;->a:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/El;->b:Z

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/El;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Pl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/El;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Pl;

    :try_start_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Mk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Pl;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/Fl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lcom/android/tools/r8/internal/Ql;
    .locals 6

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/El;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ql;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    .line 7
    instance-of v4, v0, Lcom/android/tools/r8/internal/Cl;

    if-nez v4, :cond_0

    instance-of v4, v0, Lcom/android/tools/r8/internal/Hl;

    if-eqz v4, :cond_1

    :cond_0
    return-object v0

    :cond_1
    if-ne p1, v1, :cond_3

    .line 8
    instance-of v4, v0, Lcom/android/tools/r8/internal/Cl;

    if-nez v4, :cond_2

    instance-of v4, v0, Lcom/android/tools/r8/internal/Hl;

    if-nez v4, :cond_2

    instance-of v4, v0, Lcom/android/tools/r8/internal/Dl;

    if-nez v4, :cond_2

    instance-of v4, v0, Lcom/android/tools/r8/internal/Tl;

    if-eqz v4, :cond_3

    :cond_2
    return-object v0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/El;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Pl;

    .line 10
    iget-object v4, v4, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    .line 11
    iget-object v4, v4, Lcom/android/tools/r8/internal/El;->c:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Ql;

    if-eqz v4, :cond_4

    if-eq p1, v3, :cond_7

    if-ne p1, v2, :cond_6

    .line 12
    instance-of v5, v4, Lcom/android/tools/r8/internal/Cl;

    if-nez v5, :cond_5

    instance-of v5, v4, Lcom/android/tools/r8/internal/Hl;

    if-eqz v5, :cond_6

    :cond_5
    return-object v4

    :cond_6
    if-ne p1, v1, :cond_4

    .line 13
    instance-of v5, v4, Lcom/android/tools/r8/internal/Cl;

    if-nez v5, :cond_7

    instance-of v5, v4, Lcom/android/tools/r8/internal/Hl;

    if-nez v5, :cond_7

    instance-of v5, v4, Lcom/android/tools/r8/internal/Dl;

    if-nez v5, :cond_7

    instance-of v5, v4, Lcom/android/tools/r8/internal/Tl;

    if-eqz v5, :cond_4

    :cond_7
    return-object v4

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)Lcom/android/tools/r8/internal/Ql;
    .locals 10

    .line 14
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/El;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/Ql;

    move-result-object v1

    goto :goto_3

    :cond_0
    const/16 v1, 0x2e

    .line 17
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    move-object v4, p2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 18
    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 19
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ql;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 21
    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/internal/El;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/Ql;

    move-result-object v1

    move-object v0, p2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v6, 0x1

    .line 22
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 23
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {p0, v9, v8}, Lcom/android/tools/r8/internal/El;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/Ql;

    move-result-object v8

    if-eqz v8, :cond_6

    if-eq v1, v3, :cond_3

    .line 25
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 26
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/El;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/Ql;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v1, v8

    .line 28
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-nez v1, :cond_5

    .line 29
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/El;->b:Z

    if-eqz v1, :cond_4

    .line 30
    sget-object p1, Lcom/android/tools/r8/internal/Ul;->a:Ljava/util/logging/Logger;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The descriptor for message type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" can not be found and a placeholder is created for it"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 32
    new-instance p1, Lcom/android/tools/r8/internal/Cl;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Cl;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/android/tools/r8/internal/El;->a:Ljava/util/Set;

    .line 34
    iget-object v0, p1, Lcom/android/tools/r8/internal/Cl;->d:Lcom/android/tools/r8/internal/Pl;

    .line 35
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 36
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    .line 37
    const-string v1, "\""

    const-string v2, "\" is not defined."

    invoke-static {v1, p2, v2}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 39
    throw v0

    :cond_5
    return-object v1

    .line 40
    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1
.end method

.method public final a(Lcom/android/tools/r8/internal/Pl;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pl;->g:[Lcom/android/tools/r8/internal/Pl;

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Pl;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/El;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Pl;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Pl;Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x2e

    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Pl;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/El;->c:Ljava/util/HashMap;

    new-instance v2, Lcom/android/tools/r8/internal/Dl;

    invoke-direct {v2, v0, p2, p1}, Lcom/android/tools/r8/internal/Dl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Pl;)V

    .line 45
    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ql;

    if-eqz v1, :cond_2

    .line 46
    iget-object v2, p0, Lcom/android/tools/r8/internal/El;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    instance-of p2, v1, Lcom/android/tools/r8/internal/Dl;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    new-instance p2, Lcom/android/tools/r8/internal/Fl;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined (as something other than a package) in file \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ql;->a()Lcom/android/tools/r8/internal/Pl;

    move-result-object v0

    .line 50
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    .line 51
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Mk;->getName()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Pl;Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ql;)V
    .locals 7

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ql;->c()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    move v2, v1

    .line 55
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\""

    if-ge v2, v3, :cond_4

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x61

    if-gt v5, v3, :cond_0

    const/16 v5, 0x7a

    if-le v3, v5, :cond_3

    :cond_0
    const/16 v5, 0x41

    if-gt v5, v3, :cond_1

    const/16 v5, 0x5a

    if-le v3, v5, :cond_3

    :cond_1
    const/16 v5, 0x5f

    if-eq v3, v5, :cond_3

    const/16 v5, 0x30

    if-gt v5, v3, :cond_2

    const/16 v5, 0x39

    if-gt v3, v5, :cond_2

    if-lez v2, :cond_2

    goto :goto_1

    .line 57
    :cond_2
    new-instance v1, Lcom/android/tools/r8/internal/Fl;

    .line 58
    const-string v2, "\" is not a valid identifier."

    invoke-static {v4, v0, v2}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 60
    throw v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ql;->b()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v2, p0, Lcom/android/tools/r8/internal/El;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ql;

    if-eqz v2, :cond_7

    .line 63
    iget-object v3, p0, Lcom/android/tools/r8/internal/El;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ql;->a()Lcom/android/tools/r8/internal/Pl;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ql;->a()Lcom/android/tools/r8/internal/Pl;

    move-result-object v5

    const-string v6, "\"."

    if-ne v3, v5, :cond_6

    const/16 v2, 0x2e

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 66
    new-instance v1, Lcom/android/tools/r8/internal/Fl;

    .line 67
    const-string v2, "\" is already defined."

    invoke-static {v4, v0, v2}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 69
    throw v1

    .line 70
    :cond_5
    new-instance v3, Lcom/android/tools/r8/internal/Fl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" is already defined in \""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-direct {v3, p1, v0}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 74
    throw v3

    .line 75
    :cond_6
    new-instance v1, Lcom/android/tools/r8/internal/Fl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" is already defined in file \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ql;->a()Lcom/android/tools/r8/internal/Pl;

    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pl;->b:Lcom/android/tools/r8/internal/Mk;

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Mk;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 81
    throw v1

    :cond_7
    return-void

    .line 82
    :cond_8
    new-instance v0, Lcom/android/tools/r8/internal/Fl;

    const-string v1, "Missing name."

    .line 83
    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    .line 84
    throw v0
.end method
