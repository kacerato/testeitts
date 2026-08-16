.class public LA5/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA5/a$c;->refresh(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LA5/a$c;


# direct methods
.method public constructor <init>(LA5/a$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LA5/a$c$a;->c:LA5/a$c;

    iput p2, p0, LA5/a$c$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, LA5/a$c$a;->b:I

    if-gez v0, :cond_0

    iget-object v0, p0, LA5/a$c$a;->c:LA5/a$c;

    iget-object v0, v0, LA5/a$c;->a:LA5/a;

    sget-object v1, LW7/b;->i:La8/a;

    iget-object v1, v1, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, LA5/a;->A1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LA5/a$c$a;->c:LA5/a$c;

    iget-object v0, v0, LA5/a$c;->a:LA5/a;

    invoke-static {v0}, LA5/a;->q1(LA5/a;)LB5/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LA5/a$c$a;->c:LA5/a$c;

    iget-object v0, v0, LA5/a$c;->a:LA5/a;

    invoke-static {v0}, LA5/a;->q1(LA5/a;)LB5/a;

    move-result-object v0

    iget v1, p0, LA5/a$c$a;->b:I

    invoke-virtual {v0, v1}, LB5/a;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method
