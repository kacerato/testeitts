.class public LFb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LFb/a;->a:Z

    iput-boolean v0, p0, LFb/a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Z)LFb/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requireBoundings"
        }
    .end annotation

    iput-boolean p1, p0, LFb/a;->b:Z

    return-object p0
.end method

.method public b(Z)LFb/a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requireRenderable"
        }
    .end annotation

    iput-boolean p1, p0, LFb/a;->a:Z

    return-object p0
.end method
