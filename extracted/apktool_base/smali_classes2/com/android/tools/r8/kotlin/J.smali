.class public final Lcom/android/tools/r8/kotlin/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final c:Lcom/android/tools/r8/kotlin/J;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/tools/r8/kotlin/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/kotlin/J;

    const-string v1, "kotlin.jvm.PlatformType"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/kotlin/J;-><init>(Ljava/lang/String;Lcom/android/tools/r8/kotlin/p0;)V

    sput-object v0, Lcom/android/tools/r8/kotlin/J;->c:Lcom/android/tools/r8/kotlin/J;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/kotlin/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/J;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/J;->b:Lcom/android/tools/r8/kotlin/p0;

    sget-boolean p2, Lcom/android/tools/r8/kotlin/J;->d:Z

    if-nez p2, :cond_1

    const-string p2, "kotlin.jvm.PlatformType"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/kotlin/J;->c:Lcom/android/tools/r8/kotlin/J;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/J;->b:Lcom/android/tools/r8/kotlin/p0;

    if-nez v0, :cond_2

    .line 4
    sget-boolean p1, Lcom/android/tools/r8/kotlin/J;->d:Z

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/yQ;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/oQ;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/J;->a:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/android/tools/r8/internal/oQ;-><init>(Lcom/android/tools/r8/internal/yQ;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    sget-object v0, Lcom/android/tools/r8/kotlin/J;->c:Lcom/android/tools/r8/kotlin/J;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/J;->b:Lcom/android/tools/r8/kotlin/p0;

    if-nez v0, :cond_2

    sget-boolean p1, Lcom/android/tools/r8/kotlin/J;->d:Z

    if-eqz p1, :cond_1

    return v1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    new-instance v1, Lcom/android/tools/r8/kotlin/Q0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/kotlin/Q0;-><init>(Lcom/android/tools/r8/kotlin/J;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/kotlin/p0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method
