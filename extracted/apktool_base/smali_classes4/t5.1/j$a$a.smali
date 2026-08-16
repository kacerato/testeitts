.class public Lt5/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/j$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lt5/j$a;


# direct methods
.method public constructor <init>(Lt5/j$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lt5/j$a$a;->c:Lt5/j$a;

    iput p2, p0, Lt5/j$a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt5/j$a$a;->c:Lt5/j$a;

    iget-object v0, v0, Lt5/j$a;->b:Lt5/j;

    invoke-static {v0}, Lt5/j;->q1(Lt5/j;)I

    move-result v0

    iget v1, p0, Lt5/j$a$a;->b:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lt5/j$a$a;->c:Lt5/j$a;

    iget-object v0, v0, Lt5/j$a;->b:Lt5/j;

    invoke-static {v0, v1}, Lt5/j;->s1(Lt5/j;I)I

    iget-object v0, p0, Lt5/j$a$a;->c:Lt5/j$a;

    iget-object v0, v0, Lt5/j$a;->b:Lt5/j;

    invoke-static {v0}, Lt5/j;->t1(Lt5/j;)V

    :cond_0
    return-void
.end method
