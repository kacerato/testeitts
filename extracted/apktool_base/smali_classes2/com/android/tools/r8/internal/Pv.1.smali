.class public final Lcom/android/tools/r8/internal/Pv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/FeatureSplit;

.field public final b:Ljava/util/HashSet;

.field public final c:Lcom/android/tools/r8/DataResourceConsumer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/FeatureSplit;Ljava/util/HashSet;Lcom/android/tools/r8/DataResourceConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pv;->a:Lcom/android/tools/r8/FeatureSplit;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Pv;->b:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Pv;->c:Lcom/android/tools/r8/DataResourceConsumer;

    return-void
.end method
