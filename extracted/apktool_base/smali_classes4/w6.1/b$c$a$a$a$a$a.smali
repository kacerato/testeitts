.class public Lw6/b$c$a$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b$c$a$a$a$a;->a(Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:Lw6/b$c$a$a$a$a;


# direct methods
.method public constructor <init>(Lw6/b$c$a$a$a$a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$5",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$c$a$a$a$a$a;->c:Lw6/b$c$a$a$a$a;

    iput-object p2, p0, Lw6/b$c$a$a$a$a$a;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lw6/b$c$a$a$a$a$a;->c:Lw6/b$c$a$a$a$a;

    iget-object v1, v1, Lw6/b$c$a$a$a$a;->a:Lw6/b$c$a$a$a;

    iget-object v1, v1, Lw6/b$c$a$a$a;->a:Lw6/b$c$a$a;

    iget-object v1, v1, Lw6/b$c$a$a;->a:Lw6/b$c$a;

    iget-object v1, v1, Lw6/b$c$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lid/a;->g(Ljava/io/File;)Z

    new-instance v0, Lw6/b$c$a$a$a$a$a$a;

    invoke-direct {v0, p0}, Lw6/b$c$a$a$a$a$a$a;-><init>(Lw6/b$c$a$a$a$a$a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
