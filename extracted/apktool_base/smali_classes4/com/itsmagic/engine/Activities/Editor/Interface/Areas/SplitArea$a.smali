.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea$a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->v:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "SplitArea"

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/Area;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;->b0(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/SplitArea;

    move-result-object p1

    return-object p1
.end method
