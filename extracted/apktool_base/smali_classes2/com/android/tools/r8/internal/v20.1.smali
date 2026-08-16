.class public final Lcom/android/tools/r8/internal/v20;
.super Lcom/android/tools/r8/internal/j0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/D20;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/D20;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/v20;->b:Lcom/android/tools/r8/internal/D20;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/lU;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/C20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/v20;->b:Lcom/android/tools/r8/internal/D20;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/C20;-><init>(Lcom/android/tools/r8/internal/D20;)V

    return-object v0
.end method

.method public final b(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/v20;->b:Lcom/android/tools/r8/internal/D20;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/D20;->a(J)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/v20;->b:Lcom/android/tools/r8/internal/D20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D20;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/C20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/v20;->b:Lcom/android/tools/r8/internal/D20;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/C20;-><init>(Lcom/android/tools/r8/internal/D20;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/v20;->b:Lcom/android/tools/r8/internal/D20;

    iget v0, v0, Lcom/android/tools/r8/internal/D20;->h:I

    return v0
.end method
