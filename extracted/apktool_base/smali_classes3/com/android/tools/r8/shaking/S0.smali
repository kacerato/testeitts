.class public final Lcom/android/tools/r8/shaking/S0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/nJ;

.field public final c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

.field public final d:Lcom/android/tools/r8/shaking/t;

.field public final e:Ljava/util/IdentityHashMap;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Ljava/util/IdentityHashMap;

.field public final i:Ljava/util/IdentityHashMap;

.field public final j:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/S0;->e:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/S0;->f:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/S0;->g:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/S0;->h:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/S0;->i:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/S0;->j:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/S0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/S0;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->R0:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/tools/r8/shaking/t;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/shaking/t;-><init>(Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/S0;->d:Lcom/android/tools/r8/shaking/t;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/shaking/S0;->d:Lcom/android/tools/r8/shaking/t;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/L3;Ljava/util/Set;Lcom/android/tools/r8/shaking/L3;)Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;
    .locals 0

    .line 149
    new-instance p2, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;-><init>(Lcom/android/tools/r8/shaking/L3;Ljava/util/Set;)V

    return-object p2
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;
    .locals 2

    .line 100
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/shaking/za;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/shaking/za;-><init>(Lcom/android/tools/r8/shaking/S0;)V

    new-instance v0, Lcom/android/tools/r8/shaking/Aa;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/Aa;-><init>(Lcom/android/tools/r8/shaking/S0;)V

    new-instance v1, Lcom/android/tools/r8/shaking/Ba;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Ba;-><init>(Lcom/android/tools/r8/shaking/S0;)V

    .line 101
    invoke-virtual {p1, p3, v0, v1}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    .line 102
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p2

    .line 103
    new-instance p3, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;-><init>(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;)V

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->e:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/va;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/tools/r8/shaking/va;-><init>(Lcom/android/tools/r8/shaking/S0;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->f:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/Da;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/Da;-><init>(Lcom/android/tools/r8/shaking/S0;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->h:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/Ea;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/shaking/Ea;-><init>(Lcom/android/tools/r8/shaking/S0;Lcom/android/tools/r8/graph/l1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;
    .locals 3

    .line 126
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 127
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 128
    new-instance v0, Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 130
    :goto_0
    iget-object v1, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 131
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    iget-object v2, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 132
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 133
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p2

    .line 134
    invoke-static {v1, v2, p2}, Lcom/android/tools/r8/references/Reference;->field(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/FieldReference;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;-><init>(ZLcom/android/tools/r8/references/FieldReference;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
    .locals 1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    instance-of v0, p1, Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p1

    return-object p1

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    move-result-object p1

    return-object p1

    .line 97
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/shaking/L3;)Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;
    .locals 2

    .line 135
    instance-of v0, p2, Lcom/android/tools/r8/shaking/K3;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 137
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->i:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/xa;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/shaking/xa;-><init>(Lcom/android/tools/r8/shaking/L3;Ljava/util/Set;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    return-object p1

    .line 139
    :cond_1
    instance-of p1, p2, Lcom/android/tools/r8/shaking/G3;

    if-eqz p1, :cond_6

    .line 140
    check-cast p2, Lcom/android/tools/r8/shaking/G3;

    .line 141
    sget-boolean p1, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez p1, :cond_5

    .line 142
    sget-boolean p1, Lcom/android/tools/r8/shaking/G3;->w:Z

    if-nez p1, :cond_3

    .line 143
    iget-object p1, p2, Lcom/android/tools/r8/shaking/G3;->t:Lcom/android/tools/r8/graph/E0;

    if-eqz p1, :cond_2

    goto :goto_1

    .line 144
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 145
    :cond_3
    :goto_1
    iget-object p1, p2, Lcom/android/tools/r8/shaking/G3;->t:Lcom/android/tools/r8/graph/E0;

    if-eqz p1, :cond_4

    goto :goto_2

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 147
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/shaking/S0;->i:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/shaking/ya;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/ya;-><init>(Lcom/android/tools/r8/shaking/S0;Lcom/android/tools/r8/shaking/G3;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    return-object p1

    .line 148
    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type of keep rule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/G3;Lcom/android/tools/r8/shaking/L3;)Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;
    .locals 2

    .line 1
    sget-boolean p2, Lcom/android/tools/r8/shaking/G3;->w:Z

    if-nez p2, :cond_1

    .line 2
    iget-object p2, p1, Lcom/android/tools/r8/shaking/G3;->t:Lcom/android/tools/r8/graph/E0;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object p2, p1, Lcom/android/tools/r8/shaking/G3;->t:Lcom/android/tools/r8/graph/E0;

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    move-result-object p2

    .line 6
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p2, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;-><init>(Lcom/android/tools/r8/shaking/L3;Ljava/util/Set;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->g:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/wa;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/shaking/wa;-><init>(Lcom/android/tools/r8/shaking/S0;Lcom/android/tools/r8/graph/A2;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;
    .locals 9

    .line 106
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 107
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 108
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 109
    new-array v0, v0, [Ljava/lang/Object;

    .line 110
    iget-object v1, p2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 111
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v6

    .line 112
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v7, v5, 0x1

    .line 113
    array-length v8, v0

    if-ge v8, v7, :cond_0

    .line 114
    array-length v8, v0

    invoke-static {v8, v7}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v8

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 115
    :cond_0
    aput-object v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    .line 116
    :cond_1
    new-instance v1, Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    .line 118
    :cond_2
    iget-object p1, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 119
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    iget-object v2, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 120
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v5, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 122
    iget-object v4, p2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    .line 123
    :cond_3
    iget-object p2, p2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p2

    .line 124
    :goto_1
    invoke-static {p1, v2, v0, p2}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;-><init>(ZLcom/android/tools/r8/references/MethodReference;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;)Lcom/android/tools/r8/internal/Dz$a;
    .locals 3

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getPreconditions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object p1, Lcom/android/tools/r8/internal/Dz$a;->b:Lcom/android/tools/r8/internal/Dz$a;

    return-object p1

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getPreconditions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    .line 29
    sget-object v2, Lcom/android/tools/r8/internal/Dz$a;->e:Lcom/android/tools/r8/internal/Dz$a;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/Dz$a;->d:Lcom/android/tools/r8/internal/Dz$a;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Dz$a;)Lcom/android/tools/r8/internal/Dz;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->j:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/Ca;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Ca;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Dz;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/R0;
    .locals 2

    .line 39
    sget-object v0, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 41
    iget-object v1, p0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v1, :cond_0

    .line 42
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p2

    .line 43
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p1

    .line 44
    sget-object v1, Lcom/android/tools/r8/internal/Dz$a;->l:Lcom/android/tools/r8/internal/Dz$a;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    :cond_0
    return-object v0

    .line 45
    :cond_1
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->L()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p2

    .line 47
    iget-object v1, p0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    move-result-object p2

    .line 49
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p1

    .line 50
    sget-object v1, Lcom/android/tools/r8/internal/Dz$a;->l:Lcom/android/tools/r8/internal/Dz$a;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    :cond_2
    return-object v0

    .line 51
    :cond_3
    sget-boolean v1, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez v1, :cond_5

    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->N()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_5
    :goto_0
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 53
    iget-object v1, p0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v1, :cond_6

    .line 54
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p2

    .line 55
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p1

    .line 56
    sget-object v1, Lcom/android/tools/r8/internal/Dz$a;->l:Lcom/android/tools/r8/internal/Dz$a;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    :cond_6
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/R0;
    .locals 1

    if-eqz p2, :cond_2

    .line 57
    sget-boolean v0, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v0, :cond_4

    .line 59
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p1

    .line 60
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p2

    .line 61
    sget-object v0, Lcom/android/tools/r8/internal/Dz$a;->n:Lcom/android/tools/r8/internal/Dz$a;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    sget-object p1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    return-object p1

    .line 62
    :cond_2
    sget-boolean p2, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 63
    :cond_4
    :goto_1
    sget-object p1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;
    .locals 1

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/shaking/X1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object p1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    return-object p1

    .line 73
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/shaking/X1;)V

    sget-object p1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;
    .locals 1

    .line 82
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/shaking/X1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object p1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    return-object p1

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/shaking/X1;)V

    sget-object p1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;
    .locals 2

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/shaking/X1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object p1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    return-object p1

    .line 76
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/X1;->a()Lcom/android/tools/r8/internal/Dz$a;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/Dz$a;->p:Lcom/android/tools/r8/internal/Dz$a;

    if-ne v0, v1, :cond_2

    .line 77
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/tools/r8/shaking/S0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    :cond_1
    sget-object p1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    return-object p1

    .line 81
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/shaking/X1;)V

    sget-object p1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V
    .locals 1

    .line 64
    sget-boolean v0, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/internal/Dz$a;)Lcom/android/tools/r8/internal/Dz;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;->acceptEdge(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/shaking/X1;)V
    .locals 2

    .line 85
    sget-boolean v0, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/shaking/X1;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/shaking/X1;->a(Lcom/android/tools/r8/shaking/S0;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->isLibraryNode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/X1;->a()Lcom/android/tools/r8/internal/Dz$a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/internal/Dz$a;)Lcom/android/tools/r8/internal/Dz;

    move-result-object p2

    .line 89
    iget-object v1, p0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    invoke-interface {v1, v0, p1, p2}, Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;->acceptEdge(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 31
    sget-boolean v0, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    sget-object v1, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p1

    sget-object v1, Lcom/android/tools/r8/internal/Dz$a;->c:Lcom/android/tools/r8/internal/Dz$a;

    .line 38
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 5

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->d:Lcom/android/tools/r8/shaking/t;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 12
    invoke-static {v0}, Lcom/android/tools/r8/internal/Xj;->a(Ljava/lang/Object;)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 13
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    .line 15
    instance-of v3, v2, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    if-eqz v3, :cond_3

    .line 16
    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    .line 17
    invoke-virtual {v3}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getPreconditions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, 0x1

    return p1

    .line 18
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19
    iget-object v3, p0, Lcom/android/tools/r8/shaking/S0;->d:Lcom/android/tools/r8/shaking/t;

    .line 20
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/t;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;)Ljava/util/Map;

    move-result-object v3

    .line 21
    sget-boolean v4, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez v4, :cond_5

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No sources set for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    if-nez v4, :cond_7

    .line 22
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty sources set for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 23
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 24
    :cond_8
    sget-boolean v0, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-eqz v0, :cond_9

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No rooted path to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/shaking/X1;)Z
    .locals 3

    .line 66
    sget-boolean v0, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    return v2

    :cond_2
    if-nez v0, :cond_4

    .line 68
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/X1;->a(Lcom/android/tools/r8/shaking/S0;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 70
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    xor-int/2addr p1, v2

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/S0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;-><init>(ZLcom/android/tools/r8/references/ClassReference;)V

    return-object v1
.end method
