.class public LJ/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LC/e;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LC/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LD/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LD/d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LC/e;LD/d;)V
    .locals 1
    .param p1    # LC/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LD/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            "LD/d<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, LJ/n$a;-><init>(LC/e;Ljava/util/List;LD/d;)V

    return-void
.end method

.method public constructor <init>(LC/e;Ljava/util/List;LD/d;)V
    .locals 0
    .param p1    # LC/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LD/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            "Ljava/util/List<",
            "LC/e;",
            ">;",
            "LD/d<",
            "TData;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC/e;

    iput-object p1, p0, LJ/n$a;->a:LC/e;

    .line 4
    invoke-static {p2}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, LJ/n$a;->b:Ljava/util/List;

    .line 5
    invoke-static {p3}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD/d;

    iput-object p1, p0, LJ/n$a;->c:LD/d;

    return-void
.end method
