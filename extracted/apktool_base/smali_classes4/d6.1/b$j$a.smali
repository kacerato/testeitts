.class public Ld6/b$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/b$j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ld6/b$j;


# direct methods
.method public constructor <init>(Ld6/b$j;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld6/b$j$a;->c:Ld6/b$j;

    iput-object p2, p0, Ld6/b$j$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld6/b$j$a;->c:Ld6/b$j;

    iget-object v0, v0, Ld6/b$j;->b:Ld6/b;

    iget-object v1, p0, Ld6/b$j$a;->b:Ljava/util/List;

    invoke-static {v0, v1}, Ld6/b;->u1(Ld6/b;Ljava/util/List;)V

    iget-object v0, p0, Ld6/b$j$a;->c:Ld6/b$j;

    iget-object v0, v0, Ld6/b$j;->b:Ld6/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld6/b;->v1(Ld6/b;Z)Z

    iget-object v0, p0, Ld6/b$j$a;->c:Ld6/b$j;

    iget-object v0, v0, Ld6/b$j;->b:Ld6/b;

    invoke-static {v0}, Ld6/b;->t1(Ld6/b;)Lh7/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld6/b$j$a;->c:Ld6/b$j;

    iget-object v0, v0, Ld6/b$j;->b:Ld6/b;

    invoke-static {v0}, Ld6/b;->t1(Ld6/b;)Lh7/d;

    move-result-object v0

    invoke-virtual {v0}, Lh7/d;->K()V

    :cond_0
    return-void
.end method
