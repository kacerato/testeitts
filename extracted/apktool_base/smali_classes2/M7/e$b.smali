.class public LM7/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM7/e;->h0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LM7/e;


# direct methods
.method public constructor <init>(LM7/e;Ljava/lang/String;)V
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

    iput-object p1, p0, LM7/e$b;->c:LM7/e;

    iput-object p2, p0, LM7/e$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LM7/e$b;->c:LM7/e;

    iget-object v1, p0, LM7/e$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, LM7/e;->w(LM7/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, LM7/e$b;->c:LM7/e;

    invoke-static {v0}, LM7/e;->x(LM7/e;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LM7/e$b;->c:LM7/e;

    invoke-static {v0}, LM7/e;->x(LM7/e;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LM7/e$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
