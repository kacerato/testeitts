.class public Lcom/android/tools/r8/internal/Bz;
.super Lcom/android/tools/r8/internal/sL;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/sL;-><init>()V

    return-void
.end method


# virtual methods
.method public final G1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final U()Lcom/android/tools/r8/internal/Bz;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/internal/Kn;->q:Lcom/android/tools/r8/internal/W5;

    if-eq v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Dn;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Dn;-><init>(Lcom/android/tools/r8/internal/Bz;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Fn;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/An;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/An;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Fn;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 4

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/android/tools/r8/internal/PS;->h:Lcom/android/tools/r8/internal/bT;

    .line 10
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/bT;->a(Lcom/android/tools/r8/internal/W5;)I

    move-result v0

    .line 11
    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PS;->c()I

    .line 13
    iget-object v1, p1, Lcom/android/tools/r8/internal/PS;->c:Lcom/android/tools/r8/internal/wT;

    const/16 v2, 0xa7

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/PS;->e(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 2

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/M9;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/ka;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final i1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Bz;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Goto has no register arguments."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final q2()I
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Bz;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Goto defines no values."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    if-ne v0, p0, :cond_0

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->r()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "block "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "block <unknown>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v2()Lcom/android/tools/r8/internal/W5;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/Bz;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method
