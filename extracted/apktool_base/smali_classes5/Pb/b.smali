.class public LPb/b;
.super Lda/b;
.source "SourceFile"


# instance fields
.field public a:Lvb/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lda/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lvb/a;
    .locals 1

    iget-object v0, p0, LPb/b;->a:Lvb/a;

    return-object v0
.end method

.method public b(Lvb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    iput-object p1, p0, LPb/b;->a:Lvb/a;

    return-void
.end method
