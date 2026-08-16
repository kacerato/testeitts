.class public Lw5/j$N$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$N$a;->a(LZ6/c$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:Lw5/j$N$a;


# direct methods
.method public constructor <init>(Lw5/j$N$a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$loadingBarPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$N$a$a;->c:Lw5/j$N$a;

    iput-object p2, p0, Lw5/j$N$a$a;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lw5/j$N$a$a;->c:Lw5/j$N$a;

    iget-object v1, v1, Lw5/j$N$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LTc/b;->y(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0}, Lid/a;->g(Ljava/io/File;)Z

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lid/a;->g(Ljava/io/File;)Z

    :cond_0
    new-instance v0, Lw5/j$N$a$a$a;

    invoke-direct {v0, p0}, Lw5/j$N$a$a$a;-><init>(Lw5/j$N$a$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
