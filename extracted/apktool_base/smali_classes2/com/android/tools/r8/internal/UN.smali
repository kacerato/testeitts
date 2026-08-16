.class public final Lcom/android/tools/r8/internal/UN;
.super Lcom/android/tools/r8/internal/fO;
.source "SourceFile"


# static fields
.field public static final synthetic q:Z = true


# instance fields
.field public final j:Lcom/android/tools/r8/internal/B50;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/android/tools/r8/internal/mO;

.field public final m:Lcom/android/tools/r8/internal/CN;

.field public final n:Lcom/android/tools/r8/internal/bN;

.field public final o:Lcom/android/tools/r8/internal/GN;

.field public final p:Lcom/android/tools/r8/internal/pO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fO;-><init>(Lcom/android/tools/r8/internal/B50;)V

    new-instance v0, Lcom/android/tools/r8/internal/CN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/CN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/UN;->m:Lcom/android/tools/r8/internal/CN;

    new-instance v0, Lcom/android/tools/r8/internal/bN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/UN;->n:Lcom/android/tools/r8/internal/bN;

    new-instance v0, Lcom/android/tools/r8/internal/GN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GN;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/UN;->o:Lcom/android/tools/r8/internal/GN;

    new-instance v1, Lcom/android/tools/r8/internal/pO;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pO;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/UN;->p:Lcom/android/tools/r8/internal/pO;

    iput-object p1, p0, Lcom/android/tools/r8/internal/UN;->j:Lcom/android/tools/r8/internal/B50;

    iput-object p4, p0, Lcom/android/tools/r8/internal/UN;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/UN;->l:Lcom/android/tools/r8/internal/mO;

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const-string p1, "className"

    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/UN;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Landroidx/annotation/keep/KeepItemKind;"

    const-string p2, "CLASS_AND_MEMBERS"

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/internal/fO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 4
    const-string v0, "additionalTargets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/aO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UN;->j:Lcom/android/tools/r8/internal/B50;

    .line 6
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/nY0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/nY0;-><init>(Lcom/android/tools/r8/internal/UN;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/UN;->p:Lcom/android/tools/r8/internal/pO;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/aO;-><init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V

    return-object v0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fO;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 7

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    .line 10
    sget-object v1, Lcom/android/tools/r8/internal/WN;->b:Lcom/android/tools/r8/internal/WN;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->g:Lcom/android/tools/r8/internal/jO;

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jO;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    const-string v0, "memberAccess"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/UN;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    .line 15
    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    const-string v3, "Landroidx/annotation/keep/MemberAccessFlags;"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v1, "PROTECTED"

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    invoke-super {p0}, Lcom/android/tools/r8/internal/fO;->a()V

    .line 18
    sget-object v0, Lcom/android/tools/r8/internal/vN;->c:Lcom/android/tools/r8/internal/vN;

    .line 19
    const-string v1, "com.android.tools.r8.keepanno.unkeepInvisibleAnnotationsInKeepForApi"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 20
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/internal/vN;->b:Lcom/android/tools/r8/internal/QC;

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/rN;

    .line 23
    sget-object v3, Lcom/android/tools/r8/internal/dN;->c:Lcom/android/tools/r8/internal/dN;

    if-ne v2, v3, :cond_1

    .line 24
    sget-object v2, Lcom/android/tools/r8/internal/dN;->d:Lcom/android/tools/r8/internal/dN;

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_1
    sget-boolean v3, Lcom/android/tools/r8/internal/UN;->q:Z

    if-nez v3, :cond_3

    .line 27
    sget-object v3, Lcom/android/tools/r8/internal/dN;->e:Lcom/android/tools/r8/internal/dN;

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/xN;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/xN;-><init>(Ljava/util/HashSet;)V

    .line 31
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/fO;->h:Ljava/util/List;

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/android/tools/r8/internal/fO;->e:Lcom/android/tools/r8/internal/WN;

    if-eqz v2, :cond_c

    .line 32
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/MM;

    .line 33
    iget-object v3, p0, Lcom/android/tools/r8/internal/UN;->p:Lcom/android/tools/r8/internal/pO;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/pO;->a(Lcom/android/tools/r8/internal/MM;)Lcom/android/tools/r8/internal/FO;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object v4

    if-nez v4, :cond_8

    .line 35
    sget-boolean v4, Lcom/android/tools/r8/internal/UN;->q:Z

    if-nez v4, :cond_7

    .line 36
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 37
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_7
    :goto_3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FO;->b()Lcom/android/tools/r8/internal/LO;

    move-result-object v3

    .line 39
    iget-object v3, v3, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    .line 40
    iget-object v4, p0, Lcom/android/tools/r8/internal/UN;->p:Lcom/android/tools/r8/internal/pO;

    .line 41
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/pO;->a(Lcom/android/tools/r8/internal/MM;)Lcom/android/tools/r8/internal/FO;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FO;->a()Lcom/android/tools/r8/internal/WM;

    move-result-object v4

    .line 43
    :cond_8
    iget-object v3, p0, Lcom/android/tools/r8/internal/UN;->k:Ljava/lang/String;

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    .line 44
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {v3}, Lcom/android/tools/r8/internal/sO;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    iget-object v5, v4, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 47
    iget-object v5, v5, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    .line 48
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/mP;->b()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 50
    iget-object v3, v4, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    .line 51
    iget-object v3, v3, Lcom/android/tools/r8/internal/YM;->b:Lcom/android/tools/r8/internal/DO;

    .line 52
    check-cast v3, Lcom/android/tools/r8/internal/CO;

    .line 53
    iget-object v3, v3, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 54
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 55
    iget-object v3, p0, Lcom/android/tools/r8/internal/UN;->n:Lcom/android/tools/r8/internal/bN;

    .line 56
    sget-object v4, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    .line 57
    new-instance v4, Lcom/android/tools/r8/internal/xP;

    invoke-direct {v4, v2, v0}, Lcom/android/tools/r8/internal/xP;-><init>(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/zN;)V

    .line 58
    iget-object v2, v3, Lcom/android/tools/r8/internal/bN;->a:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 60
    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/UN;->j:Lcom/android/tools/r8/internal/B50;

    const-string v1, "cannot define an \'extends\' pattern."

    .line 61
    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    .line 62
    throw v0

    .line 63
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/UN;->j:Lcom/android/tools/r8/internal/B50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UN;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "must reference its class context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    .line 65
    throw v0

    .line 66
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/UN;->l:Lcom/android/tools/r8/internal/mO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UN;->m:Lcom/android/tools/r8/internal/CN;

    iget-object v2, p0, Lcom/android/tools/r8/internal/UN;->o:Lcom/android/tools/r8/internal/GN;

    .line 67
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GN;->a()Lcom/android/tools/r8/internal/MN;

    move-result-object v2

    .line 68
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->a:Lcom/android/tools/r8/internal/MN;

    .line 69
    iget-object v2, p0, Lcom/android/tools/r8/internal/UN;->p:Lcom/android/tools/r8/internal/pO;

    .line 70
    iget-object v2, v2, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 71
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/OM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object v2

    .line 72
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->b:Lcom/android/tools/r8/internal/QM;

    .line 73
    iget-object v2, p0, Lcom/android/tools/r8/internal/UN;->n:Lcom/android/tools/r8/internal/bN;

    .line 74
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/bN;->a()Lcom/android/tools/r8/internal/cN;

    move-result-object v2

    .line 75
    iput-object v2, v1, Lcom/android/tools/r8/internal/CN;->d:Lcom/android/tools/r8/internal/cN;

    .line 76
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CN;->a()Lcom/android/tools/r8/internal/DN;

    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

    return-void

    .line 78
    :cond_c
    iget-object v0, p0, Lcom/android/tools/r8/internal/fO;->c:Lcom/android/tools/r8/internal/B50;

    const-string v1, "Items not finalized. Missing call to visitEnd()"

    .line 79
    invoke-static {v0, v0, v1}, Lcom/android/tools/r8/internal/yd;->a(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;)Lcom/android/tools/r8/internal/FM;

    move-result-object v0

    .line 80
    throw v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/cN;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/UN;->n:Lcom/android/tools/r8/internal/bN;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/oY0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/oY0;-><init>(Lcom/android/tools/r8/internal/bN;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/cN;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/UN;->o:Lcom/android/tools/r8/internal/GN;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/GN;->a(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/fO;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/pO;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UN;->p:Lcom/android/tools/r8/internal/pO;

    return-object v0
.end method
