.class public Lz5/a$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz5/a$c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lz5/a$c;


# direct methods
.method public constructor <init>(Lz5/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lz5/a$c$b;->b:Lz5/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->maximizeGameViewWhenPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz5/a$c$b;->b:Lz5/a$c;

    iget-object v0, v0, Lz5/a$c;->a:Lz5/a;

    new-instance v1, Lz5/d;

    invoke-direct {v1, v0}, Lz5/d;-><init>(Lz5/a;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
