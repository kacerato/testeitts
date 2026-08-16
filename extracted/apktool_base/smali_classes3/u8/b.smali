.class public Lu8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu8/b$v;,
        Lu8/b$u;
    }
.end annotation


# static fields
.field public static final t:I = 0xe

.field public static final u:Ljava/lang/String; = "b"

.field public static final v:Ljava/lang/String; = "itsmagic-offline-aab"

.field public static final w:Ljava/lang/String; = "offline-aab"


# instance fields
.field public a:Lu8/b$v;

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Lu8/a;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/io/File;

.field public final m:Z

.field public final n:I

.field public final o:Ljava/io/File;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public s:LZ6/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "worldZero"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lu8/b;->b:Z

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lu8/b;->c:Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lu8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lu8/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-static {}, LN7/c;->h0()V

    .line 7
    iput-object p1, p0, Lu8/b;->i:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lu8/b;->j:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lu8/b;->k:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lu8/b;->l:Ljava/io/File;

    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lu8/b;->m:Z

    .line 12
    iput v0, p0, Lu8/b;->n:I

    .line 13
    iput-object v1, p0, Lu8/b;->o:Ljava/io/File;

    .line 14
    iput-object v1, p0, Lu8/b;->p:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lu8/b;->q:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lu8/b;->r:Ljava/lang/String;

    .line 17
    new-instance v0, Lu8/a;

    invoke-direct {v0, p1, v2}, Lu8/a;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lu8/b;->h:Lu8/a;

    .line 18
    new-instance p1, Lu8/b$k;

    invoke-direct {p1, p0}, Lu8/b$k;-><init>(Lu8/b;)V

    const-string v0, "Building project"

    invoke-static {v0, p1}, LZ6/g;->s1(Ljava/lang/String;LZ6/g$c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu8/b$v;)V
    .locals 1
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
            0x0,
            0x0
        }
        names = {
            "worldZero",
            "offlineAppTitle",
            "offlinePackageId",
            "generateVulkanShadersPreCache",
            "offlineBuildType",
            "offlineSigningKeyStore",
            "offlineSigningKeyStorePassword",
            "offlineSigningKeyAlias",
            "offlineSigningKeyPassword",
            "offlineCallback"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lu8/b;->b:Z

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu8/b;->c:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lu8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lu8/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    invoke-static {}, LN7/c;->h0()V

    .line 27
    iput-object p1, p0, Lu8/b;->i:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lu8/b;->j:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lu8/b;->k:Ljava/lang/String;

    .line 30
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/_EDITOR/APP/Settings/Icon/512x.png"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lu8/b;->l:Ljava/io/File;

    .line 31
    iput-boolean p4, p0, Lu8/b;->m:Z

    .line 32
    iput p5, p0, Lu8/b;->n:I

    .line 33
    iput-object p6, p0, Lu8/b;->o:Ljava/io/File;

    .line 34
    iput-object p7, p0, Lu8/b;->p:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lu8/b;->q:Ljava/lang/String;

    .line 36
    iput-object p9, p0, Lu8/b;->r:Ljava/lang/String;

    .line 37
    iput-object p10, p0, Lu8/b;->a:Lu8/b$v;

    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lu8/b;->b:Z

    .line 39
    new-instance p2, Lu8/a;

    invoke-direct {p2, p1, p4}, Lu8/a;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lu8/b;->h:Lu8/a;

    .line 40
    invoke-virtual {p0}, Lu8/b;->X()V

    .line 41
    new-instance p1, Lu8/b$m;

    invoke-direct {p1, p0}, Lu8/b$m;-><init>(Lu8/b;)V

    const-string p2, "Building project"

    invoke-static {p2, p1}, LZ6/g;->s1(Ljava/lang/String;LZ6/g$c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILu8/b$v;)V
    .locals 11
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
            "worldZero",
            "offlineAppTitle",
            "offlinePackageId",
            "generateVulkanShadersPreCache",
            "offlineBuildType",
            "offlineCallback"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v10, p6

    .line 20
    invoke-direct/range {v0 .. v10}, Lu8/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu8/b$v;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLu8/b$v;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "worldZero",
            "offlineAppTitle",
            "offlinePackageId",
            "generateVulkanShadersPreCache",
            "offlineCallback"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 19
    invoke-direct/range {v0 .. v6}, Lu8/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILu8/b$v;)V

    return-void
.end method

