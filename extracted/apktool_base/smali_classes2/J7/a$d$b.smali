.class public LJ7/a$d$b;
.super LJ7/a$d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ7/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic d:LJ7/a$d;


# direct methods
.method public constructor <init>(LJ7/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJ7/a$d$b;->d:LJ7/a$d;

    invoke-direct {p0, p1}, LJ7/a$d$a;-><init>(LJ7/a$d;)V

    return-void
.end method
