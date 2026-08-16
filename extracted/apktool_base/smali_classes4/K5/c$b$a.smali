.class public LK5/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK5/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LK5/c$b;


# direct methods
.method public constructor <init>(LK5/c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LK5/c$b$a;->a:LK5/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, LK5/c$b$a;->a:LK5/c$b;

    iget-object v0, v0, LK5/c$b;->b:Ljava/io/File;

    invoke-static {v0}, LIc/o;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LK5/c$b$a;->a:LK5/c$b;

    iget-object p1, p1, LK5/c$b;->c:Ljava/io/File;

    const-string v0, "1"

    invoke-static {v0, p1}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    :goto_0
    return-void
.end method
