.class public LT2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La3/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public volatile b:La3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LT2/y;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La3/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, LT2/y;->c:Ljava/lang/Object;

    iput-object v0, p0, LT2/y;->a:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, LT2/y;->b:La3/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LT2/y;->c:Ljava/lang/Object;

    iput-object v0, p0, LT2/y;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, LT2/y;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, LT2/y;->a:Ljava/lang/Object;

    sget-object v1, LT2/y;->c:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LT2/y;->a:Ljava/lang/Object;

    sget-object v1, LT2/y;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LT2/y;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LT2/y;->b:La3/b;

    invoke-interface {v0}, La3/b;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LT2/y;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LT2/y;->b:La3/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method
