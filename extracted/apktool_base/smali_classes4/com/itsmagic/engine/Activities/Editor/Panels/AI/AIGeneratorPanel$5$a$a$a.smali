.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;->b(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$objFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    const v1, 0x3f155555

    add-float/2addr p1, v1

    iput p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;->F:F

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5;->J:Ljava/lang/String;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;)V

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$l;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$5$a$a$a;->b(Ljava/io/File;)V

    return-void
.end method
