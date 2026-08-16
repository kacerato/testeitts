.class public Lcom/android/tools/r8/naming/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/U;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/naming/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static j:I = 0x0

.field public static final synthetic k:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/naming/M0;

.field public final c:Lcom/android/tools/r8/naming/V$b;

.field public final d:Lcom/android/tools/r8/naming/M0;

.field public final e:Ljava/lang/String;

.field public f:Lcom/android/tools/r8/naming/V$b;

.field public g:Z

.field public final h:I

.field public i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/M0;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/naming/k$b;->f:Lcom/android/tools/r8/naming/V$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/naming/k$b;->g:Z

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/android/tools/r8/naming/k$b;->j:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/tools/r8/naming/k$b;->j:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v0, p0, Lcom/android/tools/r8/naming/k$b;->h:I

    sget-object v0, Lcom/android/tools/r8/naming/k;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iput-object p2, p0, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    iput-object p3, p0, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    iput-object p4, p0, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-nez v0, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/naming/k$b;->k:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/M0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-nez v0, :cond_3

    :goto_1
    return p1

    .line 17
    :cond_3
    iget v1, v0, Lcom/android/tools/r8/naming/M0;->b:I

    iget v0, v0, Lcom/android/tools/r8/naming/M0;->a:I

    if-ne v1, v0, :cond_4

    return v1

    :cond_4
    add-int/2addr v0, p1

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget p1, p1, Lcom/android/tools/r8/naming/M0;->a:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/hC;
    .locals 6

    .line 4
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/mappinginformation/e;

    .line 7
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v2, 0x1

    .line 10
    array-length v5, v0

    if-ge v5, v4, :cond_1

    .line 11
    array-length v5, v0

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 12
    :cond_1
    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/naming/V$c;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    return-object v0
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    sget-object v1, Lcom/android/tools/r8/naming/k;->h:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {v0, p2, p1}, Lcom/android/tools/r8/naming/mappinginformation/e;->a(Ljava/util/List;Lcom/android/tools/r8/naming/mappinginformation/e;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final bridge synthetic b()Lcom/android/tools/r8/naming/V$c;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/naming/k$b;->f()Lcom/android/tools/r8/naming/V$b;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/hC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/naming/p3;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/p3;-><init>()V

    new-instance v1, Lcom/android/tools/r8/naming/q3;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/q3;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/naming/k$b;->a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/O40;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/naming/n3;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/n3;-><init>()V

    new-instance v1, Lcom/android/tools/r8/naming/o3;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/o3;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/naming/k$b;->a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/naming/k$b;->k:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/O40;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/naming/k$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/naming/k$b;

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget-object v3, p1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    iget-object v3, p1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    iget-object v3, p1, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/naming/V$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->f:Lcom/android/tools/r8/naming/V$b;

    iget-object v3, p1, Lcom/android/tools/r8/naming/k$b;->f:Lcom/android/tools/r8/naming/V$b;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    iget-object p1, p1, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()Lcom/android/tools/r8/naming/V$b;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->f:Lcom/android/tools/r8/naming/V$b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    new-instance v2, Lcom/android/tools/r8/naming/V$b;

    iget-object v3, v0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    invoke-direct {v2, v1, v3, v0}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/naming/V$b;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/android/tools/r8/internal/hC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/naming/r3;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/r3;-><init>()V

    new-instance v1, Lcom/android/tools/r8/naming/s3;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/s3;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/naming/k$b;->a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$b;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/tools/r8/naming/k$b;->f:Lcom/android/tools/r8/naming/V$b;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/naming/k$b;->g:Z

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/naming/k$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
