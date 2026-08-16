.class public abstract Lcom/android/tools/r8/internal/Ud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/V;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/V;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ud;->a:Lcom/android/tools/r8/graph/V;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/Tm0;)Lcom/android/tools/r8/internal/Sd;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Sd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ud;->a:Lcom/android/tools/r8/graph/V;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/tools/r8/internal/Sd;-><init>(Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/Ud;Lcom/android/tools/r8/internal/QC;)V

    return-object v0
.end method

.method public abstract a()Ljava/util/Collection;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V
.end method
