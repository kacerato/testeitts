.class public LC6/c$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC6/c;->Y(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:LC6/c;


# direct methods
.method public constructor <init>(LC6/c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$save"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC6/c$q;->c:LC6/c;

    iput-boolean p2, p0, LC6/c$q;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, LC6/c$q;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LC6/c$q;->c:LC6/c;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, LC6/c;->saveScript(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, LC6/c$q;->b:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, LC6/c$q;->c:LC6/c;

    invoke-virtual {v0}, LC6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, LW7/b;->j:Ld8/j;

    invoke-static {v0}, Ld8/j;->r0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V

    :cond_2
    return-void
.end method
