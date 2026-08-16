.class public final LB9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

.field public final b:I

.field public final c:I

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "width",
            "height",
            "pts"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB9/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput p2, p0, LB9/c;->b:I

    iput p3, p0, LB9/c;->c:I

    iput-wide p4, p0, LB9/c;->d:J

    return-void
.end method
