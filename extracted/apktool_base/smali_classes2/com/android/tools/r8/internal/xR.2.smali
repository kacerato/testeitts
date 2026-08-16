.class public final Lcom/android/tools/r8/internal/xR;
.super Lcom/android/tools/r8/internal/s1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/zR;


# static fields
.field public static final d:Lcom/android/tools/r8/internal/xR;


# instance fields
.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/xR;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/xR;-><init>(I)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/s1;->b:Z

    sput-object v0, Lcom/android/tools/r8/internal/xR;->d:Lcom/android/tools/r8/internal/xR;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/internal/s1;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/zR;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/s1;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xR;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/m8;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    .line 4
    instance-of v0, p2, Lcom/android/tools/r8/internal/zR;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/tools/r8/internal/zR;

    .line 5
    invoke-interface {p2}, Lcom/android/tools/r8/internal/zR;->f()Ljava/util/List;

    move-result-object p2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 7
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/xR;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final e()Lcom/android/tools/r8/internal/zR;
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/s1;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Gv0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Gv0;-><init>(Lcom/android/tools/r8/internal/xR;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/m8;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    check-cast v0, [B

    invoke-static {v0}, Lcom/android/tools/r8/internal/YI;->a([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/tw0;->a:Lcom/android/tools/r8/internal/ow0;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lcom/android/tools/r8/internal/ow0;->b([BII)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/m8;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/android/tools/r8/internal/YI;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    instance-of p2, p1, Lcom/android/tools/r8/internal/m8;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/android/tools/r8/internal/YI;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xR;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
