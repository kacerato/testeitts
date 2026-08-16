.class public abstract Lcom/android/tools/r8/internal/k70;
.super Lcom/android/tools/r8/internal/q70;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/r70;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/r70;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/k70;->b:Lcom/android/tools/r8/internal/r70;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/q70;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Dq;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/k70;->b:Lcom/android/tools/r8/internal/r70;

    iget-object v0, v0, Lcom/android/tools/r8/internal/r70;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/q70;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Dq;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
