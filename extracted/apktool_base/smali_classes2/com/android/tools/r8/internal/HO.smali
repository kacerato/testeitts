.class public abstract Lcom/android/tools/r8/internal/HO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Ljava/util/HashSet;

.field public c:Lcom/android/tools/r8/internal/LX;

.field public d:Lcom/android/tools/r8/internal/LX;

.field public e:Lcom/android/tools/r8/internal/LX;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/a2;->b:Lcom/android/tools/r8/internal/a2;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/HO;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/HO;->b:Ljava/util/HashSet;

    sget-object v0, Lcom/android/tools/r8/internal/LX;->a:Lcom/android/tools/r8/internal/IX;

    iput-object v0, p0, Lcom/android/tools/r8/internal/HO;->c:Lcom/android/tools/r8/internal/LX;

    iput-object v0, p0, Lcom/android/tools/r8/internal/HO;->d:Lcom/android/tools/r8/internal/LX;

    iput-object v0, p0, Lcom/android/tools/r8/internal/HO;->e:Lcom/android/tools/r8/internal/LX;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/IO;)Lcom/android/tools/r8/internal/HO;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/HO;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/HO;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/HO;->a:Ljava/util/HashSet;

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/internal/IO;->a:Ljava/util/AbstractCollection;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p1, Lcom/android/tools/r8/internal/IO;->b:Lcom/android/tools/r8/internal/LX;

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/HO;->c:Lcom/android/tools/r8/internal/LX;

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/IO;->c:Lcom/android/tools/r8/internal/LX;

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/HO;->d:Lcom/android/tools/r8/internal/LX;

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/HO;->b()Lcom/android/tools/r8/internal/HO;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;)Lcom/android/tools/r8/internal/HO;
    .locals 5

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/internal/HO;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/HO;->a()Ljava/util/Set;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/android/tools/r8/internal/a2;->f:Lcom/android/tools/r8/internal/ff0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->hasAccessVisibility()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->getAccessVisibility()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibilitySet;->getAccessVisibilityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    .line 28
    sget-object v2, Lcom/android/tools/r8/internal/a2;->b:Lcom/android/tools/r8/internal/a2;

    .line 29
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->getNumber()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v2, 0x2

    if-eq v3, v2, :cond_7

    const/4 v2, 0x3

    if-eq v3, v2, :cond_6

    const/4 v2, 0x4

    if-eq v3, v2, :cond_5

    .line 30
    sget-boolean v2, Lcom/android/tools/r8/internal/a2;->h:Z

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_UNSPECIFIED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    .line 31
    :cond_5
    sget-object v2, Lcom/android/tools/r8/internal/a2;->e:Lcom/android/tools/r8/internal/a2;

    goto :goto_3

    .line 32
    :cond_6
    sget-object v2, Lcom/android/tools/r8/internal/a2;->d:Lcom/android/tools/r8/internal/a2;

    goto :goto_3

    .line 33
    :cond_7
    sget-object v2, Lcom/android/tools/r8/internal/a2;->c:Lcom/android/tools/r8/internal/a2;

    :cond_8
    :goto_3
    if-eqz v2, :cond_2

    .line 34
    iget-object v1, p0, Lcom/android/tools/r8/internal/HO;->a:Ljava/util/HashSet;

    .line 35
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_9
    sget-boolean v0, Lcom/android/tools/r8/internal/HO;->f:Z

    if-nez v0, :cond_b

    iget-object v1, p0, Lcom/android/tools/r8/internal/HO;->c:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    instance-of v1, v1, Lcom/android/tools/r8/internal/IX;

    if-eqz v1, :cond_a

    goto :goto_4

    .line 38
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->hasStaticPattern()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->getStaticPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 41
    sget-object v1, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_5

    :cond_c
    sget-object v1, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    .line 42
    :goto_5
    iput-object v1, p0, Lcom/android/tools/r8/internal/HO;->c:Lcom/android/tools/r8/internal/LX;

    :cond_d
    if-nez v0, :cond_f

    .line 43
    iget-object v1, p0, Lcom/android/tools/r8/internal/HO;->d:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    instance-of v1, v1, Lcom/android/tools/r8/internal/IX;

    if-eqz v1, :cond_e

    goto :goto_6

    .line 45
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_f
    :goto_6
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->hasFinalPattern()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->getFinalPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getValue()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 48
    sget-object v1, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_7

    :cond_10
    sget-object v1, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    .line 49
    :goto_7
    iput-object v1, p0, Lcom/android/tools/r8/internal/HO;->d:Lcom/android/tools/r8/internal/LX;

    :cond_11
    if-nez v0, :cond_13

    .line 50
    iget-object v0, p0, Lcom/android/tools/r8/internal/HO;->e:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    instance-of v0, v0, Lcom/android/tools/r8/internal/IX;

    if-eqz v0, :cond_12

    goto :goto_8

    .line 52
    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_13
    :goto_8
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->hasSyntheticPattern()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;->getSyntheticPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getValue()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 55
    sget-object p1, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_9

    :cond_14
    sget-object p1, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    .line 56
    :goto_9
    iput-object p1, p0, Lcom/android/tools/r8/internal/HO;->e:Lcom/android/tools/r8/internal/LX;

    .line 57
    :cond_15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/HO;->b()Lcom/android/tools/r8/internal/HO;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/Set;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/HO;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/HO;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/a2;->f:Lcom/android/tools/r8/internal/ff0;

    return-object v0

    .line 13
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/a2;->b:Lcom/android/tools/r8/internal/a2;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/android/tools/r8/internal/HO;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    sget-object v1, Lcom/android/tools/r8/internal/a2;->f:Lcom/android/tools/r8/internal/ff0;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/HO;->a:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/HO;->b:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 20
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 21
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "Empty access visibility pattern will never match a member"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract b()Lcom/android/tools/r8/internal/HO;
.end method
