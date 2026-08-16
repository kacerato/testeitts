.class public LO6/a$B$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/a$B;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LO6/a$B;


# direct methods
.method public constructor <init>(LO6/a$B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LO6/a$B$b;->b:LO6/a$B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LO6/a$B$b;->b:LO6/a$B;

    iget-object v0, v0, LO6/a$B;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    iget-object v0, p0, LO6/a$B$b;->b:LO6/a$B;

    iget-object v0, v0, LO6/a$B;->d:LO6/a;

    invoke-static {v0}, LO6/a;->z1(LO6/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LO6/a$B$b;->b:LO6/a$B;

    iget-boolean v1, v0, LO6/a$B;->c:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, LO6/a$B;->d:LO6/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    return-void
.end method
