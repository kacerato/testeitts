.class public abstract Lcom/android/tools/r8/internal/Ez;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/n6;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ez;->a:Lcom/android/tools/r8/internal/n6;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ez;->a:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
