.class public LM5/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM5/j;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LM5/j;


# direct methods
.method public constructor <init>(LM5/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LM5/j$a;->b:LM5/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LM5/j$a;->b:LM5/j;

    iget-object v1, v1, LL5/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, LM5/j$a;->b:LM5/j;

    iget-object v2, v2, LL5/b;->c:LI5/a;

    iget-object v2, v2, LI5/a;->c:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LM5/j$a;->b:LM5/j;

    iget-object v5, v5, LL5/b;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, LM5/j$a$a;

    invoke-direct {v1, p0}, LM5/j$a$a;-><init>(LM5/j$a;)V

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, LK3/e;->f(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/io/File;ZLK3/e$e;)V

    iget-object v0, p0, LM5/j$a;->b:LM5/j;

    invoke-virtual {v0}, LL5/b;->b()V

    return-void
.end method
