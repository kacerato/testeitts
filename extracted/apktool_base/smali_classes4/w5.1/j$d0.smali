.class public Lw5/j$d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j;->j(Landroid/view/View;Ljd/b;Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$editableAudioFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$d0;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioConfig"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw5/j$d0$a;

    invoke-direct {v2, p0, p1, v0}, Lw5/j$d0$a;-><init>(Lw5/j$d0;Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;Lq7/a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