.method public static synthetic A(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->V()V

    return-void
.end method

.method public static synthetic B(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->H()V

    return-void
.end method

.method public static synthetic C(Lu8/b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lu8/b;->i0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic D(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->K()V

    return-void
.end method

.method public static synthetic E(Lu8/b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lu8/b;->e0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic F(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->L()V

    return-void
.end method

.method public static Y(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "assetFileName",
            "outFile"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    goto :goto_2

    :cond_1
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p2, 0x1000

    :try_start_2
    new-array p2, p2, [B

    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v1, p0

    move-object p0, p1

    move-object p1, p2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v1, p0

    move-object p0, p1

    move-object p1, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    const/4 p0, 0x1

    return p0

    :catchall_2
    move-exception p1

    move-object p0, v1

    goto :goto_3

    :catch_4
    move-exception p1

    move-object p0, v1

    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_3
    if-eqz p0, :cond_4

    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_4
    return v0

    :catchall_3
    move-exception p1

    :goto_3
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_5
    if-eqz p0, :cond_6

    :try_start_9
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_6
    throw p1
.end method

.method public static synthetic a(Lu8/b;)LZ6/g;
    .locals 0

    iget-object p0, p0, Lu8/b;->s:LZ6/g;

    return-object p0
.end method

.method public static synthetic b(Lu8/b;LZ6/g;)LZ6/g;
    .locals 0

    iput-object p1, p0, Lu8/b;->s:LZ6/g;

    return-object p1
.end method

.method public static synthetic c(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->h0()V

    return-void
.end method

.method public static synthetic d(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->M()V

    return-void
.end method

.method public static synthetic e(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->N()V

    return-void
.end method

.method public static synthetic f(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->O()V

    return-void
.end method

.method public static synthetic g(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->P()V

    return-void
.end method

.method public static synthetic h(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->Q()V

    return-void
.end method

.method public static synthetic i(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->R()V

    return-void
.end method

.method public static synthetic j(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->S()V

    return-void
.end method

.method public static synthetic k(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->T()V

    return-void
.end method

.method public static synthetic l(Lu8/b;)Lu8/a;
    .locals 0

    iget-object p0, p0, Lu8/b;->h:Lu8/a;

    return-object p0
.end method

.method public static synthetic m(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->U()V

    return-void
.end method

.method public static synthetic n(Lu8/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lu8/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic o(Lu8/b;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lu8/b;->g0(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic p(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->G()V

    return-void
.end method

.method public static synthetic q(Lu8/b;)Z
    .locals 0

    invoke-virtual {p0}, Lu8/b;->c0()Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lu8/b;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lu8/b;->a0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lu8/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lu8/b;->j0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t(Lu8/b;)Lu8/b$u;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lu8/b;->f0()Lu8/b$u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lu8/b;)V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->W()V

    return-void
.end method

.method public static synthetic v(Lu8/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu8/b;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic w(Lu8/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu8/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic x(Lu8/b;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lu8/b;->l:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic y(Lu8/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lu8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic z(Lu8/b;)Lu8/b$v;
    .locals 0

    iget-object p0, p0, Lu8/b;->a:Lu8/b$v;

    return-object p0
.end method


# virtual methods
.method public final G()V
    .locals 3

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const-string v1, "14/14 Deleting builder files"

    invoke-virtual {p0, v1}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v1, p0, Lu8/b;->h:Lu8/a;

    new-instance v2, Lu8/b$i;

    invoke-direct {v2, p0}, Lu8/b$i;-><init>(Lu8/b;)V

    invoke-virtual {v1, v2, v0}, Lu8/a;->l(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final H()V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->I()V

    return-void
.end method

.method public final I()V
    .locals 0

    invoke-virtual {p0}, Lu8/b;->J()V

    return-void
.end method

.method public final J()V
    .locals 3

    const-string v0, "3/14 Copy project files"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$q;

    invoke-direct {v1, p0}, Lu8/b$q;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->i(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final K()V
    .locals 3

    const-string v0, "4/14 Deleting unecessary"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$r;

    invoke-direct {v1, p0}, Lu8/b$r;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->q(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final L()V
    .locals 3

    const-string v0, "5/14 Preparing world zero"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$s;

    invoke-direct {v1, p0}, Lu8/b$s;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->x(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final M()V
    .locals 3

    const-string v0, "6/14 Constructing dictionary"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$t;

    invoke-direct {v1, p0}, Lu8/b$t;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->u(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final N()V
    .locals 3

    const-string v0, "7/14 Renaming files"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$a;

    invoke-direct {v1, p0}, Lu8/b$a;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->z(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final O()V
    .locals 3

    const-string v0, "8/14 Renaming usages"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$b;

    invoke-direct {v1, p0}, Lu8/b$b;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->g(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final P()V
    .locals 3

    const-string v0, "8/14 Copying java runtime"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$c;

    invoke-direct {v1, p0}, Lu8/b$c;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->k(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final Q()V
    .locals 3

    const-string v0, "9/14 Building resources"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$d;

    invoke-direct {v1, p0}, Lu8/b$d;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->e(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final R()V
    .locals 3

    const-string v0, "10/14 Deleting Folders"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$e;

    invoke-direct {v1, p0}, Lu8/b$e;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->n(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final S()V
    .locals 3

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const-string v1, "11/14 Deleting unused filed"

    invoke-virtual {p0, v1}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v1, p0, Lu8/b;->h:Lu8/a;

    new-instance v2, Lu8/b$f;

    invoke-direct {v2, p0, v0}, Lu8/b$f;-><init>(Lu8/b;Landroid/content/Context;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lu8/a;->r(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final T()V
    .locals 3

    iget-boolean v0, p0, Lu8/b;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "12/14 Building shaders"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "12/14 Skipping shader pre-cache"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$g;

    invoke-direct {v1, p0}, Lu8/b$g;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->f(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final U()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "13/14 Preparing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu8/b;->a0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$h;

    invoke-direct {v1, p0}, Lu8/b$h;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->h(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final V()V
    .locals 3

    const-string v0, "Deleting builder files"

    invoke-virtual {p0, v0}, Lu8/b;->i0(Ljava/lang/String;)V

    sget-object v0, LW7/b;->g:Lu8/c;

    iget-object v1, v0, Lu8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->localProjectName:Ljava/lang/String;

    iget-object v0, v0, Lu8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    iget-object v1, p0, Lu8/b;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->worldZero:Ljava/lang/String;

    iget-object v0, p0, Lu8/b;->h:Lu8/a;

    new-instance v1, Lu8/b$p;

    invoke-direct {v1, p0}, Lu8/b$p;-><init>(Lu8/b;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu8/a;->l(Lu8/d;Landroid/content/Context;)V

    return-void
.end method

.method public final W()V
    .locals 4

    iget-boolean v0, p0, Lu8/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lu8/b$j;

    invoke-direct {v0, p0}, Lu8/b$j;-><init>(Lu8/b;)V

    const-string v1, "BuilderService-OfflinePackage"

    invoke-virtual {p0, v1, v0}, Lu8/b;->g0(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    sget-object v1, LW7/b;->g:Lu8/c;

    iget-object v2, v1, Lu8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    if-eqz v2, :cond_1

    const-string v2, "Uploading assets"

    const-string v3, "Cloud build"

    invoke-virtual {p0, v2, v3}, Lu8/b;->j0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lu8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    new-instance v3, Lu8/b$l;

    invoke-direct {v3, p0}, Lu8/b$l;-><init>(Lu8/b;)V

    invoke-virtual {v1, v2, v3, v0}, Lu8/c;->e(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;Lu8/d;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lu8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public final X()V
    .locals 4

    iget-object v0, p0, Lu8/b;->o:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lu8/b;->o:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lu8/b;->h:Lu8/a;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lu8/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to resolve AAB signing keystore path"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public Z()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu8/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lu8/b;->d:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lu8/b;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AAB"

    goto :goto_0

    :cond_0
    const-string v0, "APK"

    :goto_0
    return-object v0
.end method

.method public b0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu8/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lu8/b;->e:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c0()Z
    .locals 1

    iget-boolean v0, p0, Lu8/b;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lu8/b;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d0()Z
    .locals 1

    iget-object v0, p0, Lu8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Lu8/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lu8/b;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lu8/b;->e:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lu8/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lu8/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f0()Lu8/b$u;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lu8/b;->o:Ljava/io/File;

    if-eqz v1, :cond_0

    new-instance v6, Lu8/b$u;

    iget-object v2, p0, Lu8/b;->p:Ljava/lang/String;

    iget-object v3, p0, Lu8/b;->q:Ljava/lang/String;

    iget-object v4, p0, Lu8/b;->r:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lu8/b$u;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu8/b$k;)V

    return-object v6

    :cond_0
    new-instance v8, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/_EDITOR/APP/Settings/Signing/offline-aab-signing.p12"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "offline-aab"

    const-string v1, "itsmagic-offline-aab"

    invoke-static {v8, v1, v0, v1}, Lw3/d;->i(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lu8/b$u;

    const-string v11, "itsmagic-offline-aab"

    const/4 v12, 0x0

    const-string v9, "itsmagic-offline-aab"

    const-string v10, "offline-aab"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lu8/b$u;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu8/b$k;)V

    return-object v0
.end method

.method public final g0(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "threadName",
            "runnable"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final h0()V
    .locals 2

    new-instance v0, Lob/b;

    new-instance v1, Lu8/b$n;

    invoke-direct {v1, p0}, Lu8/b$n;-><init>(Lu8/b;)V

    invoke-direct {v0, v1}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    new-instance v0, Lu8/b$o;

    invoke-direct {v0, p0}, Lu8/b$o;-><init>(Lu8/b;)V

    const-string v1, "BuilderService-Start"

    invoke-virtual {p0, v1, v0}, Lu8/b;->g0(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Lu8/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lu8/b;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lu8/b;->e:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "sub"
        }
    .end annotation

    iget-object v0, p0, Lu8/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lu8/b;->d:Ljava/lang/String;

    iput-object p2, p0, Lu8/b;->e:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
