.class public Lcom/android/tools/r8/naming/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/naming/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final b:Lcom/android/tools/r8/naming/k$c;

.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/naming/k$c;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/naming/k$c;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/tools/r8/naming/k$c;->b:Lcom/android/tools/r8/naming/k$c;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/naming/k$b;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/naming/k$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/naming/k$c;->a(IZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(IZ)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/k$b;

    .line 4
    iget-object v3, v2, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-nez v3, :cond_0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    move-object v0, v2

    goto :goto_3

    .line 5
    :cond_0
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/naming/M0;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 p1, v1, 0x1

    .line 6
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/naming/k$b;

    iget-object p2, p2, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget-object v0, v2, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 8
    :cond_2
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-interface {p2, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    .line 9
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/android/tools/r8/naming/k$b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/k$b;

    .line 2
    iget-object v3, v2, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-nez v3, :cond_1

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/naming/M0;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_2
    return-object v1
.end method

.method public final b()Ljava/util/List;
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 5
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/tools/r8/naming/S;->a(Ljava/util/List;ILjava/util/ArrayList;)I

    move-result v2

    .line 9
    invoke-static {v1}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/k$b;

    .line 10
    iget-object v3, v3, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 11
    iget-object v4, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    .line 12
    invoke-static {v4}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k$b;

    .line 13
    iget-object v4, v4, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 14
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/naming/V$b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v4, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-static {v4, v2, v3}, Lcom/android/tools/r8/naming/S;->a(Ljava/util/List;ILjava/util/ArrayList;)I

    move-result v2

    .line 19
    invoke-static {v1}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k$b;

    .line 20
    iget-object v4, v4, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 21
    invoke-static {v3}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/k$b;

    .line 22
    iget-object v5, v5, Lcom/android/tools/r8/naming/k$b;->c:Lcom/android/tools/r8/naming/V$b;

    .line 23
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/naming/V$b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 24
    new-instance v4, Lcom/android/tools/r8/naming/k$c;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/naming/k$c;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 27
    :cond_3
    new-instance v2, Lcom/android/tools/r8/naming/k$c;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/naming/k$c;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/naming/k$c;

    iget-object v0, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method
