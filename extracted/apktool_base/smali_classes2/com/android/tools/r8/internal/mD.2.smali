.class public final Lcom/android/tools/r8/internal/mD;
.super Lcom/android/tools/r8/internal/TB;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/android/tools/r8/internal/nD;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nD;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/mD;->d:Lcom/android/tools/r8/internal/nD;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/TB;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mD;->d:Lcom/android/tools/r8/internal/nD;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->g()Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mD;->d:Lcom/android/tools/r8/internal/nD;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nD;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j()Lcom/android/tools/r8/internal/XB;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mD;->d:Lcom/android/tools/r8/internal/nD;

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mD;->d:Lcom/android/tools/r8/internal/nD;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
