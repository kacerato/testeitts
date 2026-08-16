.class public final Lcom/android/tools/r8/internal/s7;
.super Lcom/android/tools/r8/internal/xX;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/og;
.implements Lcom/android/tools/r8/internal/tg;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/s7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/s7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/s7;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/xX;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/wX;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/wX;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/wX;
    .locals 0

    .line 2
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->a()Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/wX;
    .locals 0

    .line 3
    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/wX;

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/wX;->a()Lcom/android/tools/r8/internal/wX;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lcom/android/tools/r8/internal/og;
    .locals 0

    return-object p0
.end method

.method public final i()Lcom/android/tools/r8/internal/tg;
    .locals 0

    return-object p0
.end method
