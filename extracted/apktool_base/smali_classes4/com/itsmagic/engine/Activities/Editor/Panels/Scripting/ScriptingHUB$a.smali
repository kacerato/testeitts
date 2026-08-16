.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB$a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$h;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/ScriptingHUB;->z:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "ScriptingHUB"

    return-object v0
.end method
