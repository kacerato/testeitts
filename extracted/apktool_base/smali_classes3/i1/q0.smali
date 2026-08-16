.class public abstract Li1/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Li1/q0;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "AppComponent.class"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Li1/q0;
    .locals 3

    const-class v0, Li1/q0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li1/q0;->a:Li1/q0;

    if-nez v1, :cond_0

    new-instance v1, Li1/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Li1/h;-><init>(Li1/g;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-virtual {v1, p0}, Li1/h;->b(Landroid/app/Application;)Li1/h;

    invoke-virtual {v1}, Li1/h;->a()Li1/q0;

    move-result-object p0

    sput-object p0, Li1/q0;->a:Li1/q0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Li1/q0;->a:Li1/q0;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract b()Li1/w0;
.end method

.method public abstract c()Li1/C;
.end method
