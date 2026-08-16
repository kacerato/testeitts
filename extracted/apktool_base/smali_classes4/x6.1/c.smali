.class public Lx6/c;
.super Lx6/b;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-direct {p0}, Lx6/b;-><init>()V

    iput-object p1, p0, Lx6/c;->a:Ljava/lang/String;

    return-void
.end method
