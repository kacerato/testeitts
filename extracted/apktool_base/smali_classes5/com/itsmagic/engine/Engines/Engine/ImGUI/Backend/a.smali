.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;,
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;,
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;,
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;,
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;,
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;
    }
.end annotation


# static fields
.field public static final m:I = 0x14

.field public static final n:I = 0x0

.field public static final o:I = 0x8

.field public static final p:I = 0x10

.field public static final q:I


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

.field public final d:[F

.field public e:Z

.field public f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;

.field public final g:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;

.field public final h:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;

.field public final i:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;

.field public final j:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->d:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->e:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->g:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->h:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->i:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->j:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->k:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->l:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->g:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->h:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->i:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->c()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;->d(I)V

    return-void
.end method

.method public b()V
    .locals 6

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->g:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->a:LRb/c;

    invoke-virtual {v4}, LRb/c;->getId()I

    iget-boolean v4, v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->f:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->a:LRb/c;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iput-boolean v2, v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->f:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->g:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->g:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->b:I

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->j:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;

    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-eqz v5, :cond_4

    iput-object v3, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput v2, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->b:I

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->j:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    :cond_6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->h:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;

    if-eqz v1, :cond_7

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;->c(Lcom/google/android/filament/Engine;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;

    if-eqz v1, :cond_8

    :try_start_2
    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;->b(Lcom/google/android/filament/Engine;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->i:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->b()V

    :cond_9
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    if-eqz v1, :cond_a

    :try_start_3
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    :cond_a
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    if-eqz v0, :cond_b

    :try_start_4
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    :cond_b
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->l:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->k:I

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->e:Z

    return-void
.end method

.method public final c()V
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    const/16 v0, 0x10

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    rem-int/lit8 v3, v2, 0x5

    if-nez v3, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    :goto_1
    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->k([D)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->j(II)V

    return-void
.end method

.method public final d(ILcom/google/android/filament/Engine;I)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawListIndex",
            "engine",
            "neededVertexCount"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->j:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->j:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->j:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->j:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {v1, p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->a(Lcom/google/android/filament/Engine;I)V

    return-object v0
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;)V
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawData"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, LK8/a;->G()V

    invoke-static {}, LQb/a;->d()V

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;->fbWidth:I

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->k:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;->fbHeight:I

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->l:I

    if-eq v3, v5, :cond_1

    :cond_0
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;->fbHeight:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->j(II)V

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;->fbWidth:I

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->k:I

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;->fbHeight:I

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->l:I

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    move v5, v3

    :goto_0
    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;->drawLists:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;->drawLists:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->g:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/filament/Engine;->j0()Lcom/google/android/filament/TransformManager;

    move-result-object v6

    move v7, v2

    move v8, v7

    :goto_1
    iget-object v9, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;->drawLists:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_d

    iget-object v9, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;->drawLists:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;

    iget-object v10, v9, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;->vertexBuffer:Ljava/nio/ByteBuffer;

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    div-int/lit8 v11, v11, 0x14

    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v12

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->i:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;

    invoke-virtual {v13, v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v12, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v7, v5, v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->d(ILcom/google/android/filament/Engine;I)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;

    move-result-object v10

    iget-object v11, v10, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-virtual {v11, v2, v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->q(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;->getIndexBufferAsShort()Ljava/nio/ShortBuffer;

    move-result-object v11

    if-nez v11, :cond_5

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "ibShorts NULL"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    :goto_2
    move-object/from16 v23, v3

    move/from16 v26, v7

    move v7, v2

    goto/16 :goto_a

    :cond_5
    move v12, v2

    :goto_3
    iget-object v13, v9, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;->commands:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_4

    iget-object v13, v9, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;->commands:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;

    if-eqz v13, :cond_6

    iget v14, v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->elemCount:I

    if-gtz v14, :cond_7

    :cond_6
    move-object/from16 v23, v3

    move/from16 v26, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move v7, v2

    goto/16 :goto_8

    :cond_7
    iget-wide v14, v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->textureId:J

    invoke-static {v14, v15}, Lyb/a;->b(J)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v14

    if-nez v14, :cond_8

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "TEX IS NULL"

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v23, v3

    move/from16 v26, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move v7, v2

    goto/16 :goto_9

    :cond_8
    iget v15, v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->elemCount:I

    mul-int/lit8 v15, v15, 0x2

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->i:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;

    invoke-virtual {v2, v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$f;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/Buffer;->position()I

    move-result v15

    iget v4, v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->indexOffset:I

    invoke-virtual {v11, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x0

    :goto_4
    iget v1, v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->elemCount:I

    if-ge v4, v1, :cond_9

    invoke-virtual {v11}, Ljava/nio/ShortBuffer;->get()S

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v11, v15}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->h:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;

    iget v4, v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->elemCount:I

    invoke-virtual {v1, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;->a(ILcom/google/android/filament/Engine;)LRb/d;

    move-result-object v1

    invoke-virtual {v1, v2}, LRb/d;->r(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v2, v8, 0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;

    iget-boolean v15, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->f:Z

    if-nez v15, :cond_a

    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move/from16 v16, v2

    iget-object v2, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->a:LRb/c;

    invoke-virtual {v15, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->f:Z

    goto :goto_5

    :cond_a
    move/from16 v16, v2

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->d(Z)V

    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v15

    const-string v2, "albedo"

    move-object/from16 v23, v3

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->B()Lcom/google/android/filament/TextureSampler;

    move-result-object v3

    invoke-virtual {v15, v2, v14, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/google/android/filament/TextureSampler;)V

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->z()Lcom/google/android/filament/Texture$e;

    move-result-object v2

    sget-object v3, Lcom/google/android/filament/Texture$e;->R:Lcom/google/android/filament/Texture$e;

    if-ne v2, v3, :cond_b

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    const-string v3, "isR8"

    invoke-virtual {v15, v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iget v2, v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->clipX:F

    iget v3, v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->clipY:F

    iget v14, v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->clipZ:F

    move-object/from16 v24, v9

    iget v9, v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->clipW:F

    move-object/from16 v25, v11

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->l:I

    move/from16 v26, v7

    int-to-float v7, v11

    sub-float v20, v7, v9

    int-to-float v7, v11

    sub-float v22, v7, v3

    const-string v18, "clipRect"

    move-object/from16 v17, v15

    move/from16 v19, v2

    move/from16 v21, v14

    invoke-virtual/range {v17 .. v22}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->c()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v10, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-virtual {v4, v5, v2, v1, v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->a(Lcom/google/android/filament/Engine;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    goto :goto_7

    :cond_c
    iget-object v2, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    sget-object v3, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    iget-object v7, v10, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v3, v7, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGeometryAt(ILcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;)V

    iget-object v2, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v2, v9, v15}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setMaterialInstanceAt(ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    :goto_7
    iput-object v15, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    ushr-int/lit8 v2, v8, 0xd

    and-int/lit8 v2, v2, 0x7

    iget-object v3, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    const v2, 0xffff

    and-int/2addr v2, v8

    iget-object v3, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBlendOrderAt(II)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->d:[F

    invoke-static {v2, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->b(Lcom/google/android/filament/TransformManager;)I

    move-result v2

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->d:[F

    invoke-virtual {v6, v2, v3}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    iput-object v1, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->d:LRb/d;

    iget v1, v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->elemCount:I

    iput v1, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$b;->e:I

    move/from16 v8, v16

    goto :goto_9

    :goto_8
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "COMAND ELEM COUNT 0 OR NULL"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move v2, v7

    move-object/from16 v3, v23

    move-object/from16 v9, v24

    move-object/from16 v11, v25

    move/from16 v7, v26

    const/4 v4, 0x1

    goto/16 :goto_3

    :goto_a
    add-int/lit8 v1, v26, 0x1

    move v2, v7

    move-object/from16 v3, v23

    const/4 v4, 0x1

    move v7, v1

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_d
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->g:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;

    invoke-virtual {v1, v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->d(I)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->g:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->h:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;

    invoke-virtual {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$c;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$d;)V

    return-void
.end method

.method public f()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    return-object v0
.end method

.method public g()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-object v0
.end method

.method public h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    return-object v0
.end method

.method public i(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialTemplate"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->e:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$e;

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->z(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    sget-object v0, Lcom/google/android/filament/View$d;->TRANSLUCENT:Lcom/google/android/filament/View$d;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->w(Lcom/google/android/filament/View$d;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->c()V

    return-void
.end method

.method public final j(II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    const/16 v0, 0x10

    new-array v9, v0, [F

    int-to-float v4, p1

    int-to-float v5, p2

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    new-array p1, v0, [D

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_0

    aget v1, v9, p2

    float-to-double v1, v1

    aput-wide v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->j([DFF)V

    return-void
.end method
