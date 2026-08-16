.class public final Lcom/android/tools/r8/internal/oS;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/android/tools/r8/internal/wS;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/oS;->c:Lcom/android/tools/r8/internal/wS;

    iput-object p2, p0, Lcom/android/tools/r8/internal/oS;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/vS;

    iget-object v1, p0, Lcom/android/tools/r8/internal/oS;->c:Lcom/android/tools/r8/internal/wS;

    iget-object v2, p0, Lcom/android/tools/r8/internal/oS;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/vS;-><init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/oS;->c:Lcom/android/tools/r8/internal/wS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/oS;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/sS;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lcom/android/tools/r8/internal/sS;->c:I

    return v0
.end method
