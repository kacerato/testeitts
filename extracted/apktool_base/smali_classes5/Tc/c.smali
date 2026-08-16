.class public LTc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:LTc/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftTag",
            "rightTag",
            "replaceInterface"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTc/c;->a:Ljava/lang/String;

    iput-object p2, p0, LTc/c;->b:Ljava/lang/String;

    iput-object p3, p0, LTc/c;->c:LTc/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LTc/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()LTc/a;
    .locals 1

    iget-object v0, p0, LTc/c;->c:LTc/a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LTc/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftTag"
        }
    .end annotation

    iput-object p1, p0, LTc/c;->a:Ljava/lang/String;

    return-void
.end method

.method public e(LTc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "replaceInterface"
        }
    .end annotation

    iput-object p1, p0, LTc/c;->c:LTc/a;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightTag"
        }
    .end annotation

    iput-object p1, p0, LTc/c;->b:Ljava/lang/String;

    return-void
.end method
