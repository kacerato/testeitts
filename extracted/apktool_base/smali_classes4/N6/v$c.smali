.class public LN6/v$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN6/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "graphStamp",
            "runtime"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/v$c;->a:Ljava/lang/String;

    iput-wide p2, p0, LN6/v$c;->b:J

    iput-object p4, p0, LN6/v$c;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    return-void
.end method
