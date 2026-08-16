.class public Lqn/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/ByteOrder;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteOrder;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "byteOrder",
            "cCompatibility"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqn/r;->a:Ljava/nio/ByteOrder;

    iput-boolean p2, p0, Lqn/r;->b:Z

    return-void
.end method
