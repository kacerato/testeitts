.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a$c;
    }
.end annotation


# static fields
.field public static a:Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    return-object v0
.end method

.method public static c()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a$b;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a$b;-><init>()V

    const-string v3, "Trim silence from begin/end"

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static d(Landroid/view/View;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "audioFile",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->e(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->a()Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;-><init>()V

    :goto_0
    sput-object p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a;->a:Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a$a;

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/a$c;)V

    const-string p1, "Audio config"

    const/16 p2, 0x118

    const/16 v0, 0xb4

    invoke-static {p1, p2, v0, p0}, LG4/e;->x1(Ljava/lang/String;IILG4/f;)LG4/e;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "audioFile can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
