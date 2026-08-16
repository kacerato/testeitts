.class public Lh7/b$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/b$d;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/b$d;


# direct methods
.method public constructor <init>(Lh7/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lh7/b$d$a;->a:Lh7/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 4

    iget-object v0, p0, Lh7/b$d$a;->a:Lh7/b$d;

    iget-object v0, v0, Lh7/b$d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh7/b$d$a;->a:Lh7/b$d;

    iget-object v2, v1, Lh7/b$d;->a:Lob/b;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v1, Lh7/b$d;->a:Lob/b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lh7/b$d$a$a;

    invoke-direct {v0, p0}, Lh7/b$d$a$a;-><init>(Lh7/b$d$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return v3

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
