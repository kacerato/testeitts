.class public Lw5/j$P$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$P$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw5/j$P$b;


# direct methods
.method public constructor <init>(Lw5/j$P$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$P$b$a;->a:Lw5/j$P$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popup",
            "area"
        }
    .end annotation

    iget-object p2, p0, Lw5/j$P$b$a;->a:Lw5/j$P$b;

    iput-object p1, p2, Lw5/j$P$b;->e:LZ6/g;

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lw5/j$P$b$a$a;

    invoke-direct {p2, p0}, Lw5/j$P$b$a$a;-><init>(Lw5/j$P$b$a;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
