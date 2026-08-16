.class public Lcom/android/tools/r8/internal/wI$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/wI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Uc0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Uc0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/wI$a;->a:Lcom/android/tools/r8/internal/Uc0;

    return-void
.end method

.method public static synthetic a(ZLcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI$a;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/wI$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/wI$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wI$a;->a:Lcom/android/tools/r8/internal/Uc0;

    new-instance v1, Lcom/android/tools/r8/internal/Kx1;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/Kx1;-><init>(Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/internal/wI;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/wI$a;->a:Lcom/android/tools/r8/internal/Uc0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Uc0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/tools/r8/internal/wI;->b:Lcom/android/tools/r8/internal/wI;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/wI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wI$a;->a:Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/wI;-><init>(Lcom/android/tools/r8/internal/Ic0;)V

    return-object v0
.end method
