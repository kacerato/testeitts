.class public abstract Lcom/google/common/collect/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Q$c;,
        Lcom/google/common/collect/Q$e;,
        Lcom/google/common/collect/Q$b;,
        Lcom/google/common/collect/Q$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/collect/Q<",
        "TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final c:J


# instance fields
.field public final b:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    return-void
.end method

.method public static a()Lcom/google/common/collect/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Q$b;->v()Lcom/google/common/collect/Q$b;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Q$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Q$c;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static c()Lcom/google/common/collect/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Q$d;->v()Lcom/google/common/collect/Q$d;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Comparable;)Lcom/google/common/collect/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Q$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Q$e;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/Q;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result p1

    return p1
.end method

.method public e(Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "TC;>;)",
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/Q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/Q;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Q;->g(Lcom/google/common/collect/Q;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public g(Lcom/google/common/collect/Q;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Q<",
            "TC;>;)I"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Q;->c()Lcom/google/common/collect/Q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Q;->a()Lcom/google/common/collect/Q;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lcom/google/common/collect/j2;->h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    instance-of v0, p0, Lcom/google/common/collect/Q$c;

    instance-of p1, p1, Lcom/google/common/collect/Q$c;

    invoke-static {v0, p1}, Lcom/google/common/primitives/a;->d(ZZ)I

    move-result p1

    return p1
.end method

.method public abstract h(Ljava/lang/StringBuilder;)V
.end method

.method public abstract hashCode()I
.end method

.method public abstract i(Ljava/lang/StringBuilder;)V
.end method

.method public j()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q;->b:Ljava/lang/Comparable;

    return-object v0
.end method

.method public abstract k(Lcom/google/common/collect/W;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "TC;>;)TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public abstract m(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract o(Lcom/google/common/collect/W;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "TC;>;)TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public abstract q()Lcom/google/common/collect/x;
.end method

.method public abstract r()Lcom/google/common/collect/x;
.end method

.method public abstract s(Lcom/google/common/collect/x;Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x;",
            "Lcom/google/common/collect/W<",
            "TC;>;)",
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract u(Lcom/google/common/collect/x;Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x;",
            "Lcom/google/common/collect/W<",
            "TC;>;)",
            "Lcom/google/common/collect/Q<",
            "TC;>;"
        }
    .end annotation
.end method
