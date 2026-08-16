.class public LD4/b;
.super LD4/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "compiller_version",
            "apktoken",
            "appname",
            "versioncode",
            "versioname",
            "status",
            "requested_at",
            "compilled_at",
            "position"
        }
    .end annotation

    invoke-direct {p0}, LD4/c;-><init>()V

    iput-object p1, p0, LD4/b;->a:Ljava/lang/String;

    iput-object p2, p0, LD4/b;->b:Ljava/lang/String;

    iput-object p3, p0, LD4/b;->c:Ljava/lang/String;

    iput-object p4, p0, LD4/b;->d:Ljava/lang/String;

    iput-object p5, p0, LD4/b;->e:Ljava/lang/String;

    iput-object p6, p0, LD4/b;->f:Ljava/lang/String;

    iput-object p7, p0, LD4/b;->g:Ljava/lang/String;

    iput-object p8, p0, LD4/b;->h:Ljava/lang/String;

    iput-object p9, p0, LD4/b;->i:Ljava/lang/String;

    iput-object p10, p0, LD4/b;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LD4/b;->d:Ljava/lang/String;

    return-object v0
.end method
