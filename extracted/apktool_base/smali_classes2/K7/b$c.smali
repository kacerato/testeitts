.class public LK7/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:LK7/b$d;

.field public b:LK7/b$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LK7/b$d;LK7/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filter",
            "search"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LK7/b$c;->a:LK7/b$d;

    .line 4
    iput-object p2, p0, LK7/b$c;->b:LK7/b$d;

    return-void
.end method


# virtual methods
.method public a()LK7/b$d;
    .locals 1

    iget-object v0, p0, LK7/b$c;->a:LK7/b$d;

    return-object v0
.end method

.method public b()LK7/b$d;
    .locals 1

    iget-object v0, p0, LK7/b$c;->b:LK7/b$d;

    return-object v0
.end method

.method public c(LK7/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    iput-object p1, p0, LK7/b$c;->a:LK7/b$d;

    return-void
.end method

.method public d(LK7/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "search"
        }
    .end annotation

    iput-object p1, p0, LK7/b$c;->b:LK7/b$d;

    return-void
.end method
