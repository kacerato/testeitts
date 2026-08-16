.class public LC6/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "isMethod"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LC6/i;->c:Z

    .line 3
    iput-object p1, p0, LC6/i;->a:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, LC6/i;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "isMethod",
            "isNew"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, LC6/i;->a:Ljava/lang/String;

    .line 7
    iput-boolean p2, p0, LC6/i;->b:Z

    .line 8
    iput-boolean p3, p0, LC6/i;->c:Z

    return-void
.end method
