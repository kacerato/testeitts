.class public Ld8/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/j$z;,
        Ld8/j$v;,
        Ld8/j$y;,
        Ld8/j$w;,
        Ld8/j$x;
    }
.end annotation


# static fields
.field public static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static B:Z = false

.field public static C:Ljava/lang/String; = null

.field public static final D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static E:Ljava/lang/String; = null

.field public static final F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static a:Z = false

.field public static b:Z = false

.field public static c:Z = false

.field public static d:Z = false

.field public static final e:Ljava/lang/String; = "C-R:"

.field public static final f:I = 0x64

.field public static final g:Ljava/lang/String; = "1.8"

.field public static final h:Ljava/lang/String; = "1.8"

.field public static i:Ljava/lang/String; = null

.field public static final j:Lq8/a;

.field public static final k:Ljava/lang/String; = "JCompiler"

.field public static final l:Ljava/lang/String; = "JAVARuntime"

.field public static final m:Ljava/lang/String; = "JAVARuntime"

.field public static final n:Ljava/lang/String; = "jc.javac"

.field public static final o:Ljava/lang/String; = "jpc.javac"

.field public static final p:Ljava/lang/String; = "_LIBS"

.field public static q:Lcom/itsmagic/engine/Core/Components/JCompiler/CompiledDictionary;

