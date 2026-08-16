.class public final Lcom/android/tools/r8/internal/RH;
.super Lcom/android/tools/r8/internal/X;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/PH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/PH;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/X;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/RH;->b:Lcom/android/tools/r8/internal/PH;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RH;->b:Lcom/android/tools/r8/internal/PH;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RH;->b:Lcom/android/tools/r8/internal/PH;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v0

    return v0
.end method
