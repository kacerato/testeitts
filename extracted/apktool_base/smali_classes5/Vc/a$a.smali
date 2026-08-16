.class public final LVc/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LVc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:LVc/a$b;

.field public final b:Ljava/io/File;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(LVc/a$b;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "file",
            "message"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVc/a$a;->a:LVc/a$b;

    iput-object p2, p0, LVc/a$a;->b:Ljava/io/File;

    iput-object p3, p0, LVc/a$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LVc/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    new-instance v0, LVc/a$a;

    sget-object v1, LVc/a$b;->FAILED:LVc/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, LVc/a$a;-><init>(LVc/a$b;Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)LVc/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    new-instance v0, LVc/a$a;

    sget-object v1, LVc/a$b;->INVALID_FORMAT:LVc/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, LVc/a$a;-><init>(LVc/a$b;Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Ljava/io/File;Ljava/lang/String;)LVc/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "message"
        }
    .end annotation

    new-instance v0, LVc/a$a;

    sget-object v1, LVc/a$b;->SUCCESS:LVc/a$b;

    invoke-direct {v0, v1, p0, p1}, LVc/a$a;-><init>(LVc/a$b;Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 2

    iget-object v0, p0, LVc/a$a;->a:LVc/a$b;

    sget-object v1, LVc/a$b;->INVALID_FORMAT:LVc/a$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, LVc/a$a;->a:LVc/a$b;

    sget-object v1, LVc/a$b;->SUCCESS:LVc/a$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
