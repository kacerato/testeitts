.class public final Lcom/android/tools/r8/internal/JF;
.super Lcom/android/tools/r8/internal/OF;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/A30;


# instance fields
.field public h:Lcom/android/tools/r8/internal/MF;

.field public final synthetic i:Lcom/android/tools/r8/internal/QF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/QF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/JF;->i:Lcom/android/tools/r8/internal/QF;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/OF;-><init>(Lcom/android/tools/r8/internal/QF;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/MF;

    iget-object v1, p0, Lcom/android/tools/r8/internal/JF;->i:Lcom/android/tools/r8/internal/QF;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/OF;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/MF;-><init>(Lcom/android/tools/r8/internal/QF;I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/JF;->h:Lcom/android/tools/r8/internal/MF;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/internal/OF;->remove()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/JF;->h:Lcom/android/tools/r8/internal/MF;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/MF;->b:I

    return-void
.end method
