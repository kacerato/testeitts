.class public Lw5/j$M$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/j$M$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lw5/j$M$i;


# direct methods
.method public constructor <init>(Lw5/j$M$i;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$primitive",
            "val$defaultText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$M$i$a;->c:Lw5/j$M$i;

    iput-object p2, p0, Lw5/j$M$i$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    iput-object p3, p0, Lw5/j$M$i$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lw5/j$M$i$a;->c:Lw5/j$M$i;

    iget-object p1, p1, Lw5/j$M$i;->b:Lw5/j$M;

    iget-object v0, p1, Lw5/j$M;->b:Landroid/content/Context;

    iget-object p1, p1, Lw5/j$M;->c:Ljava/lang/String;

    iget-object v1, p0, Lw5/j$M$i$a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    iget-object v2, p0, Lw5/j$M$i$a;->b:Ljava/lang/String;

    new-instance v3, Lw5/j$M$i$a$a;

    invoke-direct {v3, p0}, Lw5/j$M$i$a$a;-><init>(Lw5/j$M$i$a;)V

    invoke-static {v0, p1, v1, v2, v3}, Lw5/c;->H(Landroid/content/Context;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;Ljava/lang/String;Lw5/l;)V

    return-void
.end method
