.class public final Lcom/android/tools/r8/internal/pz;
.super Lcom/android/tools/r8/internal/rz;
.source "SourceFile"


# instance fields
.field public final f:Lcom/android/tools/r8/internal/Hl;

.field public final g:Ljava/lang/reflect/Method;

.field public final h:Ljava/lang/reflect/Method;

.field public final i:Z

.field public final j:Ljava/lang/reflect/Method;

.field public final k:Ljava/lang/reflect/Method;

.field public final l:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/internal/rz;-><init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->f()Lcom/android/tools/r8/internal/Hl;

    move-result-object p5

    iput-object p5, p0, Lcom/android/tools/r8/internal/pz;->f:Lcom/android/tools/r8/internal/Hl;

    iget-object p5, p0, Lcom/android/tools/r8/internal/rz;->a:Ljava/lang/Class;

    const-class v0, Lcom/android/tools/r8/internal/Kl;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "valueOf"

    invoke-static {p5, v1, v0}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    iput-object p5, p0, Lcom/android/tools/r8/internal/pz;->g:Ljava/lang/reflect/Method;

    iget-object p5, p0, Lcom/android/tools/r8/internal/rz;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getValueDescriptor"

    invoke-static {p5, v2, v1}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    iput-object p5, p0, Lcom/android/tools/r8/internal/pz;->h:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Pl;->e()I

    move-result p1

    const/4 p5, 0x3

    if-ne p1, p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/pz;->i:Z

    if-eqz p1, :cond_1

    const-string p1, "get"

    const-string p5, "Value"

    invoke-static {p1, p2, p5}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-static {p3, v1, v2}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/internal/pz;->j:Ljava/lang/reflect/Method;

    invoke-static {p1, p2, p5}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Class;

    invoke-static {p4, p1, p3}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/pz;->k:Ljava/lang/reflect/Method;

    const-string p1, "set"

    invoke-static {p1, p2, p5}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/pz;->l:Ljava/lang/reflect/Method;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/pz;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/pz;->l:Ljava/lang/reflect/Method;

    check-cast p2, Lcom/android/tools/r8/internal/Kl;

    iget-object p2, p2, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    iget p2, p2, Lcom/android/tools/r8/internal/tk;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/pz;->g:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/rz;->a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/fz;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/pz;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/pz;->k:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pz;->f:Lcom/android/tools/r8/internal/Hl;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hl;->b(I)Lcom/android/tools/r8/internal/Kl;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/pz;->h:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/rz;->c(Lcom/android/tools/r8/internal/fz;)Ljava/lang/Object;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/pz;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/pz;->j:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pz;->f:Lcom/android/tools/r8/internal/Hl;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Hl;->b(I)Lcom/android/tools/r8/internal/Kl;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/pz;->h:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/rz;->d(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
