.class public final LF/j$b;
.super LF/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LF/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF/d<",
        "LF/j$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LF/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()LF/m;
    .locals 1

    invoke-virtual {p0}, LF/j$b;->d()LF/j$a;

    move-result-object v0

    return-object v0
.end method

.method public d()LF/j$a;
    .locals 1

    new-instance v0, LF/j$a;

    invoke-direct {v0, p0}, LF/j$a;-><init>(LF/j$b;)V

    return-object v0
.end method

.method public e(ILjava/lang/Class;)LF/j$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "LF/j$a;"
        }
    .end annotation

    invoke-virtual {p0}, LF/d;->b()LF/m;

    move-result-object v0

    check-cast v0, LF/j$a;

    invoke-virtual {v0, p1, p2}, LF/j$a;->b(ILjava/lang/Class;)V

    return-object v0
.end method