.field public static final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld8/r;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld8/j$y;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-boolean v1, Ld8/j;->a:Z

    sput-boolean v1, Ld8/j;->b:Z

    sput-boolean v1, Ld8/j;->c:Z

    sput-boolean v1, Ld8/j;->d:Z

    :cond_0
    new-instance v0, Lq8/a;

    invoke-direct {v0}, Lq8/a;-><init>()V

    sput-object v0, Ld8/j;->j:Lq8/a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld8/j;->r:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld8/j;->s:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Ld8/j;->t:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Ld8/j;->u:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Ld8/j;->v:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ld8/j;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Ld8/j;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Ld8/j;->y:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Ld8/j;->z:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Ld8/j;->A:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Ld8/j;->C:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ld8/j;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ld8/j;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "PROJECT_ROOT"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "JAVARuntime"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public static A0(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Ld8/j;->j:Lq8/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lq8/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JAVARuntime/jlibs.config"

    invoke-static {v1, v0, p0}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    :cond_0
    return-void
.end method

.method public static B(Ld8/j$w;Ljava/lang/String;Ljava/lang/String;Ld8/j$x;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "language",
            "className",
            "code",
            "listener"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "/./"

    const-string v4, "JAVARuntime"

    const-string v5, "/"

    sget-object v6, Ld8/j;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Ld8/j;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6}, Ld8/j;->A(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Debug Compiling "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ld8/j;->h0(Ljava/lang/String;)V

    sget-object v9, Ld8/j$w;->JAVA:Ld8/j$w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, ".java"

    const/4 v11, 0x0

    if-ne v0, v9, :cond_0

    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    :goto_0
    move-object v9, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    sget-object v9, Ld8/j$w;->CSHARP:Ld8/j$w;

    if-ne v0, v9, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    new-instance v9, Lt8/b;

    invoke-direct {v9, v2}, Lt8/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lt8/b;->a()V

    invoke-virtual {v9}, Lt8/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-static {v2, v0}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    move-object v2, v11

    move-object v9, v2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "./"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lk8/c;

    invoke-static {v1, v8}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lk8/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LIc/o;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lk8/c;->i(Ljava/lang/String;)V

    new-instance v6, Ld8/g;

    invoke-direct {v6}, Ld8/g;-><init>()V

    invoke-virtual {v6, v4}, Ld8/g;->b(Lk8/c;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package JAVARuntime;\n\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lk8/c;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lk8/c;->i(Ljava/lang/String;)V

    invoke-virtual {v4}, Lk8/c;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, LIc/o;->a(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v4}, Lk8/c;->d()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-static {v11, v1, v13}, Lk8/b;->f(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LIc/o;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Ld8/j$t;

    invoke-direct {v0, v3}, Ld8/j$t;-><init>(Ljava/util/List;)V

    const-string v4, "instantiating the compiler and compiling the java file"

    invoke-static {v4}, Ld8/j;->h0(Ljava/lang/String;)V

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/batch/Main;

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v4, v5, v6, v7, v11}, Lorg/eclipse/jdt/internal/compiler/batch/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v10, "-1.8"

    const-string v11, "-proc:none"

    const-string v12, "-classpath"

    const-string v14, "-maxProblems"

    const-string v15, "100"

    const-string v16, "-noExit"

    move-object/from16 v17, v1

    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compile([Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ecjMain.compile result "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld8/j;->h0(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_6

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v1, Ld8/j;->a:Z

    if-eqz v1, :cond_3

    invoke-static {v0}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_3
    :goto_5
    move v0, v7

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v1, Ld8/j;->a:Z

    if-eqz v1, :cond_3

    invoke-static {v0}, LJAVARuntime/Terminal;->log(Ljava/lang/Error;)V

    goto :goto_5

    :goto_7
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    invoke-static {v3}, Ld8/j;->L(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v3, p3

    invoke-interface {v3, v0, v1, v2}, Ld8/j$x;->b(ZLjava/util/List;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sget-object v0, Ld8/j;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_9

    :goto_8
    sget-object v1, Ld8/j;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_4
    move-object/from16 v3, p3

    invoke-interface/range {p3 .. p3}, Ld8/j$x;->a()V

    goto :goto_9

    :cond_5
    move-object/from16 v3, p3

    invoke-interface/range {p3 .. p3}, Ld8/j$x;->a()V

    :goto_9
    return-void
.end method

.method public static B0()V
    .locals 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_EDITOR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JAVARuntime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ld8/j;->N(Ljava/io/File;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static C(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metaFolder"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jpc.javac"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "JAVARuntime"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lz8/a;->d(Ljava/io/File;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static C0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Ld8/j;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static D(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metaFolder"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jc.javac"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "JAVARuntime"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lz8/a;->d(Ljava/io/File;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javaMetaInfo"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->h:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static E(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "classType"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v1

    iget-object v2, v1, Ld8/r;->c:Ljava/lang/Class;

    if-ne v2, p0, :cond_0

    iget-object p0, v1, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object p0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static E0(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ".java"

    const-string v1, ")"

    const-string v2, "("

    const-string v3, ":"

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v5, Ld8/j$a;

    invoke-direct {v5, v4}, Ld8/j$a;-><init>(Ljava/util/List;)V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-class p0, Ld8/m;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-class v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".execute"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "at "

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v12

    sget-object v13, LW7/b;->j:Ld8/j;

    invoke-static {v11}, Ld8/j;->J(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const-string v10, "JAVARuntime."

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_2
    return-object v6
.end method

.method public static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v1

    iget-object v2, v1, Ld8/r;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object p0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static F0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Lo8/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "className",
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v1

    iget-object v2, v1, Ld8/r;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ld8/r;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ld8/j$d;

    invoke-direct {p1, p2}, Ld8/j$d;-><init>(Lo8/a;)V

    invoke-virtual {v1, p1}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const-class p2, LJAVARuntime/Component;

    if-eq p1, p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    check-cast p1, LJAVARuntime/Component;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    iget-object v0, v1, Ld8/r;->c:Ljava/lang/Class;

    iget-object v1, v1, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-direct {p2, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;-><init>(LJAVARuntime/Component;Ljava/lang/Class;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    iput-object p0, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    new-instance p0, Lbd/a;

    const-string p1, "Java class doesn\'t extends Component"

    const-string v0, "Classe Java precisa extender Component"

    invoke-direct {p0, p1, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lo8/a;->onError(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    new-instance p0, Lbd/a;

    const-string p1, "Script not found, check that the script compiled without errors. When it is compiled it will appear here, it is not necessary to remove and put it again!\nThe settings of the variables are still saved."

    const-string v0, "Script n\u00e3o encontrado, verifique se o script compilou sem erros. Quando ele for compilado ir\u00e1 aparecer aqui, n\u00e3o \u00e9 necessario remover e colocar novamente!\nAs configura\u00e7\u00f5es das variaveis continuam salvas."

    invoke-direct {p0, p1, v0}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lo8/a;->onError(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    if-eqz p2, :cond_6

    const-string p0, "Null gameObject"

    invoke-interface {p2, p0}, Lo8/a;->onError(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static G()V
    .locals 10

    const/4 v0, 0x0

    invoke-static {v0}, Ld8/j;->C0(Z)V

    new-instance v1, Ld8/s;

    invoke-direct {v1}, Ld8/s;-><init>()V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->i(LLb/c;)V

    sget-object v1, Ld8/j;->v:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move v3, v0

    :goto_0
    sget-object v4, Ld8/j;->v:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld8/j$y;

    invoke-virtual {v4}, Ld8/j$y;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ld8/j$y;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    move v6, v0

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "onCompilerFinish"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    :try_start_1
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v7

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v4, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v2, Ld8/j;->y:Ljava/util/List;

    monitor-enter v2

    :goto_5
    :try_start_3
    sget-object v1, Ld8/j;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_4
    monitor-exit v2

    return-void

    :goto_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :goto_7
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static G0(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    invoke-static {p0}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Ld8/r;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Ld8/r;->c:Ljava/lang/Class;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static H()V
    .locals 3

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Compiler finished"

    invoke-static {v1}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-static {v0}, Ld8/j;->g0(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ld8/j;->C0(Z)V

    sget-object v1, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-boolean v2, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    if-nez v2, :cond_0

    const-string v1, "Failed"

    sput-object v1, Ld8/j;->C:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "Success"

    sput-object v1, Ld8/j;->C:Ljava/lang/String;

    :goto_0
    sget-object v1, Ld8/j;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->n0(Landroid/app/Activity;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "RESTARTING PROJECT DUE FAILS"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static H0(Ljava/lang/String;Lo8/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Ld8/r;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ld8/r;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ld8/j$b;

    invoke-direct {p0, p1}, Ld8/j$b;-><init>(Lo8/g;)V

    invoke-virtual {v1, p0}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, v1, Ld8/r;->c:Ljava/lang/Class;

    const-class v2, LJAVARuntime/Component;

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, LJAVARuntime/Component;

    iget-object v0, v1, Ld8/r;->c:Ljava/lang/Class;

    iget-object v1, v1, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-interface {p1, p0, v0, v1}, Lo8/g;->a(LJAVARuntime/Component;Ljava/lang/Class;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p0, Lbd/a;

    const-string v0, "Java class doesn\'t extends Component"

    const-string v1, "Classe Java precisa extender Component"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lo8/g;->onError(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    new-instance p0, Lbd/a;

    const-string v0, "Script not found, check that the script compiled without errors. When it is compiled it will appear here, it is not necessary to remove and put it again!\nThe settings of the variables are still saved."

    const-string v1, "Script n\u00e3o encontrado, verifique se o script compilou sem erros. Quando ele for compilado ir\u00e1 aparecer aqui, n\u00e3o \u00e9 necessario remover e colocar novamente!\nAs configura\u00e7\u00f5es das variaveis continuam salvas."

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lo8/g;->onError(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static I()V
    .locals 3

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    const-string v0, "Compiler finished"

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ld8/j;->C0(Z)V

    const-string v1, "Failed"

    sput-object v1, Ld8/j;->C:Ljava/lang/String;

    invoke-static {}, Ld8/j;->G()V

    sget-object v1, Ld8/j;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->n0(Landroid/app/Activity;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "RESTARTING PROJECT DUE FAILS"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static I0(Ljava/lang/String;Lo8/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Ld8/r;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ld8/r;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ld8/j$c;

    invoke-direct {p0, p1}, Ld8/j$c;-><init>(Lo8/h;)V

    invoke-virtual {v1, p0}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, v1, Ld8/r;->c:Ljava/lang/Class;

    const-class v2, LJAVARuntime/ViewPanel;

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, LJAVARuntime/ViewPanel;

    iget-object v0, v1, Ld8/r;->c:Ljava/lang/Class;

    iget-object v1, v1, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-interface {p1, p0, v0, v1}, Lo8/h;->a(LJAVARuntime/ViewPanel;Ljava/lang/Class;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p0, Lbd/a;

    const-string v0, "Java class doesn\'t extends ViewPanel"

    const-string v1, "Classe Java precisa extender ViewPanel"

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lo8/h;->onError(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    new-instance p0, Lbd/a;

    const-string v0, "Script not found, check that the script compiled without errors. When it is compiled it will appear here, it is not necessary to remove and put it again!\nThe settings of the variables are still saved."

    const-string v1, "Script n\u00e3o encontrado, verifique se o script compilou sem erros. Quando ele for compilado ir\u00e1 aparecer aqui, n\u00e3o \u00e9 necessario remover e colocar novamente!\nAs configura\u00e7\u00f5es das variaveis continuam salvas."

    invoke-direct {p0, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lo8/h;->onError(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static J(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "JAVARuntime."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name can`t be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static J0(I)Ld8/r;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    sget-object v0, Ld8/j;->u:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld8/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static K(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string v0, "JAVARuntime."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v0, Ld8/j;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld8/r;

    iget-object v2, v1, Ld8/r;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, v1, Ld8/r;->c:Ljava/lang/Class;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static K0()I
    .locals 2

    sget-object v0, Ld8/j;->u:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static L(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringOutputs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ld8/e;",
            ">;"
        }
    .end annotation

    const-string v0, "are only available if source level is 1.5 or greater"

    const-string v1, ""

    const-string v2, "\n"

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    move-object v5, v4

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v5, :cond_3

    :try_start_0
    const-string v7, ". WARNING in "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v6, Lt8/g;

    invoke-direct {v6}, Lt8/g;-><init>()V

    :goto_2
    move-object v5, v6

    goto :goto_1

    :catch_0
    move-exception v6

    goto/16 :goto_6

    :cond_2
    const-string v7, ". ERROR in "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lt8/d;

    invoke-direct {v6}, Lt8/d;-><init>()V

    goto :goto_2

    :cond_3
    const-string v7, " (at line"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, " (at line "

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, LNc/b;->x1(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ld8/e;->f(I)V

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v9, v8

    :goto_3
    array-length v10, v6

    if-ge v9, v10, :cond_7

    aget-object v10, v6, v9

    array-length v11, v6

    sub-int/2addr v11, v8

    if-ge v9, v11, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v8, :cond_4

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    invoke-virtual {v10, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v8, :cond_6

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ld8/e;->g(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v7, "Syntax error, parameterized types are only available if source level is 1.5 or greater"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v6, v5, Ld8/e;->a:Ljava/lang/String;

    const-string v7, "SteppedArrayList<"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "Use of <> with SteppedArrayList is not supported yet, you can fix it by using non-typed: SteppedArrayList variableName"

    goto :goto_5

    :cond_9
    iget-object v6, v5, Ld8/e;->a:Ljava/lang/String;

    const-string v7, "List<"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "Use of <> with List is not supported yet, you can fix it by using non-typed: List variableName"

    goto :goto_5

    :cond_a
    const-string v6, "Use of <> is not support yet, is not necessary in this case, remove <>"

    goto :goto_5

    :cond_b
    const-string v7, "Syntax error, annotations are only available if source level is 1.5 or greater"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v6, "annotations is not supported yet."

    goto :goto_5

    :cond_c
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "are not supported yet."

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :cond_d
    :goto_5
    invoke-virtual {v5, v6}, Ld8/e;->e(Ljava/lang/String;)V

    const-string v7, "The serializable class Controller does not declare a static final serialVersionUID field of type long"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_e

    move-object v5, v4

    :cond_e
    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v7, Ld8/j;->a:Z

    if-eqz v7, :cond_0

    invoke-static {v6}, LJ4/d;->V1(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :goto_6
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v7, Ld8/j;->a:Z

    if-eqz v7, :cond_1

    invoke-static {v6}, LJ4/d;->V1(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_f
    return-object v3
.end method

.method public static M()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld8/o;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-static {v3}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ld8/r;->e()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ld8/j$e;

    invoke-direct {v5}, Ld8/j$e;-><init>()V

    invoke-virtual {v4, v5}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ld8/r;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v5

    check-cast v6, LJAVARuntime/Component;

    invoke-virtual {v6}, LJAVARuntime/Component;->getComponentMenu()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, ""

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    :cond_0
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Ld8/r;->b:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string v7, "//"

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v4, v4, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->originalFileName:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ld8/o;

    check-cast v5, LJAVARuntime/Component;

    invoke-virtual {v5}, LJAVARuntime/Component;->getComponentColor()LJAVARuntime/Color;

    move-result-object v5

    invoke-direct {v7, v6, v5, v4}, Ld8/o;-><init>(Ljava/lang/String;LJAVARuntime/Color;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v1
.end method

.method public static N(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1}, Ld8/j;->N(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".java"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LIc/l;->d([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ld8/j;->j(Ljava/io/File;)Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    :cond_1
    return-void
.end method

.method public static O(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".meta/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/io/File;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runtimeFolder"
        }
    .end annotation

    new-instance v0, Ld8/i;

    invoke-direct {v0}, Ld8/i;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rj_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->setReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set readonly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static Q()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld8/q;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-static {v3}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ld8/r;->i()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ld8/j$f;

    invoke-direct {v5, v4}, Ld8/j$f;-><init>(Ld8/r;)V

    invoke-virtual {v4, v5}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    invoke-virtual {v4}, Ld8/r;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ""

    iget-object v6, v4, Ld8/r;->c:Ljava/lang/Class;

    const-class v7, LJAVARuntime/PanelInflateMenu;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, LJAVARuntime/PanelInflateMenu;

    if-eqz v6, :cond_0

    invoke-interface {v6}, LJAVARuntime/PanelInflateMenu;->value()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Ld8/r;->b:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string v6, "//"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v4, v4, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->originalFileName:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ld8/q;

    invoke-direct {v6, v5, v4}, Ld8/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static R()Z
    .locals 2

    sget-object v0, Ld8/j;->u:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static S(Ldalvik/system/DexClassLoader;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "javaMetaInfo",
            "classFile"
        }
    .end annotation

    const-string v0, "instantiating DexClassLoader and loading class"

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAVARuntime."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Ld8/r;

    invoke-direct {v1, p1, p2, p0}, Ld8/r;-><init>(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object p0, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->p:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ld8/j;->n(Ld8/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while instantiating class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v1, Ld8/j;->a:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, LJ4/d;->V1(Ljava/lang/Throwable;)V

    :cond_0
    iput-boolean v0, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iget-object v2, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Ld8/e;

    invoke-direct {v2, v1}, Ld8/e;-><init>(Z)V

    invoke-static {p0}, Ld8/j;->E0(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    const-string v3, ""

    iput-object v3, v2, Ld8/e;->a:Ljava/lang/String;

    iput v0, v2, Ld8/e;->c:I

    move v4, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "java.lang.VMClassLoader"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    const-string v6, "(declaration of"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    const-string v6, "LJAVARuntime/"

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.LinkageError: "

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Ld8/e;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Ld8/e;->a:Ljava/lang/String;

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const-string p0, "Failed to initialize class after compilation"

    iput-object p0, v2, Ld8/e;->b:Ljava/lang/String;

    iget-object p0, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_3
    return v0
.end method

.method public static T(Ldalvik/system/DexClassLoader;)I
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cl"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    sget-object v5, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v6, v5, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const-string v8, "_PROJECT/Scripts/_JContainer.java"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    return v1

    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v6, v5, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b:Ljava/lang/String;

    invoke-direct {v4, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_f

    array-length v4, v3

    move v6, v1

    move v8, v6

    :goto_2
    if-ge v6, v4, :cond_e

    aget-object v9, v3, v6

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".class"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    const-string v11, ".dex"

    const-string v12, ".meta/"

    const-string v13, "$"

    const-string v14, ""

    const-string v15, "_JContainer$"

    const/4 v7, 0x1

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_3
    move v7, v1

    :goto_3
    sget-object v1, Ld8/j;->r:Ljava/util/List;

    move-object/from16 v17, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_5

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v3, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    move-object/from16 v18, v1

    const/4 v1, 0x1

    invoke-static {v3, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, v18

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_7

    sget-object v3, Ld8/j;->A:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v5, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->compiledCode:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f()Ljava/io/File;

    move-result-object v7

    invoke-static {v3, v7}, LIc/o;->f([Ljava/lang/String;Ljava/io/File;)V

    :cond_6
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-static {v10}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v3}, Lid/a;->a(Ljava/io/File;Ljava/io/File;)Z

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->c:Ljava/util/List;

    new-instance v3, Ld8/d;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move/from16 v19, v4

    invoke-static/range {v18 .. v18}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Ld8/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    :goto_5
    move/from16 v19, v4

    goto :goto_6

    :cond_8
    move-object/from16 v17, v3

    goto :goto_5

    :goto_6
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Scripts/_JContainer.meta/_JContainer.dex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Ld8/j;->S(Ldalvik/system/DexClassLoader;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v8, v1

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_a
    const/4 v3, 0x1

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_b
    move-object v3, v1

    :goto_7
    const/4 v4, 0x0

    :goto_8
    sget-object v7, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_d

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v10, v7, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v10, v11}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_d
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_9

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-static {v10}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v3}, Lid/a;->a(Ljava/io/File;Ljava/io/File;)Z

    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    invoke-static {v0, v7, v1}, Ld8/j;->S(Ldalvik/system/DexClassLoader;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v8, v1

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move v1, v3

    move-object/from16 v3, v17

    move/from16 v4, v19

    goto/16 :goto_2

    :cond_e
    move v1, v8

    goto :goto_b

    :cond_f
    move v3, v1

    move v1, v3

    :goto_b
    return v1
.end method

.method public static U(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Ld8/j;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    if-nez v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_1
    if-nez v2, :cond_b

    invoke-static {v1}, Ld8/j;->C0(Z)V

    const-string v0, "Building"

    sput-object v0, Ld8/j;->C:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    iget-boolean v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==========================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld8/j;->h0(Ljava/lang/String;)V

    sget-object v1, Ld8/j;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ld8/j;->t(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    iget-boolean v3, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->j:Z

    if-nez v3, :cond_6

    iget-boolean v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->k:Lo8/f;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lo8/f;->b()V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " compile errors, scheduling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld8/j;->h0(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->k:Lo8/f;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lo8/f;->a()V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " compile success"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld8/j;->h0(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-static {p0}, Ld8/j;->U(Landroid/content/Context;)V

    goto :goto_6

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    :try_start_0
    iget-boolean v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    if-eqz v0, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_8
    :goto_4
    sget-object v0, Ld8/j;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_9

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    goto/16 :goto_1

    :cond_9
    invoke-static {p0}, Ld8/j;->U(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v1, Ld8/j;->a:Z

    if-eqz v1, :cond_a

    invoke-static {v0}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_a
    invoke-static {p0}, Ld8/j;->g0(Landroid/content/Context;)V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compiler stopped with pending scripts "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ld8/j;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-static {p0}, Ld8/j;->g0(Landroid/content/Context;)V

    const-string p0, "Failed"

    sput-object p0, Ld8/j;->C:Ljava/lang/String;

    sget-object p0, Ld8/j;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Ld8/j;->n0(Landroid/app/Activity;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "RESTARTING PROJECT DUE FAILS"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    invoke-static {}, Ld8/j;->H()V

    :cond_d
    :goto_6
    return-void
.end method

.method public static V()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    :try_start_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static W()Z
    .locals 1

    sget-object v0, Ld8/j;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static X(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ld8/j;->Y(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static Y(Ljava/lang/String;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "caseSensitive"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "temp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move v1, v0

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-static {v1}, Ld8/j;->j0(I)Le8/c;

    move-result-object v3

    if-eqz p1, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Le8/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Le8/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static Z(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ld8/j;->a0(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Ld8/j;->b0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a0(Ljava/lang/String;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "caseSensitive"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "temp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move v1, v0

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-static {v1}, Ld8/j;->j0(I)Le8/c;

    move-result-object v3

    if-eqz p1, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Le8/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Le8/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    invoke-static {}, Ld8/j;->K0()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-static {v1}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v3

    if-eqz p1, :cond_4

    iget-object v3, v3, Ld8/r;->b:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_4
    iget-object v3, v3, Ld8/r;->b:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JAVARuntime."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    return v0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Ld8/j;->u:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".dex"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Ld8/j;->q(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static c0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/io/File;Ljava/io/File;Lk8/c;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "javaMetaInfo",
            "metaFolder",
            "preCompiledFile",
            "javaCode"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    array-length v2, v0

    if-lez v2, :cond_4

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v1

    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".dex"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    iget-object p0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, ""

    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v2, "jc.javac"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, LX7/a;->z(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    :try_start_0
    invoke-static {p2}, LIc/o;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lk8/c;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return v1
.end method

.method public static synthetic d(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Ld8/j;->p(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static d0(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "JAVARuntime/jlibs.config"

    invoke-static {v0, p0}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ld8/j;->j:Lq8/a;

    invoke-virtual {v0, p0}, Lq8/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e()Z
    .locals 1

    invoke-static {}, Ld8/j;->e0()Z

    move-result v0

    return v0
.end method

.method public static e0()Z
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/a;->p(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic f(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Ld8/j;->U(Landroid/content/Context;)V

    return-void
.end method

.method public static f0(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    :goto_0
    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v1, Ld8/j;->a:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v1, Ld8/j;->a:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_1
    :goto_3
    return-object v0
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Ld8/j;->I()V

    return-void
.end method

.method public static g0(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "Preparing ambient"

    sput-object v0, Ld8/j;->C:Ljava/lang/String;

    invoke-static {}, Ld8/k;->b()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Importing libs"

    sput-object v0, Ld8/j;->C:Ljava/lang/String;

    invoke-static {}, Ld8/k;->i()V

    :cond_0
    const-string v0, "Loading classes"

    sput-object v0, Ld8/j;->C:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ld8/j;->s0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string v0, "Cleaning ambient"

    sput-object v0, Ld8/j;->C:Ljava/lang/String;

    invoke-static {}, Ld8/k;->f()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Saving libs"

    sput-object v0, Ld8/j;->C:Ljava/lang/String;

    invoke-static {p0}, Ld8/j;->A0(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Ld8/j;->u0()V

    invoke-static {}, Ld8/j;->G()V

    const/4 p0, 0x0

    :goto_1
    sget-object v0, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_5

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->referencesUpdatedV2:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->referencesUpdatedV2:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    new-instance v2, Ljava/io/File;

    const-string v3, "jc.javac"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, LX7/a;->z(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1, v0}, Ld8/a;->a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    :cond_3
    iget-object v1, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->m:Ljava/io/File;

    if-eqz v1, :cond_4

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LX7/a;->h(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public static synthetic h()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Ld8/j;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static h0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    sget-boolean v0, Ld8/j;->a:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Ld8/j;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JCompiler:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "JCompiler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic i()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Ld8/j;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static i0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string v0, "JAVARuntime."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v0, Ld8/j;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld8/r;

    iget-object v2, v1, Ld8/r;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Ld8/j$u;

    invoke-direct {p0}, Ld8/j$u;-><init>()V

    invoke-virtual {v1, p0}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Ljava/io/File;)Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "/"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".java"

    invoke-static {v2, v3}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v6, v5, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_2
    invoke-static {p0}, Ld8/j;->O(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "jmi.config"

    if-eqz v6, :cond_3

    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, LX7/a;->x(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v8, :cond_3

    :try_start_2
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v8

    const-class v9, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-virtual {v8, v6, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    :try_start_3
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FAILED JSON:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v8, v3

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v8, :cond_4

    new-instance v8, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-direct {v8}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, v2, v0, p0}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, v2, v0, p0}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, v8, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->m:Ljava/io/File;

    sget-object p0, Ld8/j;->s:Ljava/util/List;

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Ld8/j;->r:Ljava/util/List;

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    iput-boolean p0, v8, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java found "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " meta "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld8/j;->h0(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v8

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method public static j0(I)Le8/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    sget-object v0, Ld8/j;->t:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le8/c;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static k(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    sget-object v0, Ld8/j;->y:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static k0()I
    .locals 2

    sget-object v0, Ld8/j;->t:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static l(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onCompilerFinish"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    invoke-static {p0}, Ld8/j;->u(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ld8/j;->v:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ld8/j$y;

    invoke-direct {v1, p0}, Ld8/j$y;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "the listener object should have a \"onCompilerFinish\" public method"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l0()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v2

    iget-object v3, v2, Ld8/r;->c:Ljava/lang/Class;

    iget-object v2, v2, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->j(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, LJAVARuntime/SpatialObject;

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, LJAVARuntime/Component;

    if-ne v5, v6, :cond_1

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_3

    :cond_0
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static m(Le8/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "officialClass"
        }
    .end annotation

    sget-object v0, Ld8/j;->t:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static n(Ld8/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadedClass"
        }
    .end annotation

    sget-object v0, Ld8/j;->u:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ld8/r;->a()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld8/r;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ld8/r;->a()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ld8/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ld8/r;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    sget-object v1, Ld8/j;->u:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static n0(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ld8/j;->i:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Ld8/j;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ld8/j$l;

    invoke-direct {v0, p0}, Ld8/j$l;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    sget-object v0, Ld8/j;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lob/b;

    new-instance v1, Ld8/j$o;

    invoke-direct {v1, p0}, Ld8/j$o;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static o(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lr8/a;Lk8/c;Ljava/io/File;)Z
    .locals 3
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
            "javaMetaInfo",
            "metaFolder",
            "PROJECT_ROOT",
            "RUNTIME_FOLDER",
            "projectRoot",
            "totalCode",
            "javaCode",
            "preCompiledFile"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "R"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static/range {p0 .. p6}, Ld8/j;->o0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lr8/a;Lk8/c;)Ld8/j$z;

    move-result-object p1

    iget-boolean p1, p1, Ld8/j$z;->a:Z

    if-nez p1, :cond_1

    invoke-static {p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    return v1

    :cond_0
    :try_start_0
    invoke-static {p7}, LIc/o;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Lk8/c;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static o0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lr8/a;Lk8/c;)Ld8/j$z;
    .locals 1
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
            "javaMetaInfo",
            "metaFolder",
            "PROJECT_ROOT",
            "RUNTIME_FOLDER",
            "projectRoot",
            "totalCode",
            "javaCode"
        }
    .end annotation

    new-instance p5, Ld8/j$z;

    invoke-direct {p5}, Ld8/j$z;-><init>()V

    invoke-static {p1}, Ld8/j;->D(Ljava/io/File;)V

    invoke-static {p0, p2, p3, p4}, Ld8/j;->p0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ld8/j$v;

    move-result-object p1

    iget-object p2, p1, Ld8/j$v;->a:Ljava/io/File;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    invoke-static {p2}, LIc/o;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Lk8/c;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    new-instance p3, Ld8/g;

    invoke-direct {p3}, Ld8/g;-><init>()V

    invoke-virtual {p3, p6}, Ld8/g;->b(Lk8/c;)V

    invoke-static {p0, p6}, Li8/b;->c(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Lk8/c;)V

    invoke-static {p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p5

    :cond_0
    invoke-virtual {p6}, Lk8/c;->d()Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Ld8/j$v;->b:Ljava/io/File;

    invoke-static {p3, p1}, LIc/o;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean p4, p5, Ld8/j$z;->a:Z

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to pre compile: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld8/j;->h0(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    iput-boolean p4, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iput-boolean v0, p5, Ld8/j$z;->a:Z

    return-object p5

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "runtime file not found: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld8/j;->h0(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    iput-boolean p4, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iput-boolean v0, p5, Ld8/j$z;->a:Z

    :cond_2
    :goto_0
    return-object p5
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {v1}, Ld8/j;->C0(Z)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v0

    const-string v2, "/_PROJECT/Scripts/_JContainer.meta/"

    const-string v3, "/_PROJECT/Scripts/_JContainer.java"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lz8/a;->d(Ljava/io/File;)Z

    return v4

    :cond_0
    const-string v0, "Building container"

    sput-object v0, Ld8/j;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "JAVARuntime"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14}, Ld8/j;->A(Ljava/lang/String;)V

    new-instance v13, Lr8/a;

    invoke-direct {v13}, Lr8/a;-><init>()V

    const-string v0, "package JAVARuntime;\n"

    invoke-virtual {v13, v0}, Lr8/a;->a(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v13, v12}, Lr8/a;->a(Ljava/lang/String;)V

    const-string v0, "public class _JContainer{}\n"

    invoke-virtual {v13, v0}, Lr8/a;->a(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Lr8/a;->a(Ljava/lang/String;)V

    sget-object v0, Ld8/j;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Ld8/j;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move v8, v4

    move/from16 v16, v8

    move/from16 v17, v16

    move/from16 v18, v17

    :goto_0
    sget-object v0, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, ".class"

    if-ge v8, v6, :cond_13

    :try_start_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    iget-object v0, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "R"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move/from16 v19, v8

    move-object v5, v9

    move-object/from16 v22, v10

    move-object/from16 v20, v11

    move-object v3, v13

    move-object/from16 v24, v14

    move-object v14, v12

    goto/16 :goto_9

    :cond_1
    iget-object v0, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "_JContainer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    new-instance v4, Ljava/io/File;

    iget-object v7, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b:Ljava/lang/String;

    invoke-direct {v4, v15, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v7, Ld8/e;

    invoke-direct {v7, v1}, Ld8/e;-><init>(Z)V

    const/4 v1, 0x0

    iput v1, v7, Ld8/e;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v8

    const-string v8, "Duplicate class name\nFile path: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v11

    iget-object v11, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\nOther file path: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v12

    iget-object v12, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Ld8/e;->a:Ljava/lang/String;

    const-string v1, "Duplicate class name"

    iput-object v1, v7, Ld8/e;->b:Ljava/lang/String;

    iget-object v12, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    iget-object v12, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iput-boolean v7, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    iput-boolean v7, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->h:Z

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ld8/j;->D(Ljava/io/File;)V

    new-instance v4, Ljava/io/File;

    iget-object v7, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b:Ljava/lang/String;

    invoke-direct {v4, v15, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_5
    new-instance v7, Ld8/e;

    const/4 v12, 0x1

    invoke-direct {v7, v12}, Ld8/e;-><init>(Z)V

    const/4 v12, 0x0

    iput v12, v7, Ld8/e;->c:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Ld8/e;->a:Ljava/lang/String;

    iput-object v1, v7, Ld8/e;->b:Ljava/lang/String;

    iget-object v0, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-boolean v1, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iput-boolean v1, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    iput-boolean v1, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->h:Z

    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ld8/j;->D(Ljava/io/File;)V

    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object v5, v9

    move-object/from16 v22, v10

    move-object v3, v13

    move-object/from16 v24, v14

    move-object/from16 v14, v21

    const/16 v16, 0x1

    move-object/from16 v21, v2

    goto/16 :goto_9

    :cond_6
    move/from16 v19, v8

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    const/4 v1, 0x0

    iget-object v0, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    new-instance v1, Ljava/io/File;

    iget-object v0, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b:Ljava/lang/String;

    invoke-direct {v1, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_8
    new-instance v4, Lk8/c;

    iget-object v0, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v0, v8}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lk8/c;-><init>(Ljava/lang/String;)V

    iput-object v6, v4, Lk8/c;->d:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    new-instance v0, Ljava/io/File;

    const-string v8, "jpc.javac"

    invoke-direct {v0, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v1, v0, v4}, Ld8/j;->c0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/io/File;Ljava/io/File;Lk8/c;)Z

    move-result v8

    if-eqz v8, :cond_d

    move-object v12, v6

    move-object v7, v1

    move-object v8, v14

    move-object v11, v9

    move-object v9, v5

    move-object/from16 v22, v10

    move-object v10, v15

    move-object/from16 v23, v5

    move-object v5, v11

    move-object v11, v13

    move-object/from16 v24, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v2

    move-object v2, v12

    move-object v12, v4

    move-object/from16 v25, v3

    move-object v3, v13

    move-object v13, v0

    invoke-static/range {v6 .. v13}, Ld8/j;->o(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lr8/a;Lk8/c;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_9

    :cond_9
    iget-object v0, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    if-lez v18, :cond_a

    invoke-virtual {v3, v14}, Lr8/a;->a(Ljava/lang/String;)V

    :cond_a
    :try_start_1
    new-instance v0, Lorg/google/googlejavaformat/java/Formatter;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/Formatter;-><init>()V

    invoke-static {v4}, Lt8/e;->a(Lk8/c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/google/googlejavaformat/java/FormatterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_5

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const-string v7, "error: "

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "reached end of file while parsing"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", maybe missing } to end the block?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    move-object v7, v0

    invoke-virtual {v4, v6}, Lk8/c;->e(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, "[I-E]"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    :try_start_2
    const-string v8, "//[I-S]LN="

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_4
    new-instance v0, Ld8/e;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Ld8/e;-><init>(Z)V

    iput v6, v0, Ld8/e;->c:I

    iput-object v7, v0, Ld8/e;->a:Ljava/lang/String;

    const-string v6, "Syntax error"

    iput-object v6, v0, Ld8/e;->b:Ljava/lang/String;

    iget-object v6, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    iput-boolean v8, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iput-boolean v6, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    iput-boolean v6, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->h:Z

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ld8/j;->D(Ljava/io/File;)V

    const/4 v0, 0x1

    const/16 v16, 0x1

    :goto_5
    if-nez v0, :cond_12

    sget-object v0, Ld8/j;->A:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//C-R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lr8/a;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lk8/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lr8/a;->a(Ljava/lang/String;)V

    add-int/lit8 v18, v18, 0x1

    iget-object v0, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v17, 0x1

    goto/16 :goto_9

    :cond_d
    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object v5, v9

    move-object/from16 v22, v10

    move-object v3, v13

    move-object/from16 v24, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v2

    move-object v2, v6

    sget-object v0, Ld8/j;->z:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    const-string v0, "Copying .class files to JAVARuntime/JAVARuntime/"

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_12

    array-length v2, v1

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_12

    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/File;

    const-string v8, "JAVARuntime/JAVARuntime/"

    invoke-direct {v0, v15, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_e
    new-instance v9, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_f
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v0, Ld8/j;->a:Z

    if-eqz v0, :cond_10

    invoke-static {v8}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_10
    :goto_7
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Copying "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-static {v6, v9}, Ld8/k;->e(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v6, Ld8/j;->a:Z

    if-eqz v6, :cond_11

    invoke-static {v0}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_11
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move/from16 v19, v8

    move-object v5, v9

    move-object/from16 v22, v10

    move-object/from16 v20, v11

    move-object v3, v13

    move-object/from16 v24, v14

    move-object v14, v12

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_9
    add-int/lit8 v8, v19, 0x1

    move-object v13, v3

    move-object v9, v5

    move-object v12, v14

    move-object/from16 v11, v20

    move-object/from16 v2, v21

    move-object/from16 v10, v22

    move-object/from16 v5, v23

    move-object/from16 v14, v24

    move-object/from16 v3, v25

    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_13
    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move-object v5, v9

    move-object v3, v13

    const-string v1, "_PROJECT/Scripts/_JContainer.java"

    if-nez v16, :cond_1d

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v17, :cond_16

    if-nez v4, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {v3}, Lr8/a;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iget-object v0, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    goto/16 :goto_d

    :cond_16
    :goto_a
    const/4 v0, 0x0

    invoke-static {v0, v3}, Lg8/b;->c(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Lr8/a;)V

    invoke-virtual {v3}, Lr8/a;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v3, Ljava/io/File;

    const-string v5, "jc.javac"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_17
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1a

    array-length v3, v0

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v3, :cond_1a

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_18

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".dex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    :cond_18
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_1a
    if-nez v4, :cond_1b

    invoke-static {v2}, Ld8/j;->j(Ljava/io/File;)Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    :cond_1b
    sget-object v0, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    iput-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iput-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    sget-object v0, Ld8/j;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iget-object v6, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iput-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    goto :goto_c

    :cond_1f
    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v6, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const-string v7, "_PROJECT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    iput-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->h:Z

    iput-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    iput-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iget-object v6, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iput-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->g:Z

    goto :goto_c

    :cond_20
    sget-object v0, Ld8/j;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_21
    :goto_d
    return v16
.end method

.method public static p0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ld8/j$v;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "javaMetaInfo",
            "PROJECT_ROOT",
            "RUNTIME_FOLDER",
            "projectRoot"
        }
    .end annotation

    new-instance p1, Ld8/j$v;

    invoke-direct {p1}, Ld8/j$v;-><init>()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b:Ljava/lang/String;

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const-string v2, ".java"

    invoke-static {v1, v2}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-static {p2}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    iget-object v2, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-direct {p2, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    const-string v2, "jc.javac"

    invoke-direct {p3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {p2, v1}, Ld8/k;->e(Ljava/io/File;Ljava/io/File;)V

    invoke-static {p2, p3}, Ld8/k;->e(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    sget-boolean p0, Ld8/j;->a:Z

    if-eqz p0, :cond_2

    invoke-static {p2}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->j:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    new-instance p0, Ljava/io/File;

    const-string p2, "jpc.javac"

    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, p1, Ld8/j$v;->b:Ljava/io/File;

    iput-object v1, p1, Ld8/j$v;->a:Ljava/io/File;

    return-object p1
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "JAVARuntime"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/FolderManifest;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/FolderManifest;-><init>(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "f.manifest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, LX7/a;->j(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static q0()V
    .locals 4

    invoke-static {}, Ld8/j;->R()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ly6/d;->b()V

    invoke-static {}, Lp8/d;->f()V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ld8/j;->K0()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v1

    :try_start_0
    const-class v2, LJAVARuntime/ScriptingExtension;

    iget-object v3, v1, Ld8/r;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Ld8/j$g;

    invoke-direct {v2}, Ld8/j$g;-><init>()V

    invoke-virtual {v1, v2}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJAVARuntime/ScriptingExtension;

    invoke-virtual {v2}, LJAVARuntime/ScriptingExtension;->getScriptingInterface()LF6/d;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Ly6/d;->a(Ld8/r;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :cond_1
    const-class v2, LJAVARuntime/FilesPanelDirectoryMenu;

    iget-object v3, v1, Ld8/r;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_2

    :try_start_3
    new-instance v2, Ld8/j$h;

    invoke-direct {v2}, Ld8/j$h;-><init>()V

    invoke-virtual {v1, v2}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJAVARuntime/FilesPanelDirectoryMenu;

    new-instance v2, Lp8/b;

    invoke-direct {v2, v1}, Lp8/b;-><init>(LJAVARuntime/FilesPanelDirectoryMenu;)V

    invoke-static {v2}, Lp8/d;->d(Lw5/g;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_2
    const-class v2, LJAVARuntime/FilesPanelFileMenu;

    iget-object v3, v1, Ld8/r;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v2, :cond_3

    :try_start_5
    new-instance v2, Ld8/j$i;

    invoke-direct {v2}, Ld8/j$i;-><init>()V

    invoke-virtual {v1, v2}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJAVARuntime/FilesPanelFileMenu;

    new-instance v2, Lp8/c;

    invoke-direct {v2, v1}, Lp8/c;-><init>(LJAVARuntime/FilesPanelFileMenu;)V

    invoke-static {v2}, Lp8/d;->e(Lw5/h;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_3
    const-class v2, LJAVARuntime/ObjectsPanelMenu;

    iget-object v3, v1, Ld8/r;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v2, :cond_4

    :try_start_7
    new-instance v2, Ld8/j$j;

    invoke-direct {v2}, Ld8/j$j;-><init>()V

    invoke-virtual {v1, v2}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJAVARuntime/ObjectsPanelMenu;

    new-instance v2, Lp8/e;

    invoke-direct {v2, v1}, Lp8/e;-><init>(LJAVARuntime/ObjectsPanelMenu;)V

    invoke-static {v2}, Lp8/d;->b(Lg6/e;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-class v2, LJAVARuntime/FilesPanelCustomIcon;

    iget-object v3, v1, Ld8/r;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    if-eqz v2, :cond_5

    :try_start_9
    new-instance v2, Ld8/j$m;

    invoke-direct {v2}, Ld8/j$m;-><init>()V

    invoke-virtual {v1, v2}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJAVARuntime/FilesPanelCustomIcon;

    new-instance v2, Lp8/a;

    invoke-direct {v2, v1}, Lp8/a;-><init>(LJAVARuntime/FilesPanelCustomIcon;)V

    invoke-static {v2}, Lp8/d;->c(Lw5/f;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_2

    :catch_5
    move-exception v1

    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_5
    const-class v2, LJAVARuntime/TerminalCLIExtension;

    iget-object v3, v1, Ld8/r;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    if-eqz v2, :cond_6

    :try_start_b
    new-instance v2, Ld8/j$n;

    invoke-direct {v2}, Ld8/j$n;-><init>()V

    invoke-virtual {v1, v2}, Ld8/r;->j(Ld8/r$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJAVARuntime/TerminalCLIExtension;

    new-instance v2, Lp8/f;

    invoke-direct {v2, v1}, Lp8/f;-><init>(LJAVARuntime/TerminalCLIExtension;)V

    invoke-static {v2}, Lp8/d;->a(LJ4/e;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_2

    :catch_6
    move-exception v1

    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static r()V
    .locals 2

    sget-object v0, Ld8/j;->t:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static r0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javaMetaInfo"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ld8/j;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ld8/j;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ld8/j$p;

    invoke-direct {v0, p0}, Ld8/j$p;-><init>(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lob/b;

    new-instance v2, Ld8/j$q;

    invoke-direct {v2, v0, p0}, Ld8/j$q;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    invoke-direct {v1, v2}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v1}, LK8/a;->J(Lob/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static s()V
    .locals 2

    sget-object v0, Ld8/j;->u:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static s0()V
    .locals 22

    new-instance v0, Lcom/itsmagic/engine/Core/Components/JCompiler/CompiledDictionary;

    invoke-direct {v0}, Lcom/itsmagic/engine/Core/Components/JCompiler/CompiledDictionary;-><init>()V

    sput-object v0, Ld8/j;->q:Lcom/itsmagic/engine/Core/Components/JCompiler/CompiledDictionary;

    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "JAVARuntime"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/runtime/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lid/a;->g(Ljava/io/File;)Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/runtime.zip"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v9, 0x1

    :goto_0
    sget-object v10, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const-string v12, "Failed to set readonly "

    const-string v13, ")"

    const-string v14, ") to ("

    const-string v15, "Copying .dex from ("

    const-string v7, "_PROJECT"

    const-string v8, ".dex"

    if-ge v0, v11, :cond_7

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b()V

    new-instance v11, Ljava/io/File;

    move-object/from16 v16, v3

    iget-object v3, v10, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b:Ljava/lang/String;

    invoke-direct {v11, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v10, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v7, 0x0

    :goto_1
    array-length v10, v3

    if-ge v7, v10, :cond_6

    aget-object v10, v3, v7

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v3

    const/4 v3, 0x1

    invoke-static {v11, v3}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {v9}, Ld8/k;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-boolean v11, Ld8/j;->a:Z

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v6

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ld8/j;->h0(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    move-object/from16 v18, v6

    :goto_2
    invoke-static {v10, v3}, Ld8/k;->e(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/File;->setReadOnly()Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto/16 :goto_1

    :cond_6
    :goto_5
    move-object/from16 v18, v6

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v16

    move-object/from16 v6, v18

    goto/16 :goto_0

    :cond_7
    move-object/from16 v16, v3

    move-object/from16 v18, v6

    sget-object v0, Ld8/j;->q:Lcom/itsmagic/engine/Core/Components/JCompiler/CompiledDictionary;

    invoke-static {v0, v9}, Ld8/k;->B(Lcom/itsmagic/engine/Core/Components/JCompiler/CompiledDictionary;I)I

    new-instance v0, Ld8/c;

    invoke-direct {v0}, Ld8/c;-><init>()V

    invoke-virtual {v0}, Ld8/c;->e()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x0

    :goto_6
    const-string v11, " d:"

    const-string v0, "rj_"

    if-ge v10, v9, :cond_d

    move/from16 v17, v9

    aget-object v9, v6, v10

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_b

    move-object/from16 v19, v6

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Ld8/j;->a:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELETING DEXCACHE FILE:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    :cond_8
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v9, v6}, Ljava/io/File;->setWritable(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Ld8/j;->a:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read-only attribute removed:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_7

    :cond_9
    sget-boolean v0, Ld8/j;->a:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove the read-only attribute:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_8
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_9

    :cond_b
    move-object/from16 v19, v6

    :cond_c
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v17

    move-object/from16 v6, v19

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_11

    array-length v9, v6

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v9, :cond_11

    move/from16 v17, v9

    aget-object v9, v6, v10

    move-object/from16 v19, v6

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    :try_start_2
    new-instance v6, Ljava/io/File;

    move-object/from16 v20, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-boolean v0, Ld8/j;->a:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_e
    :goto_b
    invoke-static {v9, v6}, Ld8/k;->e(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/File;->setReadOnly()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_d

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    move-object/from16 v21, v0

    move-object/from16 v20, v8

    :goto_d
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v17

    move-object/from16 v6, v19

    move-object/from16 v8, v20

    move-object/from16 v0, v21

    goto/16 :goto_a

    :cond_11
    move-object/from16 v20, v8

    :try_start_3
    new-instance v0, Lnd/f;

    invoke-direct {v0}, Lnd/f;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lnd/f;->j(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v1, Ld8/j;->a:Z

    if-eqz v1, :cond_12

    invoke-static {v0}, LJ4/d;->V1(Ljava/lang/Throwable;)V

    :cond_12
    :goto_e
    invoke-static {}, Ld8/j;->s()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ld8/j;->P(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ldalvik/system/DexClassLoader;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lt8/f;

    const-class v5, LJAVARuntime/Component;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v4, v5}, Lt8/f;-><init>(Ljava/lang/ClassLoader;)V

    const/4 v5, 0x0

    invoke-direct {v2, v1, v0, v5, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sget-boolean v0, Ld8/j;->a:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEXCACHE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEXCACHE FILE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ld8/j;->h0(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_13
    invoke-static {v2}, Ld8/k;->p(Ldalvik/system/DexClassLoader;)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_15

    :cond_15
    invoke-static {v2}, Ld8/j;->T(Ldalvik/system/DexClassLoader;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_10
    sget-object v3, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_14

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b:Ljava/lang/String;

    move-object/from16 v6, v18

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    :goto_11
    move-object/from16 v12, v20

    const/4 v5, 0x0

    goto :goto_14

    :cond_16
    iget-object v5, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const-string v8, "_PROJECT/Scripts/_JContainer.java"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_11

    :cond_17
    iget-boolean v5, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->o:Z

    if-nez v5, :cond_18

    iget-object v5, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_18
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->o:Z

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1a

    array-length v8, v4

    move v9, v5

    :goto_12
    if-ge v9, v8, :cond_1a

    aget-object v10, v4, v9

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v20

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v3, v10}, Ld8/j;->S(Ldalvik/system/DexClassLoader;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;)I

    move-result v10

    add-int/2addr v1, v10

    goto :goto_13

    :cond_19
    const/4 v11, 0x1

    :goto_13
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v20, v12

    goto :goto_12

    :cond_1a
    move-object/from16 v12, v20

    :goto_14
    const/4 v11, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v18, v6

    move-object/from16 v20, v12

    goto :goto_10

    :goto_15
    move v0, v5

    :goto_16
    invoke-static {}, Ld8/j;->K0()I

    move-result v2

    if-ge v0, v2, :cond_1c

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v2, v2, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-eqz v2, :cond_1b

    iget-boolean v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->l:Z

    if-nez v3, :cond_1b

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->k:Lo8/f;

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Lo8/f;->a()V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_1c
    if-lez v1, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld8/j;->C:Ljava/lang/String;

    :cond_1d
    move v7, v5

    :goto_17
    invoke-static {}, Ld8/j;->K0()I

    move-result v0

    if-ge v7, v0, :cond_1f

    invoke-static {v7}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v1, v0, Ld8/r;->a:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    if-eqz v1, :cond_1e

    iget-boolean v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->l:Z

    if-nez v2, :cond_1e

    sget-object v2, Ld8/j;->q:Lcom/itsmagic/engine/Core/Components/JCompiler/CompiledDictionary;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/CompiledDictionary;->javaScripts:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    new-instance v3, Lcom/itsmagic/engine/Core/Components/JCompiler/ClassDic;

    iget-object v0, v0, Ld8/r;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v1}, Lcom/itsmagic/engine/Core/Components/JCompiler/ClassDic;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_1f
    invoke-static {}, Ld8/j;->z0()V

    invoke-static {}, Ld8/j;->q0()V

    return-void
.end method

.method public static t(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
    .locals 34
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javaMetaInfo"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "//C-R:"

    const-string v3, "are only available if source level is 1.7 or greater"

    const-string v4, "are only available if source level is 1.5 or greater"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b:Ljava/lang/String;

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-boolean v9, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    if-nez v9, :cond_68

    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->h:Z

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v10

    if-eqz v10, :cond_1

    return-void

    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    const-string v11, ".zip"

    const-string v12, "jc.javac"

    const-string v13, "./"

    const-string v14, ".dex"

    const-string v15, ""

    const-string v9, "JAVARuntime"

    move-object/from16 v16, v2

    const-string v2, ".class"

    move-object/from16 v17, v3

    if-eqz v10, :cond_1b

    array-length v3, v10

    if-lez v3, :cond_1b

    iget-object v3, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    move-object/from16 v18, v4

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v15

    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v12

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v12

    invoke-static {v4, v12}, LX7/a;->z(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    array-length v4, v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v4, :cond_4

    move/from16 v20, v4

    aget-object v4, v10, v12

    move-object/from16 v21, v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v20

    move-object/from16 v7, v21

    goto :goto_0

    :cond_4
    move-object/from16 v21, v7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    array-length v7, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v7, :cond_5

    aget-object v20, v10, v12

    move-object/from16 v22, v3

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ONLY DEX COMPILATION FAILED, dex found for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld8/j;->h0(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v22, v11

    :goto_2
    move-object/from16 v24, v13

    goto/16 :goto_22

    :cond_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v22

    goto :goto_1

    :cond_8
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ONLY DEX COMPILATION DETECTED"

    invoke-static {v4}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_18

    array-length v7, v4

    if-lez v7, :cond_18

    array-length v7, v4

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_18

    aget-object v12, v4, v10

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v15

    if-eqz v15, :cond_9

    return-void

    :cond_9
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v17

    move/from16 v18, v7

    invoke-static/range {v17 .. v17}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v10

    const/4 v7, 0x1

    invoke-static {v15, v7}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v7}, Ld8/j;->v(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v12

    const/4 v12, 0x1

    invoke-static {v15, v12}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    invoke-static {v4, v10}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v3

    invoke-static {v4, v10}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "calling DEX and dexifying the class"

    invoke-static {v10}, Ld8/j;->h0(Ljava/lang/String;)V

    :try_start_1
    const-string v10, "--dex"
    :try_end_1
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_1 .. :try_end_1} :catch_19
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15

    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_2 .. :try_end_2} :catch_18
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_15

    move-object/from16 v22, v11

    :try_start_3
    const-string v11, "--output="

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v10, v11, v1}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Ld8/b;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_3 .. :try_end_3} :catch_13
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    :try_start_4
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_4 .. :try_end_4} :catch_13
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    if-eqz v10, :cond_f

    :try_start_5
    new-instance v10, Lug/a;

    invoke-direct {v10, v3}, Lug/a;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    invoke-virtual {v10}, Lug/a;->R()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LBg/j;

    invoke-virtual {v12}, LBg/b;->s()Z

    move-result v23

    if-nez v23, :cond_c

    move-object/from16 v23, v11

    const-string v11, "classes.dex"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v24, v13

    :try_start_7
    invoke-virtual {v12}, LBg/b;->j()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v10, v12}, Lug/a;->S(LBg/j;)Lzg/k;

    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v12, 0x0

    :try_start_8
    invoke-static {v11, v7, v12}, Ld8/j;->w(Ljava/io/InputStream;Ljava/io/File;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v11, :cond_a

    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catchall_0
    move-exception v0

    :goto_6
    move-object v1, v0

    goto :goto_11

    :cond_a
    :goto_7
    invoke-static {v7, v3, v1, v8, v15}, Lt8/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_b

    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v7, v0

    :try_start_b
    invoke-virtual {v1, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_8
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v0

    move-object/from16 v24, v13

    goto :goto_6

    :cond_c
    move-object/from16 v23, v11

    move-object/from16 v24, v13

    :cond_d
    move-object/from16 v11, v23

    move-object/from16 v13, v24

    goto :goto_5

    :cond_e
    move-object/from16 v24, v13

    :goto_9
    :try_start_c
    invoke-virtual {v10}, Lug/a;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-object/from16 v1, p0

    goto/16 :goto_1e

    :catch_1
    move-exception v0

    :goto_a
    move-object/from16 v1, p0

    :goto_b
    move-object v7, v0

    goto/16 :goto_1b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_c
    move-object/from16 v1, p0

    :goto_d
    move-object v7, v0

    goto/16 :goto_1c

    :catch_4
    move-exception v0

    :goto_e
    move-object v11, v0

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1d

    :catch_5
    move-exception v0

    :goto_f
    move-object/from16 v1, p0

    :goto_10
    move-object v7, v0

    goto/16 :goto_19

    :goto_11
    :try_start_d
    invoke-virtual {v10}, Lug/a;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object v7, v0

    :try_start_e
    invoke-virtual {v1, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_e .. :try_end_e} :catch_4
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :catch_6
    move-exception v0

    :goto_13
    move-object/from16 v24, v13

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_13

    :catch_8
    move-exception v0

    move-object/from16 v24, v13

    goto :goto_c

    :catch_9
    move-exception v0

    move-object/from16 v24, v13

    goto :goto_e

    :catch_a
    move-exception v0

    move-object/from16 v24, v13

    goto :goto_f

    :cond_f
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v24, v13

    :try_start_f
    iput-boolean v7, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to compile file, zip not found "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ld8/j;->h0(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_f .. :try_end_f} :catch_e
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto/16 :goto_1e

    :catch_b
    move-exception v0

    goto :goto_b

    :catch_c
    move-exception v0

    goto :goto_b

    :catch_d
    move-exception v0

    goto :goto_d

    :catch_e
    move-exception v0

    :goto_14
    move-object v11, v0

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1d

    :catch_f
    move-exception v0

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_15
    move-object/from16 v1, p0

    :goto_16
    move-object/from16 v24, v13

    goto :goto_b

    :catch_11
    move-exception v0

    goto :goto_15

    :catch_12
    move-exception v0

    move-object/from16 v1, p0

    :goto_17
    move-object/from16 v24, v13

    goto :goto_d

    :catch_13
    move-exception v0

    move-object/from16 v1, p0

    :goto_18
    move-object/from16 v24, v13

    goto :goto_14

    :catch_14
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v24, v13

    goto :goto_10

    :goto_19
    :try_start_10
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    new-instance v10, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    :cond_11
    sget-boolean v10, Ld8/j;->a:Z

    if-eqz v10, :cond_13

    invoke-static {v7}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V
    :try_end_10
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_10 .. :try_end_10} :catch_e
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_1e

    :catch_15
    move-exception v0

    :goto_1a
    move-object/from16 v1, p0

    move-object/from16 v22, v11

    goto :goto_16

    :catch_16
    move-exception v0

    goto :goto_1a

    :catch_17
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v22, v11

    goto :goto_17

    :catch_18
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v22, v11

    goto :goto_18

    :goto_1b
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    new-instance v10, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_12
    sget-boolean v10, Ld8/j;->a:Z

    if-eqz v10, :cond_13

    invoke-static {v7}, LJAVARuntime/Terminal;->log(Ljava/lang/Throwable;)V

    goto :goto_1e

    :goto_1c
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    sget-object v11, Ld8/j;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1e

    :catch_19
    move-exception v0

    move-object/from16 v22, v11

    move-object/from16 v24, v13

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-object v11, v0

    :goto_1d
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v7, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    iput-boolean v10, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    sget-object v7, Ld8/j;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_13
    :goto_1e
    :try_start_11
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v7, Ld8/j;->a:Z

    if-eqz v7, :cond_15

    invoke-static {v3}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    goto :goto_1f

    :cond_14
    move-object/from16 v1, p0

    move-object/from16 v20, v3

    move-object/from16 v22, v11

    move-object/from16 v24, v13

    :cond_15
    :goto_1f
    :try_start_12
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1b

    goto :goto_20

    :catch_1b
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v4, Ld8/j;->a:Z

    if-eqz v4, :cond_17

    invoke-static {v3}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    goto :goto_20

    :cond_16
    move-object/from16 v20, v3

    move-object/from16 v16, v4

    move/from16 v18, v7

    move/from16 v17, v10

    move-object/from16 v22, v11

    move-object/from16 v24, v13

    :cond_17
    :goto_20
    add-int/lit8 v10, v17, 0x1

    move-object/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v20

    move-object/from16 v11, v22

    move-object/from16 v13, v24

    goto/16 :goto_3

    :cond_18
    move-object v7, v2

    move-object v15, v8

    goto/16 :goto_67

    :cond_19
    move-object/from16 v21, v7

    move-object/from16 v22, v11

    move-object/from16 v24, v13

    const-string v3, "ONLY DEX COMPILATION FAILED, jc.javac INVALID"

    invoke-static {v3}, Ld8/j;->h0(Ljava/lang/String;)V

    goto :goto_22

    :cond_1a
    :goto_21
    move-object/from16 v21, v7

    move-object/from16 v22, v11

    move-object/from16 v19, v12

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v18, v4

    goto :goto_21

    :goto_22
    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v3

    if-eqz v3, :cond_1c

    return-void

    :cond_1c
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1e

    array-length v3, v3

    if-nez v3, :cond_1d

    goto :goto_23

    :cond_1d
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_24

    :cond_1e
    :goto_23
    const-string v3, "REASON: Meta folder is empty or doesnt exist"

    invoke-static {v3}, Ld8/j;->h0(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_24
    if-nez v3, :cond_20

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return-void

    :cond_1f
    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_20
    if-eqz v3, :cond_60

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v3

    if-eqz v3, :cond_21

    return-void

    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ld8/j;->A(Ljava/lang/String;)V

    invoke-static {v8}, Ld8/j;->C(Ljava/io/File;)V

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v7

    if-eqz v7, :cond_22

    return-void

    :cond_22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compiling "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ld8/j;->h0(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-static {v11}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    move-object/from16 v12, v21

    invoke-direct {v10, v12, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    move-object/from16 v13, v19

    invoke-direct {v11, v8, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5f

    :try_start_13
    invoke-static {v10, v7}, Ld8/k;->e(Ljava/io/File;Ljava/io/File;)V

    invoke-static {v10, v11}, Ld8/k;->e(Ljava/io/File;Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_41

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v10

    if-eqz v10, :cond_23

    return-void

    :cond_23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v24

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    move-object/from16 v21, v12

    const/4 v12, 0x1

    invoke-static {v13, v12}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".java"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    invoke-static {v11, v12}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    const-string v12, "R"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_25

    if-eqz v4, :cond_25

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v4

    if-eqz v4, :cond_24

    return-void

    :cond_24
    invoke-static {v1, v10, v3}, Lk8/b;->f(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v4

    if-eqz v4, :cond_25

    return-void

    :cond_25
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v11, Ld8/j$r;

    invoke-direct {v11, v4}, Ld8/j$r;-><init>(Ljava/util/List;)V

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v12

    if-eqz v12, :cond_26

    return-void

    :cond_26
    new-instance v12, Ljava/io/File;

    move-object/from16 v19, v5

    const-string v5, "/./"

    invoke-virtual {v10, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v5

    move-object/from16 v20, v14

    const-string v14, "\n"

    if-eqz v5, :cond_27

    :try_start_14
    invoke-static {v12}, LIc/o;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->compiledCode:[Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1c

    goto :goto_25

    :catch_1c
    move-exception v0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_27
    :goto_25
    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v5

    if-eqz v5, :cond_28

    return-void

    :cond_28
    const-string v5, "instantiating the compiler and compiling the java file"

    invoke-static {v5}, Ld8/j;->h0(Ljava/lang/String;)V

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/batch/Main;

    new-instance v12, Ljava/io/PrintWriter;

    invoke-direct {v12, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v23, v8

    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v11, 0x0

    move-object/from16 v33, v9

    const/4 v9, 0x0

    invoke-direct {v5, v12, v8, v9, v11}, Lorg/eclipse/jdt/internal/compiler/batch/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;)V

    :try_start_15
    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v8

    if-eqz v8, :cond_29

    return-void

    :cond_29
    const-string v25, "-1.8"

    const-string v26, "-proc:none"

    const-string v27, "-classpath"

    const-string v29, "-maxProblems"

    const-string v30, "100"

    const-string v31, "-noExit"

    move-object/from16 v28, v3

    move-object/from16 v32, v10

    filled-new-array/range {v25 .. v32}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compile([Ljava/lang/String;)Z

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ecjMain.compile result "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v8
    :try_end_15
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1d

    if-eqz v8, :cond_2b

    return-void

    :catch_1d
    move-exception v0

    move-object v5, v0

    goto :goto_26

    :catch_1e
    move-exception v0

    move-object v5, v0

    goto :goto_28

    :goto_26
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v8, Ld8/j;->a:Z

    if-eqz v8, :cond_2a

    invoke-static {v5}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_2a
    :goto_27
    const/4 v5, 0x0

    goto :goto_29

    :goto_28
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v8, Ld8/j;->a:Z

    if-eqz v8, :cond_2a

    invoke-static {v5}, LJAVARuntime/Terminal;->log(Ljava/lang/Error;)V

    goto :goto_27

    :cond_2b
    :goto_29
    iget-object v8, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->o:Z

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v8, v11

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, ";"

    const-string v12, "//[I-S]LN="

    const-string v11, "[I-E]"

    move/from16 v26, v5

    const-string v5, "_JContainer"

    if-eqz v9, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v8, :cond_2e

    :try_start_16
    const-string v5, ". WARNING in "

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    new-instance v5, Lt8/g;

    invoke-direct {v5}, Lt8/g;-><init>()V

    :goto_2b
    move-object/from16 v29, v2

    move-object/from16 v27, v4

    move-object v8, v5

    :goto_2c
    move-object/from16 v28, v6

    :goto_2d
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    goto/16 :goto_3e

    :catch_1f
    move-exception v0

    move-object v5, v0

    move-object/from16 v29, v2

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    :goto_2e
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    goto/16 :goto_3d

    :cond_2c
    const-string v5, ". ERROR in "

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d

    new-instance v5, Lt8/d;

    invoke-direct {v5}, Lt8/d;-><init>()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1f

    goto :goto_2b

    :cond_2d
    move-object/from16 v29, v2

    move-object/from16 v27, v4

    goto :goto_2c

    :cond_2e
    move-object/from16 v27, v4

    :try_start_17
    const-string v4, " (at line"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_28

    if-eqz v4, :cond_37

    :try_start_18
    const-string v4, " (at line "

    invoke-virtual {v9, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_22

    move-object/from16 v28, v6

    :try_start_19
    const-string v6, ")"

    invoke-virtual {v4, v6, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, LNc/b;->x1(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_21

    move-object/from16 v29, v2

    const/4 v2, 0x1

    :try_start_1a
    invoke-static {v6, v2}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->compiledCode:[Ljava/lang/String;

    if-eqz v2, :cond_2f

    array-length v5, v2

    if-le v5, v4, :cond_2f

    aget-object v2, v2, v4

    goto :goto_30

    :catch_20
    move-exception v0

    :goto_2f
    move-object v5, v0

    goto :goto_2e

    :cond_2f
    move-object v2, v15

    :goto_30
    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v4

    :cond_30
    :goto_31
    const/4 v2, 0x1

    goto :goto_32

    :catch_21
    move-exception v0

    move-object/from16 v29, v2

    goto :goto_2f

    :cond_31
    move-object/from16 v29, v2

    goto :goto_31

    :goto_32
    sub-int/2addr v4, v2

    invoke-virtual {v8, v4}, Ld8/e;->f(I)V

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/String;

    move-object v2, v4

    :goto_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    :goto_34
    array-length v6, v2

    if-ge v5, v6, :cond_36

    aget-object v6, v2, v5

    array-length v9, v2

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ge v5, v9, :cond_34

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_33

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    :cond_33
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    :cond_34
    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_35

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    :cond_35
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ld8/e;->g(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_20

    goto/16 :goto_2d

    :catch_22
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v28, v6

    goto/16 :goto_2f

    :cond_37
    move-object/from16 v29, v2

    move-object/from16 v28, v6

    :try_start_1b
    const-string v2, "Syntax error, parameterized types are only available if source level is 1.5 or greater"

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_27

    if-eqz v2, :cond_3a

    :try_start_1c
    iget-object v2, v8, Ld8/e;->a:Ljava/lang/String;

    const-string v4, "SteppedArrayList<"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v9, "Use of <> with SteppedArrayList is not supported yet, you can fix it by using non-typed: SteppedArrayList variableName"

    :goto_36
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    goto :goto_38

    :cond_38
    iget-object v2, v8, Ld8/e;->a:Ljava/lang/String;

    const-string v4, "List<"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v9, "Use of <> with List is not supported yet, you can fix it by using non-typed: List variableName"

    goto :goto_36

    :cond_39
    const-string v9, "Use of <> is not support yet, is not necessary in this case, remove <>"
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_20

    goto :goto_36

    :cond_3a
    :try_start_1d
    const-string v2, "Syntax error, annotations are only available if source level is 1.5 or greater"

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_27

    if-eqz v2, :cond_3b

    :try_start_1e
    const-string v9, "annotations is not supported yet."
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_20

    goto :goto_36

    :cond_3b
    move-object/from16 v2, v18

    :try_start_1f
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_26

    const-string v5, "are not supported yet."

    if-eqz v4, :cond_3c

    :try_start_20
    invoke-virtual {v9, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_23

    move-object/from16 v4, v17

    goto :goto_38

    :catch_23
    move-exception v0

    move-object v5, v0

    move-object/from16 v4, v17

    goto/16 :goto_3d

    :cond_3c
    move-object/from16 v4, v17

    :try_start_21
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_38

    :catch_24
    move-exception v0

    :goto_37
    move-object v5, v0

    goto :goto_3d

    :cond_3d
    :goto_38
    invoke-virtual {v8, v9}, Ld8/e;->e(Ljava/lang/String;)V

    const-string v5, "The serializable class "

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string v5, " does not declare a static final serialVersionUID field of type long"

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    :goto_39
    const/4 v8, 0x0

    goto :goto_3a

    :cond_3e
    const-string v5, "The import "

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    const-string v5, " is never used"

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_24

    if-eqz v5, :cond_3f

    goto :goto_39

    :cond_3f
    :goto_3a
    if-eqz v8, :cond_41

    :try_start_22
    iget-object v5, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_25

    goto :goto_3b

    :catch_25
    move-exception v0

    move-object v5, v0

    :try_start_23
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v6, Ld8/j;->a:Z

    if-eqz v6, :cond_40

    invoke-static {v5}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_24

    :cond_40
    :goto_3b
    const/4 v8, 0x0

    goto :goto_3e

    :catch_26
    move-exception v0

    move-object/from16 v4, v17

    goto :goto_37

    :catch_27
    move-exception v0

    :goto_3c
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    goto :goto_37

    :catch_28
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v28, v6

    goto :goto_3c

    :goto_3d
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v6, Ld8/j;->a:Z

    if-eqz v6, :cond_41

    invoke-static {v5}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_41
    :goto_3e
    move-object/from16 v18, v2

    move-object/from16 v17, v4

    move/from16 v5, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v28

    move-object/from16 v2, v29

    const/4 v11, 0x0

    goto/16 :goto_2a

    :cond_42
    move-object/from16 v29, v2

    move-object/from16 v28, v6

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v2

    if-eqz v2, :cond_43

    return-void

    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JAVARuntime/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v6}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_44

    :try_start_24
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_3f

    :catch_29
    move-exception v0

    move-object v2, v0

    move/from16 v8, v26

    goto :goto_41

    :cond_44
    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/String;

    move-object v4, v6

    :goto_3f
    new-instance v6, Ld8/j$s;

    invoke-direct {v6}, Ld8/j$s;-><init>()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_29

    move/from16 v8, v26

    const/4 v9, 0x0

    :goto_40
    :try_start_25
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_46

    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v13

    if-eqz v13, :cond_45

    return-void

    :cond_45
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln8/a;

    invoke-virtual {v13, v8, v2, v4, v1}, Ln8/a;->a(ZLjava/lang/String;[Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v8
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_2a

    add-int/lit8 v9, v9, 0x1

    goto :goto_40

    :catch_2a
    move-exception v0

    move-object v2, v0

    :goto_41
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_46
    invoke-static/range {p0 .. p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v2

    if-eqz v2, :cond_47

    return-void

    :cond_47
    iget-object v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v4}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    if-eqz v2, :cond_4e

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld8/e;

    iget v5, v4, Ld8/e;->c:I

    :goto_43
    if-lez v5, :cond_49

    :try_start_26
    iget-object v6, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->compiledCode:[Ljava/lang/String;

    aget-object v6, v6, v5
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_2c

    move-object/from16 v9, v16

    :try_start_27
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_48

    invoke-virtual {v6, v9, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ld8/e;->e:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_2b

    goto :goto_46

    :catch_2b
    move-exception v0

    :goto_44
    move-object v5, v0

    goto :goto_45

    :cond_48
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v16, v9

    goto :goto_43

    :catch_2c
    move-exception v0

    move-object/from16 v9, v16

    goto :goto_44

    :goto_45
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_46

    :cond_49
    move-object/from16 v9, v16

    :goto_46
    iget-object v5, v4, Ld8/e;->e:Ljava/lang/String;

    if-eqz v5, :cond_4d

    sget-object v5, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v13, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    iget-object v14, v4, Ld8/e;->e:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4a

    iget v5, v4, Ld8/e;->c:I

    iget-object v13, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->compiledCode:[Ljava/lang/String;

    if-eqz v13, :cond_4b

    array-length v14, v13

    if-le v14, v5, :cond_4b

    aget-object v13, v13, v5

    goto :goto_47

    :cond_4b
    move-object v13, v15

    :goto_47
    invoke-virtual {v13, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4c

    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v13, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v5

    :cond_4c
    iput v5, v4, Ld8/e;->c:I

    iget-object v5, v4, Ld8/e;->b:Ljava/lang/String;

    invoke-static {v5}, Ld8/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ld8/e;->b:Ljava/lang/String;

    iget-object v5, v4, Ld8/e;->a:Ljava/lang/String;

    invoke-static {v5}, Ld8/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ld8/e;->a:Ljava/lang/String;

    iget-object v5, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ld8/e;->d()Z

    move-result v4

    if-eqz v4, :cond_4d

    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    :cond_4d
    move-object/from16 v16, v9

    goto/16 :goto_42

    :cond_4e
    sget-boolean v2, Ld8/j;->a:Z

    if-eqz v2, :cond_4f

    iget-object v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    if-eqz v2, :cond_4f

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compilled ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") Outputs:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld8/j;->h0(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld8/e;

    const-string v5, "----------------------------------------"

    invoke-static {v5}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-virtual {v4}, Ld8/e;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ld8/j;->h0(Ljava/lang/String;)V

    goto :goto_48

    :cond_4f
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_50
    iput-boolean v8, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    xor-int/lit8 v2, v8, 0x1

    iput-boolean v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    iget-object v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->m:Ljava/io/File;

    if-eqz v2, :cond_51

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, LX7/a;->h(Ljava/io/File;Ljava/lang/String;)Z

    :cond_51
    if-eqz v8, :cond_5d

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    if-eqz v2, :cond_54

    const/4 v5, 0x0

    :goto_49
    array-length v6, v2

    if-ge v5, v6, :cond_54

    aget-object v6, v2, v5

    move-object/from16 v7, v29

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_53

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v28

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v33

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    invoke-static {v8}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v15, v23

    invoke-direct {v14, v15, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_28
    invoke-static {v12, v13}, Ld8/k;->e(Ljava/io/File;Ljava/io/File;)V

    invoke-static {v12, v14}, Ld8/k;->e(Ljava/io/File;Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_2d

    goto :goto_4a

    :catch_2d
    move-exception v0

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v12, Ld8/j;->a:Z

    if-eqz v12, :cond_52

    invoke-static {v8}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_52
    :goto_4a
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->c:Ljava/util/List;

    new-instance v11, Ld8/d;

    invoke-static {v6}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x1

    invoke-static {v6, v14}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ld8/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_53
    move-object/from16 v6, v20

    move-object/from16 v15, v23

    move-object/from16 v9, v28

    move-object/from16 v10, v33

    :goto_4b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v20, v6

    move-object/from16 v29, v7

    move-object/from16 v28, v9

    move-object/from16 v33, v10

    move-object/from16 v23, v15

    goto/16 :goto_49

    :cond_54
    move-object/from16 v6, v20

    move-object/from16 v15, v23

    move-object/from16 v9, v28

    move-object/from16 v7, v29

    move-object/from16 v10, v33

    const/4 v2, 0x0

    :goto_4c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_61

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    invoke-static {v5, v11}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v19

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v24

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v4

    invoke-static {v8, v11}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    invoke-static {v8, v11}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "calling DEX and dexifying the class"

    invoke-static {v12}, Ld8/j;->h0(Ljava/lang/String;)V

    :try_start_29
    const-string v12, "--dex"
    :try_end_29
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_29 .. :try_end_29} :catch_3f
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_29 .. :try_end_29} :catch_3e
    .catch Ljava/lang/Error; {:try_start_29 .. :try_end_29} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3c

    move-object/from16 v22, v3

    :try_start_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2a
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_2a .. :try_end_2a} :catch_3b
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_2a .. :try_end_2a} :catch_3a
    .catch Ljava/lang/Error; {:try_start_2a .. :try_end_2a} :catch_39
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_38

    move-object/from16 v28, v9

    :try_start_2b
    const-string v9, "--output="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v12, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Ld8/b;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2b
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_2b .. :try_end_2b} :catch_36
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_2b .. :try_end_2b} :catch_35
    .catch Ljava/lang/Error; {:try_start_2b .. :try_end_2b} :catch_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_33

    :try_start_2c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5a

    new-instance v3, Lug/a;

    invoke-direct {v3, v11}, Lug/a;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_37
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_2c .. :try_end_2c} :catch_36
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_2c .. :try_end_2c} :catch_35
    .catch Ljava/lang/Error; {:try_start_2c .. :try_end_2c} :catch_34
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_33

    :try_start_2d
    invoke-virtual {v3}, Lug/a;->R()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_59

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LBg/j;

    move-object/from16 v18, v9

    invoke-virtual {v12}, LBg/b;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, LBg/b;->s()Z

    move-result v19
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_a

    if-nez v19, :cond_58

    if-eqz v9, :cond_58

    move-object/from16 v33, v10

    :try_start_2e
    const-string v10, "classes.dex"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-virtual {v3, v12}, Lug/a;->S(LBg/j;)Lzg/k;

    move-result-object v9
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_9

    :try_start_2f
    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    const/4 v13, 0x1

    :try_start_30
    invoke-static {v5, v13}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v15, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-static {v9, v10, v12}, Ld8/j;->w(Ljava/io/InputStream;Ljava/io/File;Z)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_6

    if-eqz v9, :cond_55

    :try_start_31
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_4f

    :catchall_5
    move-exception v0

    :goto_4e
    move-object v4, v0

    goto/16 :goto_5a

    :cond_55
    :goto_4f
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    invoke-static {v5, v12}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v15, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9, v11, v4, v15, v5}, Lt8/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_5

    goto :goto_55

    :catchall_6
    move-exception v0

    :goto_50
    move-object v4, v0

    goto :goto_51

    :catchall_7
    move-exception v0

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    goto :goto_50

    :goto_51
    if-eqz v9, :cond_56

    :try_start_32
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_8

    goto :goto_52

    :catchall_8
    move-exception v0

    move-object v5, v0

    :try_start_33
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_56
    :goto_52
    throw v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_5

    :catchall_9
    move-exception v0

    :goto_53
    move-object/from16 v19, v13

    move-object/from16 v24, v14

    goto :goto_4e

    :cond_57
    :goto_54
    move-object/from16 v19, v13

    move-object/from16 v24, v14

    goto :goto_55

    :cond_58
    move-object/from16 v33, v10

    goto :goto_54

    :goto_55
    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v14, v24

    move-object/from16 v10, v33

    goto/16 :goto_4d

    :catchall_a
    move-exception v0

    move-object/from16 v33, v10

    goto :goto_53

    :cond_59
    move-object/from16 v33, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    :try_start_34
    invoke-virtual {v3}, Lug/a;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_32
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_34 .. :try_end_34} :catch_31
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_34 .. :try_end_34} :catch_30
    .catch Ljava/lang/Error; {:try_start_34 .. :try_end_34} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_2e

    goto/16 :goto_65

    :catch_2e
    move-exception v0

    :goto_56
    move-object v3, v0

    goto/16 :goto_62

    :catch_2f
    move-exception v0

    goto :goto_56

    :catch_30
    move-exception v0

    :goto_57
    move-object v3, v0

    const/4 v4, 0x0

    goto/16 :goto_63

    :catch_31
    move-exception v0

    :goto_58
    move-object v5, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_64

    :catch_32
    move-exception v0

    :goto_59
    move-object v3, v0

    goto :goto_5f

    :goto_5a
    :try_start_35
    invoke-virtual {v3}, Lug/a;->close()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_b

    goto :goto_5b

    :catchall_b
    move-exception v0

    move-object v3, v0

    :try_start_36
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw v4

    :catch_33
    move-exception v0

    :goto_5c
    move-object/from16 v33, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    goto :goto_56

    :catch_34
    move-exception v0

    goto :goto_5c

    :catch_35
    move-exception v0

    :goto_5d
    move-object/from16 v33, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    goto :goto_57

    :catch_36
    move-exception v0

    :goto_5e
    move-object/from16 v33, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    goto :goto_58

    :catch_37
    move-exception v0

    move-object/from16 v33, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    goto :goto_59

    :cond_5a
    move-object/from16 v33, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    sget-boolean v3, Ld8/j;->a:Z

    if-eqz v3, :cond_5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZIP FILE NOT FOUND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld8/j;->h0(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_32
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_36 .. :try_end_36} :catch_31
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_36 .. :try_end_36} :catch_30
    .catch Ljava/lang/Error; {:try_start_36 .. :try_end_36} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_2e

    goto/16 :goto_65

    :goto_5f
    :try_start_37
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    sget-boolean v4, Ld8/j;->a:Z

    if-eqz v4, :cond_5b

    invoke-static {v3}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V
    :try_end_37
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/UnknownError; {:try_start_37 .. :try_end_37} :catch_31
    .catch Lcom/itsmagic/engine/Core/Components/JCompiler/TooManyErrorsException; {:try_start_37 .. :try_end_37} :catch_30
    .catch Ljava/lang/Error; {:try_start_37 .. :try_end_37} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_2e

    goto :goto_65

    :catch_38
    move-exception v0

    :goto_60
    move-object/from16 v28, v9

    goto :goto_5c

    :catch_39
    move-exception v0

    goto :goto_60

    :catch_3a
    move-exception v0

    move-object/from16 v28, v9

    goto :goto_5d

    :catch_3b
    move-exception v0

    move-object/from16 v28, v9

    goto :goto_5e

    :catch_3c
    move-exception v0

    :goto_61
    move-object/from16 v22, v3

    goto :goto_60

    :catch_3d
    move-exception v0

    goto :goto_61

    :goto_62
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    sget-boolean v5, Ld8/j;->a:Z

    if-eqz v5, :cond_5b

    invoke-static {v3}, LJAVARuntime/Terminal;->log(Ljava/lang/Throwable;)V

    goto :goto_65

    :catch_3e
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v28, v9

    move-object/from16 v33, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    const/4 v4, 0x0

    move-object v3, v0

    :goto_63
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v4, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    sget-object v5, Ld8/j;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_65

    :catch_3f
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v28, v9

    move-object/from16 v33, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, v0

    :goto_64
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v4, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    iput-boolean v3, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    sget-object v4, Ld8/j;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5b
    :goto_65
    :try_start_38
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_40

    goto :goto_66

    :catch_40
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v4, Ld8/j;->a:Z

    if-eqz v4, :cond_5c

    invoke-static {v3}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_5c
    :goto_66
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v9, v28

    move-object/from16 v10, v33

    goto/16 :goto_4c

    :cond_5d
    move-object/from16 v15, v23

    move-object/from16 v7, v29

    goto :goto_67

    :catch_41
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    sget-boolean v1, Ld8/j;->a:Z

    if-eqz v1, :cond_5e

    invoke-static {v2}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_5e
    return-void

    :cond_5f
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->j:Z

    return-void

    :cond_60
    move-object v7, v2

    move-object v15, v8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-boolean v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->f:Z

    iput-boolean v3, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->i:Z

    :cond_61
    :goto_67
    iget-object v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const-string v3, "_PROJECT/Scripts/_JContainer.java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v2

    if-nez v2, :cond_62

    move-object/from16 v2, v21

    invoke-static {v1, v2, v15}, Ld8/j;->x(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/io/File;Ljava/io/File;)V

    goto :goto_68

    :cond_62
    move-object/from16 v2, v21

    :goto_68
    const-string v3, "Copying .class files to JAVARuntime/JAVARuntime/"

    invoke-static {v3}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_67

    array-length v4, v3

    const/4 v5, 0x0

    :goto_69
    if-ge v5, v4, :cond_67

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_66

    new-instance v8, Ljava/io/File;

    const-string v9, "JAVARuntime/JAVARuntime/"

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_63

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_63
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "JAVARuntime/JAVARuntime/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_64

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_64
    :try_start_39
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_42

    goto :goto_6a

    :catch_42
    move-exception v0

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v10, Ld8/j;->a:Z

    if-eqz v10, :cond_65

    invoke-static {v9}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_65
    :goto_6a
    :try_start_3a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copying "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ld8/j;->h0(Ljava/lang/String;)V

    invoke-static {v6, v8}, Ld8/k;->e(Ljava/io/File;Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_43

    goto :goto_6b

    :catch_43
    move-exception v0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v8, Ld8/j;->a:Z

    if-eqz v8, :cond_66

    invoke-static {v6}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_66
    :goto_6b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_69

    :cond_67
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->h:Z

    :cond_68
    return-void
.end method

.method public static t0()V
    .locals 0

    invoke-static {}, Ld8/j;->s0()V

    return-void
.end method

.method public static u(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    sget-object v0, Ld8/j;->v:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, Ld8/j;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld8/j$y;

    invoke-virtual {v3}, Ld8/j$y;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ld8/j$y;->a()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static u0()V
    .locals 0

    invoke-static {}, Lda/h;->q()V

    return-void
.end method

.method public static v(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "dst"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x400

    :try_start_2
    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_2
    move-exception p0

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    throw p0

    :cond_4
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not found:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v0()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ld8/j;->E:Ljava/lang/String;

    sput-object v0, Ld8/j;->i:Ljava/lang/String;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->n0(Landroid/app/Activity;)V

    return-void
.end method

.method public static w(Ljava/io/InputStream;Ljava/io/File;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "dst",
            "closeIS"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x400

    :try_start_1
    new-array p1, p1, [B

    :goto_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    return-void

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    throw p1
.end method

.method public static w0(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    sget-object v0, Ld8/j;->y:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static x(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "javaMetaInfo",
            "projectRoot",
            "metaFolder"
        }
    .end annotation

    sget-object p0, Ld8/j;->z:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Ld8/k;->e(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v4, Ld8/j;->a:Z

    if-eqz v4, :cond_2

    invoke-static {v3}, LJAVARuntime/Terminal;->log(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static x0(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    sget-object v0, Ld8/j;->v:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Ld8/j;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld8/j$y;

    invoke-virtual {v3}, Ld8/j$y;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ld8/j$y;->a()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    const-string v0, "JAVARuntime."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static y0(Ld8/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadedClass"
        }
    .end annotation

    sget-object v0, Ld8/j;->u:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static z()I
    .locals 4

    sget-object v0, Ld8/j;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static z0()V
    .locals 3

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    sget-object v1, Ld8/j;->q:Lcom/itsmagic/engine/Core/Components/JCompiler/CompiledDictionary;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    const-string v2, "JAVARuntime/rtdic.config"

    invoke-static {v2, v0, v1}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method


# virtual methods
.method public m0()V
    .locals 1

    new-instance v0, Ld8/j$k;

    invoke-direct {v0, p0}, Ld8/j$k;-><init>(Ld8/j;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    return-void
.end method
