.class public final Lcom/android/tools/r8/internal/tR;
.super Lcom/android/tools/r8/internal/C7;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/fB;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tR;->b:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tR;->c()Lcom/android/tools/r8/internal/dt;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/dt;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/It1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/It1;-><init>(Lcom/android/tools/r8/internal/tR;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dt;

    return-object v0
.end method

.method public final synthetic d()Lcom/android/tools/r8/internal/dt;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/dt;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tR;->b:Lcom/android/tools/r8/internal/fB;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    return-object v0
.end method
