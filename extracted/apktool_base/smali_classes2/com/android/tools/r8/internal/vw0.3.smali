.class public final Lcom/android/tools/r8/internal/vw0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/j0;

.field public b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/j0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vw0;->b:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/vw0;->a:Lcom/android/tools/r8/graph/j0;

    return-void
.end method
