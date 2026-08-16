.class public Le6/X$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/X;->t(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lma/b$c;

.field public final synthetic b:Le6/X;


# direct methods
.method public constructor <init>(Le6/X;Lma/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le6/X$i;->b:Le6/X;

    iput-object p2, p0, Le6/X$i;->a:Lma/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Le6/X$i;->b:Le6/X;

    iget-object v0, p0, Le6/X$i;->a:Lma/b$c;

    invoke-virtual {v0}, Lma/b$c;->a()Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/Reflection/ComponentMethodNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Le6/X;->q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    return-void
.end method
