.class public Lf7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf7/e$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Lf7/e$a;

.field public f:Lf7/c;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILf7/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "icon",
            "color",
            "time"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf7/e;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lf7/e;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lf7/e;->c:I

    .line 5
    iput p4, p0, Lf7/e;->d:I

    .line 6
    iput-object p5, p0, Lf7/e;->e:Lf7/e$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILf7/e$a;Lf7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "message",
            "icon",
            "color",
            "time",
            "messageCallbacks"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lf7/e;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lf7/e;->b:Ljava/lang/String;

    .line 10
    iput p3, p0, Lf7/e;->c:I

    .line 11
    iput p4, p0, Lf7/e;->d:I

    .line 12
    iput-object p5, p0, Lf7/e;->e:Lf7/e$a;

    .line 13
    iput-object p6, p0, Lf7/e;->f:Lf7/c;

    return-void
.end method
