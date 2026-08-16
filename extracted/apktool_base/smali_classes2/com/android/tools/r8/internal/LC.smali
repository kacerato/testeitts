.class public final Lcom/android/tools/r8/internal/LC;
.super Lcom/android/tools/r8/internal/TB;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/android/tools/r8/internal/MC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/MC;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/LC;->d:Lcom/android/tools/r8/internal/MC;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/TB;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LC;->d:Lcom/android/tools/r8/internal/MC;

    check-cast v0, Lcom/android/tools/r8/internal/CC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CC;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/MY;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j()Lcom/android/tools/r8/internal/XB;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LC;->d:Lcom/android/tools/r8/internal/MC;

    return-object v0
.end method
