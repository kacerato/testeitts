.class public Lw5/j$L$a$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$L$a$a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw5/j$L$a$a$a;


# direct methods
.method public constructor <init>(Lw5/j$L$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$L$a$a$a$b;->b:Lw5/j$L$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lw5/j$L$a$a$a$b;->b:Lw5/j$L$a$a$a;

    iget-object v0, v0, Lw5/j$L$a$a$a;->a:Lw5/j$L$a$a;

    iget-object v0, v0, Lw5/j$L$a$a;->c:Lw5/j$L$a;

    iget-object v0, v0, Lw5/j$L$a;->a:Lw5/j$L;

    iget-object v0, v0, Lw5/j$L;->c:Lw5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lw5/b;->a()V

    :cond_0
    iget-object v0, p0, Lw5/j$L$a$a$a$b;->b:Lw5/j$L$a$a$a;

    iget-object v0, v0, Lw5/j$L$a$a$a;->a:Lw5/j$L$a$a;

    iget-object v0, v0, Lw5/j$L$a$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    return-void
.end method
