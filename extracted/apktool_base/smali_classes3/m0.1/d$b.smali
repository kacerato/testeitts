.class public Lm0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lm0/d;


# direct methods
.method public constructor <init>(Lm0/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lm0/d$b;->a:Lm0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lm0/d;Lm0/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm0/d$b;-><init>(Lm0/d;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    iget-object v0, p0, Lm0/d$b;->a:Lm0/d;

    invoke-static {v0}, Lm0/d;->a(Lm0/d;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, Lm0/d$b;->a:Lm0/d;

    invoke-virtual {v0, p1, p2}, Lm0/d;->c(J)V

    return-void
.end method
