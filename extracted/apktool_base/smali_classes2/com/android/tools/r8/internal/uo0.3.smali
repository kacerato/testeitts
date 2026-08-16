.class public final Lcom/android/tools/r8/internal/uo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/p1;
.implements Lcom/android/tools/r8/startup/StartupMethodBuilder;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public b:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/internal/uo0;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/uo0;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/p1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/p1;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/uo0;->b:Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/p1;)Lcom/android/tools/r8/internal/p1;
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/uo0;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/p1;Ljava/lang/Runnable;)Lcom/android/tools/r8/internal/p1;
    .locals 0

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/uo0;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/q1;)Lcom/android/tools/r8/internal/p1;
    .locals 0

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/vo0;

    return-object p0
.end method

.method public final build()Lcom/android/tools/r8/internal/q1;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/vo0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/uo0;->b:Lcom/android/tools/r8/graph/A2;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vo0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object v0
.end method

.method public final setMethodReference(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/startup/StartupMethodBuilder;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/uo0;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uo0;->a:Lcom/android/tools/r8/graph/u1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/uo0;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/hX;->a(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/uo0;->b:Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method
