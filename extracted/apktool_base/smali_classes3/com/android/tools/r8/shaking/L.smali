.class public final Lcom/android/tools/r8/shaking/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/function/BiConsumer;

.field public final synthetic c:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/BiConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/shaking/L;->c:Lcom/android/tools/r8/shaking/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/L;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/L;->b:Ljava/util/function/BiConsumer;

    return-void
.end method
