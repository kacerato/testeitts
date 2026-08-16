.class public abstract Lcom/android/tools/r8/shaking/c3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/c3$b;,
        Lcom/android/tools/r8/shaking/c3$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/tools/r8/shaking/c3$a;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/shaking/c3$a;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/c3$a;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/c3;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/shaking/c3$b;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/c3$b;-><init>(Lcom/android/tools/r8/shaking/i4;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/shaking/i4;)V
    .locals 0

    .line 5
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/shaking/c3;
    .locals 0

    .line 1
    return-object p0
.end method

.method public a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;
    .locals 0

    .line 7
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public abstract a(Ljava/lang/StringBuilder;)V
.end method

.method public abstract a(Ljava/util/function/Consumer;)V
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/shaking/Vb;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/shaking/Vb;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/c3;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;)Z
.end method

.method public b()Lcom/android/tools/r8/graph/M2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/tools/r8/shaking/r4;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/c3;->a(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()I
.end method

.method public abstract hashCode()I
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/c3;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
