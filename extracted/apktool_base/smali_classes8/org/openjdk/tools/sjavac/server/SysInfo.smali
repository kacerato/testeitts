.class public Lorg/openjdk/tools/sjavac/server/SysInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x2d0eca6cd1bL


# instance fields
.field public maxMemory:J

.field public numCores:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/openjdk/tools/sjavac/server/SysInfo;->numCores:I

    iput-wide p2, p0, Lorg/openjdk/tools/sjavac/server/SysInfo;->maxMemory:J

    return-void
.end method
