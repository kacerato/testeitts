.class public LXg/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXg/x$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXg/x;->m(LXg/A;Ljava/util/List;LXg/D;)LXg/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LXg/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "face"
        }
    .end annotation

    invoke-interface {p1}, LXg/q;->d()Z

    move-result p1

    return p1
.end method

.method public b(LXg/A;LXg/q;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "face",
            "vertexNumber"
        }
    .end annotation

    invoke-interface {p2, p3}, LXg/q;->e(I)I

    move-result p1

    return p1
.end method
