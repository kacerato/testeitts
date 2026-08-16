.class public Lcom/itsmagic/engine/Activities/Editor/Utils/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/m$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/itsmagic/engine/Activities/Editor/Utils/m$a;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/m$a;->PT_BR:Lcom/itsmagic/engine/Activities/Editor/Utils/m$a;

    return-object v0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/m$a;->EN:Lcom/itsmagic/engine/Activities/Editor/Utils/m$a;

    return-object v0
.end method
