.class public final Lcom/android/tools/r8/internal/CC;
.super Lcom/android/tools/r8/internal/MC;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/List;

.field public final f:Lcom/android/tools/r8/internal/EC;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/internal/EC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/MC;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/CC;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/CC;->f:Lcom/android/tools/r8/internal/EC;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CC;->f:Lcom/android/tools/r8/internal/EC;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CC;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/MY;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CC;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
