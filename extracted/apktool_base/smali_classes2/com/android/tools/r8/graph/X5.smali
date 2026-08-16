.class public final Lcom/android/tools/r8/graph/X5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;

.field public b:I

.field public c:Ljava/util/AbstractCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/graph/X5;->b:I

    sget-object v0, Lcom/android/tools/r8/graph/Y5;->e:Lcom/android/tools/r8/internal/ef0;

    iput-object v0, p0, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    iput-object p1, p0, Lcom/android/tools/r8/graph/X5;->a:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    sget-object v1, Lcom/android/tools/r8/graph/Y5;->e:Lcom/android/tools/r8/internal/ef0;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v1, Lu/K0;

    invoke-direct {v1}, Lu/K0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 3
    iget v0, p0, Lcom/android/tools/r8/graph/X5;->b:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, -0x2

    if-ne v0, v2, :cond_3

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/graph/X5;->d:Z

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v3, -0x1

    if-ne p1, v2, :cond_6

    .line 5
    sget-boolean p1, Lcom/android/tools/r8/graph/X5;->d:Z

    if-nez p1, :cond_5

    if-eq v0, v1, :cond_5

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_5
    :goto_1
    iput v2, p0, Lcom/android/tools/r8/graph/X5;->b:I

    return-void

    .line 7
    :cond_6
    sget-boolean v1, Lcom/android/tools/r8/graph/X5;->d:Z

    if-nez v1, :cond_8

    if-ne v0, v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_8
    :goto_2
    iput p1, p0, Lcom/android/tools/r8/graph/X5;->b:I

    return-void
.end method

.method public final b()Z
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/graph/X5;->d:Z

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/tools/r8/graph/X5;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Program class missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/graph/X5;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/tools/r8/graph/X5;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/graph/X5;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/X5;

    iget-object v0, p1, Lcom/android/tools/r8/graph/X5;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/X5;->a:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    iget-object v0, p0, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/X5;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/X5;->c:Ljava/util/AbstractCollection;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/X5;->a:Lcom/android/tools/r8/graph/M2;

    iget v1, p0, Lcom/android/tools/r8/graph/X5;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TypeInfo{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", level:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
