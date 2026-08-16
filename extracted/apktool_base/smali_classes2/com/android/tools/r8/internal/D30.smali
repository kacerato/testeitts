.class public final Lcom/android/tools/r8/internal/D30;
.super Lcom/android/tools/r8/internal/c1;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/A30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/A30;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/c1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/D30;->b:Lcom/android/tools/r8/internal/A30;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D30;->b:Lcom/android/tools/r8/internal/A30;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D30;->b:Lcom/android/tools/r8/internal/A30;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
