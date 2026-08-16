.class public Lcom/android/tools/r8/internal/H2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/references/MethodReference;",
            "Lcom/android/tools/r8/internal/C2;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/references/FieldReference;",
            "Lcom/android/tools/r8/internal/C2;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/references/ClassReference;",
            "Lcom/android/tools/r8/internal/C2;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/tools/r8/references/MethodReference;",
            "Lcom/android/tools/r8/androidapi/f;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.android.tools.r8.disableApiModeling"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/H2;->a:Z

    const-string v0, "com.android.tools.r8.androidApiExtensionLibraries"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/H2;->b:Ljava/lang/String;

    const-string v0, "com.android.tools.r8.androidApiExtensionPackages"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/H2;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/H2;->d:Z

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/H2;->e:Z

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/H2;->f:Z

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/H2;->g:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/H2;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/H2;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/H2;->j:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/H2;->k:Ljava/util/function/BiConsumer;

    iput-object p1, p0, Lcom/android/tools/r8/internal/H2;->l:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/internal/C2;)V
    .locals 0

    .line 41
    invoke-virtual {p2}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/references/FieldReference;Lcom/android/tools/r8/internal/C2;)V
    .locals 0

    .line 42
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/internal/C2;)V
    .locals 0

    .line 43
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 8
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/jG0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/jG0;-><init>(Ljava/util/function/Consumer;)V

    .line 9
    invoke-static {v0, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/utils/u$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read extension library "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/util/function/Consumer;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 7

    .line 11
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/utils/u;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/Vd;

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    const/16 v0, 0x1000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x100000

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 15
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    :try_start_0
    new-array v2, v0, [B

    const/4 v3, 0x0

    move v4, v3

    .line 17
    :goto_1
    invoke-virtual {p2, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 18
    invoke-virtual {v1, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 19
    :cond_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    if-ne v4, p2, :cond_2

    .line 20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2

    .line 21
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 23
    :goto_2
    array-length v0, v2

    .line 24
    invoke-direct {p1, v2, p2}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    .line 25
    new-instance p2, Lcom/android/tools/r8/internal/Gb;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Gb;-><init>()V

    const/4 v0, 0x7

    .line 26
    new-array v1, v3, [Lcom/android/tools/r8/internal/K4;

    .line 27
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V

    .line 28
    iget-object p1, p2, Lcom/android/tools/r8/internal/Gb;->c:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 31
    :goto_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    throw p0

    .line 32
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Class not found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/H2;
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/H2;->b(Z)Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/android/tools/r8/internal/H2;
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/H2;->g:Z

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 35
    sget-boolean v0, Lcom/android/tools/r8/internal/H2;->m:Z

    if-nez v0, :cond_1

    .line 36
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/H2;->j:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/kG0;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/kG0;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/H2;->i:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/lG0;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/lG0;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/H2;->h:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/mG0;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/internal/mG0;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/H2;->m:Z

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/H2;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/16 v1, 0x2c

    .line 5
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/nG0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/nG0;-><init>(Ljava/util/function/Consumer;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public b()Lcom/android/tools/r8/internal/H2;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/H2;->c(Z)Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lcom/android/tools/r8/internal/H2;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/H2;->d:Z

    return-object p0
.end method

.method public c()Lcom/android/tools/r8/internal/H2;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/H2;->d(Z)Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Lcom/android/tools/r8/internal/H2;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/H2;->a:Z

    return-object p0
.end method

.method public d()Lcom/android/tools/r8/internal/H2;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/H2;->e(Z)Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)Lcom/android/tools/r8/internal/H2;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/H2;->f:Z

    return-object p0
.end method

.method public e(Z)Lcom/android/tools/r8/internal/H2;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/H2;->e:Z

    return-object p0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/H2;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/H2;->l:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/H2;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/H2;->l:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/H2;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
