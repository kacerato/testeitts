.class public LO6/a$a;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/a;->e2()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "LAb/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LO6/a;


# direct methods
.method public constructor <init>(LO6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LO6/a$a;->a:LO6/a;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enumObject"
        }
    .end annotation

    check-cast p1, LAb/b;

    invoke-virtual {p0, p1}, LO6/a$a;->e(LAb/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(LAb/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LO6/a$a;->a:LO6/a;

    invoke-static {v0, p1}, LO6/a;->D1(LO6/a;LAb/b;)V

    iget-object p1, p0, LO6/a$a;->a:LO6/a;

    invoke-static {p1}, LO6/a;->E1(LO6/a;)V

    :cond_0
    return-void
.end method

.method public e(LAb/b;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    sget-object v0, LO6/a$x;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, LF5/c$n0;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Automatic"

    return-object p1

    :cond_1
    const-string p1, "Grid by cell count"

    return-object p1

    :cond_2
    const-string p1, "Grid by cell size"

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, LAb/b;

    invoke-virtual {p0, p1}, LO6/a$a;->d(LAb/b;)V

    return-void
.end method
