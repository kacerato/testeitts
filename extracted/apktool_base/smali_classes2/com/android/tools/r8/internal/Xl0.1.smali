.class public abstract Lcom/android/tools/r8/internal/Xl0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/internal/cm0;)Lcom/android/tools/r8/internal/Xl0;
.end method

.method public final a(Lcom/android/tools/r8/internal/Xl0;)Lcom/android/tools/r8/internal/Xl0;
    .locals 2

    .line 8
    instance-of v0, p0, Lcom/android/tools/r8/internal/l2;

    if-eqz v0, :cond_0

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    instance-of v0, p1, Lcom/android/tools/r8/internal/l2;

    if-eqz v0, :cond_1

    return-object p0

    .line 11
    :cond_1
    instance-of v0, p0, Lcom/android/tools/r8/internal/nZ;

    if-nez v0, :cond_a

    instance-of v0, p1, Lcom/android/tools/r8/internal/nZ;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    instance-of v0, p0, Lcom/android/tools/r8/internal/am0;

    if-eqz v0, :cond_3

    .line 13
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/am0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/am0;->b(Lcom/android/tools/r8/internal/Xl0;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object p1

    return-object p1

    .line 14
    :cond_3
    instance-of v0, p1, Lcom/android/tools/r8/internal/am0;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Xl0;->a()Lcom/android/tools/r8/internal/am0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/am0;->b(Lcom/android/tools/r8/internal/Xl0;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/internal/Xl0;->a:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Xl0;->d()Z

    move-result v1

    if-nez v1, :cond_6

    .line 17
    instance-of v1, p0, Lcom/android/tools/r8/internal/bm0;

    if-eqz v1, :cond_5

    goto :goto_0

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_0
    if-nez v0, :cond_8

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Xl0;->d()Z

    move-result v0

    if-nez v0, :cond_8

    .line 20
    instance-of v0, p1, Lcom/android/tools/r8/internal/bm0;

    if-eqz v0, :cond_7

    goto :goto_1

    .line 21
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_8
    :goto_1
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_9

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/am0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/am0;-><init>(Ljava/util/List;)V

    return-object v0

    .line 25
    :cond_9
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1

    .line 26
    :cond_a
    :goto_2
    sget-object p1, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    return-object p1
.end method

.method public a()Lcom/android/tools/r8/internal/am0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/dm0;
    .locals 2

    .line 2
    instance-of v0, p0, Lcom/android/tools/r8/internal/nZ;

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/dm0;->c:Lcom/android/tools/r8/internal/dm0;

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dm0;

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/dm0;

    .line 6
    iget-object v1, p1, Lcom/android/tools/r8/internal/dm0;->a:Lcom/android/tools/r8/internal/Xl0;

    .line 7
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/Xl0;->a(Lcom/android/tools/r8/internal/Xl0;)Lcom/android/tools/r8/internal/Xl0;

    move-result-object v1

    iget p1, p1, Lcom/android/tools/r8/internal/dm0;->b:I

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/dm0;-><init>(Lcom/android/tools/r8/internal/Xl0;I)V

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/VJ;)Z
.end method

.method public b()Lcom/android/tools/r8/internal/bm0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/l2;

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/am0;

    return v0
.end method

.method public f()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/bm0;

    return v0
.end method

.method public g()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/nZ;

    return v0
.end method
