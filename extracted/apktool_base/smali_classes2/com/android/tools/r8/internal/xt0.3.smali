.class public final Lcom/android/tools/r8/internal/xt0;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Oz;

.field public final b:Lcom/android/tools/r8/internal/vt0;

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/vt0;Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xt0;->a:Lcom/android/tools/r8/internal/Oz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/xt0;->b:Lcom/android/tools/r8/internal/vt0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/xt0;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/xt0;->b:Lcom/android/tools/r8/internal/vt0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/xt0;->b:Lcom/android/tools/r8/internal/vt0;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/xt0;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    .line 4
    instance-of v2, v1, Ljava/lang/Class;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/xt0;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_5

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/xt0;->a:Lcom/android/tools/r8/internal/Oz;

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v0

    .line 10
    instance-of v1, v0, Lcom/android/tools/r8/internal/De0;

    if-nez v1, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/xt0;->b:Lcom/android/tools/r8/internal/vt0;

    .line 12
    :goto_0
    instance-of v2, v1, Lcom/android/tools/r8/internal/wl0;

    if-eqz v2, :cond_4

    .line 13
    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/wl0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/wl0;->a()Lcom/android/tools/r8/internal/vt0;

    move-result-object v2

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0

    .line 14
    :cond_4
    :goto_1
    instance-of v1, v1, Lcom/android/tools/r8/internal/De0;

    if-nez v1, :cond_5

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/xt0;->b:Lcom/android/tools/r8/internal/vt0;

    .line 16
    :cond_5
    :goto_2
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    return-void
.end method
