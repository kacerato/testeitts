.class public Ln4/g;
.super Ln4/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/g$a;
    }
.end annotation


# instance fields
.field public a:Ln4/g$a;


# direct methods
.method public constructor <init>(Ln4/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    invoke-direct {p0}, Ln4/f;-><init>()V

    iput-object p1, p0, Ln4/g;->a:Ln4/g$a;

    return-void
.end method


# virtual methods
.method public a()Ln4/g$a;
    .locals 1

    iget-object v0, p0, Ln4/g;->a:Ln4/g$a;

    return-object v0
.end method
