.class public Ll6/a;
.super Lj6/d;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "icon",
            "title"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lj6/d;-><init>(I)V

    .line 4
    iput-object p2, p0, Ll6/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lj6/d;-><init>()V

    .line 2
    iput-object p1, p0, Ll6/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll6/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 3

    new-instance v0, Ll6/a$a;

    invoke-direct {v0, p0}, Ll6/a$a;-><init>(Ll6/a;)V

    const/4 v1, 0x1

    const-string v2, ".go"

    invoke-static {v1, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->k(ZLjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;)V

    return-void
.end method
