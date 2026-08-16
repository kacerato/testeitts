.class public Lu5/d$l;
.super LF7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d;->R1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu5/d;


# direct methods
.method public constructor <init>(Lu5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$l;->a:Lu5/d;

    invoke-direct {p0}, LF7/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d$l;->a:Lu5/d;

    invoke-static {v0}, Lu5/d;->M1(Lu5/d;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lu5/d$t;

    iget-object v0, v0, LF7/i;->f:LF7/h;

    iget-boolean v0, v0, LF7/h;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lu5/d$l;->a:Lu5/d;

    invoke-static {v0}, Lu5/d;->N1(Lu5/d;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LF7/l;->z(LF7/i;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu5/d$l;->a:Lu5/d;

    invoke-static {v0}, Lu5/d;->N1(Lu5/d;)LF7/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LF7/l;->x(LF7/i;)V

    :goto_0
    return-void
.end method

.method public f(LF7/i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF7/i;",
            ")",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d$l;->a:Lu5/d;

    invoke-static {v0, p1}, Lu5/d;->L1(Lu5/d;LF7/i;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
