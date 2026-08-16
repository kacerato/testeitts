.class public final Ln6/b$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "total",
            "idle"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Ln6/b$g;->a:J

    .line 4
    iput-wide p3, p0, Ln6/b$g;->b:J

    return-void
.end method

.method public synthetic constructor <init>(JJLn6/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ln6/b$g;-><init>(JJ)V

    return-void
.end method

.method public static synthetic a(Ln6/b$g;)J
    .locals 2

    iget-wide v0, p0, Ln6/b$g;->a:J

    return-wide v0
.end method

.method public static synthetic b(Ln6/b$g;)J
    .locals 2

    iget-wide v0, p0, Ln6/b$g;->b:J

    return-wide v0
.end method
