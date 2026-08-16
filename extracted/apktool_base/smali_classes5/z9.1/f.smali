.class public final Lz9/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz9/f$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lz9/f$b;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z

.field public static final d:Lob/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz9/f;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lz9/f;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lob/b;

    new-instance v1, Lz9/f$a;

    invoke-direct {v1}, Lz9/f$a;-><init>()V

    invoke-direct {v0, v1}, Lob/b;-><init>(Lob/b$a;)V

    sput-object v0, Lz9/f;->d:Lob/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lz9/f;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic b()Ljava/util/ArrayDeque;
    .locals 1

    sget-object v0, Lz9/f;->b:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, Lz9/f;->c:Z

    return p0
.end method

.method public static d(Lz9/f$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "job"
        }
    .end annotation

    if-eqz p0, :cond_2

    sget-object v0, Lz9/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz9/f;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    sget-boolean p0, Lz9/f;->c:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lz9/f;->c:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    sget-object p0, Lz9/f;->d:Lob/b;

    invoke-static {p0}, LK8/a;->J(Lob/b;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "job can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
