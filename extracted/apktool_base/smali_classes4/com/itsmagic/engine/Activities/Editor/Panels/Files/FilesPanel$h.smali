.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->N()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;)V

    const v1, 0x7f0701b4

    const-string v2, "New file"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;)V

    const v1, 0x7f070163

    const-string v2, "Import files"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;)V

    const v2, 0x7f0701f3

    const-string v3, "Refresh"

    invoke-direct {p1, v2, v3, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;)V

    const-string v3, "Go back"

    invoke-direct {p1, v2, v3, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;)V

    const-string v2, "Toggle view mode"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
