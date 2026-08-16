.class public final Lcom/android/tools/r8/internal/oz;
.super Lcom/android/tools/r8/internal/nz;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/nz;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/nz;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "newBuilder"

    invoke-static {p2, v1, v0}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/oz;->c:Ljava/lang/reflect/Method;

    const-string p2, "get"

    const-string v0, "Builder"

    invoke-static {p2, p1, v0}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/oz;->d:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/eW;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/oz;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/eW;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fz;I)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/oz;->d:Ljava/lang/reflect/Method;

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 9
    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/eW;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fz;ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->a:Ljava/lang/Class;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/oz;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/eW;

    check-cast p3, Lcom/android/tools/r8/internal/fW;

    .line 3
    invoke-interface {v0, p3}, Lcom/android/tools/r8/internal/eW;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;

    move-result-object p3

    .line 4
    invoke-interface {p3}, Lcom/android/tools/r8/internal/eW;->build()Lcom/android/tools/r8/internal/fW;

    move-result-object p3

    .line 5
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/nz;->a(Lcom/android/tools/r8/internal/fz;ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/nz;->a:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/oz;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/eW;

    check-cast p2, Lcom/android/tools/r8/internal/fW;

    invoke-interface {v0, p2}, Lcom/android/tools/r8/internal/eW;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/internal/eW;->build()Lcom/android/tools/r8/internal/fW;

    move-result-object p2

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/nz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-void
.end method
