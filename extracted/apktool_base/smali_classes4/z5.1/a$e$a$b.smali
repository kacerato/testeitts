.class public Lz5/a$e$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lz5/a$e$a$b;->a:Lz5/a$e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lz5/a;)V
    .locals 0

    invoke-static {p0}, Lz5/a$e$a$b;->b(Lz5/a;)V

    return-void
.end method

.method public static synthetic b(Lz5/a;)V
    .locals 0

    invoke-static {p0}, Lz5/a;->r1(Lz5/a;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "what",
            "extra"
        }
    .end annotation

    iget-object p1, p0, Lz5/a$e$a$b;->a:Lz5/a$e$a;

    iget-object p1, p1, Lz5/a$e$a;->b:Lz5/a$e;

    iget-object p1, p1, Lz5/a$e;->c:Lz5/a;

    new-instance p2, Lz5/f;

    invoke-direct {p2, p1}, Lz5/f;-><init>(Lz5/a;)V

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U0(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
