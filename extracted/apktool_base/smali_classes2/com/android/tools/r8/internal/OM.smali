.class public final Lcom/android/tools/r8/internal/OM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/OM;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/PM;)Lcom/android/tools/r8/internal/FO;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/FO;

    if-eqz v0, :cond_0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid deletion of binding \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;)Lcom/android/tools/r8/internal/OM;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;->getBindingsList()Ljava/util/List;

    move-result-object p1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/OM;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding;

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/OM;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/PM;

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    const-string v0, "Invalid binding to empty name"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding;

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/internal/OM;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/PM;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding;->hasItem()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Binding;->getItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/OM;->a:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/internal/EP0;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/EP0;-><init>(Ljava/util/Map;)V

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->hasClassItem()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->getClassItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;

    move-result-object v1

    .line 14
    sget-object v3, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    .line 15
    new-instance v3, Lcom/android/tools/r8/internal/XM;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/XM;-><init>()V

    .line 16
    sget-object v4, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    .line 17
    sget-boolean v5, Lcom/android/tools/r8/internal/VM;->a:Z

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/XM;->a()Lcom/android/tools/r8/internal/YM;

    move-result-object v5

    .line 18
    iget-object v6, v5, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 19
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v5, v5, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    check-cast v5, Lcom/android/tools/r8/internal/CO;

    .line 20
    iget-object v5, v5, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 21
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;->hasClassPattern()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;->getClassPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/YM;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;)Lcom/android/tools/r8/internal/YM;

    move-result-object v3

    .line 25
    new-instance v5, Lcom/android/tools/r8/internal/XM;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/XM;-><init>()V

    .line 26
    iget-object v6, v3, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 27
    iput-object v6, v5, Lcom/android/tools/r8/internal/XM;->a:Lcom/android/tools/r8/internal/mP;

    .line 28
    iget-object v3, v3, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    .line 29
    iput-object v3, v5, Lcom/android/tools/r8/internal/XM;->b:Lcom/android/tools/r8/internal/DO;

    move-object v3, v5

    .line 30
    :cond_7
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;->hasAnnotatedBy()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassItemPattern;->getAnnotatedBy()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->hasName()Z

    move-result v4

    if-nez v4, :cond_8

    .line 33
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object v4

    goto :goto_4

    .line 34
    :cond_8
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->getName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/mP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;)Lcom/android/tools/r8/internal/mP;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object v4

    .line 35
    :cond_9
    :goto_4
    new-instance v1, Lcom/android/tools/r8/internal/WM;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/XM;->a()Lcom/android/tools/r8/internal/YM;

    move-result-object v3

    invoke-direct {v1, v3, v4}, Lcom/android/tools/r8/internal/WM;-><init>(Lcom/android/tools/r8/internal/YM;Lcom/android/tools/r8/internal/x40;)V

    goto :goto_5

    .line 36
    :cond_a
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->hasMemberItem()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 37
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern;->getMemberItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;

    move-result-object v1

    .line 38
    new-instance v3, Lcom/android/tools/r8/internal/KO;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/KO;-><init>()V

    .line 39
    invoke-virtual {v3, v1, v4}, Lcom/android/tools/r8/internal/KO;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberItemPattern;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/KO;

    move-result-object v1

    .line 40
    iget-object v3, v1, Lcom/android/tools/r8/internal/KO;->a:Lcom/android/tools/r8/internal/UM;

    if-eqz v3, :cond_b

    .line 41
    new-instance v4, Lcom/android/tools/r8/internal/LO;

    iget-object v1, v1, Lcom/android/tools/r8/internal/KO;->b:Lcom/android/tools/r8/internal/OO;

    invoke-direct {v4, v3, v1}, Lcom/android/tools/r8/internal/LO;-><init>(Lcom/android/tools/r8/internal/UM;Lcom/android/tools/r8/internal/OO;)V

    move-object v1, v4

    goto :goto_5

    .line 42
    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    const-string v0, "Invalid attempt to build a member pattern without a class reference"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_4

    .line 43
    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    goto/16 :goto_2

    .line 44
    :cond_d
    sget-boolean v0, Lcom/android/tools/r8/internal/OM;->c:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v0, p1, :cond_e

    goto :goto_6

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_6
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/PM;
    .locals 3

    .line 45
    new-instance v0, Lcom/android/tools/r8/internal/PM;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/internal/OM;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/PM;

    if-nez v1, :cond_0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple bindings with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Lcom/android/tools/r8/internal/QM;
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/android/tools/r8/internal/QM;->b:Lcom/android/tools/r8/internal/QM;

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 56
    iget-object v1, p0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/PM;

    .line 57
    iget-object v3, p0, Lcom/android/tools/r8/internal/OM;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/PM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/PM;

    if-eq v3, v2, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    iput-object v3, v2, Lcom/android/tools/r8/internal/PM;->b:Ljava/lang/String;

    .line 60
    iget-object v3, p0, Lcom/android/tools/r8/internal/OM;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/PM;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/PM;

    goto :goto_1

    .line 61
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/OM;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/PM;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/OM;->b(Lcom/android/tools/r8/internal/PM;)Lcom/android/tools/r8/internal/NM;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/QM;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/QM;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V
    .locals 3

    const-string v0, "\'"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/FO;

    if-nez p2, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple definitions for binding \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p2

    .line 50
    :cond_1
    new-instance p2, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid binding of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/internal/MM;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/OM;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/PM;

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/FO;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/FO;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/UM;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/UM;-><init>(Lcom/android/tools/r8/internal/PM;)V

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/JO;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/JO;-><init>(Lcom/android/tools/r8/internal/PM;)V

    return-object p1

    .line 6
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined binding for name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lcom/android/tools/r8/internal/PM;)Lcom/android/tools/r8/internal/NM;
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/FO;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FO;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/MM;

    .line 9
    iget-object v3, v2, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "\'"

    if-eq v3, p1, :cond_2

    .line 11
    iget-object v3, p0, Lcom/android/tools/r8/internal/OM;->b:Ljava/util/IdentityHashMap;

    .line 12
    iget-object v5, v2, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 13
    invoke-virtual {v3, v5}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    .line 15
    iget-object v1, v2, Lcom/android/tools/r8/internal/MM;->a:Lcom/android/tools/r8/internal/PM;

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/MM;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "class"

    goto :goto_0

    :cond_1
    const-string v2, "member"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined binding for binding \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' or type \'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' referenced in binding of \'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recursive binding for name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/NM;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/NM;-><init>(Lcom/android/tools/r8/internal/FO;)V

    return-object p1
.end method
