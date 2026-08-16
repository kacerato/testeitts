.class public Lw5/c$x0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c$x0$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw5/c$x0$a;


# direct methods
.method public constructor <init>(Lw5/c$x0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$x0$a$a;->b:Lw5/c$x0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lw5/c$x0$a$a;->b:Lw5/c$x0$a;

    iget-object v0, v0, Lw5/c$x0$a;->c:Lw5/c$x0;

    iget-object v0, v0, Lw5/c$x0;->f:Lw5/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lw5/l;->a()V

    :cond_0
    return-void
.end method
