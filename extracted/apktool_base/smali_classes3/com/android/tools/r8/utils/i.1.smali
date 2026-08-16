.class public Lcom/android/tools/r8/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/utils/i$a;
    }
.end annotation


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;

.field public final b:Lcom/android/tools/r8/internal/nC;

.field public final c:Lcom/android/tools/r8/internal/hC;

.field public final d:Lcom/android/tools/r8/internal/hC;

.field public final e:Lcom/android/tools/r8/internal/hC;

.field public final f:Lcom/android/tools/r8/v0;

.field public final g:Lcom/android/tools/r8/v0$a;

.field public final h:Ljava/util/AbstractCollection;

.field public final i:Ljava/util/AbstractCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/v0;Lcom/android/tools/r8/v0$a;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    iput-object p2, p0, Lcom/android/tools/r8/utils/i;->b:Lcom/android/tools/r8/internal/nC;

    iput-object p3, p0, Lcom/android/tools/r8/utils/i;->c:Lcom/android/tools/r8/internal/hC;

    iput-object p4, p0, Lcom/android/tools/r8/utils/i;->d:Lcom/android/tools/r8/internal/hC;

    iput-object p5, p0, Lcom/android/tools/r8/utils/i;->e:Lcom/android/tools/r8/internal/hC;

    iput-object p6, p0, Lcom/android/tools/r8/utils/i;->f:Lcom/android/tools/r8/v0;

    iput-object p7, p0, Lcom/android/tools/r8/utils/i;->g:Lcom/android/tools/r8/v0$a;

    check-cast p8, Ljava/util/AbstractCollection;

    iput-object p8, p0, Lcom/android/tools/r8/utils/i;->h:Ljava/util/AbstractCollection;

    check-cast p9, Ljava/util/AbstractCollection;

    iput-object p9, p0, Lcom/android/tools/r8/utils/i;->i:Ljava/util/AbstractCollection;

    sget-boolean p1, Lcom/android/tools/r8/utils/i;->j:Z

    if-nez p1, :cond_1

    invoke-static {p3, p5}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    invoke-static {p4, p5}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/u20;ILjava/util/function/Function;Ljava/util/zip/ZipOutputStream;Lcom/android/tools/r8/ProgramResource;)I
    .locals 5

    .line 224
    instance-of v0, p4, Lcom/android/tools/r8/internal/a40;

    if-eqz v0, :cond_2

    .line 225
    move-object v0, p4

    check-cast v0, Lcom/android/tools/r8/internal/a40;

    .line 226
    sget-boolean v1, Lcom/android/tools/r8/internal/a40;->e:Z

    if-nez v1, :cond_1

    .line 227
    iget-object v1, v0, Lcom/android/tools/r8/internal/a40;->c:[B

    if-eqz v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 229
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/a40;->c:[B

    goto :goto_1

    .line 230
    :cond_2
    invoke-interface {p4}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Uo0;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 231
    :goto_1
    invoke-interface {p4}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    const/16 v3, 0x8

    if-ne v1, v2, :cond_6

    .line 232
    invoke-interface {p4}, Lcom/android/tools/r8/ProgramResource;->getClassDescriptors()Ljava/util/Set;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    .line 233
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    if-eq v2, v1, :cond_3

    goto :goto_2

    .line 234
    :cond_3
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_3

    .line 235
    :cond_4
    :goto_2
    new-instance p3, Lcom/android/tools/r8/internal/Vd;

    .line 236
    array-length v2, v0

    .line 237
    invoke-direct {p3, v0, v1}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    .line 238
    new-instance v1, Lcom/android/tools/r8/utils/b;

    invoke-direct {v1}, Lcom/android/tools/r8/utils/b;-><init>()V

    const/4 v2, 0x7

    .line 239
    new-array v4, p4, [Lcom/android/tools/r8/internal/K4;

    invoke-virtual {p3, v1, v4, v2}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V

    .line 240
    invoke-virtual {v1}, Lcom/android/tools/r8/utils/b;->b()Ljava/lang/String;

    move-result-object p3

    .line 241
    :goto_3
    invoke-static {p3}, Lcom/android/tools/r8/internal/Bl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p3, p4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    add-int/lit8 v2, p4, 0x1

    .line 243
    invoke-virtual {p0, v2, p3}, Lcom/android/tools/r8/internal/u20;->b(ILjava/lang/Object;)I

    if-nez p4, :cond_5

    goto :goto_4

    .line 244
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ".dup"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    :goto_4
    invoke-interface {p2, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/zip/ZipOutputStream;

    .line 246
    invoke-static {p0, v1, v0, v3}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    return p1

    .line 247
    :cond_6
    sget-boolean p0, Lcom/android/tools/r8/utils/i;->j:Z

    if-nez p0, :cond_8

    invoke-interface {p4}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object p0

    sget-object p2, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne p0, p2, :cond_7

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    :goto_5
    add-int/lit8 p0, p1, 0x1

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "classes"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".dex"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-static {p3, p1, v0, v3}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    return p0
.end method

.method public static a(Ljava/lang/String;ILjava/util/zip/ZipOutputStream;Lcom/android/tools/r8/internal/hC;)I
    .locals 7

    .line 210
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 211
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    :try_start_1
    new-instance v2, Lcom/android/tools/r8/internal/u20;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/u20;-><init>()V

    .line 213
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/ClassFileResourceProvider;

    .line 214
    invoke-interface {v3}, Lcom/android/tools/r8/ClassFileResourceProvider;->getClassDescriptors()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 215
    invoke-interface {v3, v5}, Lcom/android/tools/r8/ClassFileResourceProvider;->getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;

    move-result-object v5

    .line 216
    new-instance v6, Lcom/android/tools/r8/utils/x;

    invoke-direct {v6, v1}, Lcom/android/tools/r8/utils/x;-><init>(Ljava/util/zip/ZipOutputStream;)V

    .line 217
    invoke-static {v2, p1, v6, v1, v5}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/internal/u20;ILjava/util/function/Function;Ljava/util/zip/ZipOutputStream;Lcom/android/tools/r8/ProgramResource;)I

    move-result v5

    .line 218
    sget-boolean v6, Lcom/android/tools/r8/utils/i;->j:Z

    if-nez v6, :cond_2

    if-ne v5, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v5

    goto :goto_0

    .line 219
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 220
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    const/16 v1, 0x8

    invoke-static {p2, p0, p3, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 221
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return p1

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 222
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 223
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/utils/i$a;
    .locals 1

    .line 19
    new-instance v0, Lcom/android/tools/r8/utils/i$a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/i$a;-><init>(Lcom/android/tools/r8/internal/Ef0;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/utils/i;)Lcom/android/tools/r8/utils/i$a;
    .locals 3

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ef0;-><init>()V

    .line 10
    new-instance v1, Lcom/android/tools/r8/utils/i$a;

    .line 11
    invoke-direct {v1, v0}, Lcom/android/tools/r8/utils/i$a;-><init>(Lcom/android/tools/r8/internal/Ef0;)V

    .line 12
    iget-object v0, v1, Lcom/android/tools/r8/utils/i$a;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object v0, v1, Lcom/android/tools/r8/utils/i$a;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/utils/i;->c:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object v0, v1, Lcom/android/tools/r8/utils/i$a;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/utils/i;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    iget-object v0, v1, Lcom/android/tools/r8/utils/i$a;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/utils/i;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->h:Ljava/util/AbstractCollection;

    iput-object v0, v1, Lcom/android/tools/r8/utils/i$a;->h:Ljava/util/AbstractCollection;

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->i:Ljava/util/AbstractCollection;

    iput-object v0, v1, Lcom/android/tools/r8/utils/i$a;->i:Ljava/util/AbstractCollection;

    .line 18
    iget-object p0, p0, Lcom/android/tools/r8/utils/i;->g:Lcom/android/tools/r8/v0$a;

    iput-object p0, v1, Lcom/android/tools/r8/utils/i$a;->l:Lcom/android/tools/r8/v0$a;

    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/internal/Qv;Ljava/lang/String;)Ljava/util/IdentityHashMap;
    .locals 8

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    if-eqz p0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/tools/r8/FeatureSplit;

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "feature-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Qv;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Zd;Ljava/util/Map;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Ljava/util/zip/ZipOutputStream;
    .locals 0

    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    const/4 p1, 0x0

    .line 207
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result p1

    if-nez p1, :cond_0

    .line 209
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/zip/ZipOutputStream;

    return-object p0

    :cond_0
    return-object p4
.end method

.method public static synthetic a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Ljava/util/zip/ZipOutputStream;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/AndroidResourceProvider;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 6

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 142
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 143
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    invoke-interface {p0}, Lcom/android/tools/r8/AndroidResourceProvider;->getAndroidResources()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/AndroidResourceInput;

    .line 145
    invoke-interface {v3}, Lcom/android/tools/r8/AndroidResourceInput;->getPath()Lcom/android/tools/r8/ResourcePath;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/tools/r8/ResourcePath;->location()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    invoke-interface {v3}, Lcom/android/tools/r8/AndroidResourceInput;->getPath()Lcom/android/tools/r8/ResourcePath;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/tools/r8/ResourcePath;->location()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-interface {v3}, Lcom/android/tools/r8/AndroidResourceInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/E2;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 148
    invoke-static {v2, v5, v3, v4}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 149
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 150
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p1, p2, p0, v4}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 152
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/internal/nJ;Ljava/util/zip/ZipOutputStream;)V
    .locals 5

    .line 136
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/startup/StartupProfileProvider;

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startup-profile-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/xo0;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/startup/StartupProfileProvider;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v4, 0x8

    .line 140
    invoke-static {p2, v3, v2, v4}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/zip/ZipOutputStream;)V
    .locals 5

    .line 132
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/profile/art/ArtProfileProvider;

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "art-profile-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-static {v2}, Lcom/android/tools/r8/internal/x4;->a(Lcom/android/tools/r8/profile/art/ArtProfileProvider;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v4, 0x8

    .line 135
    invoke-static {p1, v3, v2, v4}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/ClassFileResourceProvider;)Z
    .locals 1

    .line 8
    instance-of v0, p1, Lcom/android/tools/r8/internal/ZI;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/hC;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)Z
    .locals 1

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/utils/A;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/A;-><init>(Lcom/android/tools/r8/internal/hC;)V

    .line 7
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/android/tools/r8/utils/i$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ef0;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    .line 20
    sget-boolean v0, Lcom/android/tools/r8/utils/i;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/pe;

    sget-object v1, Lcom/android/tools/r8/internal/pe;->c:Lcom/android/tools/r8/internal/oe;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/pe;-><init>(Lcom/android/tools/r8/internal/oe;)V

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/ProgramResource;

    .line 25
    invoke-interface {v3}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 26
    iget-object v4, v0, Lcom/android/tools/r8/internal/pe;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_4

    .line 27
    :cond_2
    :goto_2
    invoke-static {v3}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/ProgramResource;

    .line 29
    invoke-interface {v3}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 30
    iget-object v4, v0, Lcom/android/tools/r8/internal/pe;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 31
    :cond_4
    invoke-static {v3}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    goto :goto_3

    .line 32
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pe;->close()V

    return v2

    .line 33
    :goto_4
    :try_start_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pe;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
