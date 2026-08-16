.class public Lcom/android/tools/r8/naming/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/U;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/naming/V$b;,
        Lcom/android/tools/r8/naming/V$a;,
        Lcom/android/tools/r8/naming/V$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/naming/U;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/r8/naming/V;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/List;


# instance fields
.field public final b:Lcom/android/tools/r8/naming/V$c;

.field public final c:Lcom/android/tools/r8/naming/V$c;

.field public final d:Lcom/android/tools/r8/position/Position;

.field public e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/android/tools/r8/naming/V;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/V$c;Lcom/android/tools/r8/naming/V$c;Lcom/android/tools/r8/position/Position;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/naming/V;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/naming/V;->b:Lcom/android/tools/r8/naming/V$c;

    iput-object p2, p0, Lcom/android/tools/r8/naming/V;->c:Lcom/android/tools/r8/naming/V$c;

    iput-object p3, p0, Lcom/android/tools/r8/naming/V;->d:Lcom/android/tools/r8/position/Position;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/V;)I
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/naming/p2;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/p2;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/naming/q2;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/q2;-><init>()V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/naming/r2;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/r2;-><init>()V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/naming/s2;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/naming/s2;-><init>(Lcom/android/tools/r8/naming/V;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 6
    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/android/tools/r8/naming/V$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/V;->b:Lcom/android/tools/r8/naming/V$c;

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/naming/V$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/V;->c:Lcom/android/tools/r8/naming/V$c;

    return-object v0
.end method

.method public final synthetic b(Lcom/android/tools/r8/naming/V;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/V;->c:Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/tools/r8/naming/V;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/V;->a(Lcom/android/tools/r8/naming/V;)I

    move-result p1

    return p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/V;->b:Lcom/android/tools/r8/naming/V$c;

    iget-object v0, v0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/naming/o2;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/o2;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/naming/V;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/naming/V;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V;->b:Lcom/android/tools/r8/naming/V$c;

    iget-object v3, p1, Lcom/android/tools/r8/naming/V;->b:Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/naming/V$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/V;->c:Lcom/android/tools/r8/naming/V$c;

    iget-object p1, p1, Lcom/android/tools/r8/naming/V;->c:Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/naming/V$c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/naming/V;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/mappinginformation/e;

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/mappinginformation/e;->l()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v1, v1, Lcom/android/tools/r8/internal/O40;

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/V;->b:Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/V;->b:Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/naming/V;->c:Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/V$c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/naming/V;->b:Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/V;->c:Lcom/android/tools/r8/naming/V$c;

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/V$c;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
