.class public LMb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMb/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:LMb/b$a;

.field public e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LMb/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inProjectDirectory",
            "onSceneName",
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LMb/b;->f:Z

    .line 3
    iput-object p1, p0, LMb/b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, LMb/b;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, LMb/b;->d:LMb/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LMb/b$a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inProjectDirectory",
            "onSceneName",
            "type",
            "position"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, LMb/b;->f:Z

    .line 8
    iput-object p1, p0, LMb/b;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, LMb/b;->b:Ljava/lang/String;

    .line 10
    iput-object p3, p0, LMb/b;->d:LMb/b$a;

    .line 11
    iput-object p4, p0, LMb/b;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LMb/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inProjectDirectory",
            "onSceneName",
            "material",
            "type"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, LMb/b;->f:Z

    .line 14
    iput-object p1, p0, LMb/b;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, LMb/b;->b:Ljava/lang/String;

    .line 16
    iput-object p3, p0, LMb/b;->c:Ljava/lang/String;

    .line 17
    iput-object p4, p0, LMb/b;->d:LMb/b$a;

    return-void
.end method
