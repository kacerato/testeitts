.class public Lu8/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu8/b;


# direct methods
.method public constructor <init>(Lu8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lu8/b$i;->a:Lu8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lu8/b$i;->a:Lu8/b;

    const-string v1, "13/14 Error!"

    invoke-static {v0, v1}, Lu8/b;->C(Lu8/b;Ljava/lang/String;)V

    sget-object v0, LW7/b;->g:Lu8/c;

    iget-object v0, v0, Lu8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    const/4 v1, 0x2

    iput v1, v0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->status:I

    iget-object v0, p0, Lu8/b$i;->a:Lu8/b;

    invoke-static {v0}, Lu8/b;->u(Lu8/b;)V

    return-void
.end method

.method public onProgressChange(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "max"
        }
    .end annotation

    return-void
.end method

.method public onSuccess()V
    .locals 2

    sget-object v0, LW7/b;->g:Lu8/c;

    iget-object v0, v0, Lu8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    const/4 v1, 0x2

    iput v1, v0, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->status:I

    iget-object v0, p0, Lu8/b$i;->a:Lu8/b;

    invoke-static {v0}, Lu8/b;->u(Lu8/b;)V

    return-void
.end method
