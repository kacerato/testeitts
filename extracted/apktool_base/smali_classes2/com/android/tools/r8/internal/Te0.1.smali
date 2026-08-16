.class public final Lcom/android/tools/r8/internal/Te0;
.super Lcom/android/tools/r8/internal/TB;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/android/tools/r8/internal/Ue0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ue0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Te0;->d:Lcom/android/tools/r8/internal/Ue0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/TB;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Te0;->d:Lcom/android/tools/r8/internal/Ue0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ue0;->e:Lcom/android/tools/r8/internal/Ve0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ve0;->f:Lcom/android/tools/r8/internal/We0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/We0;->h:[Ljava/util/Map$Entry;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/ZB;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/ZB;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final j()Lcom/android/tools/r8/internal/XB;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Te0;->d:Lcom/android/tools/r8/internal/Ue0;

    return-object v0
.end method
