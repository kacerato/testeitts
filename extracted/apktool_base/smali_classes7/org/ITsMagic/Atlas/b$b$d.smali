.class public Lorg/ITsMagic/Atlas/b$b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/b$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/b$b;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/b$b$d;->b:Lorg/ITsMagic/Atlas/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b$d;->b:Lorg/ITsMagic/Atlas/b$b;

    iget-object v1, v0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/b$b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1, v0}, Lorg/ITsMagic/Atlas/b;->b(Lorg/ITsMagic/Atlas/b$d;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
