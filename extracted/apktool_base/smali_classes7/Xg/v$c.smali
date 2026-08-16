.class public LXg/v$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXg/v$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXg/v;->f(LXg/A;)LXg/v$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LXg/v$f<",
        "LXg/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LXg/A;

.field public final synthetic b:F


# direct methods
.method public constructor <init>(LXg/A;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$obj",
            "val$meanX"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LXg/v$c;->a:LXg/A;

    iput p2, p0, LXg/v$c;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LXg/q;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objFace"
        }
    .end annotation

    iget-object v0, p0, LXg/v$c;->a:LXg/A;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, LXg/v;->a(LXg/A;LXg/q;I)F

    move-result p1

    iget v0, p0, LXg/v$c;->b:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "objFace"
        }
    .end annotation

    check-cast p1, LXg/q;

    invoke-virtual {p0, p1}, LXg/v$c;->a(LXg/q;)Z

    move-result p1

    return p1
.end method
