.class public LXg/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXg/v$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXg/v;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LXg/v$f<",
        "LXg/A;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LXg/v;


# direct methods
.method public constructor <init>(LXg/v;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$maxNumVertices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LXg/v$a;->b:LXg/v;

    iput p2, p0, LXg/v$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LXg/A;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-interface {p1}, LXg/A;->a()I

    move-result p1

    iget v0, p0, LXg/v$a;->a:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "obj"
        }
    .end annotation

    check-cast p1, LXg/A;

    invoke-virtual {p0, p1}, LXg/v$a;->a(LXg/A;)Z

    move-result p1

    return p1
.end method
