.class public LK5/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK5/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LK5/a;


# direct methods
.method public constructor <init>(LK5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LK5/a$a;->b:LK5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lec/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lmc/k;->d(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->preloadShaderCache()V

    iget-object v0, p0, LK5/a$a;->b:LK5/a;

    invoke-virtual {v0}, LJ5/b;->b()V

    return-void
.end method
