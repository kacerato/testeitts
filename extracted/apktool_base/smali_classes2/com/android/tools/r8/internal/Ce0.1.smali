.class public final Lcom/android/tools/r8/internal/Ce0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/reflect/Field;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final synthetic f:Ljava/lang/reflect/Method;

.field public final synthetic g:Z

.field public final synthetic h:Lcom/android/tools/r8/internal/vt0;

.field public final synthetic i:Lcom/android/tools/r8/internal/Oz;

.field public final synthetic j:Lcom/android/tools/r8/internal/Cu0;

.field public final synthetic k:Z

.field public final synthetic l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZZLjava/lang/reflect/Method;ZLcom/android/tools/r8/internal/vt0;Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;ZZ)V
    .locals 0

    iput-object p5, p0, Lcom/android/tools/r8/internal/Ce0;->f:Ljava/lang/reflect/Method;

    iput-boolean p6, p0, Lcom/android/tools/r8/internal/Ce0;->g:Z

    iput-object p7, p0, Lcom/android/tools/r8/internal/Ce0;->h:Lcom/android/tools/r8/internal/vt0;

    iput-object p8, p0, Lcom/android/tools/r8/internal/Ce0;->i:Lcom/android/tools/r8/internal/Oz;

    iput-object p9, p0, Lcom/android/tools/r8/internal/Ce0;->j:Lcom/android/tools/r8/internal/Cu0;

    iput-boolean p10, p0, Lcom/android/tools/r8/internal/Ce0;->k:Z

    iput-boolean p11, p0, Lcom/android/tools/r8/internal/Ce0;->l:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ce0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ce0;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ce0;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/Ce0;->d:Z

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/Ce0;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Ce0;->d:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ce0;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/Ce0;->f:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/ye0;->a(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/eL;

    const-string v1, "Accessor "

    const-string v2, " threw exception"

    invoke-static {v1, p2, v2}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/eL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ce0;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-ne v0, p2, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ce0;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/qL;->b(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/tools/r8/internal/Ce0;->g:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/tools/r8/internal/Ce0;->h:Lcom/android/tools/r8/internal/vt0;

    goto :goto_2

    :cond_3
    new-instance p2, Lcom/android/tools/r8/internal/xt0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ce0;->i:Lcom/android/tools/r8/internal/Oz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ce0;->h:Lcom/android/tools/r8/internal/vt0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ce0;->j:Lcom/android/tools/r8/internal/Cu0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    invoke-direct {p2, v1, v2, v3}, Lcom/android/tools/r8/internal/xt0;-><init>(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/vt0;Ljava/lang/reflect/Type;)V

    :goto_2
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    return-void
.end method
