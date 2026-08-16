.class public abstract Lcom/android/tools/r8/internal/wq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/fB;

.field public final b:Lcom/android/tools/r8/internal/Z5;

.field public final c:Ljava/util/Set;

.field public final d:Lcom/android/tools/r8/internal/B60;

.field public final e:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/lq0;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wq0;->a:Lcom/android/tools/r8/internal/fB;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wq0;->b:Lcom/android/tools/r8/internal/Z5;

    iput-object p4, p0, Lcom/android/tools/r8/internal/wq0;->c:Ljava/util/Set;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wq0;->d:Lcom/android/tools/r8/internal/B60;

    iget-object p1, p3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/wq0;->e:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
