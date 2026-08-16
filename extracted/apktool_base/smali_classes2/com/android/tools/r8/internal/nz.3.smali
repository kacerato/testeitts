.class public Lcom/android/tools/r8/internal/nz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jz;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Lcom/android/tools/r8/internal/mz;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/mz;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/mz;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/mz;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/nz;->a:Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/tools/r8/internal/nz;->b:Lcom/android/tools/r8/internal/mz;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/eW;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForField() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/android/tools/r8/internal/fz;I)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(ILcom/android/tools/r8/internal/wz;)Ljava/lang/Object;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->b:Lcom/android/tools/r8/internal/mz;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/mz;->c:Ljava/lang/reflect/Method;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nz;->d(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/fz;ILjava/lang/Object;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->b:Lcom/android/tools/r8/internal/mz;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/mz;->e:Ljava/lang/reflect/Method;

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nz;->d(Lcom/android/tools/r8/internal/fz;)V

    .line 3
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/nz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fz;)Z
    .locals 1

    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() called on a repeated field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fz;)I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->b:Lcom/android/tools/r8/internal/mz;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/mz;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public b(Lcom/android/tools/r8/internal/fz;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->b:Lcom/android/tools/r8/internal/mz;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/mz;->d:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->b:Lcom/android/tools/r8/internal/mz;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/mz;->f:Ljava/lang/reflect/Method;

    .line 6
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/wz;)Z
    .locals 1

    .line 7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() called on a repeated field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/android/tools/r8/internal/wz;)I
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->b:Lcom/android/tools/r8/internal/mz;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/mz;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public c(Lcom/android/tools/r8/internal/fz;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->b:Lcom/android/tools/r8/internal/mz;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/mz;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->b:Lcom/android/tools/r8/internal/mz;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/mz;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/internal/fz;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->b:Lcom/android/tools/r8/internal/mz;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/mz;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Lcom/android/tools/r8/internal/fz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
