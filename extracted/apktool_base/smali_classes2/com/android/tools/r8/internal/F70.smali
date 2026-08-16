.class public final Lcom/android/tools/r8/internal/F70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/K70;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/L70;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/L70;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/F70;->a:Lcom/android/tools/r8/internal/L70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/K70;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/F70;->a:Lcom/android/tools/r8/internal/L70;

    new-instance v1, Lcom/android/tools/r8/internal/jE0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/jE0;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/L70;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/K70;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/F70;->a:Lcom/android/tools/r8/internal/L70;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/M2;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/F70;->a:Lcom/android/tools/r8/internal/L70;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method
