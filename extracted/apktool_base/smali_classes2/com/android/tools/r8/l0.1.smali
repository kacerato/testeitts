.class public final Lcom/android/tools/r8/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/l0;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/l0;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/Path;)Lcom/android/tools/r8/k0;
    .locals 0

    .line 15
    new-instance p0, Lcom/android/tools/r8/k0;

    invoke-direct {p0}, Lcom/android/tools/r8/k0;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/n0;->a(Ljava/lang/String;)Lcom/android/tools/r8/n0;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/android/tools/r8/n0;->a(Ljava/lang/String;)Lcom/android/tools/r8/n0;

    move-result-object p2

    .line 3
    iget-object v0, p2, Lcom/android/tools/r8/n0;->a:Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/l0;->b:Ljava/util/HashMap;

    new-instance v2, Lcom/android/tools/r8/O3;

    invoke-direct {v2}, Lcom/android/tools/r8/O3;-><init>()V

    .line 5
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/k0;

    .line 6
    iget-object v1, p2, Lcom/android/tools/r8/n0;->a:Ljava/nio/file/Path;

    iput-object v1, v0, Lcom/android/tools/r8/k0;->d:Ljava/nio/file/Path;

    .line 7
    iget-object v1, p1, Lcom/android/tools/r8/n0;->a:Ljava/nio/file/Path;

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, v0, Lcom/android/tools/r8/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/android/tools/r8/k0;

    invoke-direct {v0}, Lcom/android/tools/r8/k0;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/l0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/n0;->b:Ljava/nio/file/Path;

    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p2, Lcom/android/tools/r8/n0;->b:Ljava/nio/file/Path;

    invoke-static {v2}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/n0;->b:Ljava/nio/file/Path;

    iput-object p1, v0, Lcom/android/tools/r8/k0;->b:Ljava/nio/file/Path;

    .line 13
    iget-object p1, p2, Lcom/android/tools/r8/n0;->b:Ljava/nio/file/Path;

    iput-object p1, v0, Lcom/android/tools/r8/k0;->c:Ljava/nio/file/Path;

    return-void

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both input and output for feature resources must be provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
