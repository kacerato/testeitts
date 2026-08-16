.class public final Lcom/android/tools/r8/internal/wR;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/yR;
.implements Ljava/util/RandomAccess;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Fv0;


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/wR;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wR;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Fv0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Fv0;-><init>(Lcom/android/tools/r8/internal/wR;)V

    sput-object v1, Lcom/android/tools/r8/internal/wR;->c:Lcom/android/tools/r8/internal/Fv0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/yR;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/wR;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ET;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    .line 3
    instance-of v0, p2, Lcom/android/tools/r8/internal/yR;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/tools/r8/internal/yR;

    invoke-interface {p2}, Lcom/android/tools/r8/internal/yR;->f()Ljava/util/List;

    move-result-object p2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 5
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/wR;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b(I)Lcom/android/tools/r8/internal/l8;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/tools/r8/internal/l8;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/l8;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/internal/l8;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/ET;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, [B

    array-length v2, v1

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/android/tools/r8/internal/ET;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/ET;-><init>([B)V

    :goto_0
    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final e()Lcom/android/tools/r8/internal/Fv0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Fv0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Fv0;-><init>(Lcom/android/tools/r8/internal/wR;)V

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/l8;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l8;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    check-cast v0, [B

    sget-object v1, Lcom/android/tools/r8/internal/XI;->a:[B

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/tools/r8/internal/sw0;->a([BII)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/l8;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, [B

    sget-object v0, Lcom/android/tools/r8/internal/XI;->a:[B

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported?"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    instance-of p2, p1, Lcom/android/tools/r8/internal/l8;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, [B

    sget-object p2, Lcom/android/tools/r8/internal/XI;->a:[B

    :try_start_0
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 not supported?"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wR;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
