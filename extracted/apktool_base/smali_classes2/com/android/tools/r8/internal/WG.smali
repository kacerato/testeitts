.class public final Lcom/android/tools/r8/internal/WG;
.super Lcom/android/tools/r8/internal/bH;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/A30;


# instance fields
.field public h:Lcom/android/tools/r8/internal/ZG;

.field public final synthetic i:Lcom/android/tools/r8/internal/dH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/dH;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/WG;->i:Lcom/android/tools/r8/internal/dH;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/bH;-><init>(Lcom/android/tools/r8/internal/dH;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/ZG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/WG;->i:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bH;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ZG;-><init>(Lcom/android/tools/r8/internal/dH;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/WG;->h:Lcom/android/tools/r8/internal/ZG;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/internal/bH;->remove()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/WG;->h:Lcom/android/tools/r8/internal/ZG;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/ZG;->b:I

    return-void
.end method
