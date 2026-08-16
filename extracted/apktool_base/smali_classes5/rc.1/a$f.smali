.class public Lrc/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc/a$f$c;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "del"

.field public static final h:Ljava/lang/String; = "enter"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lrc/a$f$c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltc/e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lrc/a$f$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lrc/a$f;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lrc/a$f;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrc/a$f;->c:Z

    iput-boolean v0, p0, Lrc/a$f;->d:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrc/a$f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lrc/a$f$b;

    invoke-direct {v0, p0}, Lrc/a$f$b;-><init>(Lrc/a$f;)V

    iput-object v0, p0, Lrc/a$f;->f:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Lrc/a$f;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lrc/a$f;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic b(Lrc/a$f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lrc/a$f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;ZZII)V
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
            "name",
            "pressed",
            "uppercase",
            "keyCode",
            "unicodeChar"
        }
    .end annotation

    iget-object v0, p0, Lrc/a$f;->a:Ljava/util/Map;

    iget-object v1, p0, Lrc/a$f;->f:Ljava/util/function/Function;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrc/a$f$c;

    if-eqz p1, :cond_0

    iput-boolean p2, p1, Lrc/a$f$c;->a:Z

    iput-boolean p3, p1, Lrc/a$f$c;->b:Z

    iput p4, p1, Lrc/a$f$c;->c:I

    iput p5, p1, Lrc/a$f$c;->d:I

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressed"
        }
    .end annotation

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v2, "alt"

    const/16 v5, 0x39

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lrc/a$f;->c(Ljava/lang/String;ZZII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()[Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-class v1, Landroid/view/KeyEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_29

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KEYCODE_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tv_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v5, "system_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v5, "zenkaku_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v5, "language_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v5, "profile_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string v5, "featured_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_1

    :cond_5
    const-string v5, "stem_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_1

    :cond_6
    const-string v5, "video_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_1

    :cond_7
    const-string v5, "pictsy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto/16 :goto_1

    :cond_8
    const-string v5, "prog_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_1

    :cond_9
    const-string v5, "manner_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto/16 :goto_1

    :cond_a
    const-string v5, "soft_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto/16 :goto_1

    :cond_b
    const-string v5, "demo_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto/16 :goto_1

    :cond_c
    const-string v5, "apost"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto/16 :goto_1

    :cond_d
    const-string v5, "calculator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto/16 :goto_1

    :cond_e
    const-string v5, "app_switch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto/16 :goto_1

    :cond_f
    const-string v5, "avr_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto/16 :goto_1

    :cond_10
    const-string v5, "settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto/16 :goto_1

    :cond_11
    const-string v5, "muhenkan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto/16 :goto_1

    :cond_12
    const-string v5, "explorer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto/16 :goto_1

    :cond_13
    const-string v5, "contact"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto/16 :goto_1

    :cond_14
    const-string v5, "envelope"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto/16 :goto_1

    :cond_15
    const-string v5, "captions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto/16 :goto_1

    :cond_16
    const-string v5, "calendar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto/16 :goto_1

    :cond_17
    const-string v5, "button_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto/16 :goto_1

    :cond_18
    const-string v5, "bookmark"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto/16 :goto_1

    :cond_19
    const-string v5, "unknown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const-string v5, "pairing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const-string v5, "endcall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const-string v5, "3d_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_1

    :cond_1d
    const-string v5, "window"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_1

    :cond_1e
    const-string v5, "wakeup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_1

    :cond_1f
    const-string v5, "henkan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_1

    :cond_20
    const-string v5, "camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_1

    :cond_21
    const-string v5, "music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_1

    :cond_22
    const-string v5, "focus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_1

    :cond_23
    const-string v5, "dvr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_1

    :cond_24
    const-string v5, "tv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_1

    :cond_25
    const-string v5, "katakana_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_1

    :cond_26
    const-string v5, "navigate_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    goto :goto_1

    :cond_27
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2a
    return-object v1
.end method

.method public f(Ljava/lang/String;)Ltc/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lrc/a$f;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltc/e;

    if-eqz p1, :cond_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltc/e;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v2, p0, Lrc/a$f;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltc/e;

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Ltc/e;->d:Z

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltc/e;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v2, p0, Lrc/a$f;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltc/e;

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Ltc/e;->e:Z

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltc/e;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v2, p0, Lrc/a$f;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltc/e;

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Ltc/e;->j:Z

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Landroid/view/KeyEvent;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "keyIsDown"
        }
    .end annotation

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lrc/a$f;->c:Z

    const-string v4, "alt"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lrc/a$f;->c(Ljava/lang/String;ZZII)V

    const-string v4, "ctrl"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lrc/a$f;->c(Ljava/lang/String;ZZII)V

    const-string v4, "shift"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lrc/a$f;->c(Ljava/lang/String;ZZII)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    const/16 v5, 0x21

    if-eq v4, v5, :cond_a

    const/16 v5, 0x22

    if-eq v4, v5, :cond_9

    const/16 v5, 0x28

    if-eq v4, v5, :cond_8

    const/16 v5, 0x29

    if-eq v4, v5, :cond_7

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_5

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_4

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_3

    const/16 v5, 0x5e

    if-eq v4, v5, :cond_2

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    move-object v4, v0

    move v6, v3

    goto :goto_2

    :pswitch_0
    const-string v0, "~"

    :goto_1
    move-object v4, v0

    move v6, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :pswitch_1
    const-string v0, "}"

    goto :goto_1

    :pswitch_2
    const-string v0, "|"

    goto :goto_1

    :pswitch_3
    const-string v0, "{"

    goto :goto_1

    :pswitch_4
    const-string v0, "&"

    goto :goto_1

    :pswitch_5
    const-string v0, "%"

    goto :goto_1

    :pswitch_6
    const-string v0, "$"

    goto :goto_1

    :cond_1
    const-string v0, "_"

    goto :goto_1

    :cond_2
    const-string v0, "^"

    goto :goto_1

    :cond_3
    const-string v0, "?"

    goto :goto_1

    :cond_4
    const-string v0, ">"

    goto :goto_1

    :cond_5
    const-string v0, "<"

    goto :goto_1

    :cond_6
    const-string v0, ":"

    goto :goto_1

    :cond_7
    const-string v0, ")"

    goto :goto_1

    :cond_8
    const-string v0, "("

    goto :goto_1

    :cond_9
    const-string v0, "\""

    goto :goto_1

    :cond_a
    const-string v0, "!"

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    move-object v3, p0

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lrc/a$f;->c(Ljava/lang/String;ZZII)V

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const-class v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    move v7, v2

    move-object v6, v5

    :goto_3
    array-length v0, v4

    if-ge v7, v0, :cond_d

    aget-object v0, v4, v7

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "KEYCODE_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "KEYCODE_"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v3, :cond_c

    move-object v6, v8

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    const/4 v0, 0x0

    move-object v3, p0

    move-object v4, v6

    move v5, p2

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Lrc/a$f;->c(Ljava/lang/String;ZZII)V

    :cond_e
    :goto_5
    monitor-exit v1

    return v2

    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lrc/a$f;->f(Ljava/lang/String;)Ltc/e;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p1, Ltc/e;->d:Z

    return p1
.end method

.method public l(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lrc/a$f;->f(Ljava/lang/String;)Ltc/e;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p1, Ltc/e;->e:Z

    return p1
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lrc/a$f;->c:Z

    return v0
.end method

.method public varargs n([Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    sget-object v3, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v3, v2}, Lrc/a$f;->k(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public varargs o([Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    sget-object v3, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v3, v2}, Lrc/a$f;->l(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Lrc/a$f;->k(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public p()V
    .locals 8

    invoke-virtual {p0}, Lrc/a$f;->q()V

    iget-object v0, p0, Lrc/a$f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lrc/a;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lrc/a$f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lrc/a$f;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltc/e;

    if-nez v4, :cond_1

    new-instance v4, Ltc/e;

    invoke-direct {v4}, Ltc/e;-><init>()V

    iput-object v3, v4, Ltc/e;->b:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrc/a$f$c;

    iget v5, v5, Lrc/a$f$c;->c:I

    iput v5, v4, Ltc/e;->q:I

    iget-object v5, p0, Lrc/a$f;->b:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrc/a$f$c;

    iget-boolean v5, v2, Lrc/a$f$c;->a:Z

    iput-boolean v5, v4, Ltc/e;->e:Z

    iget-boolean v5, v2, Lrc/a$f$c;->b:Z

    iput-boolean v5, v4, Ltc/e;->k:Z

    iget v2, v2, Lrc/a$f$c;->d:I

    iput v2, v4, Ltc/e;->o:I

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Ltc/e;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object v3, v4, Ltc/e;->c:Ljava/lang/String;

    :goto_2
    iget-boolean v2, v4, Ltc/e;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v4, Ltc/e;->p:F

    invoke-static {}, LK8/d;->e()F

    move-result v5

    add-float/2addr v2, v5

    iput v2, v4, Ltc/e;->p:F

    goto :goto_3

    :cond_3
    iput v3, v4, Ltc/e;->p:F

    :goto_3
    iget-boolean v2, v4, Ltc/e;->i:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_4

    iget-boolean v2, v4, Ltc/e;->e:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v4, Ltc/e;->n:Z

    if-nez v2, :cond_5

    iget v2, v4, Ltc/e;->p:F

    const v7, 0x3e99999a    # 0.3f

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_5

    iput-boolean v5, v4, Ltc/e;->g:Z

    iput-boolean v5, v4, Ltc/e;->n:Z

    iput-boolean v5, v4, Ltc/e;->i:Z

    goto :goto_4

    :cond_4
    iput-boolean v6, v4, Ltc/e;->g:Z

    :cond_5
    :goto_4
    iget-boolean v2, v4, Ltc/e;->d:Z

    if-nez v2, :cond_6

    iget-boolean v2, v4, Ltc/e;->e:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v4, Ltc/e;->l:Z

    if-nez v2, :cond_7

    iput-boolean v5, v4, Ltc/e;->l:Z

    iput-boolean v5, v4, Ltc/e;->d:Z

    goto :goto_5

    :cond_6
    iput-boolean v6, v4, Ltc/e;->d:Z

    :cond_7
    :goto_5
    iget-boolean v2, v4, Ltc/e;->e:Z

    if-nez v2, :cond_9

    iget-boolean v7, v4, Ltc/e;->j:Z

    if-nez v7, :cond_8

    iget-boolean v7, v4, Ltc/e;->m:Z

    if-nez v7, :cond_a

    iput-boolean v5, v4, Ltc/e;->j:Z

    iput-boolean v5, v4, Ltc/e;->m:Z

    goto :goto_6

    :cond_8
    iput-boolean v6, v4, Ltc/e;->j:Z

    goto :goto_6

    :cond_9
    iput-boolean v6, v4, Ltc/e;->m:Z

    :cond_a
    :goto_6
    if-nez v2, :cond_0

    iget-boolean v2, v4, Ltc/e;->j:Z

    if-nez v2, :cond_0

    iput-boolean v6, v4, Ltc/e;->l:Z

    iput-boolean v6, v4, Ltc/e;->n:Z

    iput v3, v4, Ltc/e;->p:F

    iput-boolean v6, v4, Ltc/e;->i:Z

    iput-boolean v6, v4, Ltc/e;->g:Z

    goto/16 :goto_0

    :cond_b
    monitor-exit v0

    goto :goto_8

    :goto_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_c
    :goto_8
    return-void
.end method

.method public q()V
    .locals 1

    iget-boolean v0, p0, Lrc/a$f;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrc/a$f;->d:Z

    iget-object v0, p0, Lrc/a$f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Lrc/a$f$a;

    invoke-direct {v0, p0}, Lrc/a$f$a;-><init>(Lrc/a$f;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
