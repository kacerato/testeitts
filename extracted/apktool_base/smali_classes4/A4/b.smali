.class public LA4/b;
.super LA4/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "file"
        }
    .end annotation

    invoke-direct {p0}, LA4/c;-><init>()V

    iput-object p1, p0, LA4/b;->a:Ljava/lang/String;

    iput-object p2, p0, LA4/b;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, LA4/b;->b:Ljava/io/File;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LA4/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iput-object p1, p0, LA4/b;->b:Ljava/io/File;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    iput-object p1, p0, LA4/b;->a:Ljava/lang/String;

    return-void
.end method
