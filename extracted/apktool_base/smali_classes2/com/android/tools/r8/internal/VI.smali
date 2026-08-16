.class public final Lcom/android/tools/r8/internal/VI;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Lcom/android/tools/r8/internal/UI;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/internal/UI;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VI;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/VI;->c:Lcom/android/tools/r8/internal/UI;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/VI;->c:Lcom/android/tools/r8/internal/UI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/VI;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/UI;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/VI;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
