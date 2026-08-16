.class public LG/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LG/d$c;
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:LG/d$c;


# direct methods
.method public constructor <init>(LG/d$c;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p2, p0, LG/d;->c:J

    .line 5
    iput-object p1, p0, LG/d;->d:LG/d$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 1
    new-instance v0, LG/d$a;

    invoke-direct {v0, p1}, LG/d$a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, LG/d;-><init>(LG/d$c;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 2
    new-instance v0, LG/d$b;

    invoke-direct {v0, p1, p2}, LG/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, LG/d;-><init>(LG/d$c;J)V

    return-void
.end method


# virtual methods
.method public build()LG/a;
    .locals 3

    iget-object v0, p0, LG/d;->d:LG/d$c;

    invoke-interface {v0}, LG/d$c;->a()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v1

    :cond_2
    iget-wide v1, p0, LG/d;->c:J

    invoke-static {v0, v1, v2}, LG/e;->d(Ljava/io/File;J)LG/a;

    move-result-object v0

    return-object v0
.end method
