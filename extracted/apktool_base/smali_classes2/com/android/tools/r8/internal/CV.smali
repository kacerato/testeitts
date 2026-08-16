.class public final Lcom/android/tools/r8/internal/CV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/DV;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/j0;

.field public final synthetic c:Lcom/android/tools/r8/internal/pu0;

.field public final synthetic d:Lcom/android/tools/r8/internal/B60;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/B60;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/CV;->b:Lcom/android/tools/r8/graph/j0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/CV;->c:Lcom/android/tools/r8/internal/pu0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/CV;->d:Lcom/android/tools/r8/internal/B60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/pu0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CV;->c:Lcom/android/tools/r8/internal/pu0;

    return-object v0
.end method

.method public final getPosition()Lcom/android/tools/r8/internal/B60;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CV;->d:Lcom/android/tools/r8/internal/B60;

    return-object v0
.end method

.method public final q()Lcom/android/tools/r8/graph/j0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CV;->b:Lcom/android/tools/r8/graph/j0;

    return-object v0
.end method
