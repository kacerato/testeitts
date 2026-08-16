.class public abstract Lcom/android/tools/r8/internal/B60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/B60$c;,
        Lcom/android/tools/r8/internal/B60$b;,
        Lcom/android/tools/r8/internal/B60$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/internal/B60;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:I

.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:Lcom/android/tools/r8/internal/B60;

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/B60;->g:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Synthetic positions should always be outermost"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/B60;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/B60;->e:Z

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/B60;->f:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/rA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rA0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/sA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/sA0;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/tA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/tA0;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/uA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uA0;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/vA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vA0;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/wA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wA0;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static s()Lcom/android/tools/r8/internal/B60;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/B60$b;->h:Lcom/android/tools/r8/internal/B60$b;

    return-object v0
.end method


# virtual methods
.method public E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->b()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    .line 15
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 16
    :cond_0
    iput-object p1, v0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;
    .locals 2

    if-ne p0, p1, :cond_0

    return-object p2

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->b()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    .line 21
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 22
    iput-object p1, v0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public final a(Ljava/util/function/Predicate;Z)Lcom/android/tools/r8/internal/B60;
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/B60;->a(Ljava/util/function/Predicate;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 11
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/android/tools/r8/internal/y60;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b()Lcom/android/tools/r8/internal/B60$a;
.end method

.method public final c()Lcom/android/tools/r8/internal/B60;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    return-object v0
.end method

.method public abstract d()I
.end method

.method public e()Lcom/android/tools/r8/graph/L2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/B60;->b:I

    return v0
.end method

.method public final g()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final h()Lcom/android/tools/r8/internal/B60;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/iA;->c:Z

    invoke-interface {p0}, Lcom/android/tools/r8/internal/Mq0;->m()Lcom/android/tools/r8/internal/Nq0;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/iA;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result v0

    return v0
.end method

.method public i()Lcom/android/tools/r8/graph/A2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lcom/android/tools/r8/internal/AH;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/B60;->f:Z

    return v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/B60;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/A60;

    return v0
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/B60;->e:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "--"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->l()Z

    move-result v1

    const-string v2, ":"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->e()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/internal/B60;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    if-eqz v1, :cond_3

    :goto_0
    if-eqz v1, :cond_3

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/tools/r8/internal/B60;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", isOutline = true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->i()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, ", outlineCallee = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->i()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->j()Lcom/android/tools/r8/internal/AH;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, ", outlineCallerPositions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/B60;->j()Lcom/android/tools/r8/internal/AH;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
