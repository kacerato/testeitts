.class public Lec/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lec/h$c;
    }
.end annotation


# static fields
.field public static final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field public static final q:Ljava/lang/String; = "[INSERT_VFX_INSTANCE_CODES]"

.field public static final r:Ljava/lang/String; = "[INSERT_VFX_RUN_CODE]"

.field public static final s:Ljava/lang/String; = "[INSERT_VFX_SUB_RUN_CODE]"

.field public static final t:Ljava/lang/String; = "vfx_call_snippet_vertex.glsl"

.field public static final u:Ljava/lang/String; = "vfx_call_snippet_frag.glsl"

.field public static final v:Ljava/lang/String; = "vfx_call_snippet_sub_mat.glsl"

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static final z:Ljava/lang/Object;


# instance fields
.field public final a:Lgc/e;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Z

.field public g:I

.field public final h:Lec/c;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lec/f;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lec/g;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Z

.field public volatile l:Ljava/lang/String;

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lec/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lec/h;->z:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lec/h;->A:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lec/h;->B:Ljava/util/Map;

    new-instance v0, Lec/h$a;

    invoke-direct {v0}, Lec/h$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    return-void
.end method

.method public constructor <init>(Lgc/e;Lec/c;Ljava/util/List;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragmentRTCC",
            "materialBuilderInjector",
            "params",
            "samples",
            "useProjectCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgc/e;",
            "Lec/c;",
            "Ljava/util/List<",
            "Lec/f;",
            ">;",
            "Ljava/util/List<",
            "Lec/g;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, p0, Lec/h;->e:J

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lec/h;->p:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lec/h;->a:Lgc/e;

    .line 5
    iput-boolean p5, p0, Lec/h;->k:Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lec/h;->c:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lec/h;->h:Lec/c;

    .line 8
    iput-object p3, p0, Lec/h;->i:Ljava/util/List;

    .line 9
    iput-object p4, p0, Lec/h;->j:Ljava/util/List;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lec/h;->m:Z

    const/4 p2, 0x1

    .line 11
    iput-boolean p2, p0, Lec/h;->n:Z

    .line 12
    iput-boolean p1, p0, Lec/h;->o:Z

    .line 13
    invoke-virtual {p0}, Lec/h;->L()V

    return-void
.end method

.method public constructor <init>(Lgc/e;Ljava/lang/String;Lec/c;Ljava/util/List;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragmentRTCC",
            "vertexCode",
            "materialBuilderInjector",
            "params",
            "samples",
            "useProjectCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgc/e;",
            "Ljava/lang/String;",
            "Lec/c;",
            "Ljava/util/List<",
            "Lec/f;",
            ">;",
            "Ljava/util/List<",
            "Lec/g;",
            ">;Z)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 15
    iput-wide v0, p0, Lec/h;->e:J

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lec/h;->p:Ljava/util/Map;

    .line 17
    iput-object p1, p0, Lec/h;->a:Lgc/e;

    .line 18
    iput-object p2, p0, Lec/h;->c:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lec/h;->h:Lec/c;

    .line 20
    iput-object p4, p0, Lec/h;->i:Ljava/util/List;

    .line 21
    iput-object p5, p0, Lec/h;->j:Ljava/util/List;

    .line 22
    iput-boolean p6, p0, Lec/h;->k:Z

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lec/h;->m:Z

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lec/h;->n:Z

    .line 25
    iput-boolean p1, p0, Lec/h;->o:Z

    .line 26
    invoke-virtual {p0}, Lec/h;->L()V

    return-void
.end method

.method public constructor <init>(Lgc/e;Ljava/lang/String;Lec/c;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragmentRTCC",
            "vertexCode",
            "materialBuilderInjector",
            "params",
            "samples",
            "useProjectCache",
            "isEasy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgc/e;",
            "Ljava/lang/String;",
            "Lec/c;",
            "Ljava/util/List<",
            "Lec/f;",
            ">;",
            "Ljava/util/List<",
            "Lec/g;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 27
    invoke-direct/range {v0 .. v8}, Lec/h;-><init>(Lgc/e;Ljava/lang/String;Lec/c;Ljava/util/List;Ljava/util/List;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lgc/e;Ljava/lang/String;Lec/c;Ljava/util/List;Ljava/util/List;ZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragmentRTCC",
            "vertexCode",
            "materialBuilderInjector",
            "params",
            "samples",
            "useProjectCache",
            "isEasy",
            "easyMaterialIsLit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgc/e;",
            "Ljava/lang/String;",
            "Lec/c;",
            "Ljava/util/List<",
            "Lec/f;",
            ">;",
            "Ljava/util/List<",
            "Lec/g;",
            ">;ZZZ)V"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 28
    invoke-direct/range {v0 .. v9}, Lec/h;-><init>(Lgc/e;Ljava/lang/String;Lec/c;Ljava/util/List;Ljava/util/List;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Lgc/e;Ljava/lang/String;Lec/c;Ljava/util/List;Ljava/util/List;ZZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragmentRTCC",
            "vertexCode",
            "materialBuilderInjector",
            "params",
            "samples",
            "useProjectCache",
            "isEasy",
            "easyMaterialIsLit",
            "easyMaterialIsRefractive"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgc/e;",
            "Ljava/lang/String;",
            "Lec/c;",
            "Ljava/util/List<",
            "Lec/f;",
            ">;",
            "Ljava/util/List<",
            "Lec/g;",
            ">;ZZZZ)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 30
    iput-wide v0, p0, Lec/h;->e:J

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lec/h;->p:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lec/h;->a:Lgc/e;

    .line 33
    iput-object p2, p0, Lec/h;->c:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lec/h;->h:Lec/c;

    .line 35
    iput-object p4, p0, Lec/h;->i:Ljava/util/List;

    .line 36
    iput-object p5, p0, Lec/h;->j:Ljava/util/List;

    .line 37
    iput-boolean p6, p0, Lec/h;->k:Z

    .line 38
    iput-boolean p7, p0, Lec/h;->m:Z

    .line 39
    iput-boolean p8, p0, Lec/h;->n:Z

    if-eqz p8, :cond_0

    if-eqz p9, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    iput-boolean p1, p0, Lec/h;->o:Z

    .line 41
    invoke-virtual {p0}, Lec/h;->L()V

    return-void
.end method

.method public static A(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payload"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-gtz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-ne v1, v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    if-lez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static B(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long p0, v1, v3

    if-gtz p0, :cond_2

    long-to-int p0, v1

    new-array v1, p0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    sub-int v3, p0, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-ne v2, p0, :cond_1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/io/EOFException;

    const-string v1, "Fim inesperado do arquivo."

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arquivo > 2GB: use leitura por blocos ou mapeamento."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static F(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payload"
        }
    .end annotation

    invoke-static {p0}, Lec/h;->A(Ljava/nio/ByteBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/io/File;Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :cond_5
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    return-void

    :goto_2
    if-eqz v2, :cond_7

    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
.end method

.method public static g(ILjava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hash",
            "payload"
        }
    .end annotation

    invoke-static {p1}, Lec/h;->A(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-lez v0, :cond_1

    sget-object p1, Lec/h;->B:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static h()V
    .locals 1

    sget-object v0, Lec/h;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static k(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    sget-object v0, Lec/h;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lec/h;->A:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static n(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    sget-object v0, Lec/h;->B:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static u(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    sget-object v0, Lec/h;->B:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public C(Lec/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variance"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lec/h;->D(Lec/i;Z)Z

    move-result p1

    return p1
.end method

.method public final D(Lec/i;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variance",
            "forceRebuild"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lec/h;->d(Lec/i;)V

    invoke-virtual {p0}, Lec/h;->L()V

    const/4 v0, 0x0

    iput-object v0, p0, Lec/h;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lec/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lec/h;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-static {v0}, Lec/h;->u(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lec/h;->k(I)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-nez p2, :cond_1

    :try_start_0
    iget-object v3, p0, Lec/h;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    return v1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lec/h;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".vsc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v2

    return v1

    :cond_2
    invoke-static {v0}, Lec/h;->n(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lec/h;->A(Ljava/nio/ByteBuffer;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    :try_start_1
    invoke-static {v3, v4}, Lec/h;->G(Ljava/io/File;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    return v1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    if-nez p2, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_5

    :try_start_3
    invoke-static {v3}, Lec/h;->B(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lec/h;->A(Ljava/nio/ByteBuffer;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {v0, p1}, Lec/h;->g(ILjava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :goto_0
    :try_start_4
    monitor-exit v2

    return v1

    :cond_5
    new-instance p2, LSb/b;

    invoke-direct {p2}, LSb/b;-><init>()V

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->v(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p2

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->x(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p2

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$f;->PERFORMANCE:Lcom/google/android/filament/filamat/MaterialBuilder$f;

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->w(Lcom/google/android/filament/filamat/MaterialBuilder$f;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p2

    check-cast p2, LSb/b;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->a:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->a:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget-object v4, p0, Lec/h;->h:Lec/c;

    invoke-interface {v4, p2}, Lec/c;->a(LSb/b;)V

    iget-object v4, p1, Lec/i;->a:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget v4, p1, Lec/i;->b:F

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->q(F)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget-object v4, p1, Lec/i;->c:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->i(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget-boolean v4, p1, Lec/i;->d:Z

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->m(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget-boolean v4, p1, Lec/i;->h:Z

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget-boolean v4, p1, Lec/i;->g:Z

    invoke-virtual {p2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget-object p1, p1, Lec/i;->f:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    if-eqz p1, :cond_6

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$k;->THIN:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$k;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$j;->SCREEN_SPACE:Lcom/google/android/filament/filamat/MaterialBuilder$j;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->A(Lcom/google/android/filament/filamat/MaterialBuilder$j;)Lcom/google/android/filament/filamat/MaterialBuilder;

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$k;->SOLID:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    invoke-virtual {p2, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$k;)Lcom/google/android/filament/filamat/MaterialBuilder;

    :goto_1
    new-instance p1, Lec/e$a;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Lec/e$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lec/e$a;->x(LSb/b;)Lec/e$a;

    move-result-object p1

    iget-object p2, p0, Lec/h;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lec/e$a;->s(Ljava/lang/String;)Lec/e$a;

    move-result-object p1

    iget-object p2, p0, Lec/h;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lec/e$a;->q(Ljava/lang/String;)Lec/e$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lec/h;->b(Lec/e$a;)V

    const/4 p2, 0x0

    move v4, p2

    :goto_2
    iget-object v5, p0, Lec/h;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, p0, Lec/h;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lec/g;

    invoke-virtual {p1, v5}, Lec/e$a;->o(Lec/g;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :try_start_5
    invoke-virtual {p1}, Lec/e$a;->a()Lec/e$a;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p1}, Lec/e$a;->j()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lec/h;->A(Ljava/nio/ByteBuffer;)Z

    move-result p2

    if-nez p2, :cond_8

    monitor-exit v2

    return v1

    :cond_8
    invoke-static {v0, p1}, Lec/h;->g(ILjava/nio/ByteBuffer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v3, p1}, Lec/h;->G(Ljava/io/File;Ljava/nio/ByteBuffer;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_2
    move-exception p1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    monitor-exit v2

    return v1

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const-string v0, "Failed to compile material"

    :goto_4
    iput-object v0, p0, Lec/h;->l:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit v2

    return p2

    :goto_5
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public E(Lec/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variance"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lec/h;->D(Lec/i;Z)Z

    move-result p1

    return p1
.end method

.method public H(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lec/h;->a:Lgc/e;

    invoke-virtual {v0, p1, p2}, Lgc/e;->o(Ljava/lang/String;Z)V

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastCompileError"
        }
    .end annotation

    iput-object p1, p0, Lec/h;->l:Ljava/lang/String;

    return-void
.end method

.method public final J()Z
    .locals 6

    iget-boolean v0, p0, Lec/h;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lec/h;->m:Z

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lec/h;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final K(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lec/e;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "payload",
            "matName"
        }
    .end annotation

    invoke-static {p1}, Lec/h;->A(Ljava/nio/ByteBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lec/h;->F(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lec/h;->A(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lec/e$a;

    invoke-direct {v0, p2}, Lec/e$a;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lec/h;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lec/e$a;->s(Ljava/lang/String;)Lec/e$a;

    move-result-object p2

    iget-object v0, p0, Lec/h;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lec/e$a;->q(Ljava/lang/String;)Lec/e$a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lec/h;->b(Lec/e$a;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lec/h;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lec/h;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec/g;

    invoke-virtual {p2, v2}, Lec/e$a;->o(Lec/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1, v1}, Lec/e$a;->y(Ljava/nio/ByteBuffer;LJAVARuntime/CompileErrorListener;)Lec/e$a;

    invoke-virtual {p2}, Lec/e$a;->e()Lec/e;

    move-result-object p1

    invoke-virtual {p2}, Lec/e$a;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public final L()V
    .locals 8

    iget-object v0, p0, Lec/h;->a:Lgc/e;

    invoke-virtual {v0}, Lgc/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lec/h;->o()Loc/b;

    move-result-object v1

    invoke-virtual {p0, v0}, Lec/h;->w(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lec/h;->c:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lec/h;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lec/h;->f:Z

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p0, v1}, Lec/h;->p(Loc/b;)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lec/h;->z(J)Z

    move-result v2

    iget-object v7, p0, Lec/h;->a:Lgc/e;

    invoke-virtual {v7}, Lgc/e;->c()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v2, :cond_3

    iget-object v2, p0, Lec/h;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lec/h;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lec/h;->d:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_3
    invoke-virtual {p0, v0, v1, v4}, Lec/h;->x(Ljava/lang/String;Loc/b;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lec/h;->b:Ljava/lang/String;

    iget-object v0, p0, Lec/h;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lec/h;->x(Ljava/lang/String;Loc/b;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lec/h;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lec/h;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lec/h;->d:Ljava/lang/String;

    :cond_4
    iput-wide v5, p0, Lec/h;->e:J

    iget-object v0, p0, Lec/h;->a:Lgc/e;

    invoke-virtual {v0}, Lgc/e;->n()V

    invoke-virtual {p0, v1}, Lec/h;->e(Loc/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lec/h;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lec/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lec/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lec/h;->g:I

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lec/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lec/h;->g:I

    :cond_6
    :goto_2
    return-void
.end method

.method public final a(Lec/e$a;Lec/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "param"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lec/f;->c()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lec/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v0

    invoke-virtual {p2}, Lec/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v1

    invoke-virtual {p2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lec/f;->c()I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Lec/e$a;->w(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lec/e$a;->v(Lec/f;)V

    :goto_0
    return-void
.end method

.method public final b(Lec/e$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lec/h;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lec/h;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec/f;

    invoke-virtual {p0, p1, v2}, Lec/h;->a(Lec/e$a;Lec/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lec/h;->o()Loc/b;

    move-result-object v1

    iget-wide v2, p0, Lec/h;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Loc/b;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Loc/b;->b()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec/f;

    invoke-virtual {p0, p1, v2}, Lec/h;->a(Lec/e$a;Lec/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "parameterList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lec/f;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lec/f;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "|p:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lec/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lec/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lec/f;->c()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lec/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Lec/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variance"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Lec/i;->e:Lge/d0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LWd/H;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lec/i;->e:Lge/d0;

    new-instance v0, Lec/h$b;

    invoke-direct {v0, p0}, Lec/h$b;-><init>(Lec/h;)V

    invoke-virtual {p1, v0}, Lge/d0;->n9(Lhe/h0;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Loc/b;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneVFXShader"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lec/h;->i:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lec/h;->c(Ljava/lang/StringBuilder;Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Loc/b;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Loc/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lec/h;->c(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lec/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lec/h;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lec/g;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "|s:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lec/g;->d()Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lec/g;->a()Lcom/google/android/filament/filamat/MaterialBuilder$l;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lec/g;->c()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lec/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f(Loc/b;Lec/h$c;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sceneVFXShader",
            "source"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Loc/b;->g()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Loc/b;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p2}, Lec/h;->q(Lec/h$c;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Loc/b;->g()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "materialParams."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Loc/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "--VFX_COUNTER_PARAM--"

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Loc/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "--VFX_POSITION_PARAM--"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vfx_fn_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    const-string v0, "getUserWorldPosition()"

    const-string v1, "getUserWorldPosition(v.worldPosition.xyz)"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lec/b;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lec/h;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/_VULKAN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LW7/b;->f:LC8/a;

    iget-object v1, v1, LC8/a;->a:LD8/a;

    invoke-virtual {v1}, LD8/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/vulkan/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-boolean v0, p0, Lec/h;->m:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lec/h;->e:J

    return-wide v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lec/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Loc/b;
    .locals 1

    iget-boolean v0, p0, Lec/h;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Loc/a;->l()Loc/b;

    move-result-object v0

    return-object v0
.end method

.method public final p(Loc/b;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneVFXShader"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Loc/b;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q(Lec/h$c;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object p1, Lec/h;->y:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "vfx_call_snippet_sub_mat.glsl"

    invoke-static {p1}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lec/h;->y:Ljava/lang/String;

    :cond_0
    sget-object p1, Lec/h;->y:Ljava/lang/String;

    iget-boolean v0, p0, Lec/h;->n:Z

    iget-boolean v1, p0, Lec/h;->o:Z

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/v;->b(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    sget-object p1, Lec/h;->w:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "vfx_call_snippet_vertex.glsl"

    invoke-static {p1}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lec/h;->w:Ljava/lang/String;

    :cond_3
    sget-object p1, Lec/h;->w:Ljava/lang/String;

    return-object p1

    :cond_4
    sget-object p1, Lec/h;->x:Ljava/lang/String;

    if-nez p1, :cond_5

    const-string p1, "vfx_call_snippet_frag.glsl"

    invoke-static {p1}, Loc/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lec/h;->x:Ljava/lang/String;

    :cond_5
    sget-object p1, Lec/h;->x:Ljava/lang/String;

    iget-boolean v0, p0, Lec/h;->n:Z

    iget-boolean v1, p0, Lec/h;->o:Z

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/v;->b(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r(Lec/i;Ljava/lang/String;)Lec/e;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variance",
            "matName"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lec/h;->d(Lec/i;)V

    invoke-virtual {p0}, Lec/h;->L()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lec/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lec/h;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lec/h;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lec/h;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lec/e;

    return-object p1

    :cond_0
    invoke-static {v0}, Lec/h;->n(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lec/h;->A(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, p2}, Lec/h;->K(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lec/e;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lec/h;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1
    sget-object v1, Lec/h;->B:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Lec/h;->k(I)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lec/h;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lec/h;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lec/e;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_3
    invoke-static {v0}, Lec/h;->n(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lec/h;->A(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2, p2}, Lec/h;->K(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lec/e;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lec/h;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v2

    :cond_4
    sget-object v2, Lec/h;->B:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lec/h;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".vsc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_9

    :try_start_1
    invoke-static {v2}, Lec/h;->B(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lec/h;->A(Ljava/nio/ByteBuffer;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_6
    :goto_0
    new-instance v6, Lec/e$a;

    invoke-direct {v6, p2}, Lec/e$a;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lec/h;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lec/e$a;->s(Ljava/lang/String;)Lec/e$a;

    move-result-object v6

    iget-object v7, p0, Lec/h;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lec/e$a;->q(Ljava/lang/String;)Lec/e$a;

    move-result-object v6

    invoke-virtual {p0, v6}, Lec/h;->b(Lec/e$a;)V

    move v7, v4

    :goto_1
    iget-object v8, p0, Lec/h;->j:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    iget-object v8, p0, Lec/h;->j:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lec/g;

    invoke-virtual {v6, v8}, Lec/e$a;->o(Lec/g;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_9

    :try_start_2
    invoke-static {v0, v3}, Lec/h;->g(ILjava/nio/ByteBuffer;)V

    invoke-virtual {p0, v3, p2}, Lec/h;->K(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lec/e;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v6, p0, Lec/h;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3

    :cond_8
    :try_start_4
    sget-object v3, Lec/h;->B:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_3
    new-instance v3, LSb/b;

    invoke-direct {v3}, LSb/b;-><init>()V

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->v(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v3

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v3, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->x(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v3

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$f;->PERFORMANCE:Lcom/google/android/filament/filamat/MaterialBuilder$f;

    invoke-virtual {v3, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->w(Lcom/google/android/filament/filamat/MaterialBuilder$f;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v3

    check-cast v3, LSb/b;

    iget-object v6, p0, Lec/h;->h:Lec/c;

    invoke-interface {v6, v3}, Lec/c;->a(LSb/b;)V

    iget-object v6, p1, Lec/i;->a:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    invoke-virtual {v3, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget v6, p1, Lec/i;->b:F

    invoke-virtual {v3, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->q(F)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget-object v6, p1, Lec/i;->c:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {v3, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->i(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget-boolean v6, p1, Lec/i;->d:Z

    invoke-virtual {v3, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->m(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget-boolean v6, p1, Lec/i;->h:Z

    invoke-virtual {v3, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget-boolean v6, p1, Lec/i;->g:Z

    invoke-virtual {v3, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    iget-object p1, p1, Lec/i;->f:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    if-eqz p1, :cond_a

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$k;->THIN:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    invoke-virtual {v3, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$k;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$j;->SCREEN_SPACE:Lcom/google/android/filament/filamat/MaterialBuilder$j;

    invoke-virtual {v3, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->A(Lcom/google/android/filament/filamat/MaterialBuilder$j;)Lcom/google/android/filament/filamat/MaterialBuilder;

    goto :goto_4

    :cond_a
    sget-object p1, Lcom/google/android/filament/filamat/MaterialBuilder$k;->SOLID:Lcom/google/android/filament/filamat/MaterialBuilder$k;

    invoke-virtual {v3, p1}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$k;)Lcom/google/android/filament/filamat/MaterialBuilder;

    :goto_4
    new-instance p1, Lec/e$a;

    invoke-direct {p1, p2}, Lec/e$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lec/e$a;->x(LSb/b;)Lec/e$a;

    move-result-object p1

    iget-object p2, p0, Lec/h;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lec/e$a;->s(Ljava/lang/String;)Lec/e$a;

    move-result-object p1

    iget-object p2, p0, Lec/h;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lec/e$a;->q(Ljava/lang/String;)Lec/e$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lec/h;->b(Lec/e$a;)V

    :goto_5
    iget-object p2, p0, Lec/h;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_b

    iget-object p2, p0, Lec/h;->j:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lec/g;

    invoke-virtual {p1, p2}, Lec/e$a;->o(Lec/g;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    :try_start_7
    invoke-virtual {p1}, Lec/e$a;->c()Lec/e$a;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p1}, Lec/e$a;->j()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lec/h;->A(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v0, p2}, Lec/h;->g(ILjava/nio/ByteBuffer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {v2, p2}, Lec/h;->G(Ljava/io/File;Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :catch_2
    move-exception p2

    :try_start_a
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_6
    invoke-virtual {p1}, Lec/e$a;->e()Lec/e;

    move-result-object p2

    iget-object v2, p0, Lec/h;->p:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lec/e$a;->b()V

    monitor-exit v1

    return-object p2

    :catch_3
    move-exception p1

    sget-object p2, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_d

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHADER CODE VERTEX:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lec/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nFRAGMENT:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lec/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit v1

    return-object v5

    :goto_7
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p1
.end method

.method public s()Z
    .locals 3

    iget-boolean v0, p0, Lec/h;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lec/h;->o()Loc/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lec/h;->p(Loc/b;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lec/h;->a:Lgc/e;

    invoke-virtual {v2}, Lgc/e;->c()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lec/h;->z(J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public t(Lec/i;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variance"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lec/h;->d(Lec/i;)V

    invoke-virtual {p0}, Lec/h;->L()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lec/i;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lec/h;->g:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Lec/h;->u(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lec/h;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".vsc"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public v(Lec/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variance"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lec/h;->d(Lec/i;)V

    invoke-virtual {p0}, Lec/h;->L()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lec/i;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lec/h;->g:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Lec/h;->u(I)Z

    move-result p1

    return p1
.end method

.method public final w(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "[INSERT_VFX_RUN_CODE]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public final x(Ljava/lang/String;Loc/b;Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "sceneVFXShader",
            "vertex"
        }
    .end annotation

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lec/h;->m:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "[INSERT_VFX_INSTANCE_CODES]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "[INSERT_VFX_RUN_CODE]"

    if-nez v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    const-string v1, ""

    if-eqz p2, :cond_4

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Loc/b;->f()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Loc/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Loc/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v3

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lec/h$c;->VERTEX:Lec/h$c;

    invoke-virtual {p0, p2, p3}, Lec/h;->f(Loc/b;Lec/h$c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lec/h$c;->FRAG:Lec/h$c;

    invoke-virtual {p0, p2, p3}, Lec/h;->f(Loc/b;Lec/h$c;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lec/h$c;->SUBMAT:Lec/h$c;

    invoke-virtual {p0, p2, p3}, Lec/h;->f(Loc/b;Lec/h$c;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "[INSERT_VFX_SUB_RUN_CODE]"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    :goto_2
    return-object p1
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lec/h;->m:Z

    return v0
.end method

.method public final z(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneVFXShaderHash"
        }
    .end annotation

    iget-boolean v0, p0, Lec/h;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lec/h;->e:J

    cmp-long p1, v2, p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
