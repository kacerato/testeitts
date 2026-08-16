.class public final Lcom/android/tools/r8/internal/kj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/internal/dH;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kj;->b:Lcom/android/tools/r8/internal/dH;

    sget-boolean v0, Lcom/android/tools/r8/internal/kj;->c:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/kj;->a:I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/kj;->c:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/kj;->b:Lcom/android/tools/r8/internal/dH;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/oh1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/oh1;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/nj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/tools/r8/internal/nj;->d:Z

    if-nez v0, :cond_3

    if-ltz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget v0, p1, Lcom/android/tools/r8/internal/nj;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/tools/r8/internal/nj;->c:I

    iget v0, p1, Lcom/android/tools/r8/internal/nj;->b:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/android/tools/r8/internal/nj;->b:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "params:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/tools/r8/internal/kj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/kj;->b:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dH;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/iQ0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/iQ0;-><init>()V

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/Ye;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/kj;->b:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
