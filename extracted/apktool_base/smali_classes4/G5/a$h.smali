.class public LG5/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP6/b$z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG5/a;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LXb/O1;

.field public final synthetic b:LG5/a;


# direct methods
.method public constructor <init>(LG5/a;LXb/O1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$ref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LG5/a$h;->b:LG5/a;

    iput-object p2, p0, LG5/a$h;->a:LXb/O1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LG5/a$h;->b:LG5/a;

    invoke-virtual {v0}, LG5/a;->E()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LG5/a$h;->a:LXb/O1;

    const/4 v1, 0x1

    iput-boolean v1, v0, LXb/O1;->c:Z

    iget-object v0, p0, LG5/a$h;->b:LG5/a;

    invoke-static {v0}, LG5/a;->r(LG5/a;)LG5/a$k;

    move-result-object v0

    invoke-interface {v0}, LG5/a$k;->g()V

    return-void
.end method
