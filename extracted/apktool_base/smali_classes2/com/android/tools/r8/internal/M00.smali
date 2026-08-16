.class public final Lcom/android/tools/r8/internal/M00;
.super Lcom/android/tools/r8/internal/t50;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/QC;

.field public final b:Lcom/android/tools/r8/internal/QC;

.field public final c:Lcom/android/tools/r8/internal/EC;

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/EC;ZZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/t50;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/M00;->g:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

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
    iput-object p1, p0, Lcom/android/tools/r8/internal/M00;->a:Lcom/android/tools/r8/internal/QC;

    iput-object p2, p0, Lcom/android/tools/r8/internal/M00;->b:Lcom/android/tools/r8/internal/QC;

    iput-object p3, p0, Lcom/android/tools/r8/internal/M00;->c:Lcom/android/tools/r8/internal/EC;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/M00;->d:Z

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/M00;->e:Z

    iput-boolean p6, p0, Lcom/android/tools/r8/internal/M00;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/WJ;)Lcom/android/tools/r8/internal/t50;
    .locals 0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final b()Lcom/android/tools/r8/internal/M00;
    .locals 0

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/t50;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/M00;->e:Z

    return v0
.end method

.method public final e()Lcom/android/tools/r8/internal/t50;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
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

    const-class v3, Lcom/android/tools/r8/internal/M00;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/M00;

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/M00;->d:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/M00;->d:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/M00;->e:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/M00;->e:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/M00;->f:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/M00;->f:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/M00;->a:Lcom/android/tools/r8/internal/QC;

    iget-object v3, p1, Lcom/android/tools/r8/internal/M00;->a:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/M00;->b:Lcom/android/tools/r8/internal/QC;

    iget-object v3, p1, Lcom/android/tools/r8/internal/M00;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/M00;->c:Lcom/android/tools/r8/internal/EC;

    iget-object p1, p1, Lcom/android/tools/r8/internal/M00;->c:Lcom/android/tools/r8/internal/EC;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/android/tools/r8/internal/QY;->a(Lcom/android/tools/r8/internal/LY;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f()Lcom/android/tools/r8/internal/t50;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final g()Lcom/android/tools/r8/internal/t50;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/M00;->a:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/M00;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/tools/r8/internal/M00;->c:Lcom/android/tools/r8/internal/EC;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/LY;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    sget-boolean v1, Lcom/android/tools/r8/internal/M00;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/M00;->a:Lcom/android/tools/r8/internal/QC;

    iget-object v2, p0, Lcom/android/tools/r8/internal/M00;->b:Lcom/android/tools/r8/internal/QC;

    iget-object v3, p0, Lcom/android/tools/r8/internal/M00;->c:Lcom/android/tools/r8/internal/EC;

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

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/M00;->d:Z

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/M00;->e:Z

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/M00;->f:Z

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
