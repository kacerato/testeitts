.class public final Lcom/android/tools/r8/internal/pS;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/wS;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/pS;->b:Lcom/android/tools/r8/internal/wS;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/pS;->b:Lcom/android/tools/r8/internal/wS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/wS;->f:Lcom/android/tools/r8/internal/tS;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/uS;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pS;->b:Lcom/android/tools/r8/internal/wS;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/uS;-><init>(Lcom/android/tools/r8/internal/wS;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pS;->b:Lcom/android/tools/r8/internal/wS;

    iget v0, v0, Lcom/android/tools/r8/internal/wS;->i:I

    return v0
.end method
