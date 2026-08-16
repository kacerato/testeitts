.class public final Lcom/android/tools/r8/internal/dt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wt0;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Cu0;

.field public final c:Z

.field public final d:Lcom/android/tools/r8/internal/cL;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/cL;Lcom/android/tools/r8/internal/Cu0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/dt0;->d:Lcom/android/tools/r8/internal/cL;

    if-eqz p1, :cond_1

    iput-object p2, p0, Lcom/android/tools/r8/internal/dt0;->b:Lcom/android/tools/r8/internal/Cu0;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/dt0;->c:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/dt0;->b:Lcom/android/tools/r8/internal/Cu0;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Cu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/dt0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/dt0;->b:Lcom/android/tools/r8/internal/Cu0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    iget-object v1, p2, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    new-instance v6, Lcom/android/tools/r8/internal/et0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/dt0;->d:Lcom/android/tools/r8/internal/cL;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/et0;-><init>(Lcom/android/tools/r8/internal/cL;Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;Lcom/android/tools/r8/internal/dt0;Z)V

    return-object v6
.end method
