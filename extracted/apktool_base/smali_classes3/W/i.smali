.class public LW/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LW/g<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:LW/j$a;

.field public b:LW/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LW/j<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LW/j$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/i;->a:LW/j$a;

    return-void
.end method


# virtual methods
.method public a(LC/a;Z)LW/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/a;",
            "Z)",
            "LW/f<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, LC/a;->MEMORY_CACHE:LC/a;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LW/i;->b:LW/j;

    if-nez p1, :cond_1

    new-instance p1, LW/j;

    iget-object p2, p0, LW/i;->a:LW/j$a;

    invoke-direct {p1, p2}, LW/j;-><init>(LW/j$a;)V

    iput-object p1, p0, LW/i;->b:LW/j;

    :cond_1
    iget-object p1, p0, LW/i;->b:LW/j;

    return-object p1

    :cond_2
    :goto_0
    invoke-static {}, LW/e;->b()LW/f;

    move-result-object p1

    return-object p1
.end method
