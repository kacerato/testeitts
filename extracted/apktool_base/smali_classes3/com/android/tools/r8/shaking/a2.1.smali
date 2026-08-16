.class public abstract Lcom/android/tools/r8/shaking/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/a2;->a:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpec;
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/a2;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpec;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpec;->getVersion()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Version;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/android/tools/r8/internal/tP;->d:[Lcom/android/tools/r8/internal/tP;

    invoke-virtual {v2}, [Lcom/android/tools/r8/internal/tP;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/tools/r8/internal/tP;

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Version;->getMajor()I

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Lcom/android/tools/r8/internal/tP;->b:I

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Version;->getMinor()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Version;->getPatch()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v5, Lcom/android/tools/r8/internal/tP;->c:Lcom/android/tools/r8/internal/tP;

    .line 9
    :goto_1
    sget-object v1, Lcom/android/tools/r8/internal/tP;->c:Lcom/android/tools/r8/internal/tP;

    if-eq v5, v1, :cond_13

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpec;->getDeclarationsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration;

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration;->hasEdge()Z

    move-result v2

    const-string v3, "Invalid keep spec, must have valid bindings."

    if-eqz v2, :cond_b

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration;->getEdge()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge;

    move-result-object v2

    .line 13
    new-instance v4, Lcom/android/tools/r8/internal/CN;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/CN;-><init>()V

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge;->getMetaInfo()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/tools/r8/internal/MN;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;Lcom/android/tools/r8/internal/tP;)Lcom/android/tools/r8/internal/MN;

    move-result-object v6

    .line 15
    iput-object v6, v4, Lcom/android/tools/r8/internal/CN;->a:Lcom/android/tools/r8/internal/MN;

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge;->getBindings()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 17
    new-instance v3, Lcom/android/tools/r8/internal/rP;

    .line 18
    new-instance v7, Lcom/android/tools/r8/internal/OM;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/OM;-><init>()V

    .line 19
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;)Lcom/android/tools/r8/internal/OM;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/tools/r8/internal/rP;-><init>(Lcom/android/tools/r8/internal/OM;)V

    .line 20
    iget-object v6, v3, Lcom/android/tools/r8/internal/rP;->b:Lcom/android/tools/r8/internal/QM;

    .line 21
    iput-object v6, v4, Lcom/android/tools/r8/internal/CN;->b:Lcom/android/tools/r8/internal/QM;

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge;->getPreconditionsList()Ljava/util/List;

    move-result-object v6

    .line 23
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Condition;

    .line 25
    invoke-virtual {v9}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Condition;->getItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/tools/r8/internal/rP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;)Lcom/android/tools/r8/internal/MM;

    move-result-object v9

    .line 26
    new-instance v10, Lcom/android/tools/r8/internal/ZM;

    invoke-direct {v10, v9}, Lcom/android/tools/r8/internal/ZM;-><init>(Lcom/android/tools/r8/internal/MM;)V

    .line 27
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 28
    :cond_2
    sget-boolean v8, Lcom/android/tools/r8/internal/hP;->b:Z

    if-nez v8, :cond_5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 29
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 30
    sget-object v6, Lcom/android/tools/r8/internal/gP;->a:Lcom/android/tools/r8/internal/gP;

    goto :goto_4

    .line 31
    :cond_3
    new-instance v6, Lcom/android/tools/r8/internal/iP;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/iP;-><init>(Ljava/util/ArrayList;)V

    .line 32
    :goto_4
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/jP;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_5
    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 34
    sget-object v6, Lcom/android/tools/r8/internal/gP;->a:Lcom/android/tools/r8/internal/gP;

    goto :goto_6

    .line 35
    :cond_6
    new-instance v6, Lcom/android/tools/r8/internal/iP;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/iP;-><init>(Ljava/util/ArrayList;)V

    .line 36
    :goto_6
    iput-object v6, v4, Lcom/android/tools/r8/internal/CN;->c:Lcom/android/tools/r8/internal/jP;

    .line 37
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Edge;->getConsequencesList()Ljava/util/List;

    move-result-object v2

    .line 38
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Target;

    .line 40
    new-instance v8, Lcom/android/tools/r8/internal/wP;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/wP;-><init>()V

    .line 41
    invoke-virtual {v8, v7, v3}, Lcom/android/tools/r8/internal/wP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Target;Lcom/android/tools/r8/internal/rP;)Lcom/android/tools/r8/internal/wP;

    move-result-object v7

    .line 42
    iget-object v8, v7, Lcom/android/tools/r8/internal/wP;->a:Lcom/android/tools/r8/internal/MM;

    if-eqz v8, :cond_7

    .line 43
    new-instance v9, Lcom/android/tools/r8/internal/xP;

    iget-object v7, v7, Lcom/android/tools/r8/internal/wP;->b:Lcom/android/tools/r8/internal/zN;

    invoke-direct {v9, v8, v7}, Lcom/android/tools/r8/internal/xP;-><init>(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/zN;)V

    .line 44
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 45
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    const-string v0, "Target must define an item pattern"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 47
    new-instance v2, Lcom/android/tools/r8/internal/cN;

    invoke-direct {v2, v6}, Lcom/android/tools/r8/internal/cN;-><init>(Ljava/util/ArrayList;)V

    .line 48
    iput-object v2, v4, Lcom/android/tools/r8/internal/CN;->d:Lcom/android/tools/r8/internal/cN;

    .line 49
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CN;->a()Lcom/android/tools/r8/internal/DN;

    move-result-object v2

    goto/16 :goto_a

    .line 50
    :cond_9
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    const-string v0, "Invalid empty consequent set"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_a
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    invoke-direct {p1, v3}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_b
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration;->hasCheck()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 53
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration;->getCheck()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;

    move-result-object v2

    .line 54
    new-instance v4, Lcom/android/tools/r8/internal/SM;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/SM;-><init>()V

    .line 55
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getMetaInfo()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/tools/r8/internal/MN;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MetaInfo;Lcom/android/tools/r8/internal/tP;)Lcom/android/tools/r8/internal/MN;

    move-result-object v6

    .line 56
    iput-object v6, v4, Lcom/android/tools/r8/internal/SM;->a:Lcom/android/tools/r8/internal/MN;

    .line 57
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getKindValue()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_e

    .line 58
    sget-boolean v6, Lcom/android/tools/r8/internal/SM;->e:Z

    if-nez v6, :cond_d

    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getKind()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;->CHECK_REMOVED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$CheckKind;

    if-ne v6, v7, :cond_c

    goto :goto_8

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_8
    const/4 v6, 0x1

    .line 59
    iput v6, v4, Lcom/android/tools/r8/internal/SM;->b:I

    goto :goto_9

    .line 60
    :cond_e
    iput v7, v4, Lcom/android/tools/r8/internal/SM;->b:I

    .line 61
    :goto_9
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getBindings()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 62
    new-instance v3, Lcom/android/tools/r8/internal/rP;

    .line 63
    new-instance v7, Lcom/android/tools/r8/internal/OM;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/OM;-><init>()V

    .line 64
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Bindings;)Lcom/android/tools/r8/internal/OM;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/tools/r8/internal/rP;-><init>(Lcom/android/tools/r8/internal/OM;)V

    .line 65
    iget-object v6, v3, Lcom/android/tools/r8/internal/rP;->b:Lcom/android/tools/r8/internal/QM;

    .line 66
    iput-object v6, v4, Lcom/android/tools/r8/internal/SM;->c:Lcom/android/tools/r8/internal/QM;

    .line 67
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Check;->getItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/rP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;)Lcom/android/tools/r8/internal/MM;

    move-result-object v2

    .line 68
    iput-object v2, v4, Lcom/android/tools/r8/internal/SM;->d:Lcom/android/tools/r8/internal/MM;

    .line 69
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/SM;->a()Lcom/android/tools/r8/internal/TM;

    move-result-object v2

    goto :goto_a

    .line 70
    :cond_f
    new-instance p1, Lcom/android/tools/r8/internal/FN;

    invoke-direct {p1, v3}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_11

    .line 71
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 72
    :cond_11
    new-instance p1, Lcom/android/tools/r8/ResourceException;

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/shaking/a2;->a:Lcom/android/tools/r8/origin/Origin;

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse declaration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V

    throw p1

    :cond_12
    return-void

    .line 75
    :cond_13
    new-instance p1, Lcom/android/tools/r8/ResourceException;

    .line 76
    iget-object v1, p0, Lcom/android/tools/r8/shaking/a2;->a:Lcom/android/tools/r8/origin/Origin;

    .line 77
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpec;->getVersion()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Version;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown keepspec version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/android/tools/r8/ResourceException;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V

    throw p1
.end method
