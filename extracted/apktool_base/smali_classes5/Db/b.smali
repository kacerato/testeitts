.class public LDb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:LLc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LLc/g<",
            "LDb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDb/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LDb/b;->a:Ljava/lang/Object;

    new-instance v0, LLc/g;

    invoke-direct {v0}, LLc/g;-><init>()V

    sput-object v0, LDb/b;->b:LLc/g;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, LDb/b;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LDb/a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalMesh"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, LDb/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LDb/b;->b:LLc/g;

    invoke-virtual {p0}, LIc/m;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lge/X;->u(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDb/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LDb/c;->c()LDb/a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, LDb/c;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, LDb/c;->c()LDb/a;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v3

    new-instance v4, LDb/a;

    invoke-direct {v4}, LDb/a;-><init>()V

    invoke-static {v2, v3}, LW8/a;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, LDb/a;->m(Ljava/util/List;)V

    new-instance v2, LDb/c;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result v3

    invoke-direct {v2, p0, v4, v3}, LDb/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LDb/a;I)V

    invoke-virtual {p0}, LIc/m;->hashCode()I

    move-result p0

    int-to-long v5, p0

    invoke-virtual {v1, v5, v6, v2}, Lge/X;->td(JLjava/lang/Object;)Ljava/lang/Object;

    sget-object p0, LDb/b;->c:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v4

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "originalMesh is empty"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "originalMesh can`t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()V
    .locals 7

    sget-object v0, LDb/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LDb/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    sget-object v2, LDb/b;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDb/c;

    invoke-virtual {v3}, LDb/c;->e()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, LDb/b;->b:LLc/g;

    invoke-virtual {v3}, LDb/c;->d()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lge/X;->e(J)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
