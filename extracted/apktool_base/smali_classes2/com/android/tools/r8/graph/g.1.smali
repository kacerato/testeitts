.class public abstract Lcom/android/tools/r8/graph/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/graph/g<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final d:Lcom/android/tools/r8/internal/hC;

.field public static final synthetic e:Z = true


# instance fields
.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "final"

    const-string v5, "synthetic"

    const-string v0, "public"

    const-string v1, "private"

    const-string v2, "protected"

    const-string v3, "static"

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/graph/g;->d:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/graph/g;->b:I

    iput p2, p0, Lcom/android/tools/r8/graph/g;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/graph/g;->b:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/jd;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/jd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/kd;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/kd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/g;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/tools/r8/graph/g;->c:I

    return p0
.end method

.method public static d(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->b(I)V

    return-void
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->b(I)V

    return-void
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->b(I)V

    return-void
.end method

.method public bridge synthetic E()Lcom/android/tools/r8/internal/Mq0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->s()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/android/tools/r8/graph/g;
    .locals 1

    .line 6
    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->s()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 6

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->b()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->c()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 12
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/BooleanSupplier;

    invoke-interface {v4}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "super"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 14
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/16 v4, 0x20

    .line 15
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/android/tools/r8/graph/g;->b:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/r8/graph/g;->b:I

    .line 5
    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/graph/g;->c:I

    return-void
.end method

.method public final a(ZLjava/util/function/Consumer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->s()Lcom/android/tools/r8/graph/g;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()Lcom/android/tools/r8/internal/hC;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/graph/g;->d:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .line 3
    iget v0, p0, Lcom/android/tools/r8/graph/g;->b:I

    not-int p1, p1

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/r8/graph/g;->b:I

    .line 4
    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/graph/g;->c:I

    return-void
.end method

.method public c()Lcom/android/tools/r8/internal/hC;
    .locals 6

    new-instance v0, Lcom/android/tools/r8/graph/cd;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/cd;-><init>(Lcom/android/tools/r8/graph/g;)V

    new-instance v1, Lcom/android/tools/r8/graph/dd;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/dd;-><init>(Lcom/android/tools/r8/graph/g;)V

    new-instance v2, Lcom/android/tools/r8/graph/ed;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/graph/ed;-><init>(Lcom/android/tools/r8/graph/g;)V

    new-instance v3, Lcom/android/tools/r8/graph/fd;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/graph/fd;-><init>(Lcom/android/tools/r8/graph/g;)V

    new-instance v4, Lcom/android/tools/r8/graph/gd;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/graph/gd;-><init>(Lcom/android/tools/r8/graph/g;)V

    new-instance v5, Lcom/android/tools/r8/graph/hd;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/graph/hd;-><init>(Lcom/android/tools/r8/graph/g;)V

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 2

    const/16 v0, 0x10

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/graph/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/graph/g;

    iget v0, p0, Lcom/android/tools/r8/graph/g;->b:I

    iget v2, p1, Lcom/android/tools/r8/graph/g;->b:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    iget p1, p1, Lcom/android/tools/r8/graph/g;->c:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/g;->b:I

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/g;->b:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/g;->b:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 2

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/id;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/id;-><init>()V

    return-object v0
.end method

.method public n()Z
    .locals 2

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 2

    const/16 v0, 0x1000

    iget v1, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    return v0
.end method

.method public final p()Lcom/android/tools/r8/graph/g;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->s()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/android/tools/r8/graph/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    and-int/lit8 v0, v0, -0x7

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->s()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    return-object v0
.end method

.method public abstract s()Lcom/android/tools/r8/graph/g;
.end method

.method public t()V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->a(I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/g;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->a(I)V

    return-void
.end method

.method public v()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/g;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->a(I)V

    return-void
.end method

.method public w()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/g;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->a(I)V

    return-void
.end method

.method public y()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->a(I)V

    return-void
.end method

.method public z()Lcom/android/tools/r8/graph/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/g;->a(I)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->s()Lcom/android/tools/r8/graph/g;

    move-result-object v0

    return-object v0
.end method
