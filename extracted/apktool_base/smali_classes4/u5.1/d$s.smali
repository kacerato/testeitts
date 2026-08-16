.class public Lu5/d$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYc/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d;->m2(LF7/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu5/d;


# direct methods
.method public constructor <init>(Lu5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$s;->a:Lu5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".meta"

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lu5/d$s;->a:Lu5/d;

    invoke-static {v0}, Lu5/d;->B1(Lu5/d;)Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a;->b(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;)Z

    move-result p1

    return p1
.end method
