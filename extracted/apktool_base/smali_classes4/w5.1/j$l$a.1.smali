.class public Lw5/j$l$a;
.super LZ6/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$l;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lw5/j$l;


# direct methods
.method public constructor <init>(Lw5/j$l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$zip",
            "val$folder"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$l$a;->c:Lw5/j$l;

    iput-object p2, p0, Lw5/j$l$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lw5/j$l$a;->b:Ljava/lang/String;

    invoke-direct {p0}, LZ6/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, LZ6/c$h;->a(LZ6/c$g;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lw5/j$l$a$a;

    invoke-direct {v0, p0}, Lw5/j$l$a$a;-><init>(Lw5/j$l$a;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
