.class public final Lcom/android/tools/r8/internal/XT;
.super Lcom/android/tools/r8/internal/cU;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/A30;


# instance fields
.field public h:Lcom/android/tools/r8/internal/aU;

.field public final synthetic i:Lcom/android/tools/r8/internal/eU;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/eU;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/XT;->i:Lcom/android/tools/r8/internal/eU;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/cU;-><init>(Lcom/android/tools/r8/internal/eU;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/aU;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XT;->i:Lcom/android/tools/r8/internal/eU;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/cU;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/aU;-><init>(Lcom/android/tools/r8/internal/eU;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/XT;->h:Lcom/android/tools/r8/internal/aU;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/internal/cU;->remove()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/XT;->h:Lcom/android/tools/r8/internal/aU;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/aU;->b:I

    return-void
.end method
