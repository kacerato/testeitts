.class public LK5/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK5/c;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:LK5/c;


# direct methods
.method public constructor <init>(LK5/c;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$destinationFolder",
            "val$outdatedFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LK5/c$c;->c:LK5/c;

    iput-object p2, p0, LK5/c$c;->a:Ljava/io/File;

    iput-object p3, p0, LK5/c$c;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    const-string v0, "Ops!"

    invoke-static {v0, p1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LK5/c$c;->c:LK5/c;

    invoke-virtual {p1}, LJ5/b;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, LK5/c$c$a;

    invoke-direct {v0, p0}, LK5/c$c$a;-><init>(LK5/c$c;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, LK5/c$c;->c:LK5/c;

    iget-object v1, p0, LK5/c$c;->a:Ljava/io/File;

    const/4 v2, 0x1

    iget-object v3, p0, LK5/c$c;->b:Ljava/io/File;

    invoke-static {v0, v1, p1, v2, v3}, LK5/c;->m(LK5/c;Ljava/io/File;Ljava/lang/String;ZLjava/io/File;)V

    return-void
.end method
