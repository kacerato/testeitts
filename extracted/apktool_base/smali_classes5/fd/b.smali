.class public Lfd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfd/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/io/File;

.field public final c:Ljava/lang/String;

.field public final d:Lfd/b$a;

.field public final e:Landroid/content/Context;

.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;Lfd/b$a;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "fileUri",
            "url",
            "params",
            "listener",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lfd/b$a;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf423f

    iput v0, p0, Lfd/b;->g:I

    iput v0, p0, Lfd/b;->h:I

    iput-object p2, p0, Lfd/b;->a:Landroid/net/Uri;

    iput-object p3, p0, Lfd/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lfd/b;->b:Ljava/io/File;

    iput-object p5, p0, Lfd/b;->d:Lfd/b$a;

    iput-object p6, p0, Lfd/b;->e:Landroid/content/Context;

    iput-object p4, p0, Lfd/b;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lfd/b;->g:I

    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lfd/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method public c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lfd/b;->b:Ljava/io/File;

    return-object v0
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lfd/b;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public e()Lfd/b$a;
    .locals 1

    iget-object v0, p0, Lfd/b;->d:Lfd/b$a;

    return-object v0
.end method

.method public f()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfd/b;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lfd/b;->h:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfd/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i(I)Lfd/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionTimeoutMilis"
        }
    .end annotation

    iput p1, p0, Lfd/b;->g:I

    return-object p0
.end method

.method public j(I)Lfd/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readTimeoutMilis"
        }
    .end annotation

    iput p1, p0, Lfd/b;->h:I

    return-object p0
.end method
