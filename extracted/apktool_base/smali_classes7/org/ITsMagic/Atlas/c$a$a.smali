.class public Lorg/ITsMagic/Atlas/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/ITsMagic/Atlas/c$a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/c$a$a;->a:Lorg/ITsMagic/Atlas/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/c$a$a;->a:Lorg/ITsMagic/Atlas/c$a;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/c$a;->b:LUg/n;

    invoke-virtual {v0}, LUg/n;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/ITsMagic/Atlas/c$a$a$a;

    invoke-direct {v0, p0}, Lorg/ITsMagic/Atlas/c$a$a$a;-><init>(Lorg/ITsMagic/Atlas/c$a$a;)V

    invoke-static {v0}, LK8/a;->H(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
