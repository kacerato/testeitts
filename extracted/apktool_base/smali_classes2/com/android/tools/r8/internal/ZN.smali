.class public final Lcom/android/tools/r8/internal/ZN;
.super Lcom/android/tools/r8/internal/fO;
.source "SourceFile"


# instance fields
.field public final j:Lcom/android/tools/r8/internal/mO;

.field public final k:Lcom/android/tools/r8/internal/pO;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Lcom/android/tools/r8/internal/pO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fO;-><init>(Lcom/android/tools/r8/internal/B50;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/ZN;->j:Lcom/android/tools/r8/internal/mO;

    iput-object p3, p0, Lcom/android/tools/r8/internal/ZN;->k:Lcom/android/tools/r8/internal/pO;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/fO;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZN;->j:Lcom/android/tools/r8/internal/mO;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fO;->c()Lcom/android/tools/r8/internal/MM;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/ZM;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/ZM;-><init>(Lcom/android/tools/r8/internal/MM;)V

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/pO;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZN;->k:Lcom/android/tools/r8/internal/pO;

    return-object v0
.end method
