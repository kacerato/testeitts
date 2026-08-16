.class public abstract Lcom/android/tools/r8/shaking/f3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/f3$a;
    }
.end annotation


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/origin/Origin;

.field public final b:Lcom/android/tools/r8/position/Position;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:Lcom/android/tools/r8/shaking/S2;

.field public final f:Lcom/android/tools/r8/shaking/S2;

.field public final g:Z

.field public final h:Lcom/android/tools/r8/shaking/l3;

.field public final i:Lcom/android/tools/r8/shaking/c3;

.field public final j:Ljava/util/List;

.field public final k:Lcom/android/tools/r8/shaking/i4;

.field public final l:Z

.field public final m:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;ZLcom/android/tools/r8/shaking/l3;Lcom/android/tools/r8/shaking/c3;Ljava/util/List;Lcom/android/tools/r8/shaking/i4;ZLjava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/shaking/f3;->n:Z

    if-nez v0, :cond_1

    if-eqz p8, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-nez p3, :cond_7

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    if-eq p1, v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/shaking/f3;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/f3;->b:Lcom/android/tools/r8/position/Position;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/f3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/f3;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/android/tools/r8/shaking/f3;->e:Lcom/android/tools/r8/shaking/S2;

    iput-object p6, p0, Lcom/android/tools/r8/shaking/f3;->f:Lcom/android/tools/r8/shaking/S2;

    iput-boolean p7, p0, Lcom/android/tools/r8/shaking/f3;->g:Z

    iput-object p8, p0, Lcom/android/tools/r8/shaking/f3;->h:Lcom/android/tools/r8/shaking/l3;

    iput-object p9, p0, Lcom/android/tools/r8/shaking/f3;->i:Lcom/android/tools/r8/shaking/c3;

    iput-object p10, p0, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    iput-object p11, p0, Lcom/android/tools/r8/shaking/f3;->k:Lcom/android/tools/r8/shaking/i4;

    iput-boolean p12, p0, Lcom/android/tools/r8/shaking/f3;->l:Z

    iput-object p13, p0, Lcom/android/tools/r8/shaking/f3;->m:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/shaking/R3;)V
    .locals 1

    .line 33
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/shaking/S2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->e:Lcom/android/tools/r8/shaking/S2;

    return-object v0
.end method

.method public a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->d:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, " @"

    const/16 v3, 0x40

    const/16 v4, 0x20

    if-nez v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->e:Lcom/android/tools/r8/shaking/S2;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/shaking/f3;->f:Lcom/android/tools/r8/shaking/S2;

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/S2;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, " "

    const-string v6, " !"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 12
    const-string v5, "!"

    invoke-static {p1, v5, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 13
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    :cond_3
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/f3;->g:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x21

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->h:Lcom/android/tools/r8/shaking/l3;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->i:Lcom/android/tools/r8/shaking/c3;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/c3;->a(Ljava/lang/StringBuilder;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/f3;->l:Z

    if-eqz v0, :cond_5

    const-string v0, "extends"

    goto :goto_1

    :cond_5
    const-string v0, "implements"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 24
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 27
    :cond_6
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->k:Lcom/android/tools/r8/shaking/i4;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 30
    const-string v0, " {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->m:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/shaking/kc;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/kc;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 32
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/shaking/i4;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->d:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/shaking/c3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->i:Lcom/android/tools/r8/shaking/c3;

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/shaking/l3;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->h:Lcom/android/tools/r8/shaking/l3;

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/shaking/i4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->k:Lcom/android/tools/r8/shaking/i4;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/shaking/f3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/shaking/f3;

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/f3;->g:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/f3;->g:Z

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/f3;->l:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/shaking/f3;->l:Z

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/f3;->d:Ljava/util/List;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->e:Lcom/android/tools/r8/shaking/S2;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/f3;->e:Lcom/android/tools/r8/shaking/S2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/S2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->f:Lcom/android/tools/r8/shaking/S2;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/f3;->f:Lcom/android/tools/r8/shaking/S2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/S2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->h:Lcom/android/tools/r8/shaking/l3;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/f3;->h:Lcom/android/tools/r8/shaking/l3;

    if-eq v0, v2, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->i:Lcom/android/tools/r8/shaking/c3;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/f3;->i:Lcom/android/tools/r8/shaking/c3;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/c3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->k:Lcom/android/tools/r8/shaking/i4;

    iget-object v2, p1, Lcom/android/tools/r8/shaking/f3;->k:Lcom/android/tools/r8/shaking/i4;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->m:Ljava/util/List;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/f3;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/f3;->l:Z

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/shaking/R3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->m:Ljava/util/List;

    return-object v0
.end method

.method public h()Lcom/android/tools/r8/shaking/S2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->f:Lcom/android/tools/r8/shaking/S2;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/tools/r8/shaking/f3;->e:Lcom/android/tools/r8/shaking/S2;

    iget v1, v1, Lcom/android/tools/r8/shaking/S2;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/tools/r8/shaking/f3;->f:Lcom/android/tools/r8/shaking/S2;

    iget v1, v1, Lcom/android/tools/r8/shaking/S2;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/f3;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/tools/r8/shaking/f3;->h:Lcom/android/tools/r8/shaking/l3;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/tools/r8/shaking/f3;->i:Lcom/android/tools/r8/shaking/c3;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/c3;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/tools/r8/shaking/f3;->k:Lcom/android/tools/r8/shaking/i4;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/i4;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/f3;->l:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/android/tools/r8/shaking/f3;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public i()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->a:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/f3;->k:Lcom/android/tools/r8/shaking/i4;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/f3;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
