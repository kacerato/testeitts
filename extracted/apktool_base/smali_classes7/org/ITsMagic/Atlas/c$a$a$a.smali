.class public Lorg/ITsMagic/Atlas/c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/c$a$a;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/c$a$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/c$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/c$a$a$a;->b:Lorg/ITsMagic/Atlas/c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/ITsMagic/Atlas/c$a$a$a;->b:Lorg/ITsMagic/Atlas/c$a$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/c$a$a;->a:Lorg/ITsMagic/Atlas/c$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/c$a;->e:Lorg/ITsMagic/Atlas/c$b;

    const-string v1, "Rendering"

    invoke-interface {v0, v1}, Lorg/ITsMagic/Atlas/c$b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/c$a$a$a;->b:Lorg/ITsMagic/Atlas/c$a$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/c$a$a;->a:Lorg/ITsMagic/Atlas/c$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/c$a;->b:LUg/n;

    new-instance v1, Lorg/ITsMagic/Atlas/c$a$a$a$a;

    invoke-direct {v1, p0}, Lorg/ITsMagic/Atlas/c$a$a$a$a;-><init>(Lorg/ITsMagic/Atlas/c$a$a$a;)V

    invoke-virtual {v0, v1}, LUg/n;->q(Ljava/lang/Runnable;)V

    return-void
.end method
