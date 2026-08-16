.class public final LSe/s$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/s$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:LSe/s$b;

.field public final synthetic c:LSe/s$c;


# direct methods
.method public constructor <init>(LSe/s$c;LSe/s$b;)V
    .locals 0

    iput-object p1, p0, LSe/s$c$a;->c:LSe/s$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LSe/s$c$a;->b:LSe/s$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LSe/s$c$a;->b:LSe/s$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, LSe/s$b;->e:Z

    iget-object v0, p0, LSe/s$c$a;->c:LSe/s$c;

    iget-object v0, v0, LSe/s$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, LSe/s$c$a;->b:LSe/s$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
