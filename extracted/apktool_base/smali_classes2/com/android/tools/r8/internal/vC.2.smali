.class public final Lcom/android/tools/r8/internal/vC;
.super Lcom/android/tools/r8/internal/TB;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/android/tools/r8/internal/hC;

.field public final synthetic e:Lcom/android/tools/r8/internal/wC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wC;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/vC;->e:Lcom/android/tools/r8/internal/wC;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/TB;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j()Lcom/android/tools/r8/internal/XB;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vC;->e:Lcom/android/tools/r8/internal/wC;

    return-object v0
.end method
