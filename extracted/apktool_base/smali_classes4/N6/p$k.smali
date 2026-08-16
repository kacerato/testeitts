.class public LN6/p$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN6/p;-><init>(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;LN6/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LN6/H;

.field public final synthetic c:LN6/p;


# direct methods
.method public constructor <init>(LN6/p;LN6/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$graphView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN6/p$k;->c:LN6/p;

    iput-object p2, p0, LN6/p$k;->b:LN6/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LN6/p$k;->c:LN6/p;

    invoke-static {v0}, LN6/p;->i(LN6/p;)V

    iget-object v0, p0, LN6/p$k;->b:LN6/H;

    invoke-virtual {v0}, LN6/H;->b0()V

    return-void
.end method
