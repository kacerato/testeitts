.class public final Lz2/j$b;
.super Lz2/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation build Lv2/d;
.end annotation


# direct methods
.method public constructor <init>(Lz2/f;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lz2/j;-><init>(Lz2/f;Ljava/lang/Object;Ljava/lang/reflect/Method;Lz2/j$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/f;Ljava/lang/Object;Ljava/lang/reflect/Method;Lz2/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lz2/j$b;-><init>(Lz2/f;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lz2/j;->e(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
