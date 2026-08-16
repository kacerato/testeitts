.class public LO6/a$B$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/a$B;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:LO6/a$B;


# direct methods
.method public constructor <init>(LO6/a$B;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$newSprites"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LO6/a$B$a;->c:LO6/a$B;

    iput-object p2, p0, LO6/a$B$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LO6/a$B$a;->c:LO6/a$B;

    iget-object v0, v0, LO6/a$B;->d:LO6/a;

    invoke-static {v0}, LO6/a;->x1(LO6/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LO6/a$B$a;->c:LO6/a$B;

    iget-object v0, v0, LO6/a$B;->d:LO6/a;

    invoke-static {v0}, LO6/a;->x1(LO6/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LO6/a$B$a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, LO6/a$B$a;->c:LO6/a$B;

    iget-object v0, v0, LO6/a$B;->d:LO6/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LO6/a;->y1(LO6/a;I)I

    iget-object v0, p0, LO6/a$B$a;->c:LO6/a$B;

    iget-object v0, v0, LO6/a$B;->d:LO6/a;

    invoke-static {v0}, LO6/a;->a2(LO6/a;)V

    iget-object v0, p0, LO6/a$B$a;->c:LO6/a$B;

    iget-object v0, v0, LO6/a$B;->d:LO6/a;

    invoke-static {v0}, LO6/a;->b2(LO6/a;)V

    iget-object v0, p0, LO6/a$B$a;->c:LO6/a$B;

    iget-object v0, v0, LO6/a$B;->d:LO6/a;

    invoke-static {v0}, LO6/a;->c2(LO6/a;)V

    new-instance v0, LO6/a$B$a$a;

    invoke-direct {v0, p0}, LO6/a$B$a$a;-><init>(LO6/a$B$a;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
