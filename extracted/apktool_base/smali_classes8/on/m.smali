.class public Lon/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:Lmn/d;

.field public final e:Lmn/d;


# direct methods
.method public constructor <init>(JIILmn/d;Lmn/d;)V
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
            "linkID",
            "startNode",
            "endNode",
            "clamped1",
            "clamped2"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lon/m;->a:J

    iput p3, p0, Lon/m;->b:I

    iput p4, p0, Lon/m;->c:I

    iput-object p5, p0, Lon/m;->d:Lmn/d;

    iput-object p6, p0, Lon/m;->e:Lmn/d;

    return-void
.end method
