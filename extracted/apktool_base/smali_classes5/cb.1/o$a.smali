.class public Lcb/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Lcb/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcb/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Lcb/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcb/o$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcb/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterable",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcb/o<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcb/o$a;->d:Lcb/o$b;

    invoke-virtual {p0, p1, p2}, Lcb/o$a;->a(Ljava/lang/Iterable;Lcb/o;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;Lcb/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterable",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcb/o<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcb/o$a;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lcb/o$a;->c:Lcb/o;

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lcb/e;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcb/o$b;

    iget-object v1, p0, Lcb/o$a;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcb/o$a;->c:Lcb/o;

    invoke-direct {v0, v1, v2}, Lcb/o$b;-><init>(Ljava/util/Iterator;Lcb/o;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcb/o$a;->d:Lcb/o$b;

    if-nez v0, :cond_1

    new-instance v0, Lcb/o$b;

    iget-object v1, p0, Lcb/o$a;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcb/o$a;->c:Lcb/o;

    invoke-direct {v0, v1, v2}, Lcb/o$b;-><init>(Ljava/util/Iterator;Lcb/o;)V

    iput-object v0, p0, Lcb/o$a;->d:Lcb/o$b;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcb/o$a;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcb/o$a;->c:Lcb/o;

    invoke-virtual {v0, v1, v2}, Lcb/o$b;->b(Ljava/util/Iterator;Lcb/o;)V

    :goto_0
    iget-object v0, p0, Lcb/o$a;->d:Lcb/o$b;

    return-object v0
.end method
