.class public final synthetic LD0/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LD0/j;

.field public final synthetic c:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(LD0/j;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/q0;->b:LD0/j;

    iput-object p2, p0, LD0/q0;->c:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LD0/q0;->b:LD0/j;

    iget-object v1, p0, LD0/q0;->c:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, LD0/j;->y(Landroid/os/IBinder;)V

    return-void
.end method
