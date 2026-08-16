.class public final Lb3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:J

.field public static final c:Ljava/lang/String; = ":"

.field public static final d:Ljava/util/regex/Pattern;

.field public static e:Lb3/s;


# instance fields
.field public final a:Lh3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lb3/s;->b:J

    const-string v0, "\\AA[\\w-]{38}\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb3/s;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lh3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/s;->a:Lh3/a;

    return-void
.end method

.method public static c()Lb3/s;
    .locals 1

    invoke-static {}, Lh3/b;->b()Lh3/b;

    move-result-object v0

    invoke-static {v0}, Lb3/s;->d(Lh3/a;)Lb3/s;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lh3/a;)Lb3/s;
    .locals 1

    sget-object v0, Lb3/s;->e:Lb3/s;

    if-nez v0, :cond_0

    new-instance v0, Lb3/s;

    invoke-direct {v0, p0}, Lb3/s;-><init>(Lh3/a;)V

    sput-object v0, Lb3/s;->e:Lb3/s;

    :cond_0
    sget-object p0, Lb3/s;->e:Lb3/s;

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lb3/s;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lb3/s;->a:Lh3/a;

    invoke-interface {v0}, Lh3/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lb3/s;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public f(Lf3/d;)Z
    .locals 8
    .param p1    # Lf3/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lf3/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lf3/d;->h()J

    move-result-wide v2

    invoke-virtual {p1}, Lf3/d;->c()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lb3/s;->b()J

    move-result-wide v4

    sget-wide v6, Lb3/s;->b:J

    add-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
