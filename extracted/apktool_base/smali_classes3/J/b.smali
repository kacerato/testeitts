.class public LJ/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJ/b$d;,
        LJ/b$a;,
        LJ/b$c;,
        LJ/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LJ/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field public final a:LJ/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LJ/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/b;->a:LJ/b$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, [B

    invoke-virtual {p0, p1}, LJ/b;->d([B)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILC/h;)LJ/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LC/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, LJ/b;->c([BIILC/h;)LJ/n$a;

    move-result-object p1

    return-object p1
.end method

.method public c([BIILC/h;)LJ/n$a;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LC/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "LC/h;",
            ")",
            "LJ/n$a<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, LJ/n$a;

    new-instance p3, LX/e;

    invoke-direct {p3, p1}, LX/e;-><init>(Ljava/lang/Object;)V

    new-instance p4, LJ/b$c;

    iget-object v0, p0, LJ/b;->a:LJ/b$b;

    invoke-direct {p4, p1, v0}, LJ/b$c;-><init>([BLJ/b$b;)V

    invoke-direct {p2, p3, p4}, LJ/n$a;-><init>(LC/e;LD/d;)V

    return-object p2
.end method

.method public d([B)Z
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
