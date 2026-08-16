.class public Lw6/b$j$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b$j$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Lw6/b$j$a$a;


# direct methods
.method public constructor <init>(Lw6/b$j$a$a;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$j$a$a$b;->c:Lw6/b$j$a$a;

    iput-object p2, p0, Lw6/b$j$a$a$b;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lw6/b$j$a$a$b;->c:Lw6/b$j$a$a;

    iget-object v0, v0, Lw6/b$j$a$a;->b:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    iget-object v0, p0, Lw6/b$j$a$a$b;->b:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw6/b$j$a$a$b;->b:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Could not duplicate project"

    :goto_0
    new-instance v1, LZ6/i$g;

    invoke-direct {v1}, LZ6/i$g;-><init>()V

    const-string v2, "Duplicate failed"

    invoke-static {v2, v0, v1}, LZ6/i;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    return-void
.end method
