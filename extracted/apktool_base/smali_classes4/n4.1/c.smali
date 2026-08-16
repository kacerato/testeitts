.class public Ln4/c;
.super Ln4/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    invoke-direct {p0}, Ln4/f;-><init>()V

    iput-object p1, p0, Ln4/c;->a:Ljava/lang/String;

    return-void
.end method
