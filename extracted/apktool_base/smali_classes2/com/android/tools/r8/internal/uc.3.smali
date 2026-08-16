.class public final Lcom/android/tools/r8/internal/uc;
.super Lcom/android/tools/r8/internal/TX;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public final c:Lcom/android/tools/r8/internal/tc;

.field public final d:Lcom/android/tools/r8/internal/tc;

.field public final e:Lcom/android/tools/r8/internal/tc;

.field public final f:Lcom/android/tools/r8/internal/tc;

.field public final g:Lcom/android/tools/r8/internal/tc;

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/TX;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/TX;-><init>(ILcom/android/tools/r8/internal/TX;)V

    new-instance p1, Lcom/android/tools/r8/internal/tc;

    const-string p2, "Modules requires"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/tc;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uc;->c:Lcom/android/tools/r8/internal/tc;

    new-instance p1, Lcom/android/tools/r8/internal/tc;

    const-string p2, "Module exports"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/tc;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uc;->d:Lcom/android/tools/r8/internal/tc;

    new-instance p1, Lcom/android/tools/r8/internal/tc;

    const-string p2, "Module opens"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/tc;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uc;->e:Lcom/android/tools/r8/internal/tc;

    new-instance p1, Lcom/android/tools/r8/internal/tc;

    const-string p2, "Module uses"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/tc;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uc;->f:Lcom/android/tools/r8/internal/tc;

    new-instance p1, Lcom/android/tools/r8/internal/tc;

    const-string p2, "Module provides"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/tc;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uc;->g:Lcom/android/tools/r8/internal/tc;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/uc;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uc;->b()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/uc;->i:Z

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/TX;->a:Lcom/android/tools/r8/internal/TX;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TX;->a()V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uc;->b()V

    const/16 v0, 0x35

    .line 5
    const-string v1, "required module"

    invoke-static {v0, p2, v1}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/uc;->c:Lcom/android/tools/r8/internal/tc;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/tc;->a(Ljava/lang/String;)V

    const v0, 0x9060

    .line 7
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/mc;->a(II)V

    .line 8
    iget v0, p0, Lcom/android/tools/r8/internal/uc;->h:I

    const/16 v1, 0x36

    if-lt v0, v1, :cond_1

    .line 9
    const-string v0, "java.base"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x60

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string p3, "Invalid access flags: "

    const-string v0, " java.base can not be declared ACC_TRANSITIVE or ACC_STATIC_PHASE"

    invoke-static {p1, p3, v0}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/TX;->a:Lcom/android/tools/r8/internal/TX;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/TX;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final varargs a(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uc;->b()V

    .line 16
    const-string v0, "package name"

    const/16 v1, 0x35

    invoke-static {v1, p2, v0}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/uc;->d:Lcom/android/tools/r8/internal/tc;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/tc;->a(Ljava/lang/String;)V

    const v0, 0x9000

    .line 18
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/mc;->a(II)V

    if-eqz p3, :cond_0

    .line 19
    array-length v0, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    .line 20
    const-string v4, "module export to"

    invoke-static {v1, v3, v4}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/TX;->a:Lcom/android/tools/r8/internal/TX;

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/TX;->a(ILjava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x35

    .line 1
    const-string v1, "module main class"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/TX;->a:Lcom/android/tools/r8/internal/TX;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/TX;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uc;->b()V

    .line 24
    const-string v0, "service"

    const/16 v1, 0x35

    invoke-static {v1, p1, v0}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/uc;->g:Lcom/android/tools/r8/internal/tc;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/tc;->a(Ljava/lang/String;)V

    .line 26
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 27
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 28
    const-string v4, "provider"

    invoke-static {v1, v3, v4}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/TX;->a:Lcom/android/tools/r8/internal/TX;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/TX;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Providers cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 14
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/uc;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs b(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uc;->b()V

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/uc;->b:Z

    if-nez v0, :cond_2

    .line 6
    const-string v0, "package name"

    const/16 v1, 0x35

    invoke-static {v1, p2, v0}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/uc;->e:Lcom/android/tools/r8/internal/tc;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/tc;->a(Ljava/lang/String;)V

    const v0, 0x9000

    .line 8
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/mc;->a(II)V

    if-eqz p3, :cond_0

    .line 9
    array-length v0, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    .line 10
    const-string v4, "module open to"

    invoke-static {v1, v3, v4}, Lcom/android/tools/r8/internal/mc;->b(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/TX;->a:Lcom/android/tools/r8/internal/TX;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/TX;->b(ILjava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "An open module can not use open directive"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x35

    .line 1
    const-string v1, "module package"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/TX;->a:Lcom/android/tools/r8/internal/TX;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/TX;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/uc;->b()V

    const/16 v0, 0x35

    const-string v1, "service"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/uc;->f:Lcom/android/tools/r8/internal/tc;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/tc;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/TX;->a:Lcom/android/tools/r8/internal/TX;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/TX;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
