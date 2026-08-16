.class public final Lcom/android/tools/r8/internal/yf0;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Af0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Af0;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yf0;->b:Lcom/android/tools/r8/internal/Af0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/yf0;->b:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Af0;->a(IZ)Lcom/android/tools/r8/internal/K0;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yf0;->b:Lcom/android/tools/r8/internal/Af0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
