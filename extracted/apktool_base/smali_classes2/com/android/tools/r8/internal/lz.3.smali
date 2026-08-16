.class public final Lcom/android/tools/r8/internal/lz;
.super Lcom/android/tools/r8/internal/nz;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/Hl;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Z

.field public final g:Ljava/lang/reflect/Method;

.field public final h:Ljava/lang/reflect/Method;

.field public final i:Ljava/lang/reflect/Method;

.field public final j:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4

    invoke-direct {p0, p2, p3, p4}, Lcom/android/tools/r8/internal/nz;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->f()Lcom/android/tools/r8/internal/Hl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lz;->c:Lcom/android/tools/r8/internal/Hl;

    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->a:Ljava/lang/Class;

    const-class v1, Lcom/android/tools/r8/internal/Kl;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "valueOf"

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lz;->d:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getValueDescriptor"

    invoke-static {v0, v3, v2}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/lz;->e:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Pl;->e()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/lz;->f:Z

    if-eqz v1, :cond_1

    const-string p1, "get"

    const-string v0, "Value"

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {p3, v1, v3}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/internal/lz;->g:Ljava/lang/reflect/Method;

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object p3

    invoke-static {p4, p1, p3}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/lz;->h:Ljava/lang/reflect/Method;

    const-string p1, "set"

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object p3

    invoke-static {p4, p1, p3}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/lz;->i:Ljava/lang/reflect/Method;

    const-string p1, "add"

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/lz;->j:Ljava/lang/reflect/Method;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/wz;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/lz;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/lz;->g:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/lz;->c:Lcom/android/tools/r8/internal/Hl;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Hl;->b(I)Lcom/android/tools/r8/internal/Kl;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lz;->e:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/nz;->a(ILcom/android/tools/r8/internal/wz;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fz;ILjava/lang/Object;)V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/lz;->f:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/lz;->i:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p3, Lcom/android/tools/r8/internal/Kl;

    .line 7
    iget-object p3, p3, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    .line 8
    iget p3, p3, Lcom/android/tools/r8/internal/tk;->d:I

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lz;->d:Ljava/lang/reflect/Method;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/nz;->a(Lcom/android/tools/r8/internal/fz;ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/fz;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/lz;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/lz;->h:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/lz;->c:Lcom/android/tools/r8/internal/Hl;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Hl;->b(I)Lcom/android/tools/r8/internal/Kl;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lz;->e:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/nz;->b(Lcom/android/tools/r8/internal/fz;I)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/lz;->f:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/lz;->j:Ljava/lang/reflect/Method;

    check-cast p2, Lcom/android/tools/r8/internal/Kl;

    .line 7
    iget-object p2, p2, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    .line 8
    iget p2, p2, Lcom/android/tools/r8/internal/tk;->d:I

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/lz;->d:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/nz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/fz;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nz;->b(Lcom/android/tools/r8/internal/fz;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/lz;->b(Lcom/android/tools/r8/internal/fz;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nz;->c(Lcom/android/tools/r8/internal/wz;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/lz;->a(ILcom/android/tools/r8/internal/wz;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
