.class public Lz5/a$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz5/a$e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz5/a$e$a;


# direct methods
.method public constructor <init>(Lz5/a$e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lz5/a$e$a$a;->a:Lz5/a$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lz5/a;)V
    .locals 0

    invoke-static {p0}, Lz5/a$e$a$a;->b(Lz5/a;)V

    return-void
.end method

.method public static synthetic b(Lz5/a;)V
    .locals 0

    invoke-static {p0}, Lz5/a;->r1(Lz5/a;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp"
        }
    .end annotation

    iget-object p1, p0, Lz5/a$e$a$a;->a:Lz5/a$e$a;

    iget-object p1, p1, Lz5/a$e$a;->b:Lz5/a$e;

    iget-object p1, p1, Lz5/a$e;->c:Lz5/a;

    new-instance v0, Lz5/e;

    invoke-direct {v0, p1}, Lz5/e;-><init>(Lz5/a;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U0(Ljava/lang/Runnable;)V

    return-void
.end method
