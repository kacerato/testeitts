.class public final Lcom/android/tools/r8/internal/zV;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/android/tools/r8/shaking/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/zV;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/zV;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/zV;->b:Lcom/android/tools/r8/shaking/s2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/W50;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/W50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zV;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/zV;->b:Lcom/android/tools/r8/shaking/s2;

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/W50;-><init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V

    return-object v0
.end method
