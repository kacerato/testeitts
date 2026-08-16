.class public Lx7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lx7/c;

.field public b:Lx7/c;


# direct methods
.method public constructor <init>(Lx7/c;Lx7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7/a;->a:Lx7/c;

    iput-object p2, p0, Lx7/a;->b:Lx7/c;

    return-void
.end method


# virtual methods
.method public a()Lx7/c;
    .locals 1

    iget-object v0, p0, Lx7/a;->a:Lx7/c;

    return-object v0
.end method

.method public b()Lx7/c;
    .locals 1

    iget-object v0, p0, Lx7/a;->b:Lx7/c;

    return-object v0
.end method

.method public c(Lx7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    iput-object p1, p0, Lx7/a;->a:Lx7/c;

    return-void
.end method

.method public d(Lx7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    iput-object p1, p0, Lx7/a;->b:Lx7/c;

    return-void
.end method
