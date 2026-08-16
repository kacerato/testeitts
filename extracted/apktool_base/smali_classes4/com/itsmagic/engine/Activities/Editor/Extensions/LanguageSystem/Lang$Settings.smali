.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/q;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public selectedLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "en-us"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$Settings;->selectedLanguage:Ljava/lang/String;

    return-void
.end method
