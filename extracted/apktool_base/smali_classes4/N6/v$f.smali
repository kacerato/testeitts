.class public LN6/v$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN6/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public final b:Ldc/d;

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ldc/d;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "builded",
            "graphStamp"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/v$f;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object p2, p0, LN6/v$f;->b:Ldc/d;

    iput-wide p3, p0, LN6/v$f;->c:J

    return-void
.end method
