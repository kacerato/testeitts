.class public abstract Lcom/android/tools/r8/internal/D7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/D7;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TT;TT;>;)TT;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D7;->a()Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/D7;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/D7;->a:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D7;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/function/Predicate;)Z
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D7;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D7;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/D7;

    iget-object v0, p0, Lcom/android/tools/r8/internal/D7;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/tools/r8/internal/D7;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D7;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
