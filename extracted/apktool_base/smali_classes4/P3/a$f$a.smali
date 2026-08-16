.class public LP3/a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP3/a$f;->a(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LZ6/g;

.field public final synthetic c:LP3/a$f;


# direct methods
.method public constructor <init>(LP3/a$f;LZ6/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$popup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP3/a$f$a;->c:LP3/a$f;

    iput-object p2, p0, LP3/a$f$a;->b:LZ6/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LP3/a$f$a;->c:LP3/a$f;

    iget-object v0, v0, LP3/a$f;->a:LP3/a;

    invoke-static {v0}, LP3/a;->G(LP3/a;)Z

    move-result v0

    new-instance v1, LP3/a$f$a$a;

    invoke-direct {v1, p0, v0}, LP3/a$f$a$a;-><init>(LP3/a$f$a;Z)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
