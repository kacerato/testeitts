.class public final Lcom/android/tools/r8/internal/tz;
.super Lcom/android/tools/r8/internal/rz;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/reflect/Method;

.field public final g:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/internal/rz;-><init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    const-string p1, "get"

    const-string p5, "Bytes"

    invoke-static {p1, p2, p5}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p3, v0, v2}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/internal/tz;->f:Ljava/lang/reflect/Method;

    invoke-static {p1, p2, p5}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v1, [Ljava/lang/Class;

    invoke-static {p4, p1, p3}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string p1, "set"

    invoke-static {p1, p2, p5}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/android/tools/r8/internal/m8;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/tz;->g:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/tz;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p2, Lcom/android/tools/r8/internal/m8;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/tz;->g:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/rz;->a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-void
.end method
