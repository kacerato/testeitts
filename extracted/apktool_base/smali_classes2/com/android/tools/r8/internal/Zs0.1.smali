.class public abstract Lcom/android/tools/r8/internal/Zs0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/Ws0;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Ws0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ws0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Z)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/Ws0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public b()Lcom/android/tools/r8/internal/Ys0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
