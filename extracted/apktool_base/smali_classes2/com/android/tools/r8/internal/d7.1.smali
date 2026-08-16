.class public final Lcom/android/tools/r8/internal/d7;
.super Lcom/android/tools/r8/internal/i;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/a7;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/a7;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/d7;->b:Lcom/android/tools/r8/internal/a7;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/d7;->b:Lcom/android/tools/r8/internal/a7;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/d7;->b:Lcom/android/tools/r8/internal/a7;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/a7;->q()Z

    move-result v0

    return v0
.end method
