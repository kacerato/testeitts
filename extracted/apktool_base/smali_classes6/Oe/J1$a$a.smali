.class public final LOe/J1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/J1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:J

.field public final c:LOe/J1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOe/J1$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLOe/J1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LOe/J1$a<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LOe/J1$a$a;->b:J

    iput-object p3, p0, LOe/J1$a$a;->c:LOe/J1$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LOe/J1$a$a;->c:LOe/J1$a;

    invoke-static {v0}, LOe/J1$a;->n(LOe/J1$a;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, LOe/J1$a;->o(LOe/J1$a;)LIe/n;

    move-result-object v1

    invoke-interface {v1, p0}, LIe/o;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, LOe/J1$a;->W:Z

    invoke-virtual {v0}, LOe/J1$a;->p()V

    :goto_0
    invoke-virtual {v0}, LJe/v;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LOe/J1$a;->q()V

    :cond_1
    return-void
.end method
