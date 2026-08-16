.class public LM7/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM7/l;->v(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LM7/l;


# direct methods
.method public constructor <init>(LM7/l;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LM7/l$a;->c:LM7/l;

    iput-object p2, p0, LM7/l$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LM7/l$a;->c:LM7/l;

    iget-object v1, p0, LM7/l$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, LM7/l;->q(LM7/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, LM7/l$a;->c:LM7/l;

    invoke-static {v0}, LM7/l;->r(LM7/l;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LM7/l$a;->c:LM7/l;

    invoke-static {v0}, LM7/l;->r(LM7/l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LM7/l$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
