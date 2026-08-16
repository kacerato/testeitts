.class public final Lcom/android/tools/r8/internal/Fd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/Fd;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Fd;

.field public final b:Lcom/android/tools/r8/internal/hC;

.field public final c:Lcom/android/tools/r8/internal/Gd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Fd;

    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    sget-object v2, Lcom/android/tools/r8/internal/Gd;->c:Lcom/android/tools/r8/internal/Gd;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/Fd;-><init>(Lcom/android/tools/r8/internal/Fd;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/Gd;)V

    sput-object v0, Lcom/android/tools/r8/internal/Fd;->d:Lcom/android/tools/r8/internal/Fd;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Fd;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/Gd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fd;->a:Lcom/android/tools/r8/internal/Fd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Fd;->b:Lcom/android/tools/r8/internal/hC;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Fd;->c:Lcom/android/tools/r8/internal/Gd;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H0;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fd;->b:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/internal/BE0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/BE0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/CE0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/CE0;-><init>(Lcom/android/tools/r8/graph/H0;)V

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fd;->a:Lcom/android/tools/r8/internal/Fd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Fd;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
