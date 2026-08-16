.class public final Lcom/android/tools/r8/internal/Bl0;
.super Lcom/android/tools/r8/internal/e0;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/Iterator;

.field public final synthetic e:Lcom/android/tools/r8/internal/Cl0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Cl0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bl0;->e:Lcom/android/tools/r8/internal/Cl0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/e0;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cl0;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Bl0;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bl0;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Bl0;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Bl0;->e:Lcom/android/tools/r8/internal/Cl0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Cl0;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/tools/r8/internal/e0;->b:I

    const/4 v0, 0x0

    return-object v0
.end method
