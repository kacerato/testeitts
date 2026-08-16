.class public Lorg/ITsMagic/Atlas/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/b;->k(Lub/p;LTb/a;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;Lorg/ITsMagic/Atlas/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/ITsMagic/Atlas/c$b;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Lub/p;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/c$b;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Runnable;Lub/p;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$errorRef",
            "val$onFailure",
            "val$texture",
            "val$onDone"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/b$c;->a:Lorg/ITsMagic/Atlas/c$b;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/b$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lorg/ITsMagic/Atlas/b$c;->c:Ljava/lang/Runnable;

    iput-object p4, p0, Lorg/ITsMagic/Atlas/b$c;->d:Lub/p;

    iput-object p5, p0, Lorg/ITsMagic/Atlas/b$c;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    new-instance v0, Lorg/ITsMagic/Atlas/b$c$a;

    invoke-direct {v0, p0, p1}, Lorg/ITsMagic/Atlas/b$c$a;-><init>(Lorg/ITsMagic/Atlas/b$c;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
