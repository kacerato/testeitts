.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a;->b(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;-><init>()V

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a;->b(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pfSettings"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    return-void
.end method
