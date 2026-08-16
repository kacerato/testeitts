.class public LK5/c$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK5/c$d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LK5/c$d$a;


# direct methods
.method public constructor <init>(LK5/c$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LK5/c$d$a$a;->b:LK5/c$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LK5/c$d$a$a;->b:LK5/c$d$a;

    iget-object v1, v1, LK5/c$d$a;->c:LK5/c$d;

    iget-object v1, v1, LK5/c$d;->b:Ljava/io/File;

    const-string v2, "manifest.config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, LK5/c$d$a$a;->b:LK5/c$d$a;

    iget-object v1, v1, LK5/c$d$a;->c:LK5/c$d;

    iget-object v1, v1, LK5/c$d;->c:Ljava/lang/String;

    invoke-static {v1, v0}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    iget-object v0, p0, LK5/c$d$a$a;->b:LK5/c$d$a;

    iget-object v0, v0, LK5/c$d$a;->c:LK5/c$d;

    iget-object v0, v0, LK5/c$d;->e:LK5/c;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DONE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LJ5/b;->j(Ljava/lang/String;)V

    iget-object v0, p0, LK5/c$d$a$a;->b:LK5/c$d$a;

    iget-object v0, v0, LK5/c$d$a;->c:LK5/c$d;

    iget-object v0, v0, LK5/c$d;->e:LK5/c;

    invoke-virtual {v0}, LJ5/b;->b()V

    return-void
.end method
