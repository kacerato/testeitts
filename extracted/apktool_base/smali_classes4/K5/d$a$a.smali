.class public LK5/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK5/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK5/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:LK5/d$a;


# direct methods
.method public constructor <init>(LK5/d$a;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$outdatedFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LK5/d$a$a;->b:LK5/d$a;

    iput-object p2, p0, LK5/d$a$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LK5/d$a$a;->b:LK5/d$a;

    iget-object v0, v0, LK5/d$a;->b:LK5/d;

    invoke-virtual {v0}, LJ5/b;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, LK5/d$a$a;->b:LK5/d$a;

    iget-object v0, v0, LK5/d$a;->b:LK5/d;

    const/4 v1, 0x1

    iget-object v2, p0, LK5/d$a$a;->a:Ljava/io/File;

    invoke-static {v0, p1, v1, v2}, LK5/d;->n(LK5/d;Ljava/lang/String;ZLjava/io/File;)V

    return-void
.end method
