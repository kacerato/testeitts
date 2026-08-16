.class public abstract Lcom/android/tools/r8/internal/IV;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/v2;

.field public final b:Lcom/android/tools/r8/graph/v2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/v2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/IV;->b:Lcom/android/tools/r8/graph/v2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
