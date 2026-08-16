.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a$d;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a$d;->b(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    return-void
.end method

.method private synthetic b(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->c1(F)V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->w(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)F

    move-result v2

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, LU9/l;

    invoke-direct {v0, p0, p1}, LU9/l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$a$d;Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
