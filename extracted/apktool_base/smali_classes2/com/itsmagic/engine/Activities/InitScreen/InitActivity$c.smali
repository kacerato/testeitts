.class public Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/InitScreen/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$c;->a:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$c;->a:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$c;->a:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;->j(Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/InitActivity$c;->a:Lcom/itsmagic/engine/Activities/InitScreen/InitActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
