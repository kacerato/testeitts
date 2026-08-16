.class public final Lcom/android/tools/r8/shaking/e1;
.super Lcom/android/tools/r8/shaking/i1;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/f1;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/f1;Ljava/util/IdentityHashMap;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/i1;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/shaking/e1;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p1, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/f1;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/shaking/e1;->a:Lcom/android/tools/r8/shaking/f1;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/e1;->b:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/shaking/f1;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/f1;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/e1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/r0;)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/e1;->a:Lcom/android/tools/r8/shaking/f1;

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 5
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    sget-object v1, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->m0()I

    move-result v1

    .line 10
    sget-object v4, Lcom/android/tools/r8/shaking/g1;->c:Lcom/android/tools/r8/shaking/g1;

    if-ne v0, v4, :cond_3

    if-eq v1, v3, :cond_4

    .line 11
    :cond_3
    sget-object v4, Lcom/android/tools/r8/shaking/g1;->d:Lcom/android/tools/r8/shaking/g1;

    if-ne v0, v4, :cond_5

    if-nez v1, :cond_5

    :cond_4
    :goto_0
    return v2

    .line 12
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/e1;->b:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_d

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/f1;

    if-eqz v0, :cond_d

    .line 14
    sget-boolean v1, Lcom/android/tools/r8/shaking/e1;->c:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/android/tools/r8/shaking/f1;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_7
    :goto_2
    iget-object v0, v0, Lcom/android/tools/r8/shaking/f1;->b:Lcom/android/tools/r8/shaking/g1;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/g1;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 17
    :cond_8
    sget-object v1, Lcom/android/tools/r8/shaking/g1;->e:Lcom/android/tools/r8/shaking/g1;

    if-ne v0, v1, :cond_9

    goto :goto_3

    .line 18
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->m0()I

    move-result p1

    .line 19
    sget-object v1, Lcom/android/tools/r8/shaking/g1;->c:Lcom/android/tools/r8/shaking/g1;

    if-ne v0, v1, :cond_a

    if-eq p1, v3, :cond_b

    .line 20
    :cond_a
    sget-object v1, Lcom/android/tools/r8/shaking/g1;->d:Lcom/android/tools/r8/shaking/g1;

    if-ne v0, v1, :cond_c

    if-nez p1, :cond_c

    :cond_b
    :goto_3
    move v2, v3

    :cond_c
    :goto_4
    xor-int/lit8 p1, v2, 0x1

    return p1

    :cond_d
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntermediateKeepAnnotationCollection{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/e1;->a:Lcom/android/tools/r8/shaking/f1;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/f1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/e1;->b:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/dc;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/shaking/dc;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
