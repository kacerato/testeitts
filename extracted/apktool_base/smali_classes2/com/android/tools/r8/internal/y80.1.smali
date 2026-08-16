.class public abstract Lcom/android/tools/r8/internal/y80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/x80;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/I50;

.field public final b:Ljava/util/HashMap;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public e:Ljava/util/function/BiConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/I50;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/y80;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/y80;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/y80;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/tools/r8/internal/y80;->e:Ljava/util/function/BiConsumer;

    iput-object p1, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/y80;->b(Ljava/util/function/Consumer;Ljava/lang/String;)Ljava/util/function/Consumer;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 31
    iget-object p2, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    instance-of p3, p1, Lcom/android/tools/r8/internal/FM;

    if-eqz p3, :cond_0

    .line 33
    throw p1

    .line 34
    :cond_0
    new-instance p3, Lcom/android/tools/r8/internal/FM;

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/RuntimeException;)V

    throw p3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/y80;->b(Ljava/util/function/Consumer;Ljava/lang/String;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/internal/y80;->c(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 25
    iget-object p2, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    instance-of v0, p1, Lcom/android/tools/r8/internal/FM;

    if-eqz v0, :cond_0

    .line 27
    throw p1

    .line 28
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FM;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/RuntimeException;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/y80;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/y80;->d:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/y80;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/tools/r8/internal/y80;->d:Ljava/lang/Object;

    :cond_4
    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/y80;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple properties: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/FM;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected attempt to redefine property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a()Z
    .locals 4

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/y80;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/y80;->d:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    :try_start_0
    invoke-virtual {p0, p4, p1}, Lcom/android/tools/r8/internal/y80;->b(Ljava/util/function/Consumer;Ljava/lang/String;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/tools/r8/internal/y80;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 19
    iget-object p2, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of p3, p1, Lcom/android/tools/r8/internal/FM;

    if-eqz p3, :cond_0

    .line 21
    throw p1

    .line 22
    :cond_0
    new-instance p3, Lcom/android/tools/r8/internal/FM;

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/RuntimeException;)V

    throw p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Z
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/y80;->b(Ljava/util/function/Consumer;Ljava/lang/String;)Ljava/util/function/Consumer;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p3, p2}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/function/Consumer;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 13
    iget-object p2, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    instance-of p3, p1, Lcom/android/tools/r8/internal/FM;

    if-eqz p3, :cond_0

    .line 15
    throw p1

    .line 16
    :cond_0
    new-instance p3, Lcom/android/tools/r8/internal/FM;

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/internal/FM;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/RuntimeException;)V

    throw p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/util/function/Consumer;Ljava/lang/String;)Ljava/util/function/Consumer;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Bz1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/Bz1;-><init>(Lcom/android/tools/r8/internal/y80;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 3

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/y80;->f:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/y80;->e:Ljava/util/function/BiConsumer;

    if-eqz v1, :cond_2

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/y80;->a:Lcom/android/tools/r8/internal/I50;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/I50;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/H50;

    move-result-object v2

    invoke-interface {v1, p3, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/y80;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/internal/y80;->d:Ljava/lang/Object;

    if-nez p2, :cond_3

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/y80;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 9
    :cond_4
    iput-object p1, p0, Lcom/android/tools/r8/internal/y80;->c:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/android/tools/r8/internal/y80;->d:Ljava/lang/Object;

    .line 11
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/y80;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/y80;->d:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/y80;->d:Ljava/lang/Object;

    return-object v0
.end method
