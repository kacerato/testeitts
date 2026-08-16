.class public LM5/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM5/d$a;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM5/d$a;


# direct methods
.method public constructor <init>(LM5/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LM5/d$a$a;->a:LM5/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, LM5/d$a$a;->a:LM5/d$a;

    iget-object v0, v0, LM5/d$a;->a:LM5/d;

    invoke-static {v0}, LM5/d;->q(LM5/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LM5/d$a$a;->a:LM5/d$a;

    iget-object v0, v0, LM5/d$a;->a:LM5/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LM5/d;->r(LM5/d;Z)Z

    iget-object v0, p0, LM5/d$a$a;->a:LM5/d$a;

    iget-object v0, v0, LM5/d$a;->a:LM5/d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, LL5/b;->m(F)V

    iget-object v0, p0, LM5/d$a$a;->a:LM5/d$a;

    iget-object v0, v0, LM5/d$a;->a:LM5/d;

    invoke-virtual {v0}, LL5/b;->b()V

    :cond_0
    return-void
.end method
