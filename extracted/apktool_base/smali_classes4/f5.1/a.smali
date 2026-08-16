.class public Lf5/a;
.super Lf5/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf5/a$b;,
        Lf5/a$a;
    }
.end annotation


# instance fields
.field public final g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf5/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lf5/a$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lf5/d;-><init>()V

    iput-object p1, p0, Lf5/a;->g:Ljava/lang/String;

    iput-object p2, p0, Lf5/a;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf5/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf5/a;->h:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf5/a;->g:Ljava/lang/String;

    return-object v0
.end method
