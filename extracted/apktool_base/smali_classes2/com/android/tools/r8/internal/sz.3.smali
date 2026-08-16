.class public final Lcom/android/tools/r8/internal/sz;
.super Lcom/android/tools/r8/internal/rz;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/reflect/Method;

.field public final g:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/internal/rz;-><init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/rz;->a:Ljava/lang/Class;

    const/4 p3, 0x0

    new-array p5, p3, [Ljava/lang/Class;

    const-string v0, "newBuilder"

    invoke-static {p1, v0, p5}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/sz;->f:Ljava/lang/reflect/Method;

    const-string p1, "get"

    const-string p5, "Builder"

    invoke-static {p1, p2, p5}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Class;

    invoke-static {p4, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/sz;->g:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/eW;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/sz;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/eW;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->a:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sz;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/eW;

    check-cast p2, Lcom/android/tools/r8/internal/fW;

    .line 3
    invoke-interface {v0, p2}, Lcom/android/tools/r8/internal/eW;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Lcom/android/tools/r8/internal/eW;->buildPartial()Lcom/android/tools/r8/internal/fW;

    move-result-object p2

    .line 5
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/rz;->a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/internal/fz;)Lcom/android/tools/r8/internal/eW;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sz;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/eW;

    return-object p1
.end method