.end method

.method public final a(Lcom/android/tools/r8/internal/Qv;Ljava/util/zip/ZipOutputStream;Lcom/android/tools/r8/internal/nJ;)I
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    const-string v8, "program.jar"

    .line 154
    const-string v1, ".jar"

    invoke-static {v0, v1}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/internal/Qv;Ljava/lang/String;)Ljava/util/IdentityHashMap;

    move-result-object v9

    .line 155
    new-instance v10, Ljava/util/IdentityHashMap;

    invoke-direct {v10}, Ljava/util/IdentityHashMap;-><init>()V

    .line 156
    new-instance v11, Ljava/util/IdentityHashMap;

    invoke-direct {v11}, Ljava/util/IdentityHashMap;-><init>()V

    .line 157
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    move-object/from16 v13, p3

    iget-object v2, v13, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 158
    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Qv;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/Zd;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v0, :cond_0

    .line 159
    iget-object v1, v0, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v15

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/FeatureSplit;

    .line 161
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    invoke-virtual {v10, v4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v11, v4, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_e

    .line 164
    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :try_start_1
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 166
    :try_start_2
    new-instance v4, Lcom/android/tools/r8/internal/u20;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/u20;-><init>()V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/utils/i;->e()Lcom/android/tools/r8/internal/o50;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 169
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v3, :cond_1

    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/DataDirectoryResource;

    .line 170
    invoke-interface {v3}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v12, v15, [B

    .line 171
    invoke-static {v5, v3, v12, v15}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    move-object/from16 v21, v6

    goto/16 :goto_a

    .line 172
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 173
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    const/16 v12, 0x8

    if-eqz v2, :cond_3

    :try_start_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/DataEntryResource;

    .line 174
    invoke-interface {v2}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-interface {v2}, Lcom/android/tools/r8/DataEntryResource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 176
    :try_start_6
    invoke-static {v2}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object v15

    .line 177
    invoke-static {v5, v3, v15, v12}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 178
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v15, 0x0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_2

    .line 179
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_3
    move-object/from16 v15, p0

    .line 180
    :try_start_a
    iget-object v1, v15, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v17

    const/4 v1, 0x0

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 181
    invoke-interface {v2}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v3, v1

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/ProgramResource;

    .line 182
    new-instance v1, Lcom/android/tools/r8/utils/B;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object v12, v2

    move-object/from16 v2, p1

    move v13, v3

    move-object/from16 v3, p3

    move-object v15, v4

    move-object v4, v14

    move-object/from16 v20, v5

    move-object v5, v11

    move-object/from16 v21, v6

    move-object/from16 v6, v20

    :try_start_b
    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/utils/B;-><init>(Lcom/android/tools/r8/internal/Qv;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Zd;Ljava/util/Map;Ljava/util/zip/ZipOutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v2, v20

    .line 183
    :try_start_c
    invoke-static {v15, v13, v1, v2, v12}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/internal/u20;ILjava/util/function/Function;Ljava/util/zip/ZipOutputStream;Lcom/android/tools/r8/ProgramResource;)I

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v13, p3

    move-object v5, v2

    move-object v4, v15

    move-object/from16 v6, v21

    const/16 v12, 0x8

    move-object/from16 v15, p0

    goto :goto_5

    :catchall_4
    move-exception v0

    :goto_6
    move-object v1, v0

    goto/16 :goto_a

    :catchall_5
    move-exception v0

    move-object/from16 v2, v20

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v2, v5

    move-object/from16 v21, v6

    goto :goto_6

    :cond_4
    move v13, v3

    move-object/from16 v15, p0

    move v1, v13

    move-object/from16 v13, p3

    goto :goto_4

    :cond_5
    move-object v2, v5

    move-object/from16 v21, v6

    .line 184
    :try_start_d
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 185
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v7, v8, v2, v3}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    if-eqz v0, :cond_6

    .line 186
    iget-object v0, v0, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v2, :cond_6

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v15, v15, 0x1

    check-cast v3, Lcom/android/tools/r8/FeatureSplit;

    .line 188
    invoke-virtual {v11, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 189
    invoke-virtual {v9, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    invoke-virtual {v10, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v5, 0x8

    .line 191
    invoke-static {v7, v4, v3, v5}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    :goto_8
    move-object v1, v0

    goto :goto_c

    .line 192
    :cond_6
    :try_start_e
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 193
    invoke-virtual {v11}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 195
    :try_start_f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v12, v0

    goto :goto_9

    :cond_7
    if-nez v12, :cond_9

    if-nez v16, :cond_8

    return v1

    .line 196
    :cond_8
    throw v16

    .line 197
    :cond_9
    throw v12

    .line 198
    :goto_a
    :try_start_10
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_11
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_9
    move-exception v0

    move-object/from16 v21, v6

    goto :goto_8

    .line 199
    :goto_c
    :try_start_12
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    goto :goto_d

    :catchall_a
    move-exception v0

    move-object v2, v0

    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 200
    :goto_e
    invoke-virtual {v11}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 202
    :try_start_14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    move-object/from16 v16, v0

    goto :goto_f

    :catch_3
    move-exception v0

    move-object v12, v0

    goto :goto_f

    :cond_a
    if-nez v12, :cond_c

    if-nez v16, :cond_b

    .line 203
    throw v1

    .line 204
    :cond_b
    throw v16

    .line 205
    :cond_c
    throw v12
.end method

.method public a(Lcom/android/tools/r8/Resource;)Ljava/lang/String;
    .locals 1

    .line 43
    sget-boolean v0, Lcom/android/tools/r8/utils/i;->j:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/tools/r8/ProgramResource;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)Ljava/util/ArrayList;
    .locals 4

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 36
    instance-of v3, v2, Lcom/android/tools/r8/internal/vJ;

    if-eqz v3, :cond_0

    .line 37
    check-cast v2, Lcom/android/tools/r8/internal/vJ;

    .line 38
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v2}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/utils/i;->c(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)V

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/utils/i;->b(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)V

    return-void
.end method

.method public a(Ljava/nio/file/Path;Lcom/android/tools/r8/internal/rt;Lcom/android/tools/r8/internal/nJ;)V
    .locals 9

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x0

    .line 46
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    const-string p1, "r8-version"

    .line 48
    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v6, 0x8

    .line 49
    invoke-static {v4, p1, v0, v6}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 50
    const-string p1, "build.properties"

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/rt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 52
    invoke-static {v4, p1, v0, v6}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 53
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->o:Lcom/android/tools/r8/internal/vm;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/tools/r8/internal/vm;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->o:Lcom/android/tools/r8/internal/vm;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/vm;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 55
    const-string p1, "desugared-library.json"

    .line 56
    iget-object v0, p2, Lcom/android/tools/r8/internal/rt;->o:Lcom/android/tools/r8/internal/vm;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/tools/r8/internal/vm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p2, Lcom/android/tools/r8/internal/rt;->o:Lcom/android/tools/r8/internal/vm;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/vm;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 58
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 59
    invoke-static {v4, p1, v0, v6}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 60
    :cond_2
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->q:Lcom/android/tools/r8/shaking/o3;

    if-nez p1, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 61
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/shaking/o3;->a:Ljava/lang/String;

    :goto_2
    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    move-object p1, v1

    goto :goto_3

    .line 62
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/shaking/o3;->a:Ljava/lang/String;

    .line 63
    :goto_3
    const-string v0, "proguard.config"

    .line 64
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 65
    invoke-static {v4, v0, p1, v6}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 66
    :cond_5
    iget-object p1, p0, Lcom/android/tools/r8/utils/i;->g:Lcom/android/tools/r8/v0$a;

    if-eqz p1, :cond_6

    .line 67
    iget-object p1, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const-string v0, "Dumping proguard map input data may have side effects due to I/O on Paths."

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    .line 68
    const-string p1, "proguard_input.config"

    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->g:Lcom/android/tools/r8/v0$a;

    .line 69
    invoke-interface {v0}, Lcom/android/tools/r8/v0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 70
    invoke-static {v4, p1, v0, v6}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 71
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->k()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    iget-object v0, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const-string v5, "Dumping main dex list resources may have side effects due to I/O on Paths."

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->h:Ljava/util/AbstractCollection;

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/v0;

    .line 77
    invoke-interface {v5}, Lcom/android/tools/r8/v0;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 78
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->i:Ljava/util/AbstractCollection;

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 80
    const-string v7, "."

    const-string v8, "/"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".class"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 81
    :cond_8
    const-string v0, "\n"

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string v0, "main-dex-list.txt"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 83
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 84
    invoke-static {v4, v0, p1, v6}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 85
    :cond_9
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->r:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 86
    const-string p1, "main-dex-rules.txt"

    .line 87
    iget-object v0, p2, Lcom/android/tools/r8/internal/rt;->r:Ljava/util/List;

    .line 88
    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 89
    invoke-static {v4, p1, v0, v6}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 90
    :cond_a
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->s:Ljava/util/List;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 91
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->s:Ljava/util/List;

    .line 92
    invoke-static {p1, v4}, Lcom/android/tools/r8/utils/i;->a(Ljava/util/List;Ljava/util/zip/ZipOutputStream;)V

    .line 93
    :cond_b
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->t:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 94
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->t:Ljava/util/List;

    .line 95
    invoke-static {p1, p3, v4}, Lcom/android/tools/r8/utils/i;->a(Ljava/util/List;Lcom/android/tools/r8/internal/nJ;Ljava/util/zip/ZipOutputStream;)V

    .line 96
    :cond_c
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->w:Lcom/android/tools/r8/AndroidResourceProvider;

    if-eqz p1, :cond_e

    .line 97
    const-string v0, "app-res.ap_"

    .line 98
    invoke-static {p1, v4, v0}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/AndroidResourceProvider;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 99
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->p:Lcom/android/tools/r8/internal/Qv;

    if-eqz p1, :cond_e

    .line 100
    const-string v0, ".ap_"

    invoke-static {p1, v0}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/internal/Qv;Ljava/lang/String;)Ljava/util/IdentityHashMap;

    move-result-object p1

    .line 101
    iget-object v0, p2, Lcom/android/tools/r8/internal/rt;->p:Lcom/android/tools/r8/internal/Qv;

    .line 102
    iget-object v0, v0, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_d
    :goto_6
    if-ge v2, v5, :cond_e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/2addr v2, v3

    check-cast v7, Lcom/android/tools/r8/FeatureSplit;

    .line 104
    invoke-virtual {v7}, Lcom/android/tools/r8/FeatureSplit;->getAndroidResourceProvider()Lcom/android/tools/r8/AndroidResourceProvider;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 105
    invoke-virtual {v7}, Lcom/android/tools/r8/FeatureSplit;->getAndroidResourceProvider()Lcom/android/tools/r8/AndroidResourceProvider;

    move-result-object v8

    .line 106
    invoke-virtual {p1, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 107
    invoke-static {v8, v4, v7}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/AndroidResourceProvider;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    goto :goto_6

    .line 108
    :cond_e
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->x:Lcom/android/tools/r8/internal/hb0;

    if-eqz p1, :cond_f

    .line 109
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/hb0;->a:Z

    if-eqz v0, :cond_f

    .line 110
    const-string v0, "r8-include.txt"

    .line 111
    iget-object v2, p1, Lcom/android/tools/r8/internal/hb0;->b:Lcom/android/tools/r8/internal/kb0;

    .line 112
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kb0;->a()[B

    move-result-object v2

    .line 113
    invoke-static {v4, v0, v2, v6}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 114
    iget-object v0, p1, Lcom/android/tools/r8/internal/hb0;->c:Lcom/android/tools/r8/internal/kb0;

    .line 115
    iget-object v0, v0, Lcom/android/tools/r8/internal/kb0;->a:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 117
    const-string v0, "r8-exclude.txt"

    .line 118
    iget-object p1, p1, Lcom/android/tools/r8/internal/hb0;->c:Lcom/android/tools/r8/internal/kb0;

    .line 119
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kb0;->a()[B

    move-result-object p1

    .line 120
    invoke-static {v4, v0, p1, v6}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 121
    :cond_f
    iget-object p1, p2, Lcom/android/tools/r8/internal/rt;->p:Lcom/android/tools/r8/internal/Qv;

    .line 122
    invoke-virtual {p0, p1, v4, p3}, Lcom/android/tools/r8/utils/i;->a(Lcom/android/tools/r8/internal/Qv;Ljava/util/zip/ZipOutputStream;Lcom/android/tools/r8/internal/nJ;)I

    move-result p1

    .line 123
    const-string p2, "classpath.jar"

    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->c:Lcom/android/tools/r8/internal/hC;

    .line 124
    invoke-static {p2, p1, v4, v0}, Lcom/android/tools/r8/utils/i;->a(Ljava/lang/String;ILjava/util/zip/ZipOutputStream;Lcom/android/tools/r8/internal/hC;)I

    move-result p1

    .line 125
    const-string p2, "library.jar"

    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->d:Lcom/android/tools/r8/internal/hC;

    .line 126
    invoke-static {p2, p1, v4, v0}, Lcom/android/tools/r8/utils/i;->a(Ljava/lang/String;ILjava/util/zip/ZipOutputStream;Lcom/android/tools/r8/internal/hC;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_9

    :catch_1
    move-exception p1

    goto :goto_9

    .line 128
    :goto_7
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_4 .. :try_end_4} :catch_0

    .line 129
    :goto_9
    iget-object p2, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p3, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    .line 130
    invoke-virtual {p2, v1, p3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 131
    iget-object p1, p2, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Ef0;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 9
    invoke-interface {v1, p1}, Lcom/android/tools/r8/ProgramResourceProvider;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->c:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/ClassFileResourceProvider;

    .line 11
    invoke-interface {v1, p1}, Lcom/android/tools/r8/ClassFileResourceProvider;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/ClassFileResourceProvider;

    .line 13
    invoke-interface {v1, p1}, Lcom/android/tools/r8/ClassFileResourceProvider;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public b(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->f()Ljava/util/List;

    move-result-object v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    if-ne p2, v1, :cond_0

    .line 5
    invoke-static {p1, v0}, Lcom/android/tools/r8/DexIndexedConsumer$DirectoryConsumer;->writeResources(Ljava/nio/file/Path;Ljava/util/List;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/utils/i;->b:Lcom/android/tools/r8/internal/nC;

    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$DirectoryConsumer;->writeResources(Ljava/nio/file/Path;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :goto_0
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Resource Error"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ProgramResource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    sget-object v1, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 4
    invoke-interface {v3}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/ProgramResource;

    .line 5
    invoke-interface {v4}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v5

    if-ne v5, v1, :cond_1

    .line 6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    return-object v2

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 9
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/bJ;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/bJ;-><init>(Lcom/android/tools/r8/ResourceException;)V

    throw v1
.end method

.method public c(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    :try_start_0
    sget-object v0, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    if-ne p2, v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->e()Lcom/android/tools/r8/internal/o50;

    move-result-object p2

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->f()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 15
    invoke-static {p1, v0, v1, p2}, Lcom/android/tools/r8/DexIndexedConsumer$ArchiveConsumer;->writeResourcesForTesting(Ljava/nio/file/Path;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lcom/android/tools/r8/OutputMode;->DexFilePerClassFile:Lcom/android/tools/r8/OutputMode;

    if-eq p2, v0, :cond_3

    sget-object v0, Lcom/android/tools/r8/OutputMode;->DexFilePerClass:Lcom/android/tools/r8/OutputMode;

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lcom/android/tools/r8/OutputMode;->ClassFile:Lcom/android/tools/r8/OutputMode;

    if-ne p2, v0, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->e()Lcom/android/tools/r8/internal/o50;

    move-result-object p2

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->c()Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 22
    invoke-static {p1, v0, v1, p2}, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;->writeResourcesForTesting(Ljava/nio/file/Path;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V

    return-void

    .line 23
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported output-mode for writing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->f()Ljava/util/List;

    move-result-object p2

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->b:Lcom/android/tools/r8/internal/nC;

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/DexFilePerClassFileConsumer$ArchiveConsumer;->writeResourcesForTesting(Ljava/nio/file/Path;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 26
    :goto_1
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Resource Error"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ClassFileResourceProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->c:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/o50;
    .locals 5

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/android/tools/r8/utils/y;

    invoke-direct {v1}, Lcom/android/tools/r8/utils/y;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/tools/r8/utils/z;

    invoke-direct {v2}, Lcom/android/tools/r8/utils/z;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-interface {v3}, Lcom/android/tools/r8/ProgramResourceProvider;->getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/tools/r8/utils/a;

    invoke-direct {v4, v0, v1}, Lcom/android/tools/r8/utils/a;-><init>(Ljava/util/TreeSet;Ljava/util/TreeSet;)V

    invoke-interface {v3, v4}, Lcom/android/tools/r8/DataResourceProvider;->accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public f()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ProgramResource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    sget-object v1, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-interface {v3}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/ProgramResource;

    invoke-interface {v4}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v5

    if-ne v5, v1, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    return-object v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/bJ;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/bJ;-><init>(Lcom/android/tools/r8/ResourceException;)V

    throw v1
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ClassFileResourceProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->d:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ProgramResourceProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public i()Lcom/android/tools/r8/v0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->g:Lcom/android/tools/r8/v0$a;

    return-object v0
.end method

.method public j()Lcom/android/tools/r8/v0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->f:Lcom/android/tools/r8/v0;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->h:Ljava/util/AbstractCollection;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->i:Ljava/util/AbstractCollection;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/i;->h:Ljava/util/AbstractCollection;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final m()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/tools/r8/utils/i;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/ProgramResourceProvider;

    :try_start_0
    invoke-interface {v1}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ProgramResource;
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v2}, Lcom/android/tools/r8/ProgramResource;->getKind()Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v3

    sget-object v4, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/android/tools/r8/ProgramResource;->getBytes()[B

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/Vd;

    array-length v5, v3

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    new-instance v3, Lcom/android/tools/r8/utils/d;

    new-instance v5, Lcom/android/tools/r8/internal/Cd;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/Cd;-><init>()V

    invoke-direct {v3, v5}, Lcom/android/tools/r8/utils/d;-><init>(Lcom/android/tools/r8/internal/Cd;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/tools/r8/internal/K4;

    const/16 v6, 0x8

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/android/tools/r8/internal/If;

    invoke-interface {v2}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed validating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/internal/If;

    const-string v2, "Resource exception in validation"

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " contains "

    const-string v3, "    "

    if-nez v1, :cond_2

    :try_start_1
    const-string v1, "  Program resources:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-interface {v4}, Lcom/android/tools/r8/ProgramResourceProvider;->getProgramResources()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/ProgramResource;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/tools/r8/ProgramResource;->getClassDescriptors()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v5}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/util/Collection;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_4

    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/utils/i;->c:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "  Classpath resources:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/utils/i;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/ClassFileResourceProvider;

    invoke-interface {v4}, Lcom/android/tools/r8/ClassFileResourceProvider;->getClassDescriptors()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/android/tools/r8/ClassFileResourceProvider;->getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;

    move-result-object v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/tools/r8/ProgramResource;->getClassDescriptors()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/util/Collection;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/utils/i;->d:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "  Library resources:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/utils/i;->d:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/ClassFileResourceProvider;

    invoke-interface {v4}, Lcom/android/tools/r8/ClassFileResourceProvider;->getClassDescriptors()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/android/tools/r8/ClassFileResourceProvider;->getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;

    move-result-object v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/tools/r8/ProgramResource;->getClassDescriptors()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/util/Collection;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
