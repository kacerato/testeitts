.class public LB6/f$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB6/f$c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LB6/f$c$a;


# direct methods
.method public constructor <init>(LB6/f$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LB6/f$c$a$a;->b:LB6/f$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LB6/f$c$a$a;->b:LB6/f$c$a;

    iget-object v0, v0, LB6/f$c$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    invoke-static {}, Lda/h;->q()V

    new-instance v0, Lo9/c;

    invoke-direct {v0}, Lo9/c;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->i(LLb/c;)V

    return-void
.end method
