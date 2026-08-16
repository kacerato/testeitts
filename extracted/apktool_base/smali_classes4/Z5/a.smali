.class public LZ5/a;
.super Le7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ5/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le7/a<",
        "LZ5/c;",
        "LZ5/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;LZ5/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callbacks"
        }
    .end annotation

    new-instance v0, LZ5/a$a;

    invoke-direct {v0, p1, p2}, LZ5/a$a;-><init>(Landroid/content/Context;LZ5/a$b;)V

    invoke-direct {p0, p1, v0}, Le7/a;-><init>(Landroid/content/Context;Le7/a$a;)V

    return-void
.end method
