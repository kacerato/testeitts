.class public final Lcom/android/tools/r8/graph/V4;
.super Lcom/android/tools/r8/graph/Y4;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/graph/V4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/V4;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/V4;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/V4;->b:Lcom/android/tools/r8/graph/V4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/Y4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 2
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;
    .locals 0

    sget-object p1, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
