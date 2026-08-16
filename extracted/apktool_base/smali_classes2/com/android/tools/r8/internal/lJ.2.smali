.class public final Lcom/android/tools/r8/internal/lJ;
.super Lcom/android/tools/r8/internal/t50;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/QC;

.field public final b:Lcom/android/tools/r8/internal/QC;

.field public final c:Lcom/android/tools/r8/internal/QC;

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/t50;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/lJ;->g:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    iput-object p2, p0, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    iput-object p3, p0, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/lJ;->d:Z

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/lJ;->e:Z

    iput-boolean p6, p0, Lcom/android/tools/r8/internal/lJ;->f:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/BC;Lcom/android/tools/r8/internal/WJ;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/android/tools/r8/internal/BC;->a:Lcom/android/tools/r8/internal/nS;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/F0;->a(Ljava/lang/Object;I)I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/lJ;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t50;
    .locals 9

    .line 2
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/lJ;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    iget-object v5, p0, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/lJ;->d:Z

    iget-boolean v7, p0, Lcom/android/tools/r8/internal/lJ;->e:Z

    iget-boolean v8, p0, Lcom/android/tools/r8/internal/lJ;->f:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/t50;
    .locals 9

    .line 9
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/lJ;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/lJ;->d:Z

    iget-boolean v7, p0, Lcom/android/tools/r8/internal/lJ;->e:Z

    iget-boolean v8, p0, Lcom/android/tools/r8/internal/lJ;->f:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/WJ;)Lcom/android/tools/r8/internal/t50;
    .locals 9

    .line 16
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 21
    new-instance p1, Lcom/android/tools/r8/internal/lJ;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    iget-object v4, p0, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/lJ;->d:Z

    iget-boolean v7, p0, Lcom/android/tools/r8/internal/lJ;->e:Z

    iget-boolean v8, p0, Lcom/android/tools/r8/internal/lJ;->f:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/t50;
    .locals 10

    sget v0, Lcom/android/tools/r8/internal/EC;->e:I

    new-instance v0, Lcom/android/tools/r8/internal/BC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/BC;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    new-instance v2, Lcom/android/tools/r8/internal/Ei1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Ei1;-><init>(Lcom/android/tools/r8/internal/BC;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/tools/r8/internal/M00;

    iget-object v4, p0, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    iget-object v5, p0, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/BC;->a:Lcom/android/tools/r8/internal/nS;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V0;->w()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0xb

    :goto_0
    new-instance v3, Lcom/android/tools/r8/internal/nS;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/nS;-><init>(I)V

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    move-object v0, v3

    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/df0;->l:Lcom/android/tools/r8/internal/EC;

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_2
    invoke-static {v0}, Lcom/android/tools/r8/internal/df0;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/EC;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-boolean v7, p0, Lcom/android/tools/r8/internal/lJ;->d:Z

    iget-boolean v8, p0, Lcom/android/tools/r8/internal/lJ;->e:Z

    iget-boolean v9, p0, Lcom/android/tools/r8/internal/lJ;->f:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/M00;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/EC;ZZZ)V

    return-object v1
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/lJ;->e:Z

    return v0
.end method

.method public final e()Lcom/android/tools/r8/internal/t50;
    .locals 8

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/lJ;->d:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/lJ;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    iget-object v4, p0, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/lJ;->e:Z

    iget-boolean v7, p0, Lcom/android/tools/r8/internal/lJ;->f:Z

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/internal/lJ;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/lJ;

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/lJ;->d:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/lJ;->d:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/lJ;->e:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/lJ;->e:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/lJ;->f:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/lJ;->f:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    iget-object v3, p1, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    iget-object v3, p1, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    iget-object p1, p1, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f()Lcom/android/tools/r8/internal/t50;
    .locals 8

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/lJ;->e:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/lJ;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    iget-object v4, p0, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/lJ;->d:Z

    iget-boolean v7, p0, Lcom/android/tools/r8/internal/lJ;->f:Z

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object v0
.end method

.method public final g()Lcom/android/tools/r8/internal/t50;
    .locals 8

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/lJ;->f:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/lJ;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    iget-object v4, p0, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/lJ;->d:Z

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/lJ;->e:Z

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    sget-boolean v1, Lcom/android/tools/r8/internal/lJ;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/lJ;->a:Lcom/android/tools/r8/internal/QC;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lJ;->b:Lcom/android/tools/r8/internal/QC;

    iget-object v3, p0, Lcom/android/tools/r8/internal/lJ;->c:Lcom/android/tools/r8/internal/QC;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    shl-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/lJ;->d:Z

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/lJ;->e:Z

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/lJ;->f:Z

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
